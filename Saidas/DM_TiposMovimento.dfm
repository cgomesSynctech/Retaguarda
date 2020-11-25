inherited DMTiposMovimento: TDMTiposMovimento
  Left = 229
  Top = 149
  Height = 660
  Width = 1049
  inherited OpenDialog: TOpenDialog
    Left = 140
    Top = 275
  end
  inherited SaveDialog: TSaveDialog
    Left = 141
    Top = 216
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select t.*, f.Nome'
      'from TiposMovimento t '
      'LEFT JOIN Favorecidos f ON t.FavorecidoPadrao = f.Favorecido'
      'Where Tipo = '#39'S'#39)
    Left = 14
    Top = 7
  end
  inherited Q_MasterDS: TDataSource
    Left = 71
    Top = 7
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
      '  TIPODESCRICAO = :TIPODESCRICAO,'
      '  POSSUIICMS = :POSSUIICMS,'
      '  POSSUIIPI = :POSSUIIPI,'
      '  POSSUIISS = :POSSUIISS,'
      '  CONTABILIZAICMS = :CONTABILIZAICMS,'
      '  CFOPASSOCIADO = :CFOPASSOCIADO,'
      '  TIT1_TVA = :TIT1_TVA,'
      '  TIT2_TVA = :TIT2_TVA,'
      '  CB_TVA = :CB_TVA,'
      '  CB_FABRICANTE = :CB_FABRICANTE,'
      '  TIT1_FABRICANTE = :TIT1_FABRICANTE,'
      '  CB_NUMEROITEM = :CB_NUMEROITEM,'
      '  CB_REGISTRO = :CB_REGISTRO,'
      '  TIT2_FABRICANTE = :TIT2_FABRICANTE,'
      '  TIT1_REGISTRO = :TIT1_REGISTRO,'
      '  TIT2_REGISTRO = :TIT2_REGISTRO,'
      '  CB_ALIQICMS = :CB_ALIQICMS,'
      '  CB_POREXTENSO = :CB_POREXTENSO,'
      '  SERIE = :SERIE,'
      '  MODELODOC = :MODELODOC,'
      '  TIT1_IPI = :TIT1_IPI,'
      '  TIT2_IPI = :TIT2_IPI,'
      '  CB_IPI = :CB_IPI,'
      '  CB_LICITACAO = :CB_LICITACAO,'
      '  CB_CFOP = :CB_CFOP,'
      '  TIT1_CFOP = :TIT1_CFOP,'
      '  TIT2_CFOP = :TIT2_CFOP,'
      '  TIPOCOB_PADRAO = :TIPOCOB_PADRAO,'
      '  CB_NOTAFISCAL = :CB_NOTAFISCAL,'
      '  TIPONOTAFISCAL = :TIPONOTAFISCAL,'
      '  TEMPLATENOTAFISCAL = :TEMPLATENOTAFISCAL,'
      '  CB_DUPLICATA = :CB_DUPLICATA,'
      '  CB_BOLETO = :CB_BOLETO,'
      '  CB_CARNE = :CB_CARNE,'
      '  CB_RECIBO = :CB_RECIBO,'
      '  CB_IMPDOC = :CB_IMPDOC,'
      '  CB_IDENTIFICACAO = :CB_IDENTIFICACAO,'
      '  CB_OPCOESIMPRESSAO = :CB_OPCOESIMPRESSAO,'
      '  TEMPLATEDUPLICATA = :TEMPLATEDUPLICATA,'
      '  TEMPLATEBOLETO = :TEMPLATEBOLETO,'
      '  GERAFINANCEIRO = :GERAFINANCEIRO,'
      '  TIPO_CARTEIRA_PADRAO = :TIPO_CARTEIRA_PADRAO,'
      '  CB_ORDEM_IMP_ITENS = :CB_ORDEM_IMP_ITENS,'
      '  CB_DUPLICATA_IMPRESSA = :CB_DUPLICATA_IMPRESSA,'
      '  CB_IMPRESSAOSEMVALORES = :CB_IMPRESSAOSEMVALORES,'
      '  BAIXAESTOQUEFISCAL = :BAIXAESTOQUEFISCAL,'
      '  CB_SOLICITACAOALMOX = :CB_SOLICITACAOALMOX,'
      '  CB_CARNEIDENTIFICADO  = :CB_CARNEIDENTIFICADO,'
      '  LIVROFISCAL = :LIVROfISCAL,'
      '  CB_DESCONTOITEM = :CB_DESCONTOITEM,'
      '  CB_CSTPADRAO = :CB_CSTPADRAO,'
      '  CST_PADRAO = :CST_PADRAO,'
      '  ORDEM = :ORDEM,'
      '  CALCULAPISCOFINS = :CALCULAPISCOFINS,'
      '  CB_IMPRESSORAPADRAO = :CB_IMPRESSORAPADRAO,'
      '  NOMEIMPRESSORA = :NOMEIMPRESSORA,'
      '  PAPELIMPRESSORA = :PAPELIMPRESSORA,'
      '  CALCULAICMSSUBST = :CALCULAICMSSUBST,'
      '  CB_MENSAGEMTRIBUTOS = :CB_MENSAGEMTRIBUTOS'
      'where'
      '  TIPOMOVIMENTO = :OLD_TIPOMOVIMENTO')
    InsertSQL.Strings = (
      'insert into TiposMovimento'
      '  (TIPOMOVIMENTO, DESCRICAO, TIPO, BAIXAESTOQUE, CALCCOMISSAO, '
      'POSSUIENTREGA, '
      '   BLOQUEARSEATRASADO, BLOQUEARPORSITUACAO, '
      'BLOQUEARPORESTOQUE, LIMITEFAVORECIDO, '
      
        '   SIGLAINICIAL, TIT1_DATA, TIT2_DATA, TIT1_NUMERO, TIT2_NUMERO,' +
        ' '
      'CB_INFOENTREGA, '
      '   TIT1_LOCALENTREGA, TIT1_DATAENTREGA, TIT1_TIPOENTREGA, '
      'TIT2_LOCALENTREGA, '
      '   TIT2_DATAENTREGA, TIT2_TIPOENTREGA, CB_VENDEDOR, '
      'TIT1_VENDEDOR, TIT2_VENDEDOR, '
      
        '   CB_PEDIDO, TIT1_PEDIDO, TIT2_PEDIDO, CB_COMISSAO, TIT1_COMISS' +
        'AO, '
      'TIT2_COMISSAO, '
      '   CB_TERMOS, TIT1_TERMOS, TIT2_TERMOS, CB_MENSAGEM, '
      'TIT1_MENSAGEM, TIT2_MENSAGEM, '
      '   CB_DESCONTOS, TIT1_DESCONTOS, TIT2_DESCONTOS, CB_FRETE, '
      'TIT1_FRETE, '
      '   TIT2_FRETE, CB_TOTALITENS, TIT1_TOTALITENS, TIT2_TOTALITENS, '
      'CB_TOTALFINAL, '
      
        '   TIT1_TOTALFINAL, TIT2_TOTALFINAL, TIT1_DESCRICAO, TIT1_QUANTI' +
        'DADE, '
      'TIT1_PRECO, '
      '   TIT1_SUBTOTAL, TIT2_DESCRICAO, TIT2_QUANTIDADE, TIT2_PRECO, '
      'TIT2_SUBTOTAL, '
      
        '   CB_JUROS, TIT1_JUROS, TIT2_JUROS, CB_DESPESAS, TIT1_DESPESAS,' +
        ' '
      'TIT2_DESPESAS, '
      
        '   CB_CAMPO01, TIT1_CAMPO1, TIT2_CAMPO1, CB_CAMPO02, TIT1_CAMPO2' +
        ', '
      'TIT2_CAMPO2, '
      
        '   CB_CAMPO03, TIT1_CAMPO3, TIT2_CAMPO3, CB_CAMPO04, TIT1_CAMPO4' +
        ', '
      'TIT2_CAMPO4, '
      '   CB_CODIGO, TIT1_CODIGO, TIT2_CODIGO, CB_FUNCIONARIO, '
      'TIT1_FUNCIONARIO, '
      
        '   TIT2_FUNCIONARIO, CB_ICMS, TIT1_ICMS, TIT2_ICMS, TIT1_COLUNA1' +
        ', '
      'TIT1_COLUNA2, '
      '   TIT1_COLUNA3, TIT1_COLUNA4, TIT2_COLUNA1, TIT2_COLUNA2, '
      'TIT2_COLUNA3, '
      '   TIT2_COLUNA4, CORTITULOS, TIPOFAVPADRAO, TIPOPADRAO, '
      'CB_COLUNA1, CB_COLUNA2, '
      '   CB_COLUNA3, CB_COLUNA4, TIT1_UNIDADE, TIT2_UNIDADE, FOTO, '
      'TIT1_VALIDADE, '
      
        '   TIT2_VALIDADE, CB_REFERENCIA, TIT1_REFERENCIA, TIT2_REFERENCI' +
        'A, '
      'TIT1_QTDRECEBIDA, '
      
        '   TIT2_QTDRECEBIDA, TIT1_SITUACAO, TIT2_SITUACAO, ATUALIZACUSTO' +
        ', '
      'ATUALIZAPRECO, '
      
        '   INCLUIDESCONTO, ATUALIZAPRECOMANUAL, CB_STATUS, STATUSPADRAO,' +
        ' '
      'CB_STATUSITENS, '
      '   STATUSPADRAOITENS, CB_DOCSGARANTIA, CB_CODIGOFORN, '
      'TIT1_CODIGOFORN, '
      '   TIT2_CODIGOFORN, CB_IMPRIMIROP, CB_PGTOS, CB_FICHACLIENTE, '
      'CB_TOPRINTER, '
      '   CB_GERARNUM, FAVORECIDOPADRAO, TIPOIMPRESSAO_OP, '
      'MENSAGEMPADRAO, CB_CONTRATO, '
      '   TERMOCONTRATO, TEMPLATE, CB_PRECO, CB_SUBTOTAL, '
      'CB_CONSISTENCIA, DESATIVADO, '
      
        '   CB_BALANCE, TIT2_BALANCE, TIT2_PGTOS, TIT1_PGTOS, TIT1_BALANC' +
        'E, '
      'CB_VALIDADE, '
      '   CB_COMPOSICAOITENS, CB_DESCRICAOCOMPLEMENTAR, CB_UNIDADE, '
      'DIASVALIDADE, '
      
        '   TABELAPADRAO, ALMOXPADRAO, TIPODESCRICAO, POSSUIICMS, POSSUII' +
        'PI, '
      'POSSUIISS, '
      '   CONTABILIZAICMS, CFOPASSOCIADO, TIT1_TVA, TIT2_TVA, CB_TVA, '
      'CB_FABRICANTE, '
      
        '   TIT1_FABRICANTE, CB_NUMEROITEM, CB_REGISTRO, TIT2_FABRICANTE,' +
        ' '
      'TIT1_REGISTRO, '
      '   TIT2_REGISTRO, CB_ALIQICMS, CB_POREXTENSO, SERIE, MODELODOC, '
      'TIT1_IPI, '
      
        '   TIT2_IPI, CB_IPI, CB_LICITACAO, CB_CFOP, TIT1_CFOP, TIT2_CFOP' +
        ', '
      'TIPOCOB_PADRAO, '
      
        '   CB_NOTAFISCAL, TIPONOTAFISCAL, TEMPLATENOTAFISCAL, CB_DUPLICA' +
        'TA, '
      'CB_BOLETO, '
      '   CB_CARNE, CB_RECIBO, CB_IMPDOC, CB_IDENTIFICACAO, '
      'CB_OPCOESIMPRESSAO, '
      '   TEMPLATEDUPLICATA, TEMPLATEBOLETO, '
      'GERAFINANCEIRO,TIPO_CARTEIRA_PADRAO,CB_ORDEM_IMP_ITENS,'
      'CB_DUPLICATA_IMPRESSA, CB_IMPRESSAOSEMVALORES, '
      'BAIXAESTOQUEFISCAL, '
      'CB_SOLICITACAOALMOX , CB_CARNEIDENTIFICADO, LIVROFISCAL, '
      'CB_DESCONTOITEM,CB_CSTPADRAO, CST_PADRAO,ORDEM, '
      'CALCULAPISCOFINS, CB_IMPRESSORAPADRAO, NOMEIMPRESSORA, '
      'PAPELIMPRESSORA, CALCULAICMSSUBST, CB_MENSAGEMTRIBUTOS)'
      'values'
      
        '  (:TIPOMOVIMENTO, :DESCRICAO, :TIPO, :BAIXAESTOQUE, :CALCCOMISS' +
        'AO, '
      ':POSSUIENTREGA, '
      '   :BLOQUEARSEATRASADO, :BLOQUEARPORSITUACAO, '
      ':BLOQUEARPORESTOQUE, :LIMITEFAVORECIDO, '
      
        '   :SIGLAINICIAL, :TIT1_DATA, :TIT2_DATA, :TIT1_NUMERO, :TIT2_NU' +
        'MERO, '
      ':CB_INFOENTREGA, '
      '   :TIT1_LOCALENTREGA, :TIT1_DATAENTREGA, :TIT1_TIPOENTREGA, '
      ':TIT2_LOCALENTREGA, '
      '   :TIT2_DATAENTREGA, :TIT2_TIPOENTREGA, :CB_VENDEDOR, '
      ':TIT1_VENDEDOR, '
      '   :TIT2_VENDEDOR, :CB_PEDIDO, :TIT1_PEDIDO, :TIT2_PEDIDO, '
      ':CB_COMISSAO, '
      '   :TIT1_COMISSAO, :TIT2_COMISSAO, :CB_TERMOS, :TIT1_TERMOS, '
      ':TIT2_TERMOS, '
      '   :CB_MENSAGEM, :TIT1_MENSAGEM, :TIT2_MENSAGEM, :CB_DESCONTOS, '
      ':TIT1_DESCONTOS, '
      '   :TIT2_DESCONTOS, :CB_FRETE, :TIT1_FRETE, :TIT2_FRETE, '
      ':CB_TOTALITENS, '
      '   :TIT1_TOTALITENS, :TIT2_TOTALITENS, :CB_TOTALFINAL, '
      ':TIT1_TOTALFINAL, '
      
        '   :TIT2_TOTALFINAL, :TIT1_DESCRICAO, :TIT1_QUANTIDADE, :TIT1_PR' +
        'ECO, '
      ':TIT1_SUBTOTAL, '
      
        '   :TIT2_DESCRICAO, :TIT2_QUANTIDADE, :TIT2_PRECO, :TIT2_SUBTOTA' +
        'L, '
      ':CB_JUROS, '
      '   :TIT1_JUROS, :TIT2_JUROS, :CB_DESPESAS, :TIT1_DESPESAS, '
      ':TIT2_DESPESAS, '
      
        '   :CB_CAMPO01, :TIT1_CAMPO1, :TIT2_CAMPO1, :CB_CAMPO02, :TIT1_C' +
        'AMPO2, '
      
        '   :TIT2_CAMPO2, :CB_CAMPO03, :TIT1_CAMPO3, :TIT2_CAMPO3, :CB_CA' +
        'MPO04, '
      
        '   :TIT1_CAMPO4, :TIT2_CAMPO4, :CB_CODIGO, :TIT1_CODIGO, :TIT2_C' +
        'ODIGO, '
      
        '   :CB_FUNCIONARIO, :TIT1_FUNCIONARIO, :TIT2_FUNCIONARIO, :CB_IC' +
        'MS, '
      ':TIT1_ICMS, '
      '   :TIT2_ICMS, :TIT1_COLUNA1, :TIT1_COLUNA2, :TIT1_COLUNA3, '
      ':TIT1_COLUNA4, '
      '   :TIT2_COLUNA1, :TIT2_COLUNA2, :TIT2_COLUNA3, :TIT2_COLUNA4, '
      ':CORTITULOS, '
      '   :TIPOFAVPADRAO, :TIPOPADRAO, :CB_COLUNA1, :CB_COLUNA2, '
      ':CB_COLUNA3, '
      
        '   :CB_COLUNA4, :TIT1_UNIDADE, :TIT2_UNIDADE, :FOTO, :TIT1_VALID' +
        'ADE, '
      ':TIT2_VALIDADE, '
      '   :CB_REFERENCIA, :TIT1_REFERENCIA, :TIT2_REFERENCIA, '
      ':TIT1_QTDRECEBIDA, '
      
        '   :TIT2_QTDRECEBIDA, :TIT1_SITUACAO, :TIT2_SITUACAO, :ATUALIZAC' +
        'USTO, '
      ':ATUALIZAPRECO, '
      '   :INCLUIDESCONTO, :ATUALIZAPRECOMANUAL, :CB_STATUS, '
      ':STATUSPADRAO, :CB_STATUSITENS, '
      '   :STATUSPADRAOITENS, :CB_DOCSGARANTIA, :CB_CODIGOFORN, '
      ':TIT1_CODIGOFORN, '
      
        '   :TIT2_CODIGOFORN, :CB_IMPRIMIROP, :CB_PGTOS, :CB_FICHACLIENTE' +
        ', '
      ':CB_TOPRINTER, '
      '   :CB_GERARNUM, :FAVORECIDOPADRAO, :TIPOIMPRESSAO_OP, '
      ':MENSAGEMPADRAO, '
      '   :CB_CONTRATO, :TERMOCONTRATO, :TEMPLATE, :CB_PRECO, '
      ':CB_SUBTOTAL, :CB_CONSISTENCIA, '
      
        '   :DESATIVADO, :CB_BALANCE, :TIT2_BALANCE, :TIT2_PGTOS, :TIT1_P' +
        'GTOS, '
      ':TIT1_BALANCE, '
      
        '   :CB_VALIDADE, :CB_COMPOSICAOITENS, :CB_DESCRICAOCOMPLEMENTAR,' +
        ' '
      ':CB_UNIDADE, '
      '   :DIASVALIDADE, :TABELAPADRAO, :ALMOXPADRAO, :TIPODESCRICAO, '
      ':POSSUIICMS, '
      
        '   :POSSUIIPI, :POSSUIISS, :CONTABILIZAICMS, :CFOPASSOCIADO, :TI' +
        'T1_TVA, '
      '   :TIT2_TVA, :CB_TVA, :CB_FABRICANTE, :TIT1_FABRICANTE, '
      ':CB_NUMEROITEM, '
      
        '   :CB_REGISTRO, :TIT2_FABRICANTE, :TIT1_REGISTRO, :TIT2_REGISTR' +
        'O, '
      ':CB_ALIQICMS, '
      
        '   :CB_POREXTENSO, :SERIE, :MODELODOC, :TIT1_IPI, :TIT2_IPI, :CB' +
        '_IPI, '
      ':CB_LICITACAO, '
      
        '   :CB_CFOP, :TIT1_CFOP, :TIT2_CFOP, :TIPOCOB_PADRAO, :CB_NOTAFI' +
        'SCAL, '
      ':TIPONOTAFISCAL, '
      '   :TEMPLATENOTAFISCAL, :CB_DUPLICATA, :CB_BOLETO, :CB_CARNE, '
      ':CB_RECIBO, '
      '   :CB_IMPDOC, :CB_IDENTIFICACAO, :CB_OPCOESIMPRESSAO, '
      ':TEMPLATEDUPLICATA, '
      '   :TEMPLATEBOLETO, '
      ':GERAFINANCEIRO,:TIPO_CARTEIRA_PADRAO,:CB_ORDEM_IMP_ITENS,'
      ':CB_DUPLICATA_IMPRESSA, :CB_IMPRESSAOSEMVALORES, '
      
        ':BAIXAESTOQUEFISCAL, :CB_SOLICITACAOALMOX , :CB_CARNEIDENTIFICAD' +
        'O, '
      ':LIVROFISCAL, :CB_DESCONTOITEM,:CB_CSTPADRAO,'
      ':CST_PADRAO,:ORDEM, :CALCULAPISCOFINS, :CB_IMPRESSORAPADRAO, '
      ':NOMEIMPRESSORA, :PAPELIMPRESSORA, :CALCULAICMSSUBST, '
      ':CB_MENSAGEMTRIBUTOS)')
    DeleteSQL.Strings = (
      'delete from TiposMovimento'
      'where'
      '  TIPOMOVIMENTO = :OLD_TIPOMOVIMENTO')
    Left = 13
    Top = 54
  end
  inherited DMComponent: TDMComponent
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    KeyForIDs = 'TiposMovimento'
    Tabela_Nome = 'TiposMovimento'
    Tabela_Chave = 'TipoMovimento'
    DeleteValidate.Strings = (
      'Saidas=TipoMovimento')
    Left = 161
    Top = 122
  end
  inherited DlgMsg: TDlgMsg
    Left = 54
    Top = 290
  end
  inherited P_Tabela: TDataSetProvider
    Left = 12
    Top = 105
  end
  inherited C_Tabela: TClientDataSet
    OnCalcFields = C_TabelaCalcFields
    Left = 16
    Top = 161
    object C_TabelaDescTipoPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTipoPadrao'
      LookupDataSet = C_TiposPadrao
      LookupKeyFields = 'TIPOPADRAO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOPADRAO'
      Lookup = True
    end
    object C_TabelaTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
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
      OnValidate = C_TabelaTIPOPADRAOValidate
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
    object C_TabelaCB_FICHACLIENTE: TStringField
      FieldName = 'CB_FICHACLIENTE'
      Origin = 'TIPOSMOVIMENTO.CB_FICHACLIENTE'
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
    object C_TabelaFAVORECIDOPADRAO: TIntegerField
      FieldName = 'FAVORECIDOPADRAO'
      Origin = 'TIPOSMOVIMENTO.FAVORECIDOPADRAO'
    end
    object C_TabelaTIPOIMPRESSAO_OP: TStringField
      FieldName = 'TIPOIMPRESSAO_OP'
      Origin = 'TIPOSMOVIMENTO.TIPOIMPRESSAO_OP'
      Size = 3
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelaMENSAGEMPADRAO: TIntegerField
      FieldName = 'MENSAGEMPADRAO'
      Origin = 'TIPOSMOVIMENTO.MENSAGEMPADRAO'
    end
    object C_TabelalkMensagem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMensagem'
      LookupDataSet = C_MensagensOperacoes
      LookupKeyFields = 'MENSAGEMOPERACAO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MENSAGEMPADRAO'
      Size = 150
      Lookup = True
    end
    object C_TabelaCB_CONTRATO: TStringField
      FieldName = 'CB_CONTRATO'
      Origin = 'TIPOSMOVIMENTO.CB_CONTRATO'
      Size = 1
    end
    object C_TabelaTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TIPOSMOVIMENTO.TEMPLATE'
    end
    object C_TabelaTERMOCONTRATO: TIntegerField
      FieldName = 'TERMOCONTRATO'
      Origin = 'TIPOSMOVIMENTO.TERMOCONTRATO'
    end
    object C_TabelalkTermoContrato: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTermoContrato'
      LookupDataSet = C_TermosContratos
      LookupKeyFields = 'TERMOCONTRATO'
      LookupResultField = 'TITULO'
      KeyFields = 'TERMOCONTRATO'
      Size = 50
      Lookup = True
    end
    object C_TabelalkTemplate: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTemplate'
      LookupDataSet = C_Templates
      LookupKeyFields = 'TEMPLATE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TEMPLATE'
      Size = 50
      Lookup = True
    end
    object C_TabelaCB_PRECO: TStringField
      FieldName = 'CB_PRECO'
      Origin = 'TIPOSMOVIMENTO.CB_PRECO'
      Size = 1
    end
    object C_TabelaCB_SUBTOTAL: TStringField
      FieldName = 'CB_SUBTOTAL'
      Origin = 'TIPOSMOVIMENTO.CB_SUBTOTAL'
      Size = 1
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
    object C_TabelaCB_COMPOSICAOITENS: TStringField
      FieldName = 'CB_COMPOSICAOITENS'
      Origin = 'TIPOSMOVIMENTO.CB_COMPOSICAOITENS'
      Size = 1
    end
    object C_TabelaCB_DESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'CB_DESCRICAOCOMPLEMENTAR'
      Origin = 'TIPOSMOVIMENTO.CB_DESCRICAOCOMPLEMENTAR'
      Size = 1
    end
    object C_TabelaCB_UNIDADE: TStringField
      FieldName = 'CB_UNIDADE'
      Origin = 'TIPOSMOVIMENTO.CB_UNIDADE'
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
    object C_TabelaCB_BALANCE: TStringField
      FieldName = 'CB_BALANCE'
      Origin = 'TIPOSMOVIMENTO.CB_BALANCE'
      Size = 1
    end
    object C_TabelaTIT2_BALANCE: TStringField
      FieldName = 'TIT2_BALANCE'
      Origin = 'TIPOSMOVIMENTO.TIT2_BALANCE'
    end
    object C_TabelaTIT2_PGTOS: TStringField
      FieldName = 'TIT2_PGTOS'
      Origin = 'TIPOSMOVIMENTO.TIT2_PGTOS'
    end
    object C_TabelaTIT1_PGTOS: TStringField
      FieldName = 'TIT1_PGTOS'
      Origin = 'TIPOSMOVIMENTO.TIT1_PGTOS'
    end
    object C_TabelaTIT1_BALANCE: TStringField
      FieldName = 'TIT1_BALANCE'
      Origin = 'TIPOSMOVIMENTO.TIT1_BALANCE'
    end
    object C_TabelaCB_VALIDADE: TStringField
      FieldName = 'CB_VALIDADE'
      Origin = 'TIPOSMOVIMENTO.CB_VALIDADE'
      Size = 1
    end
    object C_TabelaDIASVALIDADE: TIntegerField
      FieldName = 'DIASVALIDADE'
      Origin = 'TIPOSMOVIMENTO.DIASVALIDADE'
    end
    object C_TabelaTABELAPADRAO: TIntegerField
      FieldName = 'TABELAPADRAO'
      Origin = 'TIPOSMOVIMENTO.TABELAPADRAO'
    end
    object C_TabelaALMOXPADRAO: TIntegerField
      FieldName = 'ALMOXPADRAO'
      Origin = 'TIPOSMOVIMENTO.ALMOXPADRAO'
    end
    object C_TabelalkAlmoxarifado: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAlmoxarifado'
      LookupDataSet = C_Almoxarifados
      LookupKeyFields = 'ALMOXARIFADO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ALMOXPADRAO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkTabelaPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTabelaPadrao'
      LookupDataSet = C_TabelasPreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPADRAO'
      Size = 30
      Lookup = True
    end
    object C_TabelaTIPODESCRICAO: TStringField
      FieldName = 'TIPODESCRICAO'
      Origin = 'TIPOSMOVIMENTO.TIPODESCRICAO'
      Size = 2
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
    object C_TabelaPOSSUIISS: TStringField
      FieldName = 'POSSUIISS'
      Origin = 'TIPOSMOVIMENTO.POSSUIISS'
      Size = 1
    end
    object C_TabelaCONTABILIZAICMS: TStringField
      FieldName = 'CONTABILIZAICMS'
      Origin = 'TIPOSMOVIMENTO.CONTABILIZAICMS'
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
    object C_TabelaCB_FABRICANTE: TStringField
      FieldName = 'CB_FABRICANTE'
      Origin = 'TIPOSMOVIMENTO.CB_FABRICANTE'
      FixedChar = True
      Size = 1
    end
    object C_TabelaTIT1_FABRICANTE: TStringField
      FieldName = 'TIT1_FABRICANTE'
      Origin = 'TIPOSMOVIMENTO.TIT1_FABRICANTE'
    end
    object C_TabelaCB_NUMEROITEM: TStringField
      FieldName = 'CB_NUMEROITEM'
      Origin = 'TIPOSMOVIMENTO.CB_NUMEROITEM'
      Size = 1
    end
    object C_TabelaCB_REGISTRO: TStringField
      FieldName = 'CB_REGISTRO'
      Origin = 'TIPOSMOVIMENTO.CB_REGISTRO'
      Size = 1
    end
    object C_TabelaTIT2_FABRICANTE: TStringField
      FieldName = 'TIT2_FABRICANTE'
      Origin = 'TIPOSMOVIMENTO.TIT2_FABRICANTE'
    end
    object C_TabelaTIT1_REGISTRO: TStringField
      FieldName = 'TIT1_REGISTRO'
      Origin = 'TIPOSMOVIMENTO.TIT1_REGISTRO'
    end
    object C_TabelaTIT2_REGISTRO: TStringField
      FieldName = 'TIT2_REGISTRO'
      Origin = 'TIPOSMOVIMENTO.TIT2_REGISTRO'
    end
    object C_TabelaCB_ALIQICMS: TStringField
      FieldName = 'CB_ALIQICMS'
      Origin = 'TIPOSMOVIMENTO.CB_ALIQICMS'
      Size = 1
    end
    object C_TabelaCB_POREXTENSO: TStringField
      FieldName = 'CB_POREXTENSO'
      Origin = 'TIPOSMOVIMENTO.CB_POREXTENSO'
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
    object C_TabelaCB_LICITACAO: TStringField
      FieldName = 'CB_LICITACAO'
      Origin = 'TIPOSMOVIMENTO.CB_LICITACAO'
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
    object C_TabelaTIPOCOB_PADRAO: TIntegerField
      FieldName = 'TIPOCOB_PADRAO'
      Origin = 'TIPOSMOVIMENTO.TIPOCOB_PADRAO'
    end
    object C_TabelaCB_NOTAFISCAL: TStringField
      FieldName = 'CB_NOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.CB_NOTAFISCAL'
      Size = 1
    end
    object C_TabelaTIPONOTAFISCAL: TStringField
      FieldName = 'TIPONOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.TIPONOTAFISCAL'
      Size = 3
    end
    object C_TabelaTEMPLATENOTAFISCAL: TIntegerField
      FieldName = 'TEMPLATENOTAFISCAL'
      Origin = 'TIPOSMOVIMENTO.TEMPLATENOTAFISCAL'
    end
    object C_TabelaCB_DUPLICATA: TStringField
      FieldName = 'CB_DUPLICATA'
      Origin = 'TIPOSMOVIMENTO.CB_DUPLICATA'
      Size = 1
    end
    object C_TabelaCB_BOLETO: TStringField
      FieldName = 'CB_BOLETO'
      Origin = 'TIPOSMOVIMENTO.CB_BOLETO'
      Size = 1
    end
    object C_TabelaCB_CARNE: TStringField
      FieldName = 'CB_CARNE'
      Origin = 'TIPOSMOVIMENTO.CB_CARNE'
      Size = 1
    end
    object C_TabelaCB_RECIBO: TStringField
      FieldName = 'CB_RECIBO'
      Origin = 'TIPOSMOVIMENTO.CB_RECIBO'
      Size = 1
    end
    object C_TabelaCB_IMPDOC: TStringField
      FieldName = 'CB_IMPDOC'
      Origin = 'TIPOSMOVIMENTO.CB_IMPDOC'
      Size = 1
    end
    object C_TabelaDescTipoImpressao: TStringField
      FieldKind = fkLookup
      FieldName = 'DescTipoImpressao'
      LookupDataSet = C_TiposImpressao
      LookupKeyFields = 'TIPO'
      LookupResultField = 'TITULO'
      KeyFields = 'TIPOIMPRESSAO_OP'
      Size = 50
      Lookup = True
    end
    object C_TabelalkTemplateNF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTemplateNF'
      LookupDataSet = C_TemplatesNF
      LookupKeyFields = 'TEMPLATE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TEMPLATENOTAFISCAL'
      Size = 50
      Lookup = True
    end
    object C_TabelaCB_IDENTIFICACAO: TStringField
      FieldName = 'CB_IDENTIFICACAO'
      Origin = 'TIPOSMOVIMENTO.CB_IDENTIFICACAO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCB_OPCOESIMPRESSAO: TStringField
      FieldName = 'CB_OPCOESIMPRESSAO'
      Origin = 'TIPOSMOVIMENTO.CB_OPCOESIMPRESSAO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaTEMPLATEDUPLICATA: TIntegerField
      FieldName = 'TEMPLATEDUPLICATA'
      Origin = 'TIPOSMOVIMENTO.TEMPLATEDUPLICATA'
    end
    object C_TabelaTEMPLATEBOLETO: TIntegerField
      FieldName = 'TEMPLATEBOLETO'
      Origin = 'TIPOSMOVIMENTO.TEMPLATEBOLETO'
    end
    object C_TabelalkTemplateDup: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTemplateDup'
      LookupDataSet = C_TemplateDup
      LookupKeyFields = 'TEMPLATE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TEMPLATEDUPLICATA'
      Size = 50
      Lookup = True
    end
    object C_TabelalkTemplateBol: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTemplateBol'
      LookupDataSet = C_TemplateBol
      LookupKeyFields = 'TEMPLATE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TEMPLATEBOLETO'
      Size = 50
      Lookup = True
    end
    object C_TabelalkTipoCobrancaPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoCobrancaPadrao'
      LookupDataSet = C_TiposCobranca
      LookupKeyFields = 'TIPOCOBRANCA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOCOB_PADRAO'
      Size = 50
      Lookup = True
    end
    object C_TabelaCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Origin = 'TIPOSMOVIMENTO.CFOPASSOCIADO'
      Size = 4
    end
    object C_TabelaGERAFINANCEIRO: TStringField
      FieldName = 'GERAFINANCEIRO'
      Origin = 'TIPOSMOVIMENTO.GERAFINANCEIRO'
      Size = 1
    end
    object C_TabelaTIPO_CARTEIRA_PADRAO: TIntegerField
      FieldName = 'TIPO_CARTEIRA_PADRAO'
      Origin = 'TIPOSMOVIMENTO.TIPO_CARTEIRA_PADRAO'
    end
    object C_TabelalkTipoCarteiraPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoCarteiraPadrao'
      LookupDataSet = C_Carteiras
      LookupKeyFields = 'CARTEIRA'
      LookupResultField = 'NUMEROCARTEIRA'
      KeyFields = 'TIPO_CARTEIRA_PADRAO'
      Size = 10
      Lookup = True
    end
    object C_TabelaCB_ORDEM_IMP_ITENS: TStringField
      FieldName = 'CB_ORDEM_IMP_ITENS'
      Origin = 'TIPOSMOVIMENTO.CB_ORDEM_IMP_ITENS'
      Size = 1
    end
    object C_TabelaCB_DUPLICATA_IMPRESSA: TStringField
      FieldName = 'CB_DUPLICATA_IMPRESSA'
      Origin = 'TIPOSMOVIMENTO.CB_DUPLICATA_IMPRESSA'
      Size = 1
    end
    object C_TabelaCB_IMPRESSAOSEMVALORES: TStringField
      FieldName = 'CB_IMPRESSAOSEMVALORES'
      Origin = 'TIPOSMOVIMENTO.CB_IMPRESSAOSEMVALORES'
      FixedChar = True
      Size = 1
    end
    object C_TabelaBAIXAESTOQUEFISCAL: TStringField
      FieldName = 'BAIXAESTOQUEFISCAL'
      Origin = 'TIPOSMOVIMENTO.BAIXAESTOQUEFISCAL'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCB_SOLICITACAOALMOX: TStringField
      FieldName = 'CB_SOLICITACAOALMOX'
      Origin = 'TIPOSMOVIMENTO.CB_SOLICITACAOALMOX'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCB_CARNEIDENTIFICADO: TStringField
      FieldName = 'CB_CARNEIDENTIFICADO'
      Origin = 'TIPOSMOVIMENTO.CB_CARNEIDENTIFICADO'
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
    object C_TabelaCB_DESCONTOITEM: TStringField
      FieldName = 'CB_DESCONTOITEM'
      Size = 1
    end
    object C_TabelaCB_CSTPADRAO: TStringField
      FieldName = 'CB_CSTPADRAO'
      Size = 1
    end
    object C_TabelaCST_PADRAO: TStringField
      FieldName = 'CST_PADRAO'
      Size = 3
    end
    object C_TabelalkCstPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCstPadrao'
      LookupDataSet = C_CSTPADRAO
      LookupKeyFields = 'CST'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CST_PADRAO'
      Visible = False
      Size = 60
      Lookup = True
    end
    object C_TabelaORDEM: TIntegerField
      FieldName = 'ORDEM'
    end
    object C_TabelaCALCULAPISCOFINS: TStringField
      FieldName = 'CALCULAPISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCB_IMPRESSORAPADRAO: TStringField
      FieldName = 'CB_IMPRESSORAPADRAO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaNOMEIMPRESSORA: TStringField
      FieldName = 'NOMEIMPRESSORA'
      Size = 255
    end
    object C_TabelaPAPELIMPRESSORA: TStringField
      FieldName = 'PAPELIMPRESSORA'
      Size = 255
    end
    object C_TabelaCALCULAICMSSUBST: TStringField
      FieldName = 'CALCULAICMSSUBST'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCB_MENSAGEMTRIBUTOS: TStringField
      FieldName = 'CB_MENSAGEMTRIBUTOS'
      FixedChar = True
      Size = 1
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 20
    Top = 240
  end
  inherited ResultSet: TClientDataSet
    Left = 70
    Top = 55
  end
  object Q_TiposPadrao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from TiposPadrao'
      'Where Tipo = '#39'S'#39
      'Order by TipoPadrao')
    Left = 159
    Top = 7
  end
  object P_TiposPadrao: TDataSetProvider
    DataSet = Q_TiposPadrao
    Constraints = True
    Left = 160
    Top = 55
  end
  object C_TiposPadrao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposPadrao'
    Left = 79
    Top = 103
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
    Left = 86
    Top = 157
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 84
    Top = 224
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
      'where status not in ('#39'F'#39','#39'L'#39')'
      'order by Ordem')
    UniDirectional = True
    Left = 244
    Top = 7
  end
  object P_Status: TDataSetProvider
    DataSet = Q_Status
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 244
    Top = 55
  end
  object C_Status: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Status'
    Left = 244
    Top = 105
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
    Left = 345
    Top = 8
  end
  object P_MensagensOperacoes: TDataSetProvider
    DataSet = Q_MensagensOperacoes
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 345
    Top = 56
  end
  object C_MensagensOperacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MensagensOperacoes'
    Left = 345
    Top = 106
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
  object C_TermosContratos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TermosContratos'
    Left = 342
    Top = 254
    object C_TermosContratosTERMOCONTRATO: TIntegerField
      FieldName = 'TERMOCONTRATO'
      Origin = 'TERMOSCONTRATOS.TERMOCONTRATO'
      Required = True
    end
    object C_TermosContratosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TERMOSCONTRATOS.DESCRICAO'
      Size = 500
    end
    object C_TermosContratosDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'TERMOSCONTRATOS.DESATIVADO'
      Size = 1
    end
    object C_TermosContratosTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TERMOSCONTRATOS.TITULO'
      Size = 25
    end
  end
  object P_TermosContratos: TDataSetProvider
    DataSet = Q_TermosContratos
    Constraints = True
    Left = 343
    Top = 202
  end
  object Q_TermosContratos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TermosContratos'
      'where desativado = '#39'N'#39)
    Left = 343
    Top = 156
  end
  object Q_Templates: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from templates'
      'where not (tipo IN ('#39'NF'#39', '#39'NFS'#39', '#39'NS'#39', '#39'DUP'#39', '#39'BOL'#39'))')
    Left = 241
    Top = 156
  end
  object C_Templates: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Templates'
    Left = 239
    Top = 250
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
  object P_Templates: TDataSetProvider
    DataSet = Q_Templates
    Constraints = True
    Left = 241
    Top = 204
  end
  object C_TiposImpressaoDS: TDataSource
    DataSet = C_TiposImpressao
    Left = 569
    Top = 153
  end
  object C_TiposImpressao: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposImpressao'
    AfterOpen = C_TiposImpressaoAfterOpen
    Left = 569
    Top = 105
    object C_TiposImpressaoTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TIPOSIMPRESSAO.TIPO'
      Required = True
      Size = 3
    end
    object C_TiposImpressaoTITULO: TStringField
      FieldName = 'TITULO'
      Origin = 'TIPOSIMPRESSAO.TITULO'
      Size = 50
    end
    object C_TiposImpressaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSIMPRESSAO.DESCRICAO'
      Size = 500
    end
    object C_TiposImpressaoIMAGEM: TStringField
      FieldName = 'IMAGEM'
      Origin = 'TIPOSIMPRESSAO.IMAGEM'
      Size = 30
    end
    object C_TiposImpressaoicImagem: TGraphicField
      FieldKind = fkInternalCalc
      FieldName = 'icImagem'
      BlobType = ftGraphic
    end
  end
  object Q_TabelasPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tabelaspreco where desativado = '#39'N'#39
      'order by Percentual, TabelaPreco')
    UniDirectional = True
    Left = 466
    Top = 8
    object Q_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object Q_TabelasPrecoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object Q_TabelasPrecoPERCENTUAL: TIBBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object Q_TabelasPrecoDESATIVADO: TIBStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object Q_TabelasPrecoBASEADA: TIBStringField
      FieldName = 'BASEADA'
      Size = 1
    end
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasPreco'
    Left = 463
    Top = 105
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object C_TabelasPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TabelasPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelasPrecoDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelasPrecoBASEADA: TStringField
      FieldName = 'BASEADA'
      Size = 1
    end
  end
  object P_TabelasPreco: TDataSetProvider
    DataSet = Q_TabelasPreco
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 466
    Top = 56
  end
  object Q_Almoxarifados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from Almoxarifados')
    Left = 463
    Top = 154
  end
  object P_Almoxarifados: TDataSetProvider
    DataSet = Q_Almoxarifados
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 463
    Top = 204
  end
  object C_Almoxarifados: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifados'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 463
    Top = 251
    object C_AlmoxarifadosALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'ALMOXARIFADOS.ALMOXARIFADO'
    end
    object C_AlmoxarifadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ALMOXARIFADOS.DESCRICAO'
      Size = 30
    end
  end
  object P_TiposImpressao: TDataSetProvider
    DataSet = Q_TiposImpressao
    Constraints = True
    Left = 569
    Top = 57
  end
  object Q_TiposImpressao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * from TiposImpressao'
      'Order by Titulo')
    Left = 569
    Top = 9
  end
  object Q_TemplatesNF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from templates'
      'where tipo = :tipo')
    Left = 569
    Top = 203
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'tipo'
        ParamType = ptUnknown
      end>
  end
  object P_TemplatesNF: TDataSetProvider
    DataSet = Q_TemplatesNF
    Constraints = True
    Left = 569
    Top = 252
  end
  object C_TemplatesNF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TemplatesNF'
    Left = 569
    Top = 300
    object C_TemplatesNFTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TEMPLATES.TEMPLATE'
      Required = True
    end
    object C_TemplatesNFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TEMPLATES.DESCRICAO'
      Size = 50
    end
    object C_TemplatesNFARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Origin = 'TEMPLATES.ARQUIVO'
      Size = 50
    end
    object C_TemplatesNFTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TEMPLATES.TIPO'
      Size = 3
    end
  end
  object C_TemplatesDS: TDataSource
    DataSet = C_Templates
    Left = 241
    Top = 300
  end
  object C_TemplatesNFDS: TDataSource
    DataSet = C_TemplatesNF
    Left = 569
    Top = 348
  end
  object Q_TemplateDup: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from templates'
      'where tipo = '#39'DUP'#39)
    Left = 681
    Top = 10
  end
  object C_TemplateDup: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TemplateDup'
    Left = 681
    Top = 108
    object C_TemplateDupTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TEMPLATES.TEMPLATE'
      Required = True
    end
    object C_TemplateDupDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TEMPLATES.DESCRICAO'
      Size = 50
    end
    object C_TemplateDupARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Origin = 'TEMPLATES.ARQUIVO'
      Size = 50
    end
    object C_TemplateDupTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TEMPLATES.TIPO'
      Size = 3
    end
  end
  object P_TemplateDup: TDataSetProvider
    DataSet = Q_TemplateDup
    Constraints = True
    Left = 681
    Top = 58
  end
  object C_TemplateBol: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TemplateBol'
    Left = 681
    Top = 300
    object C_TemplateBolTEMPLATE: TIntegerField
      FieldName = 'TEMPLATE'
      Origin = 'TEMPLATES.TEMPLATE'
      Required = True
    end
    object C_TemplateBolDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TEMPLATES.DESCRICAO'
      Size = 50
    end
    object C_TemplateBolARQUIVO: TStringField
      FieldName = 'ARQUIVO'
      Origin = 'TEMPLATES.ARQUIVO'
      Size = 50
    end
    object C_TemplateBolTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'TEMPLATES.TIPO'
      Size = 3
    end
  end
  object P_TemplateBol: TDataSetProvider
    DataSet = Q_TemplateBol
    Constraints = True
    Left = 681
    Top = 252
  end
  object Q_TemplateBol: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from templates'
      'where tipo = '#39'BOL'#39)
    Left = 681
    Top = 204
  end
  object C_TemplateDupDS: TDataSource
    DataSet = C_TemplateDup
    Left = 681
    Top = 156
  end
  object C_TemplateBolDS: TDataSource
    DataSet = C_TemplateBol
    Left = 681
    Top = 348
  end
  object Q_TiposCobranca: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TIPOSCOBRANCA')
    Left = 777
    Top = 12
  end
  object P_TiposCobranca: TDataSetProvider
    DataSet = Q_TiposCobranca
    Constraints = True
    Left = 777
    Top = 60
  end
  object C_TiposCobranca: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposCobranca'
    Left = 777
    Top = 108
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
  object C_Carteiras: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Carteiras'
    Left = 777
    Top = 172
    object C_CarteirasCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
      Origin = 'CARTEIRAS.CARTEIRA'
      Required = True
    end
    object C_CarteirasNUMEROCARTEIRA: TStringField
      FieldName = 'NUMEROCARTEIRA'
      Origin = 'CARTEIRAS.NUMEROCARTEIRA'
      Size = 10
    end
  end
  object P_Carteiras: TDataSetProvider
    DataSet = Q_Carteiras
    Constraints = True
    Left = 777
    Top = 217
  end
  object Q_Carteiras: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select carteira, numerocarteira from carteiras'
      'where desativado = '#39'N'#39
      'order by numerocarteira')
    Left = 777
    Top = 263
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
    Left = 38
    Top = 355
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
    Left = 39
    Top = 452
  end
  object P_CFOPSCST: TDataSetProvider
    DataSet = Q_CFOPSCST
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 38
    Top = 409
  end
  object C_CFOPSCST: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_CFOPSCST
    Params = <>
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnCalcFields = C_TabelaCalcFields
    OnNewRecord = C_CFOPSCSTNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 38
    Top = 499
    object C_CFOPSCSTCFOPCST: TIntegerField
      FieldName = 'CFOPCST'
      Origin = 'CFOPSCST.CFOPCST'
      Required = True
    end
    object C_CFOPSCSTCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Origin = 'CFOPSCST.CFOPASSOCIADO'
      Size = 4
    end
    object C_CFOPSCSTCST: TStringField
      FieldName = 'CST'
      Origin = 'CFOPSCST.CST'
      Size = 3
    end
    object C_CFOPSCSTTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'CFOPSCST.TIPOMOVIMENTO'
    end
    object C_CFOPSCSTCFOPFORAESTADO: TStringField
      FieldName = 'CFOPFORAESTADO'
      Origin = 'CFOPSCST.CFOPFORAESTADO'
      Size = 4
    end
  end
  object C_CFOPSCSTDs: TDataSource
    Tag = 100
    DataSet = C_CFOPSCST
    Left = 144
    Top = 504
  end
  object PP_INSERTCFOPSCST: TIBStoredProc
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    StoredProcName = 'PP_INSERTCFOPSCST'
    Left = 353
    Top = 388
  end
  object Q_CSTPADRAO: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT C.cst,C.cst ||'#39' - '#39'|| C.descricao as descricao  FROM CSTS' +
        ' C')
    Left = 899
    Top = 27
  end
  object P_CSTPADRAO: TDataSetProvider
    DataSet = Q_CSTPADRAO
    Constraints = True
    Left = 899
    Top = 86
  end
  object C_CSTPADRAO: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTPADRAO'
    Left = 901
    Top = 136
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
    Left = 898
    Top = 194
  end
end
