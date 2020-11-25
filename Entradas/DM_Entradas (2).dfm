inherited DMEntradas: TDMEntradas
  Left = 269
  Top = 104
  Height = 632
  Width = 1167
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
      '                T.EMPRESA,'
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
      '                T.PDV, '
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
      '                fc.Nome as NomeCliente'
      ''
      
        'from '#9'((ENTRADAS t  left join FAVORECIDOS f on t.FAVORECIDO = f.' +
        'FAVORECIDO)'
      
        #9'left join TIPOSMOVIMENTO tm on tm.TIPOMOVIMENTO = T.TIPOMOVIMEN' +
        'TO)'
      #9'left join Favorecidos fc ON fc.Favorecido = t.LocalCliente')
    Left = 22
    Top = 8
  end
  inherited Q_MasterDS: TDataSource
    Left = 88
    Top = 5
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Entradas '
      'where'
      '  IDMESTRE = :IDMESTRE')
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
      '  EMPRESA = :EMPRESA'
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
      'VENDEDOR, ESPECIE, PDV, EMPRESA )'
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
      ':BAIXAESTOQUEFISCAL, :VENDEDOR, :ESPECIE, :PDV, :EMPRESA )')
    DeleteSQL.Strings = (
      'delete from Entradas'
      'where'
      '  IDMESTRE = :OLD_IDMESTRE')
    Left = 22
  end
  inherited DMComponent: TDMComponent
    Exclusao = DMComponentExclusao
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    Gravar4_AposCommit = DMComponentGravar4_AposCommit
    KeyForIDs = 'Entradas'
    Tabela_Nome = 'Entradas'
    Tabela_Chave = 'Entrada'
    ChavesDetalhes.Strings = ()
    GenerateIDFor.Strings = (
      'C_Itens=IDITEM'
      'C_Parcelas=ID')
    Left = 24
    Top = 270
  end
  inherited DlgMsg: TDlgMsg
    Left = 20
    Top = 392
  end
  inherited P_Tabela: TDataSetProvider
    Left = 22
  end
  inherited C_Tabela: TClientDataSet
    AfterScroll = C_TabelaAfterScroll
    OnCalcFields = C_TabelaCalcFields
    Left = 26
    Top = 154
    inherited C_TabelaFAVORECIDO: TIntegerField
      Origin = 'ENTRADAS.FAVORECIDO'
    end
    inherited C_TabelaIDMESTRE: TIntegerField
      Origin = 'ENTRADAS.IDMESTRE'
    end
    inherited C_TabelaNUMERO: TStringField
      Origin = 'ENTRADAS.NUMERO'
      OnChange = C_TabelaNUMEROChange
      OnValidate = C_TabelaNUMEROValidate
    end
    inherited C_TabelaDATA: TDateField
      Origin = 'ENTRADAS.DATA'
      OnChange = C_TabelaDATAChange
    end
    inherited C_TabelaOBS: TStringField
      DisplayWidth = 500
      Origin = 'ENTRADAS.OBS'
      Size = 500
    end
    inherited C_TabelaTIPOMOVIMENTO: TIntegerField
      Origin = 'ENTRADAS.TIPOMOVIMENTO'
      OnValidate = C_TabelaTIPOMOVIMENTOValidate
    end
    inherited C_TabelaPOSSUITAX: TStringField
      Origin = 'ENTRADAS.POSSUITAX'
      OnChange = C_TabelaPOSSUITAXChange
    end
    inherited C_TabelaBAIXAESTOQUE: TStringField
      Origin = 'ENTRADAS.BAIXAESTOQUE'
      OnChange = C_TabelaBAIXAESTOQUEChange
    end
    inherited C_TabelaCALCCOMISSAO: TStringField
      Origin = 'ENTRADAS.CALCCOMISSAO'
    end
    inherited C_TabelaPOSSUIENTREGA: TStringField
      Origin = 'ENTRADAS.POSSUIENTREGA'
    end
    inherited C_TabelaSITUACAO: TStringField
      Origin = 'ENTRADAS.SITUACAO'
    end
    inherited C_TabelaF_LIMITECREDITO: TBCDField
      DisplayFormat = '##,##0.000'
    end
    object C_TabelaTAX: TIntegerField [71]
      FieldName = 'TAX'
      Origin = 'ENTRADAS.TAX'
      OnChange = C_TabelaTAXChange
    end
    object C_TabelaPLANOPAGAMENTO: TIntegerField [72]
      FieldName = 'PLANOPAGAMENTO'
      Origin = 'ENTRADAS.PLANOPAGAMENTO'
      OnChange = C_TabelaPLANOPAGAMENTOChange
    end
    object C_TabelaTIPOENTREGA: TIntegerField [73]
      FieldName = 'TIPOENTREGA'
      Origin = 'ENTRADAS.TIPOENTREGA'
    end
    object C_TabelaDATAENTREGA: TDateField [74]
      FieldName = 'DATAENTREGA'
      Origin = 'ENTRADAS.DATAENTREGA'
    end
    object C_TabelaCAMPO01: TStringField [75]
      FieldName = 'CAMPO01'
      Origin = 'ENTRADAS.CAMPO01'
      Size = 50
    end
    object C_TabelaCAMPO02: TStringField [76]
      FieldName = 'CAMPO02'
      Origin = 'ENTRADAS.CAMPO02'
      Size = 50
    end
    object C_TabelaCAMPO03: TStringField [77]
      FieldName = 'CAMPO03'
      Origin = 'ENTRADAS.CAMPO03'
      Size = 50
    end
    object C_TabelaCAMPO04: TStringField [78]
      FieldName = 'CAMPO04'
      Origin = 'ENTRADAS.CAMPO04'
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
    object C_TabelalkTipoEntrega: TStringField [80]
      FieldKind = fkLookup
      FieldName = 'lkTipoEntrega'
      LookupDataSet = C_TiposEntrega
      LookupKeyFields = 'TIPOENTREGA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOENTREGA'
      Size = 25
      Lookup = True
    end
    inherited C_TabelaTIPOPADRAO: TIntegerField
      Origin = 'ENTRADAS.TIPOPADRAO'
    end
    inherited C_TabelaTOTAL: TFloatField
      Origin = 'ENTRADAS.TOTAL'
      DisplayFormat = '#,###,##0.000'
      EditFormat = '######0.0000'
    end
    object C_TabelaQ_Parcelas: TDataSetField
      FieldName = 'Q_Parcelas'
    end
    object C_TabelacfLastIDMov: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'cfLastIDMov'
      Size = 15
    end
    object C_TabelaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'ENTRADAS.STATUS'
      OnValidate = C_TabelaSTATUSValidate
      Size = 1
    end
    object C_TabelaLOCALENTREGA: TIntegerField
      FieldName = 'LOCALENTREGA'
      Origin = 'ENTRADAS.LOCALENTREGA'
    end
    object C_TabelaPREVISAOENTREGA: TDateField
      FieldName = 'PREVISAOENTREGA'
      Origin = 'ENTRADAS.PREVISAOENTREGA'
    end
    object C_TabelaLOCALCLIENTE: TIntegerField
      FieldName = 'LOCALCLIENTE'
      Origin = 'ENTRADAS.LOCALCLIENTE'
      OnChange = C_TabelaLOCALCLIENTEChange
    end
    object C_TabelaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Origin = 'FAVORECIDOS.NOMECLIENTE'
      Size = 50
    end
    object C_TabelaINCLUIDESCONTO: TStringField
      FieldName = 'INCLUIDESCONTO'
      Origin = 'ENTRADAS.INCLUIDESCONTO'
      Size = 1
    end
    object C_TabelaATUALIZACUSTO: TStringField
      FieldName = 'ATUALIZACUSTO'
      Origin = 'ENTRADAS.ATUALIZACUSTO'
      Size = 3
    end
    object C_TabelaATUALIZAPRECO: TStringField
      FieldName = 'ATUALIZAPRECO'
      Origin = 'ENTRADAS.ATUALIZAPRECO'
      Size = 3
    end
    object C_TabelaATUALIZAPRECOMANUAL: TStringField
      FieldName = 'ATUALIZAPRECOMANUAL'
      Origin = 'ENTRADAS.ATUALIZAPRECOMANUAL'
      Size = 1
    end
    object C_TabelaicDescontoParcelas: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDescontoParcelas'
    end
    object C_TabelaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Origin = 'ENTRADAS.USUARIO'
      Size = 15
    end
    object C_TabelaicEnderecoEntrega: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icEnderecoEntrega'
      Size = 150
    end
    object C_TabelalkStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'lkStatus'
      LookupDataSet = C_Status
      LookupKeyFields = 'STATUS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'STATUS'
      Size = 30
      Lookup = True
    end
    object C_TabelaSTATUSOLD: TStringField
      FieldName = 'STATUSOLD'
      Origin = 'ENTRADAS.STATUSOLD'
      Size = 1
    end
    object C_TabelaALMOXPADRAO: TIntegerField
      FieldName = 'ALMOXPADRAO'
      Origin = 'ENTRADAS.ALMOXPADRAO'
      OnChange = C_TabelaALMOXPADRAOChange
    end
    object C_TabelaUFORIGEM: TStringField
      FieldName = 'UFORIGEM'
      Origin = 'ENTRADAS.UFORIGEM'
      Size = 2
    end
    object C_TabelaSERIENOTA: TStringField
      FieldName = 'SERIENOTA'
      Origin = 'ENTRADAS.SERIENOTA'
      Size = 3
    end
    object C_TabelaMODELO: TStringField
      FieldName = 'MODELO'
      Origin = 'ENTRADAS.MODELO'
      Size = 2
    end
    object C_TabelaCIF_FOB: TStringField
      FieldName = 'CIF_FOB'
      Origin = 'ENTRADAS.CIF_FOB'
      Size = 1
    end
    object C_TabelaDATANOTA: TDateField
      FieldName = 'DATANOTA'
      Origin = 'ENTRADAS.DATANOTA'
    end
    object C_TabelalkCFOP: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCFOP'
      LookupDataSet = C_CFOPs
      LookupKeyFields = 'CFOP'
      LookupResultField = 'CFOP'
      KeyFields = 'CFOPNOTA'
      Size = 3
      Lookup = True
    end
    object C_TabelaValorIPICalc: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'ValorIPICalc'
    end
    object C_TabelaTOTALCalc: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'TOTALCalc'
      DisplayFormat = '#,###,##0.000'
      EditFormat = '######0.0000'
    end
    object C_TabelaF_BAIRRO: TStringField
      FieldName = 'F_BAIRRO'
      Origin = 'FAVORECIDOS.F_BAIRRO'
      Size = 30
    end
    object C_TabelaF_CPF_CNPJ: TStringField
      FieldName = 'F_CPF_CNPJ'
      Origin = 'FAVORECIDOS.F_CPF_CNPJ'
      OnValidate = C_TabelaF_CPF_CNPJValidate
      Size = 14
    end
    object C_TabelaF_INSCRICAO_EST: TStringField
      FieldName = 'F_INSCRICAO_EST'
      Origin = 'FAVORECIDOS.F_INSCRICAO_EST'
      Size = 14
    end
    object C_TabelaCB_NOTAFISCAL: TStringField
      FieldName = 'CB_NOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.CB_NOTAFISCAL'
      Size = 1
    end
    object C_TabelaNOTAORIGEM: TIntegerField
      FieldName = 'NOTAORIGEM'
      Origin = 'ENTRADAS.NOTAORIGEM'
    end
    object C_TabelaCFOPENTRADA: TStringField
      FieldName = 'CFOPENTRADA'
      Origin = 'ENTRADAS.CFOPENTRADA'
      Size = 4
    end
    object C_TabelaCFOPNOTA: TStringField
      FieldName = 'CFOPNOTA'
      Origin = 'ENTRADAS.CFOPNOTA'
      Size = 4
    end
    object C_TabelaCB_ENTRADAPRECOVENDA: TStringField
      FieldName = 'CB_ENTRADAPRECOVENDA'
      Origin = 'TIPOSMOVIMENTO.CB_ENTRADAPRECOVENDA'
      Size = 1
    end
    object C_TabelaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Origin = 'ENTRADAS.INDEXADOR'
      OnChange = C_TabelaINDEXADORChange
    end
    object C_TabelaFONTE: TStringField
      FieldName = 'FONTE'
      Origin = 'ENTRADAS.FONTE'
      Size = 1
    end
    object C_TabelalkIndexador: TStringField
      FieldKind = fkLookup
      FieldName = 'lkIndexador'
      LookupDataSet = C_Indexadores
      LookupKeyFields = 'INDEXADOR'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'INDEXADOR'
      Size = 30
      Lookup = True
    end
    object C_TabelaBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      Origin = 'ENTRADAS.BAIXAESTOQUEFISCAL'
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
    object C_TabelaVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'ENTRADAS.VENDEDOR'
    end
    object C_TabelalkVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkVendedor'
      LookupDataSet = C_Vendedores
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'VENDEDOR'
      Size = 50
      Lookup = True
    end
    object C_TabelaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Origin = 'ENTRADAS.ESPECIE'
      Size = 3
    end
    object C_TabelaPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'ENTRADAS.PDV'
      Required = True
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'ENTRADAS.EMPRESA'
      Required = True
    end
    object C_TabelaFRETEINCLUSO: TStringField
      FieldName = 'FRETEINCLUSO'
      Origin = 'ENTRADAS.FRETEINCLUSO'
      Size = 1
    end
    object C_TabelaPERCENTUALTAX: TBCDField
      FieldName = 'PERCENTUALTAX'
      Origin = 'ENTRADAS.PERCENTUALTAX'
      OnChange = C_TabelaPERCENTUALTAXChange
      Precision = 18
      Size = 2
    end
    object C_TabelaFRETEEXTERNO: TBCDField
      FieldName = 'FRETEEXTERNO'
      Origin = 'ENTRADAS.FRETEEXTERNO'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Origin = 'ENTRADAS.DESCONTO'
      OnChange = C_TabelaDESCONTOChange
      Precision = 18
      Size = 2
    end
    object C_TabelaFRETE: TBCDField
      FieldName = 'FRETE'
      Origin = 'ENTRADAS.FRETE'
      OnChange = C_TabelaFRETEChange
      Precision = 18
      Size = 2
    end
    object C_TabelaOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
      Origin = 'ENTRADAS.OUTRASDESPESAS'
    end
    object C_TabelaJUROS: TFloatField
      FieldName = 'JUROS'
      Origin = 'ENTRADAS.JUROS'
    end
    object C_TabelaIMPOSTO: TFloatField
      FieldName = 'IMPOSTO'
      Origin = 'ENTRADAS.IMPOSTO'
    end
    object C_TabelaPJUROS: TFloatField
      FieldName = 'PJUROS'
      Origin = 'ENTRADAS.PJUROS'
      OnChange = C_TabelaPJUROSChange
    end
    object C_TabelaTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
      Origin = 'ENTRADAS.TOTALITENS'
    end
    object C_TabelaTOTALITENS123: TFloatField
      FieldName = 'TOTALITENS123'
      Origin = 'ENTRADAS.TOTALITENS123'
    end
    object C_TabelaDESCONTOITENS: TFloatField
      FieldName = 'DESCONTOITENS'
      Origin = 'ENTRADAS.DESCONTOITENS'
    end
    object C_TabelaTOTALOLD: TFloatField
      FieldName = 'TOTALOLD'
      Origin = 'ENTRADAS.TOTALOLD'
    end
    object C_TabelaBASEIMPOSTO: TFloatField
      FieldName = 'BASEIMPOSTO'
      Origin = 'ENTRADAS.BASEIMPOSTO'
    end
    object C_TabelaBASEINCLUSO: TFloatField
      FieldName = 'BASEINCLUSO'
      Origin = 'ENTRADAS.BASEINCLUSO'
    end
    object C_TabelaIMPOSTO_INCLUSO: TFloatField
      FieldName = 'IMPOSTO_INCLUSO'
      Origin = 'ENTRADAS.IMPOSTO_INCLUSO'
    end
    object C_TabelaREDUCOESBASE: TFloatField
      FieldName = 'REDUCOESBASE'
      Origin = 'ENTRADAS.REDUCOESBASE'
      OnChange = C_TabelaREDUCOESBASEChange
    end
    object C_TabelaACRESCIMOSBASE: TFloatField
      FieldName = 'ACRESCIMOSBASE'
      Origin = 'ENTRADAS.ACRESCIMOSBASE'
    end
    object C_TabelaVOLUMES: TFloatField
      FieldName = 'VOLUMES'
      Origin = 'ENTRADAS.VOLUMES'
    end
    object C_TabelaOLDDESCONTO: TBCDField
      FieldName = 'OLDDESCONTO'
      Origin = 'ENTRADAS.OLDDESCONTO'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALORSEGURO: TFloatField
      FieldName = 'VALORSEGURO'
      Origin = 'ENTRADAS.VALORSEGURO'
    end
    object C_TabelaBASECALCICMS: TFloatField
      FieldName = 'BASECALCICMS'
      Origin = 'ENTRADAS.BASECALCICMS'
      OnChange = C_TabelaBASECALCICMSChange
    end
    object C_TabelaVALORICMS: TFloatField
      FieldName = 'VALORICMS'
      Origin = 'ENTRADAS.VALORICMS'
    end
    object C_TabelaBASECALCSUBST: TFloatField
      FieldName = 'BASECALCSUBST'
      Origin = 'ENTRADAS.BASECALCSUBST'
    end
    object C_TabelaVALORICMSSUBST: TFloatField
      FieldName = 'VALORICMSSUBST'
      Origin = 'ENTRADAS.VALORICMSSUBST'
    end
    object C_TabelaVALORIPI: TFloatField
      FieldName = 'VALORIPI'
      Origin = 'ENTRADAS.VALORIPI'
    end
    object C_TabelaPESOBRUTO: TFloatField
      FieldName = 'PESOBRUTO'
      Origin = 'ENTRADAS.PESOBRUTO'
    end
    object C_TabelaPESOLIQUIDO: TFloatField
      FieldName = 'PESOLIQUIDO'
      Origin = 'ENTRADAS.PESOLIQUIDO'
    end
    object C_TabelaALIQICMSCOMPRA: TBCDField
      FieldName = 'ALIQICMSCOMPRA'
      Origin = 'ENTRADAS.ALIQICMSCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALORISENTAS: TFloatField
      FieldName = 'VALORISENTAS'
      Origin = 'ENTRADAS.VALORISENTAS'
    end
    object C_TabelaVALOROUTRASICMS: TFloatField
      FieldName = 'VALOROUTRASICMS'
      Origin = 'ENTRADAS.VALOROUTRASICMS'
    end
    object C_TabelaVALORISENTASIPI: TFloatField
      FieldName = 'VALORISENTASIPI'
      Origin = 'ENTRADAS.VALORISENTASIPI'
    end
    object C_TabelaVALOROUTRASIPI: TFloatField
      FieldName = 'VALOROUTRASIPI'
      Origin = 'ENTRADAS.VALOROUTRASIPI'
    end
    object C_TabelaPOSSUIICMS: TStringField
      FieldName = 'POSSUIICMS'
      Origin = 'ENTRADAS.POSSUIICMS'
      Size = 1
    end
    object C_TabelaPOSSUIIPI: TStringField
      FieldName = 'POSSUIIPI'
      Origin = 'ENTRADAS.POSSUIIPI'
      Size = 1
    end
    object C_TabelaCONTABILIZAICMS: TStringField
      FieldName = 'CONTABILIZAICMS'
      Origin = 'ENTRADAS.CONTABILIZAICMS'
      Size = 1
    end
    object C_TabelaPAGOINVOICE: TFloatField
      FieldName = 'PAGOINVOICE'
      Origin = 'ENTRADAS.PAGOINVOICE'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 22
    Top = 209
  end
  inherited ResultSet: TClientDataSet
    Left = 88
  end
  inherited Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
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
      'p.preco as PRECOVENDAProdutosPreco,'
      'T.EMPRESA'
      'from    ((ENTRADASITENS t'
      'LEFT JOIN  ITENS I on I.ITEM = t.ITEM)'
      '    left join UNIDADES u on I.Unidade = u.Unidade)'
      '    left join FAVORECIDOS fa on fa.FAVORECIDO = t.CLIENTEREF'
      
        '    left join produtospreco  p on (p.item = i.item and p.tabelap' +
        'reco = 0)'
      'where '
      't.ENTRADA = :IDMESTRE')
    Left = 163
    Top = 5
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
      '  PDV = :PDV, '
      '  EMPRESA = :EMPRESA,'
      '  CSTPISCOFINS = :CSTPISCOFINS,'
      '  ALIQPIS      = :ALIQPIS,'
      '  ALIQCOFINS   = :ALIQCOFINS,'
      '  VALORPISPROD = :VALORPISPROD,'
      '  VALORCOFINSPROD = :VALORCOFINSPROD,'
      '  CSTIPI          = :CSTIPI,'
      '  ALIQIPI      = :ALIQIPI,    '
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
    InsertSQL.Strings = (
      'insert into ENTRADASITENS'
      '  (ENTRADAITEM, ENTRADA, SEQUENCIA, DESCRICAO, QUANTIDADE,'
      '   PRECO, ITEM, USOTIPOITEM, SUBTOTALITEM, ORDEM,'
      '   HASCHILDREN, CUSTOMEDIO, TAXAVEL,'
      '   COLUNA1, COLUNA2, COLUNA3, COLUNA4, CLIENTEREF,'
      '   QTDRECEBIDA, SITUACAO, REFERENCIA, CUSTOCONTABIL,'
      '   RATEIODESCONTO, CUSTOMEDIO_ANT, CUSTOCONTABIL_ANT,'
      '   LUCRO, INDICELUCRO, NOVOPRECO, ANALISADO, SEMLUCRO,'
      '   ATUALIZOUCUSTO, ATUALIZOUPRECO, FRETEPROPORCIONAL,'
      
        '   MESCLADO, STATUS, CODIGOFORN, NUMEROLOTE, VALIDADE, SAIDAITEM' +
        ', '
      '   VENDEDOR, UNIDADE, FATOR, BAIXAESTOQUE, ALMOXARIFADO,'
      '   BASECALCICMSPROD,  IPI,  ALIQICMS,  CST,  REDUCAOCST, '
      '   CFOPENTRADA,  DESCONTO,  BASECALCSUBSTPROD,  VALORIPIPROD,  '
      'TVA, SITUACAOECF,   VALORICMSPROD,  VALORICMSSUBSTPROD,'
      '   VALORISENTASPROD, COMPENSACAOCUSTO, PDESCONTO, '
      'CFOPCST,IMPORTACAO,FATORPRECO, PRECOVENDA, BAIXAESTOQUEFISCAL, '
      'IDTRIBFEDERAL, '
      
        'QUANTIDADEVOLUME, FABRICACAO, PDV, EMPRESA, CSTPISCOFINS, ALIQPI' +
        'S, '
      '   ALIQCOFINS,'
      '    VALORPISPROD, VALORCOFINSPROD,  CSTIPI,  ALIQIPI, V_BCII,'
      '    V_DESPADUII, V_II, V_IOFII, RATEIODESPESAS, RATEIOFRETE,'
      '  RATEIOSEGURO, FRETE, SEGURO , OUTRASDESPESAS)'
      'values'
      '  (:IDITEM, :IDMESTRE, :SEQUENCIA, :DESCRICAO, :QUANTIDADE,'
      '   :PRECO, :ITEM, :USOTIPOITEM, :SUBTOTALITEM, :ORDEM,'
      '   :HASCHILDREN, :CUSTOMEDIO, :TAXAVEL,'
      '   :COLUNA1, :COLUNA2, :COLUNA3, :COLUNA4, :CLIENTEREF,'
      '   :QTDRECEBIDA, :SITUACAO, :REFERENCIA, :CUSTOCONTABIL,'
      '   :RATEIODESCONTO, :CUSTOMEDIO_ANT, :CUSTOCONTABIL_ANT,'
      '   :LUCRO, :INDICELUCRO, :NOVOPRECO, :ANALISADO, :SEMLUCRO,'
      '   :ATUALIZOUCUSTO, :ATUALIZOUPRECO, :FRETEPROPORCIONAL,'
      '   :MESCLADO, :STATUS, :CODIGOFORN, :NUMEROLOTE, :VALIDADE,'
      '   :SAIDAITEM, :VENDEDOR, :UNIDADE, :FATOR, :BAIXAESTOQUE,'
      '   :ALMOXARIFADO, :BASECALCICMSPROD,  :IPI,  :ALIQICMS,  :CST,'
      '   :REDUCAOCST,  :CFOPENTRADA,  :DESCONTO,'
      '   :BASECALCSUBSTPROD,  :VALORIPIPROD,  :TVA, :SITUACAOECF,'
      '   :VALORICMSPROD,  :VALORICMSSUBSTPROD,  :VALORISENTASPROD,'
      '   :COMPENSACAOCUSTO, :PDESCONTO, :CFOPCST, :IMPORTACAO, '
      ':FATORPRECO, :PRECOVENDA, :BAIXAESTOQUEFISCAL, :IDTRIBFEDERAL, '
      ':QUANTIDADEVOLUME, :FABRICACAO, :PDV, :EMPRESA, :CSTPISCOFINS, '
      
        ':ALIQPIS, :ALIQCOFINS, :VALORPISPROD, :VALORCOFINSPROD, :CSTIPI,' +
        '  '
      
        ':ALIQIPI, :V_BCII, :V_DESPADUII, :V_II, :V_IOFII, :RATEIODESPESA' +
        'S,'
      
        '    :RATEIOFRETE, :RATEIOSEGURO, :FRETE, :SEGURO , :OUTRASDESPES' +
        'AS)')
    DeleteSQL.Strings = (
      'delete from ENTRADASITENS'
      'where'
      '  ENTRADAITEM = :OLD_IDITEM')
    Left = 163
    Top = 54
  end
  inherited C_Itens: TClientDataSet
    Left = 167
    Top = 102
    inherited C_ItensIDITEM: TIntegerField
      Origin = 'ENTRADASITENS.IDITEM'
    end
    inherited C_ItensIDMESTRE: TIntegerField
      Origin = 'ENTRADASITENS.IDMESTRE'
    end
    inherited C_ItensSEQUENCIA: TIntegerField
      Origin = 'ENTRADASITENS.SEQUENCIA'
    end
    inherited C_ItensDESCRICAO: TStringField
      Origin = 'ENTRADASITENS.DESCRICAO'
    end
    inherited C_ItensITEM: TIntegerField
      Origin = 'ENTRADASITENS.ITEM'
      OnValidate = C_ItensITEMValidate
    end
    inherited C_ItensUSOTIPOITEM: TStringField
      Origin = 'ENTRADASITENS.USOTIPOITEM'
    end
    inherited C_ItensI_BALANCO: TStringField [17]
    end
    inherited C_ItensI_COMISSAO: TBCDField [18]
    end
    inherited C_ItensI_ESTOQUE: TBCDField [19]
    end
    inherited C_ItensI_UNIDADE: TStringField [20]
    end
    inherited C_ItensHASCHILDREN: TStringField
      Origin = 'ENTRADASITENS.HASCHILDREN'
    end
    inherited C_ItensQUANTIDADE: TFloatField
      Origin = 'ENTRADASITENS.QUANTIDADE'
      DisplayFormat = '0.###'
    end
    inherited C_ItensPRECO: TFloatField
      Origin = 'ENTRADASITENS.PRECO'
    end
    inherited C_ItensSubTotal: TFloatField
      DisplayWidth = 19
      Origin = 'ENTRADASITENS.SUBTOTAL'
      DisplayFormat = '#,###,###,##0.000'
      EditFormat = '#########0.000000'
    end
    object C_ItensORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'ENTRADASITENS.ORDEM'
    end
    object C_ItensTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Origin = 'ENTRADASITENS.TAXAVEL'
      Size = 1
    end
    object C_ItensCOLUNA1: TStringField
      FieldName = 'COLUNA1'
      Origin = 'ENTRADASITENS.COLUNA1'
    end
    object C_ItensCOLUNA2: TStringField
      FieldName = 'COLUNA2'
      Origin = 'ENTRADASITENS.COLUNA2'
    end
    object C_ItensCOLUNA3: TStringField
      FieldName = 'COLUNA3'
      Origin = 'ENTRADASITENS.COLUNA3'
    end
    object C_ItensCOLUNA4: TStringField
      FieldName = 'COLUNA4'
      Origin = 'ENTRADASITENS.COLUNA4'
    end
    object C_ItensCLIENTEREF: TIntegerField
      FieldName = 'CLIENTEREF'
      Origin = 'ENTRADASITENS.CLIENTEREF'
    end
    object C_ItensSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'ENTRADASITENS.SITUACAO'
      Size = 1
    end
    object C_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ENTRADASITENS.REFERENCIA'
    end
    object C_ItensNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ItensANALISADO: TStringField
      FieldName = 'ANALISADO'
      Origin = 'ENTRADASITENS.ANALISADO'
      Size = 1
    end
    object C_ItensATUALIZOUCUSTO: TStringField
      FieldName = 'ATUALIZOUCUSTO'
      Origin = 'ENTRADASITENS.ATUALIZOUCUSTO'
      Size = 1
    end
    object C_ItensATUALIZOUPRECO: TStringField
      FieldName = 'ATUALIZOUPRECO'
      Origin = 'ENTRADASITENS.ATUALIZOUPRECO'
      Size = 1
    end
    object C_ItensI_FATORLUCRO: TFloatField
      FieldName = 'I_FATORLUCRO'
      Origin = 'ITENS.I_FATORLUCRO'
    end
    object C_ItensLUCRO: TFloatField
      FieldName = 'LUCRO'
      Origin = 'ENTRADASITENS.LUCRO'
    end
    object C_ItensINDICELUCRO: TFloatField
      FieldName = 'INDICELUCRO'
      Origin = 'ENTRADASITENS.INDICELUCRO'
    end
    object C_ItensFRETEPROPORCIONAL: TFloatField
      FieldName = 'FRETEPROPORCIONAL'
      Origin = 'ENTRADASITENS.FRETEPROPORCIONAL'
    end
    object C_ItensMESCLADO: TStringField
      FieldName = 'MESCLADO'
      Origin = 'ENTRADASITENS.MESCLADO'
      Size = 1
    end
    object C_ItensQ_Mesclagens: TDataSetField
      FieldName = 'Q_Mesclagens'
    end
    object C_ItensUltrapassouMesclagem: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'UltrapassouMesclagem'
    end
    object C_ItensSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'ENTRADASITENS.STATUS'
      Size = 1
    end
    object C_ItensCODIGOFORN: TStringField
      FieldName = 'CODIGOFORN'
      Origin = 'ENTRADASITENS.CODIGOFORN'
    end
    object C_ItensSTATUSOLD: TStringField
      FieldName = 'STATUSOLD'
      Origin = 'ENTRADASITENS.STATUSOLD'
      Size = 1
    end
    object C_ItensNUMEROLOTE: TStringField
      FieldName = 'NUMEROLOTE'
      Origin = 'ENTRADASITENS.NUMEROLOTE'
      Size = 12
    end
    object C_ItensVALIDADE: TDateField
      FieldName = 'VALIDADE'
      Origin = 'ENTRADASITENS.VALIDADE'
    end
    object C_ItensCONTROLEVALIDADE: TStringField
      FieldName = 'CONTROLEVALIDADE'
      Origin = 'ITENS.CONTROLEVALIDADE'
      Size = 1
    end
    object C_ItensI_SEMLUCRO: TFloatField
      FieldName = 'I_SEMLUCRO'
      Origin = 'ITENS.I_SEMLUCRO'
    end
    object C_ItensSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Origin = 'ENTRADASITENS.SAIDAITEM'
    end
    object C_ItensVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'ENTRADASITENS.VENDEDOR'
    end
    object C_ItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADASITENS.UNIDADE'
      OnChange = C_ItensUNIDADEChange
      OnValidate = C_ItensUNIDADEValidate
      Size = 6
    end
    object C_ItensFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'ENTRADASITENS.FATOR'
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
    object C_ItensCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      Origin = 'ENTRADASITENS.CUSTOCONTABIL'
    end
    object C_ItensCUSTOMEDIO_ANT: TFloatField
      FieldName = 'CUSTOMEDIO_ANT'
      Origin = 'ENTRADASITENS.CUSTOMEDIO_ANT'
    end
    object C_ItensCUSTOCONTABIL_ANT: TFloatField
      FieldName = 'CUSTOCONTABIL_ANT'
      Origin = 'ENTRADASITENS.CUSTOCONTABIL_ANT'
    end
    object C_ItensNOVOPRECO: TFloatField
      FieldName = 'NOVOPRECO'
      Origin = 'ENTRADASITENS.NOVOPRECO'
    end
    object C_ItensI_CUSTOMEDIO: TFloatField
      FieldName = 'I_CUSTOMEDIO'
      Origin = 'ITENS.I_CUSTOMEDIO'
    end
    object C_ItensI_PRECOCOMPRA: TFloatField
      FieldName = 'I_PRECOCOMPRA'
      Origin = 'ITENS.I_PRECOCOMPRA'
    end
    object C_ItensBAIXAESTOQUE: TStringField
      FieldName = 'BAIXAESTOQUE'
      Origin = 'ENTRADASITENS.BAIXAESTOQUE'
      Size = 1
    end
    object C_ItensTrocouItem: TBooleanField
      FieldKind = fkInternalCalc
      FieldName = 'TrocouItem'
    end
    object C_ItensOLDITEM: TIntegerField
      FieldName = 'OLDITEM'
      Origin = 'ENTRADASITENS.OLDITEM'
    end
    object C_ItensQ_EntradasItensFilhos: TDataSetField
      FieldName = 'Q_EntradasItensFilhos'
    end
    object C_ItensALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'ENTRADASITENS.ALMOXARIFADO'
    end
    object C_ItensOldUnidade: TStringField
      FieldName = 'OldUnidade'
      Origin = 'ENTRADASITENS.OLDUNIDADE'
      Size = 6
    end
    object C_ItenslkCST: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCST'
      LookupDataSet = C_CFOPs_CSTs
      LookupKeyFields = 'CST'
      LookupResultField = 'CST'
      KeyFields = 'CST'
      Size = 3
      Lookup = True
    end
    object C_ItensSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'ENTRADASITENS.SITUACAOECF'
      Size = 1
    end
    object C_ItenslkCFOP: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCFOP'
      LookupDataSet = C_CFOPs
      LookupKeyFields = 'CFOP'
      LookupResultField = 'CFOP'
      KeyFields = 'CFOPENTRADA'
      Size = 4
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
    object C_ItensCFOPENTRADA: TStringField
      FieldName = 'CFOPENTRADA'
      Origin = 'ENTRADASITENS.CFOPENTRADA'
      Size = 4
    end
    object C_ItensCFOPCST: TStringField
      FieldName = 'CFOPCST'
      Origin = 'ENTRADASITENS.CFOPCST'
      Size = 4
    end
    object C_ItenslkAlmoxarifado: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAlmoxarifado'
      LookupDataSet = C_Almoxarifado
      LookupKeyFields = 'ALMOXARIFADO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ALMOXARIFADO'
      Size = 30
      Lookup = True
    end
    object C_ItensI_INDEXADOR: TIntegerField
      FieldName = 'I_INDEXADOR'
      Origin = 'ITENS.I_INDEXADOR'
    end
    object C_ItensBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      Origin = 'ENTRADASITENS.BAIXAESTOQUEFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_ItensIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
      Origin = 'ENTRADASITENS.IDTRIBFEDERAL'
    end
    object C_ItensI_IDTRIBFEDERAL: TIntegerField
      FieldName = 'I_IDTRIBFEDERAL'
      Origin = 'ITENS.I_IDTRIBFEDERAL'
    end
    object C_ItensFABRICACAO: TDateField
      FieldName = 'FABRICACAO'
      Origin = 'ENTRADASITENS.FABRICACAO'
    end
    object C_ItensPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'ENTRADASITENS.PDV'
      Required = True
    end
    object C_ItensCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'ENTRADASITENS.CSTPISCOFINS'
      Size = 2
    end
    object C_ItensI_NCM: TStringField
      FieldName = 'I_NCM'
      Origin = 'ITENS.I_NCM'
      Size = 15
    end
    object C_ItensCST: TStringField
      FieldName = 'CST'
      Origin = 'ENTRADASITENS.CST'
      Size = 3
    end
    object C_ItensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'ENTRADASITENS.EMPRESA'
      Required = True
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
    object C_ItenslookUpCSTs: TStringField
      FieldKind = fkLookup
      FieldName = 'lookUpCSTs'
      LookupDataSet = C_CSTs
      LookupKeyFields = 'CST'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CST'
      Size = 100
      Lookup = True
    end
    object C_ItenslookUpCSTsPisCofins: TStringField
      FieldKind = fkLookup
      FieldName = 'lookUpCSTsPisCofins'
      LookupDataSet = C_CSTs_PisCofins
      LookupKeyFields = 'CSTPISCOFINS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTPISCOFINS'
      Size = 2
      Lookup = True
    end
    object C_ItenslookUpCSTsIPI: TStringField
      FieldKind = fkLookup
      FieldName = 'lookUpCSTsIPI'
      LookupDataSet = C_CSTs_IPI
      LookupKeyFields = 'CSTIPI'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTIPI'
      Size = 2
      Lookup = True
    end
    object C_ItensQUANTIDADEVOLUME: TFloatField
      FieldName = 'QUANTIDADEVOLUME'
      Origin = 'ENTRADASITENS.QUANTIDADEVOLUME'
    end
    object C_ItensSUBTOTALITEM: TFloatField
      FieldName = 'SUBTOTALITEM'
      Origin = 'ENTRADASITENS.SUBTOTALITEM'
    end
    object C_ItensCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'ENTRADASITENS.CUSTOMEDIO'
    end
    object C_ItensRATEIODESCONTO: TFloatField
      FieldName = 'RATEIODESCONTO'
      Origin = 'ENTRADASITENS.RATEIODESCONTO'
    end
    object C_ItensRATEIOSEGURO: TFloatField
      FieldName = 'RATEIOSEGURO'
      Origin = 'ENTRADASITENS.RATEIOSEGURO'
    end
    object C_ItensRATEIOFRETE: TFloatField
      FieldName = 'RATEIOFRETE'
      Origin = 'ENTRADASITENS.RATEIOFRETE'
    end
    object C_ItensRATEIODESPESAS: TFloatField
      FieldName = 'RATEIODESPESAS'
      Origin = 'ENTRADASITENS.RATEIODESPESAS'
    end
    object C_ItensCUSTOCONTABILOLD: TFloatField
      FieldName = 'CUSTOCONTABILOLD'
      Origin = 'ENTRADASITENS.CUSTOCONTABILOLD'
    end
    object C_ItensOLDQUANTIDADE: TFloatField
      FieldName = 'OLDQUANTIDADE'
      Origin = 'ENTRADASITENS.OLDQUANTIDADE'
    end
    object C_ItensCOMPENSACAOCUSTO: TFloatField
      FieldName = 'COMPENSACAOCUSTO'
      Origin = 'ENTRADASITENS.COMPENSACAOCUSTO'
    end
    object C_ItensBASECALCICMSPROD: TFloatField
      FieldName = 'BASECALCICMSPROD'
      Origin = 'ENTRADASITENS.BASECALCICMSPROD'
      OnChange = C_ItensBASECALCICMSPRODChange
    end
    object C_ItensBASECALCSUBSTPROD: TFloatField
      FieldName = 'BASECALCSUBSTPROD'
      Origin = 'ENTRADASITENS.BASECALCSUBSTPROD'
    end
    object C_ItensVALORICMSPROD: TFloatField
      FieldName = 'VALORICMSPROD'
      Origin = 'ENTRADASITENS.VALORICMSPROD'
      OnChange = C_ItensVALORICMSPRODChange
    end
    object C_ItensVALORICMSSUBSTPROD: TFloatField
      FieldName = 'VALORICMSSUBSTPROD'
      Origin = 'ENTRADASITENS.VALORICMSSUBSTPROD'
    end
    object C_ItensVALORISENTASPROD: TFloatField
      FieldName = 'VALORISENTASPROD'
      Origin = 'ENTRADASITENS.VALORISENTASPROD'
    end
    object C_ItensVALORIPIPROD: TFloatField
      FieldName = 'VALORIPIPROD'
      Origin = 'ENTRADASITENS.VALORIPIPROD'
      OnChange = C_ItensVALORIPIPRODChange
    end
    object C_ItensVALORPISPROD: TFloatField
      FieldName = 'VALORPISPROD'
      Origin = 'ENTRADASITENS.VALORPISPROD'
    end
    object C_ItensVALORCOFINSPROD: TFloatField
      FieldName = 'VALORCOFINSPROD'
      Origin = 'ENTRADASITENS.VALORCOFINSPROD'
    end
    object C_ItensIPI: TFloatField
      FieldName = 'IPI'
      Origin = 'ENTRADASITENS.IPI'
      OnChange = C_ItensIPIChange
    end
    object C_ItensALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
      Origin = 'ENTRADASITENS.ALIQIPI'
      OnChange = C_ItensALIQICMSChange
    end
    object C_ItensCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'ENTRADASITENS.CSTIPI'
      Size = 2
    end
    object C_ItensALIQICMS: TFloatField
      FieldName = 'ALIQICMS'
      Origin = 'ENTRADASITENS.ALIQICMS'
      OnChange = C_ItensALIQICMSChange
    end
    object C_ItensALIQPIS: TFloatField
      FieldName = 'ALIQPIS'
      Origin = 'ENTRADASITENS.ALIQPIS'
    end
    object C_ItensALIQCOFINS: TFloatField
      FieldName = 'ALIQCOFINS'
      Origin = 'ENTRADASITENS.ALIQCOFINS'
    end
    object C_ItensREDUCAOCST: TFloatField
      FieldName = 'REDUCAOCST'
      Origin = 'ENTRADASITENS.REDUCAOCST'
    end
    object C_ItensDESCONTO: TFloatField
      FieldName = 'DESCONTO'
      LookupDataSet = C_Almoxarifado
      Origin = 'ENTRADASITENS.DESCONTO'
      OnChange = C_ItensDESCONTOChange
      OnValidate = C_ItensDESCONTOValidate
    end
    object C_ItensTVA: TFloatField
      FieldName = 'TVA'
      Origin = 'ENTRADASITENS.TVA'
    end
    object C_ItensIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'ENTRADASITENS.IMPORTACAO'
    end
    object C_ItensFRETE: TFloatField
      FieldName = 'FRETE'
      Origin = 'ENTRADASITENS.FRETE'
    end
    object C_ItensSEGURO: TFloatField
      FieldName = 'SEGURO'
      Origin = 'ENTRADASITENS.SEGURO'
    end
    object C_ItensOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
      Origin = 'ENTRADASITENS.OUTRASDESPESAS'
    end
    object C_ItensSEMLUCRO: TFloatField
      FieldName = 'SEMLUCRO'
      Origin = 'ENTRADASITENS.SEMLUCRO'
    end
    object C_ItensFATORPRECO: TFloatField
      FieldName = 'FATORPRECO'
      Origin = 'ENTRADASITENS.FATORPRECO'
    end
    object C_ItensPDESCONTO: TFloatField
      FieldName = 'PDESCONTO'
      Origin = 'ENTRADASITENS.PDESCONTO'
      OnChange = C_ItensPDESCONTOChange
    end
    object C_ItensI_PESOBRUTO: TBCDField
      FieldName = 'I_PESOBRUTO'
      Origin = 'ITENS.I_PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object C_ItensI_PESOLIQUIDO: TBCDField
      FieldName = 'I_PESOLIQUIDO'
      Origin = 'ITENS.I_PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object C_ItensI_ESTOQUEVOLUME: TBCDField
      FieldName = 'I_ESTOQUEVOLUME'
      Origin = 'ITENS.I_ESTOQUEVOLUME'
      Precision = 18
      Size = 3
    end
    object C_ItensQTDRECEBIDA: TBCDField
      FieldName = 'QTDRECEBIDA'
      Origin = 'ENTRADASITENS.QTDRECEBIDA'
      Precision = 18
      Size = 3
    end
    object C_ItensPRECOVENDA: TBCDField
      FieldName = 'PRECOVENDA'
      Origin = 'ENTRADASITENS.PRECOVENDA'
      OnChange = C_ItensPRECOVENDAChange
      Precision = 18
      Size = 3
    end
    object C_ItensPRECOVENDAPRODUTOSPRECO: TBCDField
      FieldName = 'PRECOVENDAPRODUTOSPRECO'
      Origin = 'PRODUTOSPRECO.PRECOVENDAPRODUTOSPRECO'
      Precision = 18
      Size = 3
    end
  end
  inherited C_ItensDS: TDataSource
    Left = 160
    Top = 152
  end
  inherited Q_TiposMovimento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.TipoOrigem'
      'From TiposMovimento t, TiposPadrao tp'
      'Where t.Tipo = '#39'E'#39'  and t.TipoPadrao = tp.TipoPadrao'
      'Order by t.ordem, t.TipoPadrao, t.TipoMovimento')
    Left = 538
  end
  inherited P_TiposMovimento: TDataSetProvider
    Options = [poAllowMultiRecordUpdates, poDisableInserts, poDisableDeletes]
    Left = 538
  end
  inherited C_TiposMovimento: TClientDataSet
    Left = 540
    Top = 101
    inherited C_TiposMovimentoDESCRICAO: TStringField
      DisplayWidth = 18
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
    object C_TiposMovimentoCB_CODIGOFORN: TStringField
      FieldName = 'CB_CODIGOFORN'
      Origin = 'TIPOSMOVIMENTO.CB_CODIGOFORN'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CODIGOFORN: TStringField
      FieldName = 'TIT1_CODIGOFORN'
      Origin = 'TIPOSMOVIMENTO.TIT1_CODIGOFORN'
    end
    object C_TiposMovimentoTIT2_CODIGOFORN: TStringField
      FieldName = 'TIT2_CODIGOFORN'
      Origin = 'TIPOSMOVIMENTO.TIT2_CODIGOFORN'
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
    object C_TiposMovimentoTIPOORIGEM: TIntegerField
      FieldName = 'TIPOORIGEM'
      Origin = 'TIPOSPADRAO.TIPOORIGEM'
    end
    object C_TiposMovimentoDIASVALIDADE: TIntegerField
      FieldName = 'DIASVALIDADE'
      Origin = 'TIPOSMOVIMENTO.DIASVALIDADE'
    end
    object C_TiposMovimentoALMOXPADRAO: TIntegerField
      FieldName = 'ALMOXPADRAO'
      Origin = 'TIPOSMOVIMENTO.ALMOXPADRAO'
    end
    object C_TiposMovimentoCB_ICMS: TStringField
      FieldName = 'CB_ICMS'
      Origin = 'TIPOSMOVIMENTO.CB_ICMS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_ICMS: TStringField
      FieldName = 'TIT1_ICMS'
      Origin = 'TIPOSMOVIMENTO.TIT1_ICMS'
    end
    object C_TiposMovimentoTIT2_ICMS: TStringField
      FieldName = 'TIT2_ICMS'
      Origin = 'TIPOSMOVIMENTO.TIT2_ICMS'
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
    object C_TiposMovimentoTIT1_TVA: TStringField
      FieldName = 'TIT1_TVA'
      Origin = 'TIPOSMOVIMENTO.TIT1_TVA'
    end
    object C_TiposMovimentoTIT2_TVA: TStringField
      FieldName = 'TIT2_TVA'
      Origin = 'TIPOSMOVIMENTO.TIT2_TVA'
    end
    object C_TiposMovimentoCB_TVA: TStringField
      FieldName = 'CB_TVA'
      Origin = 'TIPOSMOVIMENTO.CB_TVA'
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
    object C_TiposMovimentoTIT1_IPI: TStringField
      FieldName = 'TIT1_IPI'
      Origin = 'TIPOSMOVIMENTO.TIT1_IPI'
    end
    object C_TiposMovimentoTIT2_IPI: TStringField
      FieldName = 'TIT2_IPI'
      Origin = 'TIPOSMOVIMENTO.TIT2_IPI'
    end
    object C_TiposMovimentoCB_IPI: TStringField
      FieldName = 'CB_IPI'
      Origin = 'TIPOSMOVIMENTO.CB_IPI'
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
    object C_TiposMovimentoCB_DESCONTOITEM: TStringField
      FieldName = 'CB_DESCONTOITEM'
      Origin = 'TIPOSMOVIMENTO.CB_DESCONTOITEM'
      Size = 1
    end
    object C_TiposMovimentoCB_COMPENSACAO: TStringField
      FieldName = 'CB_COMPENSACAO'
      Origin = 'TIPOSMOVIMENTO.CB_COMPENSACAO'
      Size = 1
    end
    object C_TiposMovimentoCB_COMPENSACAONOCUSTO: TStringField
      FieldName = 'CB_COMPENSACAONOCUSTO'
      Origin = 'TIPOSMOVIMENTO.CB_COMPENSACAONOCUSTO'
      Size = 1
    end
    object C_TiposMovimentoCB_NOTAFISCAL: TStringField
      FieldName = 'CB_NOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.CB_NOTAFISCAL'
      Size = 1
    end
    object C_TiposMovimentoCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Origin = 'TIPOSMOVIMENTO.CFOPASSOCIADO'
      Size = 4
    end
    object C_TiposMovimentoCB_ENTRADAPRECOVENDA: TStringField
      FieldName = 'CB_ENTRADAPRECOVENDA'
      Origin = 'TIPOSMOVIMENTO.CB_ENTRADAPRECOVENDA'
      Size = 1
    end
    object C_TiposMovimentoBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      Origin = 'TIPOSMOVIMENTO.BAIXAESTOQUEFISCAL'
      FixedChar = True
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
    object C_TiposMovimentoCB_PRECO: TStringField
      FieldName = 'CB_PRECO'
      Origin = 'TIPOSMOVIMENTO.CB_PRECO'
      Size = 1
    end
    object C_TiposMovimentoCALCULAPISCOFINS: TStringField
      FieldName = 'CALCULAPISCOFINS'
      Origin = 'TIPOSMOVIMENTO.CALCULAPISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_TiposMovimentoTIPOIMPRESSAO_OP: TStringField
      FieldName = 'TIPOIMPRESSAO_OP'
      Origin = 'TIPOSMOVIMENTO.TIPOIMPRESSAO_OP'
      Size = 3
    end
  end
  inherited C_TiposMovimentoDS: TDataSource
    Left = 538
    Top = 154
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
      'where Tipo in ('#39'E'#39', '#39'A'#39') and Desativado = '#39'N'#39' '
      'and  (Validade is null or Validade >= Current_Date)'
      '')
    UniDirectional = True
    Left = 628
    Top = 207
  end
  object P_PlanosPagamento: TDataSetProvider
    DataSet = Q_PlanosPagamento
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 628
    Top = 260
  end
  object C_PlanosPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PlanosPagamento'
    Left = 626
    Top = 319
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
    object C_PlanosPagamentoQTDPARCELAS: TIntegerField
      FieldName = 'QTDPARCELAS'
      Origin = 'PLANOSPAGAMENTO.QTDPARCELAS'
    end
    object C_PlanosPagamentoINTERVALOS: TStringField
      FieldName = 'INTERVALOS'
      Origin = 'PLANOSPAGAMENTO.INTERVALOS'
      Size = 255
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
    object C_PlanosPagamentoCARENCIAENTRADA: TStringField
      FieldName = 'CARENCIAENTRADA'
      Origin = 'PLANOSPAGAMENTO.CARENCIAENTRADA'
      Size = 10
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
    object C_PlanosPagamentoMENORVALOR: TBCDField
      FieldName = 'MENORVALOR'
      Origin = 'PLANOSPAGAMENTO.MENORVALOR'
      Size = 2
    end
    object C_PlanosPagamentoJUROS: TBCDField
      FieldName = 'JUROS'
      Origin = 'PLANOSPAGAMENTO.JUROS'
      Precision = 18
      Size = 2
    end
    object C_PlanosPagamentoPDESCONTO: TBCDField
      FieldName = 'PDESCONTO'
      Origin = 'PLANOSPAGAMENTO.PDESCONTO'
      Precision = 18
      Size = 2
    end
    object C_PlanosPagamentoPERCENTUALENTRADA: TBCDField
      FieldName = 'PERCENTUALENTRADA'
      Origin = 'PLANOSPAGAMENTO.PERCENTUALENTRADA'
      Precision = 18
      Size = 2
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
    Left = 363
    Top = 207
  end
  object P_TiposEntrega: TDataSetProvider
    DataSet = Q_TiposEntrega
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 363
    Top = 260
  end
  object C_TiposEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposEntrega'
    Left = 367
    Top = 313
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
    Left = 88
    Top = 167
  end
  object Q_Parcelas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'Select '#9'ID, Titulo, Parcela, Vencimento, Competencia, Valor, '
      #9'(FaltaPagar) as Saldo,'
      #9'(Valor - FaltaPagar) as Pgtos,'
      #9'Compra as IDMestre, '
      #9'ValorPago, Fornecedor, NotaFiscal, Status, '
      #9'DataAntecipacao, ValorDescAntecipado,'
      #9'JurosPlano, Usuario, Descontos, JurosPagos,'
      #9'DataAtrasado, ValorJurosMora, ValorMulta, '
      #9'CreditoUtilizado, CreditoGerado, '
      
        #9'Multa, JurosMora, Origem_APagar, IDGerador_APagar,             ' +
        '    Indexador, PDV, EMPRESA'
      #9
      'from DuplicatasAPagar'
      ''
      'Where Compra = :IDMestre '
      '')
    UpdateObject = U_Parcelas
    Left = 448
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDMESTRE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ParcelasDS: TDataSource
    DataSet = C_Parcelas
    Left = 448
    Top = 154
  end
  object Q_MasterItensDS: TDataSource
    DataSet = Q_Itens
    Left = 86
    Top = 113
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
    BeforeOpen = Q_LocaisEntregaBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *'
      'From FavorecidosEntrega'
      'Where Favorecido = :FAVORECIDO'
      'Order by Descricao')
    UniDirectional = True
    Left = 158
    Top = 205
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FAVORECIDO'
        ParamType = ptUnknown
      end>
  end
  object C_LocaisEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_LocaisEntrega'
    AfterClose = C_LocaisEntregaAfterClose
    Left = 157
    Top = 302
    object C_LocaisEntregaENTREGA: TIntegerField
      FieldName = 'ENTREGA'
      Origin = 'FAVORECIDOSENTREGA.ENTREGA'
      Required = True
    end
    object C_LocaisEntregaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOSENTREGA.FAVORECIDO'
      Required = True
    end
    object C_LocaisEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'FAVORECIDOSENTREGA.DESCRICAO'
    end
    object C_LocaisEntregaENDERECOENTREGA: TStringField
      FieldName = 'ENDERECOENTREGA'
      Origin = 'FAVORECIDOSENTREGA.ENDERECOENTREGA'
      Size = 40
    end
    object C_LocaisEntregaCIDADEENTREGA: TStringField
      FieldName = 'CIDADEENTREGA'
      Origin = 'FAVORECIDOSENTREGA.CIDADEENTREGA'
      Size = 30
    end
    object C_LocaisEntregaUFENTREGA: TStringField
      FieldName = 'UFENTREGA'
      Origin = 'FAVORECIDOSENTREGA.UFENTREGA'
      Size = 2
    end
    object C_LocaisEntregaCEPENTREGA: TStringField
      FieldName = 'CEPENTREGA'
      Origin = 'FAVORECIDOSENTREGA.CEPENTREGA'
      Size = 10
    end
    object C_LocaisEntregaPAISENTREGA: TIntegerField
      FieldName = 'PAISENTREGA'
      Origin = 'FAVORECIDOSENTREGA.PAISENTREGA'
    end
    object C_LocaisEntregaFONEENTREGA: TStringField
      FieldName = 'FONEENTREGA'
      Origin = 'FAVORECIDOSENTREGA.FONEENTREGA'
      Size = 15
    end
  end
  object C_LocaisEntregaDS: TDataSource
    DataSet = C_LocaisEntrega
    Left = 158
    Top = 350
  end
  object P_LocaisEntrega: TDataSetProvider
    DataSet = Q_LocaisEntrega
    Constraints = True
    Options = [poAllowMultiRecordUpdates, poDisableInserts, poDisableDeletes]
    Left = 158
    Top = 253
  end
  object C_Parcelas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Parcelas
    Params = <>
    BeforePost = C_ParcelasBeforePost
    OnNewRecord = C_ParcelasNewRecord
    Left = 450
    Top = 103
    object C_ParcelasID: TIntegerField
      FieldName = 'ID'
      Origin = 'DUPLICATASAPAGAR.ID'
      Required = True
    end
    object C_ParcelasTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'DUPLICATASAPAGAR.TITULO'
      Size = 10
    end
    object C_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
      Origin = 'DUPLICATASAPAGAR.PARCELA'
    end
    object C_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'DUPLICATASAPAGAR.VENCIMENTO'
    end
    object C_ParcelasCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
      Origin = 'DUPLICATASAPAGAR.COMPETENCIA'
    end
    object C_ParcelasVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'DUPLICATASAPAGAR.VALOR'
      OnValidate = C_ParcelasVALORValidate
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 2
    end
    object C_ParcelasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'DUPLICATASAPAGAR.SALDO'
      DisplayFormat = '##,##0.000'
      Precision = 18
      Size = 2
    end
    object C_ParcelasIDMESTRE: TIntegerField
      FieldName = 'IDMESTRE'
      Origin = 'DUPLICATASAPAGAR.IDMESTRE'
    end
    object C_ParcelasVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Origin = 'DUPLICATASAPAGAR.VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Origin = 'DUPLICATASAPAGAR.NOTAFISCAL'
      Size = 15
    end
    object C_ParcelasSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'DUPLICATASAPAGAR.STATUS'
    end
    object C_ParcelasDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
      Origin = 'DUPLICATASAPAGAR.DATAANTECIPACAO'
    end
    object C_ParcelasVALORDESCANTECIPADO: TBCDField
      FieldName = 'VALORDESCANTECIPADO'
      Origin = 'DUPLICATASAPAGAR.VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSPLANO: TBCDField
      FieldName = 'JUROSPLANO'
      Origin = 'DUPLICATASAPAGAR.JUROSPLANO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'DUPLICATASAPAGAR.USUARIO'
    end
    object C_ParcelasDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Origin = 'DUPLICATASAPAGAR.DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATAATRASADO: TDateField
      FieldName = 'DATAATRASADO'
      Origin = 'DUPLICATASAPAGAR.DATAATRASADO'
    end
    object C_ParcelasVALORJUROSMORA: TBCDField
      FieldName = 'VALORJUROSMORA'
      Origin = 'DUPLICATASAPAGAR.VALORJUROSMORA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasVALORMULTA: TBCDField
      FieldName = 'VALORMULTA'
      Origin = 'DUPLICATASAPAGAR.VALORMULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCREDITOUTILIZADO: TBCDField
      FieldName = 'CREDITOUTILIZADO'
      Origin = 'DUPLICATASAPAGAR.CREDITOUTILIZADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCREDITOGERADO: TBCDField
      FieldName = 'CREDITOGERADO'
      Origin = 'DUPLICATASAPAGAR.CREDITOGERADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'DUPLICATASAPAGAR.FORNECEDOR'
    end
    object C_ParcelasJUROSPAGOS: TBCDField
      FieldName = 'JUROSPAGOS'
      Origin = 'DUPLICATASAPAGAR.JUROSPAGOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasMULTA: TBCDField
      FieldName = 'MULTA'
      Origin = 'DUPLICATASAPAGAR.MULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSMORA: TBCDField
      FieldName = 'JUROSMORA'
      Origin = 'DUPLICATASAPAGAR.JUROSMORA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasPGTOS: TBCDField
      FieldName = 'PGTOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasORIGEM_APAGAR: TIntegerField
      FieldName = 'ORIGEM_APAGAR'
      Origin = 'DUPLICATASAPAGAR.ORIGEM_APAGAR'
    end
    object C_ParcelasIDGERADOR_APAGAR: TIntegerField
      FieldName = 'IDGERADOR_APAGAR'
      Origin = 'DUPLICATASAPAGAR.IDGERADOR_APAGAR'
    end
    object C_ParcelasINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Origin = 'DUPLICATASAPAGAR.INDEXADOR'
    end
    object C_ParcelasPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'DUPLICATASAPAGAR.PDV'
      Required = True
    end
    object C_ParcelasEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'DUPLICATASAPAGAR.EMPRESA'
      Required = True
    end
  end
  object U_Parcelas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TitulosAReceber '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update DUPLICATASAPAGAR'
      'set'
      '  TITULO = :TITULO,'
      '  PARCELA = :PARCELA,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  COMPETENCIA = :COMPETENCIA,'
      '  VALOR = :VALOR,'
      '  VALORPAGO = :VALORPAGO,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  STATUS = :STATUS,'
      '  DATAANTECIPACAO = :DATAANTECIPACAO,'
      '  VALORDESCANTECIPADO = :VALORDESCANTECIPADO,'
      '  JUROSPLANO = :JUROSPLANO,'
      '  USUARIO = :USUARIO,'
      '  DESCONTOS = :DESCONTOS,'
      '  JUROSPAGOS = :JUROSPAGOS,'
      '  DATAATRASADO = :DATAATRASADO,'
      '  VALORJUROSMORA = :VALORJUROSMORA,'
      '  VALORMULTA = :VALORMULTA,'
      '  CREDITOUTILIZADO = :CREDITOUTILIZADO,'
      '  CREDITOGERADO = :CREDITOGERADO,'
      '  MULTA = :MULTA,'
      '  JUROSMORA = :JUROSMORA,'
      '  ORIGEM_APAGAR = :ORIGEM_APAGAR,'
      '  IDGERADOR_APAGAR = :IDGERADOR_APAGAR,'
      '  INDEXADOR = :INDEXADOR, '
      '  PDV = :PDV, '
      '  EMPRESA = :EMPRESA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into DUPLICATASAPAGAR'
      '  (ID, TITULO, PARCELA, VENCIMENTO, COMPETENCIA, VALOR, COMPRA,'
      '   VALORPAGO, FORNECEDOR, NOTAFISCAL, STATUS, DATAANTECIPACAO, '
      'VALORDESCANTECIPADO,'
      '   JUROSPLANO, USUARIO, DESCONTOS, JUROSPAGOS, DATAATRASADO, '
      'VALORJUROSMORA,'
      '   VALORMULTA, CREDITOUTILIZADO, CREDITOGERADO, MULTA, '
      'JUROSMORA, ORIGEM_APAGAR, IDGERADOR_APAGAR, INDEXADOR, PDV, '
      'EMPRESA)'
      'values'
      
        '  (:ID, :TITULO, :PARCELA, :VENCIMENTO, :COMPETENCIA, :VALOR, :I' +
        'DMESTRE,'
      
        '   :VALORPAGO, :FORNECEDOR, :NOTAFISCAL, :STATUS, :DATAANTECIPAC' +
        'AO,'
      '   :VALORDESCANTECIPADO, :JUROSPLANO, :USUARIO, :DESCONTOS, '
      ':JUROSPAGOS,'
      '   :DATAATRASADO, :VALORJUROSMORA, :VALORMULTA, '
      ':CREDITOUTILIZADO, :CREDITOGERADO,'
      '   :MULTA, :JUROSMORA, :ORIGEM_APAGAR, :IDGERADOR_APAGAR, '
      ':INDEXADOR, :PDV, :EMPRESA)'
      ' '
      ' ')
    DeleteSQL.Strings = (
      'delete from DUPLICATASAPAGAR'
      'where'
      '  ID = :OLD_ID')
    Left = 448
    Top = 51
  end
  object Q_Mesclagens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterItensDS
    SQL.Strings = (
      'Select '#9'ENTRADAITEMMESCLA, '
      #9'ENTRADAITEM_ORIGINAL, '
      #9'QUANTIDADE,'
      #9'ENTRADAITEM AS IDITEM, '
      #9'QTDMAXIMA, '
      #9'ENTRADA_ORIGINAL,'
      #9'Quantidade as OldQuantidade,'
      '  '#9'Fechar_Original,'
      '                FATOR, UNIDADE,'
      '                EMPRESA '
      'from EntradasItensMescla'
      'Where EntradaItem = :IDITEM')
    UpdateObject = U_Mesclagens
    Left = 363
    Top = 5
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
      'from EntradasItensMescla '
      'where'
      '  ENTRADAITEMMESCLA = :ENTRADAITEMMESCLA')
    ModifySQL.Strings = (
      'update EntradasItensMescla'
      'set'
      '  ENTRADAITEM_ORIGINAL = :ENTRADAITEM_ORIGINAL,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  ENTRADAITEM = :IDITEM,'
      '  QTDMAXIMA = :QTDMAXIMA,'
      '  ENTRADA_ORIGINAL = :ENTRADA_ORIGINAL,'
      '  Fechar_Original = :Fechar_Original,'
      '  FATOR = :FATOR,'
      '  UNIDADE = :UNIDADE,'
      '  EMPRESA = :EMPRESA'
      'where'
      '  ENTRADAITEMMESCLA = :OLD_ENTRADAITEMMESCLA')
    InsertSQL.Strings = (
      'insert into EntradasItensMescla'
      '  (ENTRADAITEMMESCLA, ENTRADAITEM_ORIGINAL, QUANTIDADE, '
      'ENTRADAITEM, QTDMAXIMA, '
      '   ENTRADA_ORIGINAL, Fechar_Original, FATOR, UNIDADE, EMPRESA)'
      'values'
      
        '  (:ENTRADAITEMMESCLA, :ENTRADAITEM_ORIGINAL, :QUANTIDADE, :IDIT' +
        'EM, '
      ':QTDMAXIMA, '
      
        '   :ENTRADA_ORIGINAL, :Fechar_Original, :FATOR, :UNIDADE, :EMPRE' +
        'SA)'
      ' ')
    DeleteSQL.Strings = (
      'delete from EntradasItensMescla'
      'where'
      '  ENTRADAITEMMESCLA = :OLD_ENTRADAITEMMESCLA')
    Left = 363
    Top = 51
  end
  object C_Mesclagens: TClientDataSet
    Aggregates = <>
    DataSetField = C_ItensQ_Mesclagens
    Params = <>
    OnNewRecord = C_MesclagensNewRecord
    Left = 359
    Top = 105
    object C_MesclagensENTRADAITEMMESCLA: TIntegerField
      FieldName = 'ENTRADAITEMMESCLA'
      Origin = 'ENTRADASITENSMESCLA.ENTRADAITEMMESCLA'
      Required = True
    end
    object C_MesclagensENTRADAITEM_ORIGINAL: TIntegerField
      FieldName = 'ENTRADAITEM_ORIGINAL'
      Origin = 'ENTRADASITENSMESCLA.ENTRADAITEM_ORIGINAL'
    end
    object C_MesclagensQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADASITENSMESCLA.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_MesclagensIDITEM: TIntegerField
      FieldName = 'IDITEM'
      Origin = 'ENTRADASITENSMESCLA.IDITEM'
    end
    object C_MesclagensQTDMAXIMA: TBCDField
      FieldName = 'QTDMAXIMA'
      Origin = 'ENTRADASITENSMESCLA.QTDMAXIMA'
      Precision = 18
      Size = 3
    end
    object C_MesclagensENTRADA_ORIGINAL: TIntegerField
      FieldName = 'ENTRADA_ORIGINAL'
      Origin = 'ENTRADASITENSMESCLA.ENTRADA_ORIGINAL'
    end
    object C_MesclagensOLDQUANTIDADE: TBCDField
      FieldName = 'OLDQUANTIDADE'
      Origin = 'ENTRADASITENSMESCLA.OLDQUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_MesclagensFECHAR_ORIGINAL: TStringField
      FieldName = 'FECHAR_ORIGINAL'
      Origin = 'ENTRADASITENSMESCLA.FECHAR_ORIGINAL'
      Size = 1
    end
    object C_MesclagensFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'ENTRADASITENSMESCLA.FATOR'
    end
    object C_MesclagensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADASITENSMESCLA.UNIDADE'
      Size = 6
    end
    object C_MesclagensEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'ENTRADASITENSMESCLA.EMPRESA'
      Required = True
    end
  end
  object C_MesclagensDS: TDataSource
    DataSet = C_Mesclagens
    Left = 363
    Top = 154
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
      'Select  *  From StatusEntradas'
      'order by Ordem')
    UniDirectional = True
    Left = 628
    Top = 5
  end
  object P_Status: TDataSetProvider
    DataSet = Q_Status
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 628
    Top = 51
  end
  object C_Status: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Status'
    Left = 628
    Top = 103
    object C_StatusSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'STATUSENTRADAS.STATUS'
      Required = True
      Size = 1
    end
    object C_StatusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSENTRADAS.DESCRICAO'
      Size = 30
    end
    object C_StatusORDEM: TIntegerField
      FieldName = 'ORDEM'
      Origin = 'STATUSENTRADAS.ORDEM'
    end
  end
  object IBEventos_Entradas: TIBEvents
    AutoRegister = True
    Database = DMProjeto.DB_Projeto
    Events.Strings = (
      'EVENTO_LOCAISENTREGA'
      'EVENTO_PLANOSPAGAMENTO'
      'EVENTO_TAXS'
      'EVENTO_TIPOSMOVIMENTO')
    Registered = False
    OnEventAlert = IBEventos_EntradasEventAlert
    Left = 84
    Top = 278
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 538
    Top = 315
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
    Left = 538
    Top = 260
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from unidades')
    Left = 538
    Top = 207
  end
  object Q_EntradasItensFilhos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterItensDS
    SQL.Strings = (
      'select si.entradaitem as IDITEM,si.*, i.codigo, i.descricao,'
      'si.unidade as unidadeold'
      'from entradasitensfilhos si, itens i'
      'where si.item = i.item and si.entradaitem = :IDITEM')
    UniDirectional = True
    UpdateObject = U_EntradasItensFilhos
    Left = 260
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_EntradasItensFilhos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from saidasitensfilhos '
      'where'
      '  SAIDAITEMFILHO = :SAIDAITEMFILHO')
    ModifySQL.Strings = (
      'update entradasitensfilhos'
      'set'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  CUSTOMEDIO = :CUSTOMEDIO, '
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  QTDE = :QTDE'
      'where'
      '  ENTRADAITEMFILHO = :OLD_ENTRADAITEMFILHO')
    InsertSQL.Strings = (
      'insert into entradasitensfilhos'
      '  (ENTRADAITEMFILHO, ENTRADAITEM, ITEM, QUANTIDADE, CUSTOMEDIO, '
      'CUSTOCONTABIL, UNIDADE, FATOR, QTDE)'
      'values'
      '  (:ENTRADAITEMFILHO, :IDITEM, :ITEM, :QUANTIDADE, :CUSTOMEDIO, '
      ':CUSTOCONTABIL, :UNIDADE, :FATOR, :QTDE)')
    DeleteSQL.Strings = (
      'delete from entradasitensfilhos'
      'where'
      '  ENTRADAITEMFILHO = :OLD_ENTRADAITEMFILHO')
    Left = 260
    Top = 51
  end
  object C_EntradasItensFilhos: TClientDataSet
    Aggregates = <>
    DataSetField = C_ItensQ_EntradasItensFilhos
    Params = <>
    OnNewRecord = C_EntradasItensFilhosNewRecord
    Left = 266
    Top = 103
    object C_EntradasItensFilhosENTRADAITEMFILHO: TIntegerField
      FieldName = 'ENTRADAITEMFILHO'
      Origin = 'ENTRADASITENSFILHOS.ENTRADAITEMFILHO'
      Required = True
    end
    object C_EntradasItensFilhosIDITEM: TIntegerField
      FieldName = 'IDITEM'
      Origin = 'ENTRADASITENSFILHOS.IDITEM'
    end
    object C_EntradasItensFilhosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ENTRADASITENSFILHOS.ITEM'
      OnChange = C_EntradasItensFilhosITEMChange
    end
    object C_EntradasItensFilhosQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ENTRADASITENSFILHOS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_EntradasItensFilhosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_EntradasItensFilhosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_EntradasItensFilhosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'ENTRADASITENSFILHOS.CUSTOMEDIO'
    end
    object C_EntradasItensFilhosCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      Origin = 'ENTRADASITENSFILHOS.CUSTOCONTABIL'
    end
    object C_EntradasItensFilhosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ENTRADASITENSFILHOS.UNIDADE'
      OnChange = C_EntradasItensFilhosUNIDADEChange
      Size = 6
    end
    object C_EntradasItensFilhosFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'ENTRADASITENSFILHOS.FATOR'
    end
    object C_EntradasItensFilhoslkUnidFilho: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidFilho'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'UNIDADE'
      KeyFields = 'UNIDADE'
      Size = 6
      Lookup = True
    end
    object C_EntradasItensFilhosUNIDADEOLD: TStringField
      FieldName = 'UNIDADEOLD'
      Origin = 'ENTRADASITENSFILHOS.UNIDADEOLD'
      Size = 6
    end
    object C_EntradasItensFilhosQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'ENTRADASITENSFILHOS.QTDE'
      Precision = 18
      Size = 3
    end
  end
  object C_EntradasItensFilhosDS: TDataSource
    DataSet = C_EntradasItensFilhos
    Left = 260
    Top = 154
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
      'Where Tipo = '#39'C'#39
      'order by Descricao')
    UniDirectional = True
    Left = 260
    Top = 207
  end
  object P_MensagensOperacoes: TDataSetProvider
    DataSet = Q_MensagensOperacoes
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 260
    Top = 260
  end
  object C_MensagensOperacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MensagensOperacoes'
    Left = 278
    Top = 313
    object C_MensagensOperacoesMENSAGEMOPERACAO: TIntegerField
      FieldName = 'MENSAGEMOPERACAO'
      Origin = 'MENSAGENSOPERACOES.MENSAGEMOPERACAO'
      Required = True
    end
    object C_MensagensOperacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MENSAGENSOPERACOES.DESCRICAO'
      Size = 150
    end
  end
  object C_MensagensOperacoesDS: TDataSource
    DataSet = C_MensagensOperacoes
    Left = 278
    Top = 362
  end
  object Q_CFOPs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cfops'
      'order by cfop')
    Left = 705
    Top = 5
  end
  object C_CFOPs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CFOPs'
    Left = 707
    Top = 103
    object C_CFOPsCFOP: TStringField
      FieldName = 'CFOP'
      Origin = 'CFOPS.CFOP'
      Required = True
      Size = 4
    end
    object C_CFOPsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CFOPS.DESCRICAO'
      Size = 150
    end
    object C_CFOPsPAI: TStringField
      FieldName = 'PAI'
      Origin = 'CFOPS.PAI'
      Size = 4
    end
  end
  object P_CFOPs: TDataSetProvider
    DataSet = Q_CFOPs
    Constraints = True
    Left = 705
    Top = 51
  end
  object C_CFOPsDS: TDataSource
    DataSet = C_CFOPs
    Left = 705
    Top = 154
  end
  object Q_CFOPs_CSTs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.cst, c.tipomovimento, s.descricao, c.cfopassociado , c.' +
        'cfopforaestado, s.cfop_venda, s.cfop_compra, s.cfop_devolucao'
      'from cfopscst c'
      '  inner join csts s on s.cst = c.cst')
    Left = 785
    Top = 167
  end
  object P_CFOPs_CSTs: TDataSetProvider
    DataSet = Q_CFOPs_CSTs
    Constraints = True
    Left = 785
    Top = 220
  end
  object C_CFOPs_CSTs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CFOPs_CSTs'
    Left = 783
    Top = 271
    object C_CSTsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object C_CSTsCFOP_VENDA: TStringField
      FieldName = 'CFOP_VENDA'
      Origin = 'CSTS.CFOP_VENDA'
      Size = 4
    end
    object C_CSTsCFOP_COMPRA: TStringField
      FieldName = 'CFOP_COMPRA'
      Origin = 'CSTS.CFOP_COMPRA'
      Size = 4
    end
    object C_CSTsCFOP_DEVOLUCAO: TStringField
      FieldName = 'CFOP_DEVOLUCAO'
      Origin = 'CSTS.CFOP_DEVOLUCAO'
      Size = 4
    end
    object C_CSTsTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'CFOPSCST.TIPOMOVIMENTO'
    end
    object C_CSTsCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Origin = 'CFOPSCST.CFOPASSOCIADO'
      Size = 4
    end
    object C_CSTsCFOPFORAESTADO: TStringField
      FieldName = 'CFOPFORAESTADO'
      Origin = 'CFOPSCST.CFOPFORAESTADO'
      Size = 4
    end
    object C_CSTsCST: TStringField
      FieldName = 'CST'
      Origin = 'CFOPSCST.CST'
      Size = 3
    end
  end
  object C_CFOPs_CSTsDS: TDataSource
    DataSet = C_CFOPs_CSTs
    Left = 785
    Top = 322
  end
  object Q_SitECF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from situacoesecf'
      '')
    Left = 448
    Top = 207
  end
  object P_SitECF: TDataSetProvider
    DataSet = Q_SitECF
    Constraints = True
    Left = 450
    Top = 260
  end
  object C_SitECF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SitECF'
    Left = 446
    Top = 317
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
  object Q_Almoxarifado: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ALMOXARIFADO, DESCRICAO from ALMOXARIFADOS'
      'order by DESCRICAO')
    Left = 778
    Top = 10
  end
  object P_Almoxarifado: TDataSetProvider
    DataSet = Q_Almoxarifado
    Constraints = True
    Left = 782
    Top = 62
  end
  object C_Almoxarifado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifado'
    Left = 782
    Top = 108
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
  object Q_Indexadores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select indexador, descricao'
      'from indexadores'
      'order by descricao')
    Left = 880
    Top = 16
  end
  object P_Indexadores: TDataSetProvider
    DataSet = Q_Indexadores
    Constraints = True
    Left = 880
    Top = 64
  end
  object C_Indexadores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Indexadores'
    Left = 884
    Top = 116
    object C_IndexadoresINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Origin = 'INDEXADORES.INDEXADOR'
      Required = True
    end
    object C_IndexadoresDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'INDEXADORES.DESCRICAO'
      Size = 30
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
    Left = 974
    Top = 17
  end
  object P_Vendedores: TDataSetProvider
    DataSet = Q_Vendedores
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 976
    Top = 71
  end
  object C_Vendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedores'
    Left = 978
    Top = 126
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
  object Q_CSTs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.cst, c.cst || '#39' - '#39' || c.descricao as descricao'
      'from csts c'
      'order by c.cst asc')
    Left = 883
    Top = 161
  end
  object P_CSTs: TDataSetProvider
    DataSet = Q_CSTs
    Constraints = True
    Left = 885
    Top = 216
  end
  object C_CSTs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTs'
    Left = 887
    Top = 265
    object C_CSTsCST2: TStringField
      FieldName = 'CST'
      Origin = 'CSTS.CST'
      Required = True
      Size = 3
    end
    object C_CSTsDESCRICAO2: TStringField
      FieldName = 'DESCRICAO'
      Size = 66
    end
  end
  object C_CSTs_DS: TDataSource
    DataSet = C_CSTs
    Left = 889
    Top = 318
  end
  object Q_CSTs_IPI: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.cstipi, c.cstipi || '#39' - '#39' || c.descricao as descricao'
      'from cstsipi c'
      'where c.cstipi < 50'
      'order by c.cstipi asc')
    Left = 892
    Top = 377
  end
  object P_CSTs_IPI: TDataSetProvider
    DataSet = Q_CSTs_IPI
    Constraints = True
    Left = 896
    Top = 430
  end
  object C_CSTs_IPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTs_IPI'
    Left = 898
    Top = 481
    object C_CSTs_IPICSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTSIPI.CSTIPI'
      Required = True
      Size = 2
    end
    object C_CSTs_IPIDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 65
    end
  end
  object C_CSTs_IPI_DS: TDataSource
    DataSet = C_CSTs_IPI
    Left = 898
    Top = 532
  end
  object Q_CSTs_PisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.cstpiscofins, c.cstpiscofins || '#39' - '#39' || c.descricao as' +
        ' descricao'
      'from cstspiscofins c'
      'where c.cstpiscofins > 49'
      'order by c.cstpiscofins asc')
    Left = 772
    Top = 383
  end
  object P_CSTs_PisCofins: TDataSetProvider
    DataSet = Q_CSTs_PisCofins
    Constraints = True
    Left = 772
    Top = 436
  end
  object C_CSTs_PisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTs_PisCofins'
    Left = 770
    Top = 487
    object C_CSTs_PisCofinsCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'CSTSPISCOFINS.CSTPISCOFINS'
      Required = True
      Size = 2
    end
    object C_CSTs_PisCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 505
    end
  end
  object C_CSTs_PisCofins_DS: TDataSource
    DataSet = C_CSTs_PisCofins
    Left = 772
    Top = 538
  end
end
