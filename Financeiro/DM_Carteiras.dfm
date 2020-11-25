inherited DMCarteiras: TDMCarteiras
  Left = 802
  Top = 252
  Width = 333
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select'
      'c.* ,'
      'f.nome as f_nome,'
      'fs.nome as fs_nome'
      'from Carteiras C'
      'inner join favorecidos f on f.favorecido = c.idcedente'
      'inner join favorecidos fs on fs.favorecido = c.idsacador')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Carteiras '
      'where'
      '  CARTEIRA = :CARTEIRA')
    ModifySQL.Strings = (
      'update Carteiras'
      'set'
      '  IDCEDENTE = :IDCEDENTE,'
      '  IDSACADOR = :IDSACADOR,'
      '  NUMEROCARTEIRA = :NUMEROCARTEIRA,'
      '  LOCALDEPAGAMENTO = :LOCALDEPAGAMENTO,'
      '  ESPECIE = :ESPECIE,'
      '  ESPECIEDOC = :ESPECIEDOC,'
      '  ACEITE = :ACEITE,'
      '  AGENCIA = :AGENCIA,'
      '  CODIGO = :CODIGO,'
      '  NOSSONUMERO = :NOSSONUMERO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  INSTRUCOES = :INSTRUCOES,'
      '  DESCRICAO = :DESCRICAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  BANCO = :BANCO,'
      '  CONTA = :CONTA,'
      '  JUROSINSTRUCOES = :JUROSINSTRUCOES,'
      '  COBRAREMISSAO = :COBRAREMISSAO,'
      '  TARIFAEMISSAO = :TARIFAEMISSAO,'
      '  PREIMPRESSO = :PREIMPRESSO,'
      '  DIGITOCODIGO = :DIGITOCODIGO,'
      '  TIPOCARTEIRA = :TIPOCARTEIRA,'
      '  IMGBOLETOIMPRESSO = :IMGBOLETOIMPRESSO,'
      '  DIGITOAGENCIA = :DIGITOAGENCIA,'
      '  CONVENIO = :CONVENIO'
      'where'
      '  CARTEIRA = :OLD_CARTEIRA')
    InsertSQL.Strings = (
      'insert into Carteiras'
      
        '  (IDCEDENTE, IDSACADOR, NUMEROCARTEIRA, LOCALDEPAGAMENTO, ESPEC' +
        'IE, ESPECIEDOC, '
      
        '   ACEITE, AGENCIA, CODIGO, NOSSONUMERO, QUANTIDADE, INSTRUCOES,' +
        ' DESCRICAO, '
      
        '   DESATIVADO, BANCO, CONTA, JUROSINSTRUCOES, COBRAREMISSAO, TAR' +
        'IFAEMISSAO, '
      
        '   PREIMPRESSO, DIGITOCODIGO, TIPOCARTEIRA, IMGBOLETOIMPRESSO, D' +
        'IGITOAGENCIA, '
      '   CONVENIO)'
      'values'
      
        '  (:IDCEDENTE, :IDSACADOR, :NUMEROCARTEIRA, :LOCALDEPAGAMENTO, :' +
        'ESPECIE, '
      
        '   :ESPECIEDOC, :ACEITE, :AGENCIA, :CODIGO, :NOSSONUMERO, :QUANT' +
        'IDADE, '
      
        '   :INSTRUCOES, :DESCRICAO, :DESATIVADO, :BANCO, :CONTA, :JUROSI' +
        'NSTRUCOES, '
      
        '   :COBRAREMISSAO, :TARIFAEMISSAO, :PREIMPRESSO, :DIGITOCODIGO, ' +
        ':TIPOCARTEIRA, '
      '   :IMGBOLETOIMPRESSO, :DIGITOAGENCIA, :CONVENIO)')
    DeleteSQL.Strings = (
      'delete from Carteiras'
      'where'
      '  CARTEIRA = :OLD_CARTEIRA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'CARTEIRAS'
    Tabela_Nome = 'CARTEIRAS'
    Tabela_Chave = 'CARTEIRA'
  end
  inherited C_Tabela: TClientDataSet
    BeforePost = C_TabelaBeforePost
    Top = 160
    object C_TabelaCARTEIRA: TIntegerField
      FieldName = 'CARTEIRA'
      Required = True
    end
    object C_TabelaIDCEDENTE: TIntegerField
      FieldName = 'IDCEDENTE'
    end
    object C_TabelaIDSACADOR: TIntegerField
      FieldName = 'IDSACADOR'
    end
    object C_TabelaNUMEROCARTEIRA: TStringField
      FieldName = 'NUMEROCARTEIRA'
      Size = 10
    end
    object C_TabelaLOCALDEPAGAMENTO: TStringField
      FieldName = 'LOCALDEPAGAMENTO'
      Size = 100
    end
    object C_TabelaESPECIE: TStringField
      FieldName = 'ESPECIE'
      Size = 10
    end
    object C_TabelaESPECIEDOC: TStringField
      FieldName = 'ESPECIEDOC'
      Size = 10
    end
    object C_TabelaACEITE: TStringField
      FieldName = 'ACEITE'
      FixedChar = True
      Size = 1
    end
    object C_TabelaAGENCIA: TStringField
      FieldName = 'AGENCIA'
      Size = 4
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 15
    end
    object C_TabelaNOSSONUMERO: TStringField
      FieldName = 'NOSSONUMERO'
      Size = 11
    end
    object C_TabelaQUANTIDADE: TStringField
      FieldName = 'QUANTIDADE'
      Size = 15
    end
    object C_TabelaINSTRUCOES: TStringField
      FieldName = 'INSTRUCOES'
      Size = 2000
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaBANCO: TIntegerField
      FieldName = 'BANCO'
    end
    object C_TabelaCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_TabelaJUROSINSTRUCOES: TFloatField
      FieldName = 'JUROSINSTRUCOES'
    end
    object C_TabelaCOBRAREMISSAO: TStringField
      FieldName = 'COBRAREMISSAO'
      Size = 1
    end
    object C_TabelaTARIFAEMISSAO: TBCDField
      FieldName = 'TARIFAEMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TabelaPREIMPRESSO: TStringField
      FieldName = 'PREIMPRESSO'
      Size = 1
    end
    object C_TabelaDIGITOCODIGO: TStringField
      FieldName = 'DIGITOCODIGO'
      Size = 1
    end
    object C_TabelaTIPOCARTEIRA: TStringField
      FieldName = 'TIPOCARTEIRA'
      Size = 2
    end
    object C_TabelaIMGBOLETOIMPRESSO: TStringField
      FieldName = 'IMGBOLETOIMPRESSO'
      Size = 500
    end
    object C_TabelaDIGITOAGENCIA: TStringField
      FieldName = 'DIGITOAGENCIA'
      Size = 1
    end
    object C_TabelaF_NOME: TStringField
      FieldName = 'F_NOME'
      Size = 50
    end
    object C_TabelaFS_NOME: TStringField
      FieldName = 'FS_NOME'
      Size = 50
    end
    object C_TabelaCONVENIO: TStringField
      FieldName = 'CONVENIO'
      Size = 10
    end
    object C_TabelaDescConta: TStringField
      FieldKind = fkLookup
      FieldName = 'DescConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 100
      Lookup = True
    end
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select conta, descricao, banco from contas'
      'where tipoconta = 2 and desativado = '#39'N'#39
      'order by descricao')
    Left = 232
    Top = 64
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Bancos'
    Left = 232
    Top = 8
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
      Required = True
    end
    object C_ContasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_ContasBANCO: TIntegerField
      FieldName = 'BANCO'
      Origin = 'CONTAS.BANCO'
    end
  end
  object P_Bancos: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 232
    Top = 120
  end
end
