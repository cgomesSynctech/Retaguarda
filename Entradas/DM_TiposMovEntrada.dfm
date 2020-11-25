inherited DMTiposMovEntrada: TDMTiposMovEntrada
  Left = 284
  Top = 180
  Height = 432
  Width = 971
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from TiposMovimento'
      'Where Tipo = '#39'E'#39)
    Top = 5
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TiposMovimento '
      'where'
      '  TIPOMOVIMENTO = :TIPOMOVIMENTO')
    ModifySQL.Strings = (
      'update TiposMovimento'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  TIPO = :TIPO,'
      '  BAIXAESTOQUE = :BAIXAESTOQUE,'
      '  CALCCOMISSAO = :CALCCOMISSAO,'
      '  POSSUIENTREGA = :POSSUIENTREGA,'
      '  BLOQUEARSEATRASADO = :BLOQUEARSEATRASADO,'
      '  BLOQUEARPORSITUACAO = :BLOQUEARPORSITUACAO,'
      '  BLOQUEARPORESTOQUE = :BLOQUEARPORESTOQUE,'
      '  LIMITEFAVORECIDO = :LIMITEFAVORECIDO,'
      '  SIGLAINICIAL = :SIGLAINICIAL,'
      '  TIT1_DATA = :TIT1_DATA,'
      '  TIT2_DATA = :TIT2_DATA,'
      '  TIT1_NUMERO = :TIT1_NUMERO,'
      '  TIT2_NUMERO = :TIT2_NUMERO,'
      '  CB_INFOENTREGA = :CB_INFOENTREGA,'
      '  TIT1_LOCALENTREGA = :TIT1_LOCALENTREGA,'
      '  TIT1_DATAENTREGA = :TIT1_DATAENTREGA,'
      '  TIT1_TIPOENTREGA = :TIT1_TIPOENTREGA,'
      '  TIT2_LOCALENTREGA = :TIT2_LOCALENTREGA,'
      '  TIT2_DATAENTREGA = :TIT2_DATAENTREGA,'
      '  TIT2_TIPOENTREGA = :TIT2_TIPOENTREGA,'
      '  CB_VENDEDOR = :CB_VENDEDOR,'
      '  TIT1_VENDEDOR = :TIT1_VENDEDOR,'
      '  TIT2_VENDEDOR = :TIT2_VENDEDOR,'
      '  CB_PEDIDO = :CB_PEDIDO,'
      '  TIT1_PEDIDO = :TIT1_PEDIDO,'
      '  TIT2_PEDIDO = :TIT2_PEDIDO,'
      '  CB_COMISSAO = :CB_COMISSAO,'
      '  TIT1_COMISSAO = :TIT1_COMISSAO,'
      '  TIT2_COMISSAO = :TIT2_COMISSAO,'
      '  CB_TERMOS = :CB_TERMOS,'
      '  TIT1_TERMOS = :TIT1_TERMOS,'
      '  TIT2_TERMOS = :TIT2_TERMOS,'
      '  CB_MENSAGEM = :CB_MENSAGEM,'
      '  TIT1_MENSAGEM = :TIT1_MENSAGEM,'
      '  TIT2_MENSAGEM = :TIT2_MENSAGEM,'
      '  CB_DESCONTOS = :CB_DESCONTOS,'
      '  TIT1_DESCONTOS = :TIT1_DESCONTOS,'
      '  TIT2_DESCONTOS = :TIT2_DESCONTOS,'
      '  CB_FRETE = :CB_FRETE,'
      '  TIT1_FRETE = :TIT1_FRETE,'
      '  TIT2_FRETE = :TIT2_FRETE,'
      '  CB_TOTALITENS = :CB_TOTALITENS,'
      '  TIT1_TOTALITENS = :TIT1_TOTALITENS,'
      '  TIT2_TOTALITENS = :TIT2_TOTALITENS,'
      '  CB_TOTALFINAL = :CB_TOTALFINAL,'
      '  TIT1_TOTALFINAL = :TIT1_TOTALFINAL,'
      '  TIT2_TOTALFINAL = :TIT2_TOTALFINAL,'
      '  TIT1_DESCRICAO = :TIT1_DESCRICAO,'
      '  TIT1_QUANTIDADE = :TIT1_QUANTIDADE,'
      '  TIT1_PRECO = :TIT1_PRECO,'
      '  TIT1_SUBTOTAL = :TIT1_SUBTOTAL,'
      '  TIT2_DESCRICAO = :TIT2_DESCRICAO,'
      '  TIT2_QUANTIDADE = :TIT2_QUANTIDADE,'
      '  TIT2_PRECO = :TIT2_PRECO,'
      '  TIT2_SUBTOTAL = :TIT2_SUBTOTAL,'
      '  CB_JUROS = :CB_JUROS,'
      '  TIT1_JUROS = :TIT1_JUROS,'
      '  TIT2_JUROS = :TIT2_JUROS,'
      '  CB_DESPESAS = :CB_DESPESAS,'
      '  TIT1_DESPESAS = :TIT1_DESPESAS,'
      '  TIT2_DESPESAS = :TIT2_DESPESAS,'
      '  CB_CAMPO01 = :CB_CAMPO01,'
      '  TIT1_CAMPO1 = :TIT1_CAMPO1,'
      '  TIT2_CAMPO1 = :TIT2_CAMPO1,'
      '  CB_CAMPO02 = :CB_CAMPO02,'
      '  TIT1_CAMPO2 = :TIT1_CAMPO2,'
      '  TIT2_CAMPO2 = :TIT2_CAMPO2,'
      '  CB_CAMPO03 = :CB_CAMPO03,'
      '  TIT1_CAMPO3 = :TIT1_CAMPO3,'
      '  TIT2_CAMPO3 = :TIT2_CAMPO3,'
      '  CB_CAMPO04 = :CB_CAMPO04,'
      '  TIT1_CAMPO4 = :TIT1_CAMPO4,'
      '  TIT2_CAMPO4 = :TIT2_CAMPO4,'
      '  CB_CODIGO = :CB_CODIGO,'
      '  TIT1_CODIGO = :TIT1_CODIGO,'
      '  TIT2_CODIGO = :TIT2_CODIGO,'
      '  CB_FUNCIONARIO = :CB_FUNCIONARIO,'
      '  TIT1_FUNCIONARIO = :TIT1_FUNCIONARIO,'
      '  TIT2_FUNCIONARIO = :TIT2_FUNCIONARIO,'
      '  CB_ICMS = :CB_ICMS,'
      '  TIT1_ICMS = :TIT1_ICMS,'
      '  TIT2_ICMS = :TIT2_ICMS,'
      '  TIT1_COLUNA1 = :TIT1_COLUNA1,'
      '  TIT1_COLUNA2 = :TIT1_COLUNA2,'
      '  TIT1_COLUNA3 = :TIT1_COLUNA3,'
      '  TIT1_COLUNA4 = :TIT1_COLUNA4,'
      '  TIT2_COLUNA1 = :TIT2_COLUNA1,'
      '  TIT2_COLUNA2 = :TIT2_COLUNA2,'
      '  TIT2_COLUNA3 = :TIT2_COLUNA3,'
      '  TIT2_COLUNA4 = :TIT2_COLUNA4,'
      '  CORTITULOS = :CORTITULOS,'
      '  TIPOFAVPADRAO = :TIPOFAVPADRAO,'
      '  TIPOPADRAO = :TIPOPADRAO,'
      '  CB_COLUNA1 = :CB_COLUNA1,'
      '  CB_COLUNA2 = :CB_COLUNA2,'
      '  CB_COLUNA3 = :CB_COLUNA3,'
      '  CB_COLUNA4 = :CB_COLUNA4,'
      '  TIT1_UNIDADE = :TIT1_UNIDADE,'
      '  TIT2_UNIDADE = :TIT2_UNIDADE,'
      '  FOTO = :FOTO,'
      '  TIT1_VALIDADE = :TIT1_VALIDADE,'
      '  TIT2_VALIDADE = :TIT2_VALIDADE,'
      '  CB_REFERENCIA = :CB_REFERENCIA,'
      '  TIT1_REFERENCIA = :TIT1_REFERENCIA,'
      '  TIT2_REFERENCIA = :TIT2_REFERENCIA,'
      '  TIT1_QTDRECEBIDA = :TIT1_QTDRECEBIDA,'
      '  TIT2_QTDRECEBIDA = :TIT2_QTDRECEBIDA,'
      '  TIT1_SITUACAO = :TIT1_SITUACAO,'
      '  TIT2_SITUACAO = :TIT2_SITUACAO,'
      '  ATUALIZACUSTO = :ATUALIZACUSTO,'
      '  ATUALIZAPRECO = :ATUALIZAPRECO,'
      '  INCLUIDESCONTO = :INCLUIDESCONTO,'
      '  ATUALIZAPRECOMANUAL = :ATUALIZAPRECOMANUAL,'
      '  CB_STATUS = :CB_STATUS,'
      '  STATUSPADRAO = :STATUSPADRAO,'
      '  CB_STATUSITENS = :CB_STATUSITENS,'
      '  STATUSPADRAOITENS = :STATUSPADRAOITENS,'
      '  CB_DOCSGARANTIA = :CB_DOCSGARANTIA,'
      '  CB_CODIGOFORN = :CB_CODIGOFORN,'
      '  TIT1_CODIGOFORN = :TIT1_CODIGOFORN,'
      '  TIT2_CODIGOFORN = :TIT2_CODIGOFORN,'
      '  CB_IMPRIMIROP = :CB_IMPRIMIROP,'
      '  CB_PGTOS = :CB_PGTOS,'
      '  CB_FICHACLIENTE = :CB_FICHACLIENTE,'
      '  CB_TOPRINTER = :CB_TOPRINTER,'
      '  CB_GERARNUM = :CB_GERARNUM,'
      '  FAVORECIDOPADRAO = :FAVORECIDOPADRAO,'
      '  TIPOIMPRESSAO_OP = :TIPOIMPRESSAO_OP,'
      '  MENSAGEMPADRAO = :MENSAGEMPADRAO,'
      '  CB_CONTRATO = :CB_CONTRATO,'
      '  TERMOCONTRATO = :TERMOCONTRATO,'
      '  TEMPLATE = :TEMPLATE,'
      '  CB_PRECO = :CB_PRECO,'
      '  CB_SUBTOTAL = :CB_SUBTOTAL,'
      '  CB_CONSISTENCIA = :CB_CONSISTENCIA,'
      '  DESATIVADO = :DESATIVADO,'
      '  CB_BALANCE = :CB_BALANCE,'
      '  TIT2_BALANCE = :TIT2_BALANCE,'
      '  TIT2_PGTOS = :TIT2_PGTOS,'
      '  TIT1_PGTOS = :TIT1_PGTOS,'
      '  TIT1_BALANCE = :TIT1_BALANCE,'
      '  CB_VALIDADE = :CB_VALIDADE,'
      '  CB_COMPOSICAOITENS = :CB_COMPOSICAOITENS,'
      '  CB_DESCRICAOCOMPLEMENTAR = :CB_DESCRICAOCOMPLEMENTAR,'
      '  CB_UNIDADE = :CB_UNIDADE,'
      '  DIASVALIDADE = :DIASVALIDADE,'
      '  TABELAPADRAO = :TABELAPADRAO,'
      '  ALMOXPADRAO = :ALMOXPADRAO,'
      '  POSSUIICMS = :POSSUIICMS,'
      '  POSSUIIPI = :POSSUIIPI,'
      '  CONTABILIZAICMS = :CONTABILIZAICMS,'
      '  CFOPASSOCIADO = :CFOPASSOCIADO,'
      '  TIT1_TVA = :TIT1_TVA,'
      '  TIT2_TVA = :TIT2_TVA,'
      '  CB_TVA = :CB_TVA,'
      '  CB_ALIQICMS = :CB_ALIQICMS,'
      '  SERIE = :SERIE,'
      '  MODELODOC = :MODELODOC,'
      '  TIT1_IPI = :TIT1_IPI,'
      '  TIT2_IPI = :TIT2_IPI,'
      '  CB_IPI = :CB_IPI,'
      '  POSSUITAX = :POSSUITAX,'
      '  CB_CFOP = :CB_CFOP,'
      '  TIT1_CFOP = :TIT1_CFOP,'
      '  TIT2_CFOP = :TIT2_CFOP,'
      '  CB_NOTAFISCAL = :CB_NOTAFISCAL,'
      '  TIPONOTAFISCAL = :TIPONOTAFISCAL,'
      '  TEMPLATENOTAFISCAL = :TEMPLATENOTAFISCAL,'
      '  CB_IMPDOC = :CB_IMPDOC,'
      '  CB_DESCONTOITEM = :CB_DESCONTOITEM,'
      '  CB_COMPENSACAO = :CB_COMPENSACAO,'
      '  CB_COMPENSACAONOCUSTO = :CB_COMPENSACAONOCUSTO,'
      '  CB_ENTRADAPRECOVENDA = :CB_ENTRADAPRECOVENDA,'
      '  BAIXAESTOQUEFISCAL = :BAIXAESTOQUEFISCAL,'
      '  LIVROFISCAL = :LIVROFISCAL,'
      '  CB_CSTPADRAO = :CB_CSTPADRAO,'
      '  CST_PADRAO = :CST_PADRAO,  '
      '  CALCULAPISCOFINS = :CALCULAPISCOFINS'
      'where'
      '  TIPOMOVIMENTO = :OLD_TIPOMOVIMENTO')
    InsertSQL.Strings = (
      'insert into TiposMovimento'
      '  (TIPOMOVIMENTO,DESCRICAO, TIPO, BAIXAESTOQUE, CALCCOMISSAO, '
      'POSSUIENTREGA, BLOQUEARSEATRASADO, BLOQUEARPORSITUACAO, '
      'BLOQUEARPORESTOQUE, LIMITEFAVORECIDO, '
      'SIGLAINICIAL, TIT1_DATA, TIT2_DATA, TIT1_NUMERO, TIT2_NUMERO, '
      'CB_INFOENTREGA, '
      'TIT1_LOCALENTREGA, TIT1_DATAENTREGA, TIT1_TIPOENTREGA, '
      'TIT2_LOCALENTREGA, '
      'TIT2_DATAENTREGA, TIT2_TIPOENTREGA, CB_VENDEDOR, TIT1_VENDEDOR, '
      'TIT2_VENDEDOR, '
      
        'CB_PEDIDO, TIT1_PEDIDO, TIT2_PEDIDO, CB_COMISSAO, TIT1_COMISSAO,' +
        ' '
      
        'TIT2_COMISSAO, CB_TERMOS, TIT1_TERMOS, TIT2_TERMOS, CB_MENSAGEM,' +
        ' '
      'TIT1_MENSAGEM, TIT2_MENSAGEM, CB_DESCONTOS, TIT1_DESCONTOS, '
      'TIT2_DESCONTOS, CB_FRETE, '
      'TIT1_FRETE, TIT2_FRETE, CB_TOTALITENS, TIT1_TOTALITENS, '
      'TIT2_TOTALITENS, '
      
        'CB_TOTALFINAL, TIT1_TOTALFINAL, TIT2_TOTALFINAL, TIT1_DESCRICAO,' +
        ' '
      'TIT1_QUANTIDADE, '
      'TIT1_PRECO, TIT1_SUBTOTAL, TIT2_DESCRICAO, TIT2_QUANTIDADE, '
      'TIT2_PRECO, '
      'TIT2_SUBTOTAL, CB_JUROS, TIT1_JUROS, TIT2_JUROS, CB_DESPESAS, '
      'TIT1_DESPESAS, '
      
        'TIT2_DESPESAS, CB_CAMPO01, TIT1_CAMPO1, TIT2_CAMPO1, CB_CAMPO02,' +
        ' '
      'TIT1_CAMPO2, '
      'TIT2_CAMPO2, CB_CAMPO03, TIT1_CAMPO3, TIT2_CAMPO3, CB_CAMPO04, '
      'TIT1_CAMPO4, '
      
        'TIT2_CAMPO4, CB_CODIGO, TIT1_CODIGO, TIT2_CODIGO, CB_FUNCIONARIO' +
        ', '
      
        'TIT1_FUNCIONARIO, TIT2_FUNCIONARIO, CB_ICMS, TIT1_ICMS, TIT2_ICM' +
        'S, '
      'TIT1_COLUNA1, '
      'TIT1_COLUNA2, TIT1_COLUNA3, TIT1_COLUNA4, TIT2_COLUNA1, '
      'TIT2_COLUNA2, '
      'TIT2_COLUNA3, TIT2_COLUNA4, CORTITULOS, TIPOFAVPADRAO, '
      'TIPOPADRAO, '
      'CB_COLUNA1, CB_COLUNA2, CB_COLUNA3, CB_COLUNA4, TIT1_UNIDADE, '
      'TIT2_UNIDADE, FOTO, '
      'TIT1_VALIDADE, TIT2_VALIDADE, CB_REFERENCIA, TIT1_REFERENCIA, '
      'TIT2_REFERENCIA, '
      
        'TIT1_QTDRECEBIDA, TIT2_QTDRECEBIDA, TIT1_SITUACAO, TIT2_SITUACAO' +
        ', '
      'ATUALIZACUSTO, '
      'ATUALIZAPRECO, INCLUIDESCONTO, ATUALIZAPRECOMANUAL, CB_STATUS, '
      'STATUSPADRAO, '
      'CB_STATUSITENS, STATUSPADRAOITENS, CB_DOCSGARANTIA, '
      'CB_CODIGOFORN, '
      'TIT1_CODIGOFORN, TIT2_CODIGOFORN, CB_IMPRIMIROP, CB_PGTOS, '
      'CB_FICHACLIENTE, '
      'CB_TOPRINTER, CB_GERARNUM, FAVORECIDOPADRAO, TIPOIMPRESSAO_OP, '
      'MENSAGEMPADRAO, CB_CONTRATO, TERMOCONTRATO, TEMPLATE, '
      'CB_PRECO, CB_SUBTOTAL, '
      
        'CB_CONSISTENCIA, DESATIVADO, CB_BALANCE, TIT2_BALANCE, TIT2_PGTO' +
        'S, '
      'TIT1_PGTOS, TIT1_BALANCE, '
      'CB_VALIDADE, CB_COMPOSICAOITENS, CB_DESCRICAOCOMPLEMENTAR, '
      'CB_UNIDADE, '
      'DIASVALIDADE, TABELAPADRAO, ALMOXPADRAO, POSSUIICMS, POSSUIIPI, '
      'CONTABILIZAICMS, CFOPASSOCIADO, TIT1_TVA, TIT2_TVA, CB_TVA, '
      'CB_ALIQICMS, SERIE, MODELODOC, TIT1_IPI, '
      '   TIT2_IPI, CB_IPI, POSSUITAX, CB_CFOP, TIT1_CFOP, TIT2_CFOP, '
      'CB_NOTAFISCAL, TIPONOTAFISCAL, TEMPLATENOTAFISCAL, CB_IMPDOC, '
      'CB_DESCONTOITEM, CB_COMPENSACAO, CB_COMPENSACAONOCUSTO, '
      'CB_ENTRADAPRECOVENDA, '
      'BAIXAESTOQUEFISCAL, LIVROFISCAL, CB_CSTPADRAO, CST_PADRAO, '
      'CALCULAPISCOFINS)'
      'values'
      
        '  (:TIPOMOVIMENTO,:DESCRICAO, :TIPO, :BAIXAESTOQUE, :CALCCOMISSA' +
        'O, '
      ':POSSUIENTREGA, :BLOQUEARSEATRASADO, :BLOQUEARPORSITUACAO, '
      ':BLOQUEARPORESTOQUE, :LIMITEFAVORECIDO, '
      
        ':SIGLAINICIAL, :TIT1_DATA, :TIT2_DATA, :TIT1_NUMERO, :TIT2_NUMER' +
        'O, '
      ':CB_INFOENTREGA, :TIT1_LOCALENTREGA, :TIT1_DATAENTREGA, '
      ':TIT1_TIPOENTREGA, '
      ':TIT2_LOCALENTREGA, :TIT2_DATAENTREGA, :TIT2_TIPOENTREGA, '
      ':CB_VENDEDOR, '
      ':TIT1_VENDEDOR, :TIT2_VENDEDOR, :CB_PEDIDO, :TIT1_PEDIDO, '
      ':TIT2_PEDIDO, '
      ':CB_COMISSAO, :TIT1_COMISSAO, :TIT2_COMISSAO, :CB_TERMOS, '
      ':TIT1_TERMOS, '
      ':TIT2_TERMOS, :CB_MENSAGEM, :TIT1_MENSAGEM, :TIT2_MENSAGEM, '
      ':CB_DESCONTOS, '
      ':TIT1_DESCONTOS, :TIT2_DESCONTOS, :CB_FRETE, :TIT1_FRETE, '
      ':TIT2_FRETE, '
      
        ':CB_TOTALITENS, :TIT1_TOTALITENS, :TIT2_TOTALITENS, :CB_TOTALFIN' +
        'AL, '
      ':TIT1_TOTALFINAL, :TIT2_TOTALFINAL, :TIT1_DESCRICAO, '
      ':TIT1_QUANTIDADE, :TIT1_PRECO, '
      ':TIT1_SUBTOTAL, :TIT2_DESCRICAO, :TIT2_QUANTIDADE, :TIT2_PRECO, '
      ':TIT2_SUBTOTAL, '
      
        ':CB_JUROS, :TIT1_JUROS, :TIT2_JUROS, :CB_DESPESAS, :TIT1_DESPESA' +
        'S, '
      ':TIT2_DESPESAS, :CB_CAMPO01, :TIT1_CAMPO1, :TIT2_CAMPO1, '
      ':CB_CAMPO02, :TIT1_CAMPO2, '
      
        '   :TIT2_CAMPO2, :CB_CAMPO03, :TIT1_CAMPO3, :TIT2_CAMPO3, :CB_CA' +
        'MPO04, '
      
        '   :TIT1_CAMPO4, :TIT2_CAMPO4, :CB_CODIGO, :TIT1_CODIGO, :TIT2_C' +
        'ODIGO, '
      
        '   :CB_FUNCIONARIO, :TIT1_FUNCIONARIO, :TIT2_FUNCIONARIO, :CB_IC' +
        'MS, '
      
        ':TIT1_ICMS, :TIT2_ICMS, :TIT1_COLUNA1, :TIT1_COLUNA2, :TIT1_COLU' +
        'NA3, '
      ':TIT1_COLUNA4, :TIT2_COLUNA1, :TIT2_COLUNA2, :TIT2_COLUNA3, '
      ':TIT2_COLUNA4, '
      ':CORTITULOS, :TIPOFAVPADRAO, :TIPOPADRAO, :CB_COLUNA1, '
      ':CB_COLUNA2, '
      ':CB_COLUNA3, :CB_COLUNA4, :TIT1_UNIDADE, :TIT2_UNIDADE, :FOTO, '
      ':TIT1_VALIDADE, '
      
        ':TIT2_VALIDADE, :CB_REFERENCIA, :TIT1_REFERENCIA, :TIT2_REFERENC' +
        'IA, '
      ':TIT1_QTDRECEBIDA, :TIT2_QTDRECEBIDA, :TIT1_SITUACAO, '
      ':TIT2_SITUACAO, :ATUALIZACUSTO, '
      ':ATUALIZAPRECO, :INCLUIDESCONTO, :ATUALIZAPRECOMANUAL, '
      ':CB_STATUS, '
      ':STATUSPADRAO, :CB_STATUSITENS, :STATUSPADRAOITENS, '
      ':CB_DOCSGARANTIA, :CB_CODIGOFORN, '
      ':TIT1_CODIGOFORN, :TIT2_CODIGOFORN, :CB_IMPRIMIROP, :CB_PGTOS, '
      ':CB_FICHACLIENTE, '
      ':CB_TOPRINTER, :CB_GERARNUM, :FAVORECIDOPADRAO, '
      ':TIPOIMPRESSAO_OP, '
      ':MENSAGEMPADRAO, :CB_CONTRATO, :TERMOCONTRATO, :TEMPLATE, '
      ':CB_PRECO, '
      ':CB_SUBTOTAL, :CB_CONSISTENCIA, :DESATIVADO, :CB_BALANCE, '
      ':TIT2_BALANCE, :TIT2_PGTOS, :TIT1_PGTOS, '
      ':TIT1_BALANCE, :CB_VALIDADE, :CB_COMPOSICAOITENS, '
      ':CB_DESCRICAOCOMPLEMENTAR, '
      ':CB_UNIDADE, :DIASVALIDADE, :TABELAPADRAO, :ALMOXPADRAO, '
      ':POSSUIICMS, '
      
        ':POSSUIIPI, :CONTABILIZAICMS, :CFOPASSOCIADO, :TIT1_TVA, :TIT2_T' +
        'VA, '
      ':CB_TVA, '
      
        ':CB_ALIQICMS, :SERIE, :MODELODOC, :TIT1_IPI, :TIT2_IPI, :CB_IPI,' +
        ' :POSSUITAX, '
      ':CB_CFOP, '
      '   :TIT1_CFOP, :TIT2_CFOP, :CB_NOTAFISCAL, :TIPONOTAFISCAL, '
      ':TEMPLATENOTAFISCAL, '
      '   :CB_IMPDOC, :CB_DESCONTOITEM, :CB_COMPENSACAO, '
      ':CB_COMPENSACAONOCUSTO, '
      '   :CB_ENTRADAPRECOVENDA, :BAIXAESTOQUEFISCAL, :LIVROFISCAL, '
      ':CB_CSTPADRAO, :CST_PADRAO, :CALCULAPISCOFINS)')
    DeleteSQL.Strings = (
      'delete from TiposMovimento'
      'where'
      '  TIPOMOVIMENTO = :OLD_TIPOMOVIMENTO')
    Left = 34
  end
  inherited DMComponent: TDMComponent
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    KeyForIDs = 'TiposMovimento'
    Tabela_Nome = 'TiposMovimento'
    Tabela_Chave = 'TipoMovimento'
    DeleteValidate.Strings = (
      'Saidas=TipoMovimento')
    Left = 33
  end
  inherited C_Tabela: TClientDataSet
    Top = 157
    object C_TabelaDescTipoPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTipoPadrao'
      LookupDataSet = C_TiposPadrao
      LookupKeyFields = 'TIPOPADRAO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOPADRAO'
      Lookup = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TabelaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPOSMOVIMENTO.TIPO'
      Size = 1
    end
    object C_TabelaBAIXAESTOQUE: TStringField
      FieldName = 'BAIXAESTOQUE'
      Origin = 'TIPOSMOVIMENTO.BAIXAESTOQUE'
      Size = 1
    end
    object C_TabelaCALCCOMISSAO: TStringField
      FieldName = 'CALCCOMISSAO'
      Origin = 'TIPOSMOVIMENTO.CALCCOMISSAO'
      Size = 1
    end
    object C_TabelaPOSSUIENTREGA: TStringField
      FieldName = 'POSSUIENTREGA'
      Origin = 'TIPOSMOVIMENTO.POSSUIENTREGA'
      OnChange = C_TabelaPOSSUIENTREGAChange
      Size = 1
    end
    object C_TabelaBLOQUEARSEATRASADO: TStringField
      FieldName = 'BLOQUEARSEATRASADO'
      Origin = 'TIPOSMOVIMENTO.BLOQUEARSEATRASADO'
      Size = 1
    end
    object C_TabelaBLOQUEARPORSITUACAO: TStringField
      FieldName = 'BLOQUEARPORSITUACAO'
      Origin = 'TIPOSMOVIMENTO.BLOQUEARPORSITUACAO'
      Size = 1
    end
    object C_TabelaBLOQUEARPORESTOQUE: TStringField
      FieldName = 'BLOQUEARPORESTOQUE'
      Origin = 'TIPOSMOVIMENTO.BLOQUEARPORESTOQUE'
      Size = 1
    end
    object C_TabelaLIMITEFAVORECIDO: TStringField
      FieldName = 'LIMITEFAVORECIDO'
      Origin = 'TIPOSMOVIMENTO.LIMITEFAVORECIDO'
      Size = 1
    end
    object C_TabelaSIGLAINICIAL: TStringField
      FieldName = 'SIGLAINICIAL'
      Origin = 'TIPOSMOVIMENTO.SIGLAINICIAL'
      Size = 3
    end
    object C_TabelaTIT1_DATA: TStringField
      FieldName = 'TIT1_DATA'
      Origin = 'TIPOSMOVIMENTO.TIT1_DATA'
      Size = 15
    end
    object C_TabelaTIT2_DATA: TStringField
      FieldName = 'TIT2_DATA'
      Origin = 'TIPOSMOVIMENTO.TIT2_DATA'
      Size = 15
    end
    object C_TabelaTIT1_NUMERO: TStringField
      FieldName = 'TIT1_NUMERO'
      Origin = 'TIPOSMOVIMENTO.TIT1_NUMERO'
      Size = 15
    end
    object C_TabelaTIT2_NUMERO: TStringField
      FieldName = 'TIT2_NUMERO'
      Origin = 'TIPOSMOVIMENTO.TIT2_NUMERO'
      Size = 15
    end
    object C_TabelaCB_INFOENTREGA: TStringField
      FieldName = 'CB_INFOENTREGA'
      Origin = 'TIPOSMOVIMENTO.CB_INFOENTREGA'
      Size = 1
    end
    object C_TabelaTIT1_LOCALENTREGA: TStringField
      FieldName = 'TIT1_LOCALENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT1_LOCALENTREGA'
    end
    object C_TabelaTIT1_DATAENTREGA: TStringField
      FieldName = 'TIT1_DATAENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT1_DATAENTREGA'
    end
    object C_TabelaTIT1_TIPOENTREGA: TStringField
      FieldName = 'TIT1_TIPOENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT1_TIPOENTREGA'
    end
    object C_TabelaTIT2_LOCALENTREGA: TStringField
      FieldName = 'TIT2_LOCALENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT2_LOCALENTREGA'
    end
    object C_TabelaTIT2_DATAENTREGA: TStringField
      FieldName = 'TIT2_DATAENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT2_DATAENTREGA'
    end
    object C_TabelaTIT2_TIPOENTREGA: TStringField
      FieldName = 'TIT2_TIPOENTREGA'
      Origin = 'TIPOSMOVIMENTO.TIT2_TIPOENTREGA'
    end
    object C_TabelaCB_VENDEDOR: TStringField
      FieldName = 'CB_VENDEDOR'
      Origin = 'TIPOSMOVIMENTO.CB_VENDEDOR'
      Size = 1
    end
    object C_TabelaTIT1_VENDEDOR: TStringField
      FieldName = 'TIT1_VENDEDOR'
      Origin = 'TIPOSMOVIMENTO.TIT1_VENDEDOR'
    end
    object C_TabelaTIT2_VENDEDOR: TStringField
      FieldName = 'TIT2_VENDEDOR'
      Origin = 'TIPOSMOVIMENTO.TIT2_VENDEDOR'
    end
    object C_TabelaCB_PEDIDO: TStringField
      FieldName = 'CB_PEDIDO'
      Origin = 'TIPOSMOVIMENTO.CB_PEDIDO'
      Size = 1
    end
    object C_TabelaTIT1_PEDIDO: TStringField
      FieldName = 'TIT1_PEDIDO'
      Origin = 'TIPOSMOVIMENTO.TIT1_PEDIDO'
    end
    object C_TabelaTIT2_PEDIDO: TStringField
      FieldName = 'TIT2_PEDIDO'
      Origin = 'TIPOSMOVIMENTO.TIT2_PEDIDO'
    end
    object C_TabelaCB_COMISSAO: TStringField
      FieldName = 'CB_COMISSAO'
      Origin = 'TIPOSMOVIMENTO.CB_COMISSAO'
      Size = 1
    end
    object C_TabelaTIT1_COMISSAO: TStringField
      FieldName = 'TIT1_COMISSAO'
      Origin = 'TIPOSMOVIMENTO.TIT1_COMISSAO'
    end
    object C_TabelaTIT2_COMISSAO: TStringField
      FieldName = 'TIT2_COMISSAO'
      Origin = 'TIPOSMOVIMENTO.TIT2_COMISSAO'
    end
    object C_TabelaCB_TERMOS: TStringField
      FieldName = 'CB_TERMOS'
      Origin = 'TIPOSMOVIMENTO.CB_TERMOS'
      Size = 1
    end
    object C_TabelaTIT1_TERMOS: TStringField
      FieldName = 'TIT1_TERMOS'
      Origin = 'TIPOSMOVIMENTO.TIT1_TERMOS'
    end
    object C_TabelaTIT2_TERMOS: TStringField
      FieldName = 'TIT2_TERMOS'
      Origin = 'TIPOSMOVIMENTO.TIT2_TERMOS'
    end
    object C_TabelaCB_MENSAGEM: TStringField
      FieldName = 'CB_MENSAGEM'
      Origin = 'TIPOSMOVIMENTO.CB_MENSAGEM'
      Size = 1
    end
    object C_TabelaTIT1_MENSAGEM: TStringField
      FieldName = 'TIT1_MENSAGEM'
      Origin = 'TIPOSMOVIMENTO.TIT1_MENSAGEM'
    end
    object C_TabelaTIT2_MENSAGEM: TStringField
      FieldName = 'TIT2_MENSAGEM'
      Origin = 'TIPOSMOVIMENTO.TIT2_MENSAGEM'
    end
    object C_TabelaCB_DESCONTOS: TStringField
      FieldName = 'CB_DESCONTOS'
      Origin = 'TIPOSMOVIMENTO.CB_DESCONTOS'
      Size = 1
    end
    object C_TabelaTIT1_DESCONTOS: TStringField
      FieldName = 'TIT1_DESCONTOS'
      Origin = 'TIPOSMOVIMENTO.TIT1_DESCONTOS'
    end
    object C_TabelaTIT2_DESCONTOS: TStringField
      FieldName = 'TIT2_DESCONTOS'
      Origin = 'TIPOSMOVIMENTO.TIT2_DESCONTOS'
    end
    object C_TabelaCB_FRETE: TStringField
      FieldName = 'CB_FRETE'
      Origin = 'TIPOSMOVIMENTO.CB_FRETE'
      Size = 1
    end
    object C_TabelaTIT1_FRETE: TStringField
      FieldName = 'TIT1_FRETE'
      Origin = 'TIPOSMOVIMENTO.TIT1_FRETE'
    end
    object C_TabelaTIT2_FRETE: TStringField
      FieldName = 'TIT2_FRETE'
      Origin = 'TIPOSMOVIMENTO.TIT2_FRETE'
    end
    object C_TabelaCB_TOTALITENS: TStringField
      FieldName = 'CB_TOTALITENS'
      Origin = 'TIPOSMOVIMENTO.CB_TOTALITENS'
      Size = 1
    end
    object C_TabelaTIT1_TOTALITENS: TStringField
      FieldName = 'TIT1_TOTALITENS'
      Origin = 'TIPOSMOVIMENTO.TIT1_TOTALITENS'
    end
    object C_TabelaTIT2_TOTALITENS: TStringField
      FieldName = 'TIT2_TOTALITENS'
      Origin = 'TIPOSMOVIMENTO.TIT2_TOTALITENS'
    end
    object C_TabelaCB_TOTALFINAL: TStringField
      FieldName = 'CB_TOTALFINAL'
      Origin = 'TIPOSMOVIMENTO.CB_TOTALFINAL'
      Size = 1
    end
    object C_TabelaTIT1_TOTALFINAL: TStringField
      FieldName = 'TIT1_TOTALFINAL'
      Origin = 'TIPOSMOVIMENTO.TIT1_TOTALFINAL'
    end
    object C_TabelaTIT2_TOTALFINAL: TStringField
      FieldName = 'TIT2_TOTALFINAL'
      Origin = 'TIPOSMOVIMENTO.TIT2_TOTALFINAL'
    end
    object C_TabelaTIT1_DESCRICAO: TStringField
      FieldName = 'TIT1_DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.TIT1_DESCRICAO'
    end
    object C_TabelaTIT1_QUANTIDADE: TStringField
      FieldName = 'TIT1_QUANTIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT1_QUANTIDADE'
    end
    object C_TabelaTIT1_PRECO: TStringField
      FieldName = 'TIT1_PRECO'
      Origin = 'TIPOSMOVIMENTO.TIT1_PRECO'
    end
    object C_TabelaTIT1_SUBTOTAL: TStringField
      FieldName = 'TIT1_SUBTOTAL'
      Origin = 'TIPOSMOVIMENTO.TIT1_SUBTOTAL'
    end
    object C_TabelaTIT2_DESCRICAO: TStringField
      FieldName = 'TIT2_DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.TIT2_DESCRICAO'
    end
    object C_TabelaTIT2_QUANTIDADE: TStringField
      FieldName = 'TIT2_QUANTIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT2_QUANTIDADE'
    end
    object C_TabelaTIT2_PRECO: TStringField
      FieldName = 'TIT2_PRECO'
      Origin = 'TIPOSMOVIMENTO.TIT2_PRECO'
    end
    object C_TabelaTIT2_SUBTOTAL: TStringField
      FieldName = 'TIT2_SUBTOTAL'
      Origin = 'TIPOSMOVIMENTO.TIT2_SUBTOTAL'
    end
    object C_TabelaCB_JUROS: TStringField
      FieldName = 'CB_JUROS'
      Origin = 'TIPOSMOVIMENTO.CB_JUROS'
      Size = 1
    end
    object C_TabelaTIT1_JUROS: TStringField
      FieldName = 'TIT1_JUROS'
      Origin = 'TIPOSMOVIMENTO.TIT1_JUROS'
    end
    object C_TabelaTIT2_JUROS: TStringField
      FieldName = 'TIT2_JUROS'
      Origin = 'TIPOSMOVIMENTO.TIT2_JUROS'
    end
    object C_TabelaCB_DESPESAS: TStringField
      FieldName = 'CB_DESPESAS'
      Origin = 'TIPOSMOVIMENTO.CB_DESPESAS'
      Size = 1
    end
    object C_TabelaTIT1_DESPESAS: TStringField
      FieldName = 'TIT1_DESPESAS'
      Origin = 'TIPOSMOVIMENTO.TIT1_DESPESAS'
    end
    object C_TabelaTIT2_DESPESAS: TStringField
      FieldName = 'TIT2_DESPESAS'
      Origin = 'TIPOSMOVIMENTO.TIT2_DESPESAS'
    end
    object C_TabelaCB_CAMPO01: TStringField
      FieldName = 'CB_CAMPO01'
      Origin = 'TIPOSMOVIMENTO.CB_CAMPO01'
      Size = 1
    end
    object C_TabelaTIT1_CAMPO1: TStringField
      FieldName = 'TIT1_CAMPO1'
      Origin = 'TIPOSMOVIMENTO.TIT1_CAMPO1'
    end
    object C_TabelaTIT2_CAMPO1: TStringField
      FieldName = 'TIT2_CAMPO1'
      Origin = 'TIPOSMOVIMENTO.TIT2_CAMPO1'
    end
    object C_TabelaCB_CAMPO02: TStringField
      FieldName = 'CB_CAMPO02'
      Origin = 'TIPOSMOVIMENTO.CB_CAMPO02'
      Size = 1
    end
    object C_TabelaTIT1_CAMPO2: TStringField
      FieldName = 'TIT1_CAMPO2'
      Origin = 'TIPOSMOVIMENTO.TIT1_CAMPO2'
    end
    object C_TabelaTIT2_CAMPO2: TStringField
      FieldName = 'TIT2_CAMPO2'
      Origin = 'TIPOSMOVIMENTO.TIT2_CAMPO2'
    end
    object C_TabelaCB_CAMPO03: TStringField
      FieldName = 'CB_CAMPO03'
      Origin = 'TIPOSMOVIMENTO.CB_CAMPO03'
      Size = 1
    end
    object C_TabelaTIT1_CAMPO3: TStringField
      FieldName = 'TIT1_CAMPO3'
      Origin = 'TIPOSMOVIMENTO.TIT1_CAMPO3'
    end
    object C_TabelaTIT2_CAMPO3: TStringField
      FieldName = 'TIT2_CAMPO3'
      Origin = 'TIPOSMOVIMENTO.TIT2_CAMPO3'
    end
    object C_TabelaCB_CAMPO04: TStringField
      FieldName = 'CB_CAMPO04'
      Origin = 'TIPOSMOVIMENTO.CB_CAMPO04'
      Size = 1
    end
    object C_TabelaTIT1_CAMPO4: TStringField
      FieldName = 'TIT1_CAMPO4'
      Origin = 'TIPOSMOVIMENTO.TIT1_CAMPO4'
    end
    object C_TabelaTIT2_CAMPO4: TStringField
      FieldName = 'TIT2_CAMPO4'
      Origin = 'TIPOSMOVIMENTO.TIT2_CAMPO4'
    end
    object C_TabelaCB_CODIGO: TStringField
      FieldName = 'CB_CODIGO'
      Origin = 'TIPOSMOVIMENTO.CB_CODIGO'
      Size = 1
    end
    object C_TabelaTIT1_CODIGO: TStringField
      FieldName = 'TIT1_CODIGO'
      Origin = 'TIPOSMOVIMENTO.TIT1_CODIGO'
    end
    object C_TabelaTIT2_CODIGO: TStringField
      FieldName = 'TIT2_CODIGO'
      Origin = 'TIPOSMOVIMENTO.TIT2_CODIGO'
    end
    object C_TabelaCB_FUNCIONARIO: TStringField
      FieldName = 'CB_FUNCIONARIO'
      Origin = 'TIPOSMOVIMENTO.CB_FUNCIONARIO'
      Size = 1
    end
    object C_TabelaTIT1_FUNCIONARIO: TStringField
      FieldName = 'TIT1_FUNCIONARIO'
      Origin = 'TIPOSMOVIMENTO.TIT1_FUNCIONARIO'
    end
    object C_TabelaTIT2_FUNCIONARIO: TStringField
      FieldName = 'TIT2_FUNCIONARIO'
      Origin = 'TIPOSMOVIMENTO.TIT2_FUNCIONARIO'
    end
    object C_TabelaTIT1_COLUNA1: TStringField
      FieldName = 'TIT1_COLUNA1'
      Origin = 'TIPOSMOVIMENTO.TIT1_COLUNA1'
    end
    object C_TabelaTIT1_COLUNA2: TStringField
      FieldName = 'TIT1_COLUNA2'
      Origin = 'TIPOSMOVIMENTO.TIT1_COLUNA2'
    end
    object C_TabelaTIT1_COLUNA3: TStringField
      FieldName = 'TIT1_COLUNA3'
      Origin = 'TIPOSMOVIMENTO.TIT1_COLUNA3'
    end
    object C_TabelaTIT1_COLUNA4: TStringField
      FieldName = 'TIT1_COLUNA4'
      Origin = 'TIPOSMOVIMENTO.TIT1_COLUNA4'
    end
    object C_TabelaTIT2_COLUNA1: TStringField
      FieldName = 'TIT2_COLUNA1'
      Origin = 'TIPOSMOVIMENTO.TIT2_COLUNA1'
    end
    object C_TabelaTIT2_COLUNA2: TStringField
      FieldName = 'TIT2_COLUNA2'
      Origin = 'TIPOSMOVIMENTO.TIT2_COLUNA2'
    end
    object C_TabelaTIT2_COLUNA3: TStringField
      FieldName = 'TIT2_COLUNA3'
      Origin = 'TIPOSMOVIMENTO.TIT2_COLUNA3'
    end
    object C_TabelaTIT2_COLUNA4: TStringField
      FieldName = 'TIT2_COLUNA4'
      Origin = 'TIPOSMOVIMENTO.TIT2_COLUNA4'
    end
    object C_TabelaCORTITULOS: TIntegerField
      FieldName = 'CORTITULOS'
      Origin = 'TIPOSMOVIMENTO.CORTITULOS'
    end
    object C_TabelaTIPOFAVPADRAO: TIntegerField
      FieldName = 'TIPOFAVPADRAO'
      Origin = 'TIPOSMOVIMENTO.TIPOFAVPADRAO'
    end
    object C_TabelaTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
      Origin = 'TIPOSMOVIMENTO.TIPOPADRAO'
      OnChange = C_TabelaTIPOPADRAOChange
    end
    object C_TabelaCB_COLUNA1: TStringField
      FieldName = 'CB_COLUNA1'
      Origin = 'TIPOSMOVIMENTO.CB_COLUNA1'
      Size = 1
    end
    object C_TabelaCB_COLUNA2: TStringField
      FieldName = 'CB_COLUNA2'
      Origin = 'TIPOSMOVIMENTO.CB_COLUNA2'
      Size = 1
    end
    object C_TabelaCB_COLUNA3: TStringField
      FieldName = 'CB_COLUNA3'
      Origin = 'TIPOSMOVIMENTO.CB_COLUNA3'
      Size = 1
    end
    object C_TabelaCB_COLUNA4: TStringField
      FieldName = 'CB_COLUNA4'
      Origin = 'TIPOSMOVIMENTO.CB_COLUNA4'
      Size = 1
    end
    object C_TabelaTIT1_UNIDADE: TStringField
      FieldName = 'TIT1_UNIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT1_UNIDADE'
    end
    object C_TabelaTIT2_UNIDADE: TStringField
      FieldName = 'TIT2_UNIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT2_UNIDADE'
    end
    object C_TabelaFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'TIPOSMOVIMENTO.FOTO'
      Size = 1
    end
    object C_TabelaTIT1_VALIDADE: TStringField
      FieldName = 'TIT1_VALIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT1_VALIDADE'
    end
    object C_TabelaTIT2_VALIDADE: TStringField
      FieldName = 'TIT2_VALIDADE'
      Origin = 'TIPOSMOVIMENTO.TIT2_VALIDADE'
    end
    object C_TabelaCB_REFERENCIA: TStringField
      FieldName = 'CB_REFERENCIA'
      Origin = 'TIPOSMOVIMENTO.CB_REFERENCIA'
      Size = 1
    end
    object C_TabelaTIT1_REFERENCIA: TStringField
      FieldName = 'TIT1_REFERENCIA'
      Origin = 'TIPOSMOVIMENTO.TIT1_REFERENCIA'
    end
    object C_TabelaTIT2_REFERENCIA: TStringField
      FieldName = 'TIT2_REFERENCIA'
      Origin = 'TIPOSMOVIMENTO.TIT2_REFERENCIA'
    end
    object C_TabelaTIT1_QTDRECEBIDA: TStringField
      FieldName = 'TIT1_QTDRECEBIDA'
      Origin = 'TIPOSMOVIMENTO.TIT1_QTDRECEBIDA'
    end
    object C_TabelaTIT2_QTDRECEBIDA: TStringField
      FieldName = 'TIT2_QTDRECEBIDA'
      Origin = 'TIPOSMOVIMENTO.TIT2_QTDRECEBIDA'
    end
    object C_TabelaTIT1_SITUACAO: TStringField
      FieldName = 'TIT1_SITUACAO'
      Origin = 'TIPOSMOVIMENTO.TIT1_SITUACAO'
    end
    object C_TabelaTIT2_SITUACAO: TStringField
      FieldName = 'TIT2_SITUACAO'
      Origin = 'TIPOSMOVIMENTO.TIT2_SITUACAO'
    end
    object C_TabelaATUALIZACUSTO: TStringField
      FieldName = 'ATUALIZACUSTO'
      Origin = 'TIPOSMOVIMENTO.ATUALIZACUSTO'
      Size = 3
    end
    object C_TabelaATUALIZAPRECO: TStringField
      FieldName = 'ATUALIZAPRECO'
      Origin = 'TIPOSMOVIMENTO.ATUALIZAPRECO'
      Size = 3
    end
    object C_TabelaINCLUIDESCONTO: TStringField
      FieldName = 'INCLUIDESCONTO'
      Origin = 'TIPOSMOVIMENTO.INCLUIDESCONTO'
      Size = 1
    end
    object C_TabelaATUALIZAPRECOMANUAL: TStringField
      FieldName = 'ATUALIZAPRECOMANUAL'
      Origin = 'TIPOSMOVIMENTO.ATUALIZAPRECOMANUAL'
      Size = 1
    end
    object C_TabelaCB_STATUS: TStringField
      FieldName = 'CB_STATUS'
      Origin = 'TIPOSMOVIMENTO.CB_STATUS'
      Size = 1
    end
    object C_TabelaSTATUSPADRAO: TStringField
      FieldName = 'STATUSPADRAO'
      Origin = 'TIPOSMOVIMENTO.STATUSPADRAO'
      Size = 1
    end
    object C_TabelaCB_STATUSITENS: TStringField
      FieldName = 'CB_STATUSITENS'
      Origin = 'TIPOSMOVIMENTO.CB_STATUSITENS'
      Size = 1
    end
    object C_TabelaSTATUSPADRAOITENS: TStringField
      FieldName = 'STATUSPADRAOITENS'
      Origin = 'TIPOSMOVIMENTO.STATUSPADRAOITENS'
      Size = 1
    end
    object C_TabelaCB_DOCSGARANTIA: TStringField
      FieldName = 'CB_DOCSGARANTIA'
      Origin = 'TIPOSMOVIMENTO.CB_DOCSGARANTIA'
      Size = 1
    end
    object C_TabelalkStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'lkStatus'
      LookupDataSet = C_Status
      LookupKeyFields = 'STATUS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'STATUSPADRAO'
      Size = 25
      Lookup = True
    end
    object C_TabelaCB_CODIGOFORN: TStringField
      FieldName = 'CB_CODIGOFORN'
      Origin = 'TIPOSMOVIMENTO.CB_CODIGOFORN'
      Size = 1
    end
    object C_TabelaTIT1_CODIGOFORN: TStringField
      FieldName = 'TIT1_CODIGOFORN'
      Origin = 'TIPOSMOVIMENTO.TIT1_CODIGOFORN'
    end
    object C_TabelaTIT2_CODIGOFORN: TStringField
      FieldName = 'TIT2_CODIGOFORN'
      Origin = 'TIPOSMOVIMENTO.TIT2_CODIGOFORN'
    end
    object C_TabelaCB_IMPRIMIROP: TStringField
      FieldName = 'CB_IMPRIMIROP'
      Origin = 'TIPOSMOVIMENTO.CB_IMPRIMIROP'
      Size = 1
    end
    object C_TabelaCB_PGTOS: TStringField
      FieldName = 'CB_PGTOS'
      Origin = 'TIPOSMOVIMENTO.CB_PGTOS'
      Size = 1
    end
    object C_TabelaCB_TOPRINTER: TStringField
      FieldName = 'CB_TOPRINTER'
      Origin = 'TIPOSMOVIMENTO.CB_TOPRINTER'
      Size = 1
    end
    object C_TabelaCB_GERARNUM: TStringField
      FieldName = 'CB_GERARNUM'
      Origin = 'TIPOSMOVIMENTO.CB_GERARNUM'
      Size = 1
    end
    object C_TabelaCB_CONSISTENCIA: TStringField
      FieldName = 'CB_CONSISTENCIA'
      Origin = 'TIPOSMOVIMENTO.CB_CONSISTENCIA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'TIPOSMOVIMENTO.DESATIVADO'
      Size = 1
    end
    object C_TabelaCB_COMPOSICAOITENS: TStringField
      FieldName = 'CB_COMPOSICAOITENS'
      Origin = 'TIPOSMOVIMENTO.CB_COMPOSICAOITENS'
      Size = 1
    end
    object C_TabelaCB_ICMS: TStringField
      FieldName = 'CB_ICMS'
      Origin = 'TIPOSMOVIMENTO.CB_ICMS'
      Size = 1
    end
    object C_TabelaTIT1_ICMS: TStringField
      FieldName = 'TIT1_ICMS'
      Origin = 'TIPOSMOVIMENTO.TIT1_ICMS'
    end
    object C_TabelaTIT2_ICMS: TStringField
      FieldName = 'TIT2_ICMS'
      Origin = 'TIPOSMOVIMENTO.TIT2_ICMS'
    end
    object C_TabelaPOSSUIICMS: TStringField
      FieldName = 'POSSUIICMS'
      Origin = 'TIPOSMOVIMENTO.POSSUIICMS'
      Size = 1
    end
    object C_TabelaPOSSUIIPI: TStringField
      FieldName = 'POSSUIIPI'
      Origin = 'TIPOSMOVIMENTO.POSSUIIPI'
      Size = 1
    end
    object C_TabelaTIT1_TVA: TStringField
      FieldName = 'TIT1_TVA'
      Origin = 'TIPOSMOVIMENTO.TIT1_TVA'
    end
    object C_TabelaTIT2_TVA: TStringField
      FieldName = 'TIT2_TVA'
      Origin = 'TIPOSMOVIMENTO.TIT2_TVA'
    end
    object C_TabelaCB_TVA: TStringField
      FieldName = 'CB_TVA'
      Origin = 'TIPOSMOVIMENTO.CB_TVA'
      Size = 1
    end
    object C_TabelaCB_ALIQICMS: TStringField
      FieldName = 'CB_ALIQICMS'
      Origin = 'TIPOSMOVIMENTO.CB_ALIQICMS'
      Size = 1
    end
    object C_TabelaSERIE: TStringField
      FieldName = 'SERIE'
      Origin = 'TIPOSMOVIMENTO.SERIE'
      Size = 3
    end
    object C_TabelaMODELODOC: TStringField
      FieldName = 'MODELODOC'
      Origin = 'TIPOSMOVIMENTO.MODELODOC'
      Size = 2
    end
    object C_TabelaTIT1_IPI: TStringField
      FieldName = 'TIT1_IPI'
      Origin = 'TIPOSMOVIMENTO.TIT1_IPI'
    end
    object C_TabelaTIT2_IPI: TStringField
      FieldName = 'TIT2_IPI'
      Origin = 'TIPOSMOVIMENTO.TIT2_IPI'
    end
    object C_TabelaCB_IPI: TStringField
      FieldName = 'CB_IPI'
      Origin = 'TIPOSMOVIMENTO.CB_IPI'
      Size = 1
    end
    object C_TabelaCONTABILIZAICMS: TStringField
      FieldName = 'CONTABILIZAICMS'
      Origin = 'TIPOSMOVIMENTO.CONTABILIZAICMS'
      Size = 1
    end
    object C_TabelaCB_CFOP: TStringField
      FieldName = 'CB_CFOP'
      Origin = 'TIPOSMOVIMENTO.CB_CFOP'
      Size = 1
    end
    object C_TabelaTIT1_CFOP: TStringField
      FieldName = 'TIT1_CFOP'
      Origin = 'TIPOSMOVIMENTO.TIT1_CFOP'
    end
    object C_TabelaTIT2_CFOP: TStringField
      FieldName = 'TIT2_CFOP'
      Origin = 'TIPOSMOVIMENTO.TIT2_CFOP'
    end
    object C_TabelaCB_DESCONTOITEM: TStringField
      FieldName = 'CB_DESCONTOITEM'
      Origin = 'TIPOSMOVIMENTO.CB_DESCONTOITEM'
      Size = 1
    end
    object C_TabelaCB_COMPENSACAO: TStringField
      FieldName = 'CB_COMPENSACAO'
      Origin = 'TIPOSMOVIMENTO.CB_COMPENSACAO'
      Size = 1
    end
    object C_TabelaCB_COMPENSACAONOCUSTO: TStringField
      FieldName = 'CB_COMPENSACAONOCUSTO'
      Origin = 'TIPOSMOVIMENTO.CB_COMPENSACAONOCUSTO'
      Size = 1
    end
    object C_TabelaCB_NOTAFISCAL: TStringField
      FieldName = 'CB_NOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.CB_NOTAFISCAL'
      Size = 1
    end
    object C_TabelaTEMPLATENOTAFISCAL: TIntegerField
      FieldName = 'TEMPLATENOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.TEMPLATENOTAFISCAL'
    end
    object C_TabelalkTemplate: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTemplate'
      LookupDataSet = C_Templates
      LookupKeyFields = 'TEMPLATE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TEMPLATENOTAFISCAL'
      Size = 50
      Lookup = True
    end
    object C_TabelaTIPONOTAFISCAL: TStringField
      FieldName = 'TIPONOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.TIPONOTAFISCAL'
      Size = 3
    end
    object C_TabelaCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Origin = 'TIPOSMOVIMENTO.CFOPASSOCIADO'
      Size = 4
    end
    object C_TabelaTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TIPOSMOVIMENTO.TEMPLATE'
    end
    object C_TabelaCB_IMPDOC: TStringField
      FieldName = 'CB_IMPDOC'
      Origin = 'TIPOSMOVIMENTO.CB_IMPDOC'
      Size = 1
    end
    object C_TabelalkTemplatePed: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTemplatePed'
      LookupDataSet = C_TemplatesPed
      LookupKeyFields = 'TEMPLATE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TEMPLATE'
      Size = 50
      Lookup = True
    end
    object C_TabelaALMOXPADRAO: TIntegerField
      FieldName = 'ALMOXPADRAO'
      Origin = 'TIPOSMOVIMENTO.ALMOXPADRAO'
    end
    object C_TabelalkAlmoxarifado: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAlmoxarifado'
      LookupDataSet = C_Almoxarifado
      LookupKeyFields = 'ALMOXARIFADO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ALMOXPADRAO'
      Size = 30
      Lookup = True
    end
    object C_TabelaCB_ENTRADAPRECOVENDA: TStringField
      FieldName = 'CB_ENTRADAPRECOVENDA'
      Origin = 'TIPOSMOVIMENTO.CB_ENTRADAPRECOVENDA'
      Size = 1
    end
    object C_TabelaBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      Origin = 'TIPOSMOVIMENTO.BAIXAESTOQUEFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_TabelaQ_CFOPSCST: TDataSetField
      FieldName = 'Q_CFOPSCST'
    end
    object C_TabelaLIVROFISCAL: TStringField
      FieldName = 'LIVROFISCAL'
      Origin = 'TIPOSMOVIMENTO.LIVROFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCST_PADRAO: TStringField
      FieldName = 'CST_PADRAO'
      Size = 3
    end
    object C_TabelalkpCST_Padrao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpCST_Padrao'
      LookupDataSet = C_CSTPADRAO
      LookupKeyFields = 'CST'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CST_PADRAO'
      Lookup = True
    end
    object C_TabelaCB_CSTPADRAO: TStringField
      FieldName = 'CB_CSTPADRAO'
      Size = 1
    end
    object C_TabelaCB_PRECO: TStringField
      FieldName = 'CB_PRECO'
      Size = 1
    end
    object C_TabelaCALCULAPISCOFINS: TStringField
      FieldName = 'CALCULAPISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_TabelaTIPOIMPRESSAO_OP: TStringField
      FieldName = 'TIPOIMPRESSAO_OP'
      Size = 3
    end
    object C_TabelaDescTipoImpressao: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTipoImpressao'
      LookupDataSet = C_TiposImpressao
      LookupKeyFields = 'TIPO'
      LookupResultField = 'TITULO'
      KeyFields = 'TIPOIMPRESSAO_OP'
      Size = 100
      Lookup = True
    end
  end
  object Q_TiposPadrao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from TiposPadrao'
      'Where Tipo = '#39'E'#39
      'Order by TipoPadrao')
    Left = 179
    Top = 3
  end
  object P_TiposPadrao: TDataSetProvider
    DataSet = Q_TiposPadrao
    Constraints = True
    Left = 180
    Top = 52
  end
  object C_TiposPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposPadrao'
    Left = 184
    Top = 166
    object C_TiposPadraoTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
      Origin = 'TIPOSPADRAO.TIPOPADRAO'
      Required = True
    end
    object C_TiposPadraoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSPADRAO.DESCRICAO'
    end
  end
  object C_TiposPadraoDS: TDataSource
    DataSet = C_TiposPadrao
    Left = 184
    Top = 215
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
      'where status not in ('#39'R'#39','#39'Z'#39','#39'D'#39','#39'L'#39')'
      'order by Ordem')
    UniDirectional = True
    Left = 264
    Top = 7
  end
  object P_Status: TDataSetProvider
    DataSet = Q_Status
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 264
    Top = 54
  end
  object C_Status: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Status'
    Left = 264
    Top = 101
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
  object Q_Templates: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from templates'
      'where tipo in ('#39'NE'#39' , '#39'ES'#39')')
    Left = 344
    Top = 8
  end
  object P_Templates: TDataSetProvider
    DataSet = Q_Templates
    Constraints = True
    Left = 344
    Top = 56
  end
  object C_Templates: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Templates'
    Left = 344
    Top = 104
    object C_TemplatesTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TEMPLATES.TEMPLATE'
      Required = True
    end
    object C_TemplatesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TEMPLATES.DESCRICAO'
      Size = 50
    end
    object C_TemplatesARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Origin = 'TEMPLATES.ARQUIVO'
      Size = 50
    end
    object C_TemplatesTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TEMPLATES.TIPO'
      Size = 3
    end
  end
  object Q_TemplatesPed: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from templates'
      'where tipo is null or tipo in ('#39'DE'#39')'
      'order by descricao')
    Left = 352
    Top = 168
  end
  object P_TemplatesPed: TDataSetProvider
    DataSet = Q_TemplatesPed
    Constraints = True
    Left = 352
    Top = 224
  end
  object C_TemplatesPed: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TemplatesPed'
    Left = 352
    Top = 280
    object C_TemplatesPedTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TEMPLATES.TEMPLATE'
      Required = True
    end
    object C_TemplatesPedDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TEMPLATES.DESCRICAO'
      Size = 50
    end
    object C_TemplatesPedARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Origin = 'TEMPLATES.ARQUIVO'
      Size = 50
    end
    object C_TemplatesPedTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TEMPLATES.TIPO'
      Size = 3
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
    Left = 426
    Top = 10
  end
  object P_Almoxarifado: TDataSetProvider
    DataSet = Q_Almoxarifado
    Constraints = True
    Left = 430
    Top = 62
  end
  object C_Almoxarifado: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifado'
    Left = 432
    Top = 120
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
  object Q_CFOPSCST: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select *'
      'from cfopscst c'
      'where c.tipomovimento = :tipoMovimento')
    UpdateObject = U_CFOPSCST
    Left = 508
    Top = 13
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TIPOMOVIMENTO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_CFOPSCST: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from cfopscst '
      'where'
      '  CFOPCST = :CFOPCST')
    ModifySQL.Strings = (
      'update cfopscst'
      'set'
      '  CFOPASSOCIADO = :CFOPASSOCIADO,'
      '  CST = :CST,'
      '  TIPOMOVIMENTO = :TIPOMOVIMENTO,'
      '  CFOPFORAESTADO = :CFOPFORAESTADO'
      'where'
      '  CFOPCST = :OLD_CFOPCST')
    InsertSQL.Strings = (
      'insert into cfopscst'
      '  (CFOPASSOCIADO, CST, TIPOMOVIMENTO, CFOPFORAESTADO)'
      'values'
      '  (:CFOPASSOCIADO, :CST, :TIPOMOVIMENTO, :CFOPFORAESTADO)')
    DeleteSQL.Strings = (
      'delete from cfopscst'
      'where'
      '  CFOPCST = :OLD_CFOPCST')
    Left = 509
    Top = 66
  end
  object P_CFOPSCST: TDataSetProvider
    DataSet = Q_CFOPSCST
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 512
    Top = 119
  end
  object C_CFOPSCST: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_CFOPSCST
    Params = <>
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnCalcFields = C_CFOPSCSTCalcFields
    OnNewRecord = C_CFOPSCSTNewRecord
    Left = 510
    Top = 176
    object C_CFOPSCSTCFOPCST: TIntegerField
      FieldName = 'CFOPCST'
      Required = True
    end
    object C_CFOPSCSTCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Size = 4
    end
    object C_CFOPSCSTCST: TStringField
      DisplayWidth = 3
      FieldName = 'CST'
      Size = 3
    end
    object C_CFOPSCSTTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object C_CFOPSCSTCFOPFORAESTADO: TStringField
      FieldName = 'CFOPFORAESTADO'
      Size = 4
    end
  end
  object C_CFOPSCSTDs: TDataSource
    Tag = 100
    DataSet = C_CFOPSCST
    Left = 510
    Top = 226
  end
  object Q_CSTPADRAO: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT C.cst,C.cst ||'#39' - '#39'|| C.descricao as descricao  FROM CSTS' +
        ' C')
    Left = 603
    Top = 19
  end
  object P_CSTPADRAO: TDataSetProvider
    DataSet = Q_CSTPADRAO
    Constraints = True
    Left = 603
    Top = 78
  end
  object C_CSTPADRAO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTPADRAO'
    Left = 605
    Top = 128
    object C_CSTPADRAOCST: TStringField
      FieldName = 'CST'
      Required = True
      Size = 3
    end
    object C_CSTPADRAODESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
  end
  object C_CSTPADRAODS: TDataSource
    Tag = 100
    DataSet = C_CSTPADRAO
    Left = 602
    Top = 186
  end
  object Q_TiposImpressao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from tiposimpressao tp'
      'where tp.tipo in ('#39'N'#39', '#39'40'#39')')
    Left = 713
    Top = 25
  end
  object P_TiposImpressao: TDataSetProvider
    DataSet = Q_TiposImpressao
    Constraints = True
    Left = 713
    Top = 73
  end
  object C_TiposImpressao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposImpressao'
    Left = 713
    Top = 121
    object C_TiposImpressaoTIPO: TStringField
      FieldName = 'TIPO'
      Required = True
      Size = 3
    end
    object C_TiposImpressaoTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object C_TiposImpressaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
    object C_TiposImpressaoIMAGEM: TStringField
      FieldName = 'IMAGEM'
      Size = 30
    end
    object C_TiposImpressaoORIGEMREPLIC: TStringField
      FieldName = 'ORIGEMREPLIC'
      FixedChar = True
      Size = 1
    end
  end
  object C_TiposImpressaoDS: TDataSource
    DataSet = C_TiposImpressao
    Left = 713
    Top = 169
  end
end
