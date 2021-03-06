object DMBBItens: TDMBBItens
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Top = 50
  Height = 511
  Width = 768
  object C_TiposItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposItens'
    Left = 176
    Top = 9
    object C_TiposItensTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
    object C_TiposItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADES order by descricao')
    UniDirectional = True
    Left = 311
    Top = 64
  end
  object Q_GruposItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from grupos order by tipoitem, descricaogrupo')
    UniDirectional = True
    UpdateObject = U_GruposItens
    Left = 89
    Top = 101
  end
  object U_GruposItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from grupos '
      'where'
      '  GRUPO = :GRUPO')
    ModifySQL.Strings = (
      'update grupos'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOGRUPO = :DESCRICAOGRUPO,'
      '  TIPOITEM = :TIPOITEM,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  COMISSAO = :COMISSAO,'
      '  FOTO = :FOTO,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  CST = :cst,'
      '  REDUCAOCST = :REDUCAOCST,'
      '  ALIQICMS = :ALIQICMS,'
      '  SITUACAOECF = :SITUACAOECF'
      'where'
      '  GRUPO = :OLD_GRUPO')
    InsertSQL.Strings = (
      'insert into grupos'
      '  (GRUPO, CODIGO, DESCRICAOGRUPO, TIPOITEM, DESCONTOMAXIMO, '
      'COMISSAO,   FOTO,  FATORLUCRO,  CST,  REDUCAOCST,  ALIQICMS,'
      '  SITUACAOECF)'
      'values'
      
        '  (:GRUPO, :CODIGO, :DESCRICAOGRUPO, :TIPOITEM, :DESCONTOMAXIMO,' +
        ' '
      ':COMISSAO, :FOTO,  :FATORLUCRO,  :CST,  :REDUCAOCST,  :ALIQICMS,'
      '  :SITUACAOECF)')
    DeleteSQL.Strings = (
      'delete from grupos'
      'where'
      '  GRUPO = :OLD_GRUPO')
    Left = 92
    Top = 196
  end
  object U_Unid: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from unidades '
      'where'
      '  UNIDADE = :UNIDADE')
    ModifySQL.Strings = (
      'update unidades'
      'set'
      '  UNIDADE = :UNIDADE,'
      '  DESCRICAO = :DESCRICAO,'
      '  INTEIRA = :INTEIRA'
      'where'
      '  UNIDADE = :OLD_UNIDADE')
    InsertSQL.Strings = (
      'insert into unidades'
      '  (UNIDADE, DESCRICAO, INTEIRA)'
      'values'
      '  (:UNIDADE, :DESCRICAO, :INTEIRA)')
    DeleteSQL.Strings = (
      'delete from unidades'
      'where'
      '  UNIDADE = :OLD_UNIDADE')
    Left = 17
    Top = 196
  end
  object Q_Unid: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from unidades')
    UniDirectional = True
    UpdateObject = U_Unid
    Left = 17
    Top = 102
  end
  object P_GruposItens: TDataSetProvider
    DataSet = Q_GruposItens
    Constraints = True
    Left = 91
    Top = 145
  end
  object P_Unid: TDataSetProvider
    DataSet = Q_Unid
    Constraints = True
    Left = 17
    Top = 151
  end
  object U_Inventario: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ajustesitens '
      'where'
      '  AJUSTEITEM = :AJUSTEITEM')
    ModifySQL.Strings = (
      'update itens'
      'set'
      '  TIPOITEM = :TIPOITEM,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA,'
      '  GRUPO = :GRUPO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TAXAVEL = :TAXAVEL,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  ULTIMOFORNECEDOR = :ULTIMOFORNECEDOR,'
      '  QTDEMINIMO = :QTDEMINIMO,'
      '  QTDEMAXIMO = :QTDEMAXIMO,'
      '  PONTOPEDIDO = :PONTOPEDIDO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  APLICARANTESTAX = :APLICARANTESTAX,'
      '  UNIDADE = :UNIDADE,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  COMISSAO = :COMISSAO,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  TAXINCLUSO = :TAXINCLUSO,'
      '  CONTA_VENDA = :CONTA_VENDA,'
      '  CONTA_CUSTO = :CONTA_CUSTO,'
      '  CONTA_INVENT = :CONTA_INVENT,'
      '  FABRICANTE = :FABRICANTE,'
      '  BALANCO = :BALANCO,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  CAMPO05 = :CAMPO05,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  CAMPO06 = :CAMPO06,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  ISITEMCOMPRA = :ISITEMCOMPRA,'
      '  CAMPO07 = :CAMPO07,'
      '  CAMPO08 = :CAMPO08,'
      '  PTAXINCLUSO = :PTAXINCLUSO,'
      '  CAMPO09 = :CAMPO09,'
      '  CUSTODESPESAS = :CUSTODESPESAS,'
      '  CAMPO10 = :CAMPO10,'
      '  FOTO = :FOTO,'
      '  PROMOCAO = :PROMOCAO,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  HASCHILDREN = :HASCHILDREN,'
      '  REFERENCIA = :REFERENCIA,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  ULTIMACOMPRA = :ULTIMACOMPRA,'
      '  UNIDADEENTRADA = :UNIDADEENTRADA,'
      '  UNIDADEVAREJO = :UNIDADEVAREJO,'
      '  ULTIMAVENDA = :ULTIMAVENDA,'
      '  CST = :CST,'
      '  REDUCAOCST = :REDUCAOCST,'
      '  IPICOMPRA = :IPICOMPRA,'
      '  PESOBRUTO = :PESOBRUTO,'
      '  PESOLIQUIDO = :PESOLIQUIDO,'
      '  ALIQICMS = :ALIQICMS,'
      '  SITUACAOECF = :SITUACAOECF,'
      '  CODIGOBARRAS = :CODIGOBARRAS,'
      '  ORIGEMMERCADORIA :=  ORIGEMMERCADORIA ,'
      '  MODALIDADEBCICMS :=  MODALIDADEBCICMS , '
      '  MODALIDADEBCICMSST :=  MODALIDADEBCICMSST ,'
      '  CSTPISCOFINS :=  CSTPISCOFINS ,'
      '  ALIQPIS  :=  ALIQPIS  ,'
      '  ALIQCOFINS :=  ALIQCOFINS ,'
      '  CSTIPI :=  CSTIPI ,'
      '  GENERO :=  GENERO ,'
      '  ALIQIR :=  ALIQIR ,'
      '  ALIQSS  :=  ALIQSS  ,'
      '  IPPT :=  IPPT ,'
      '  IAT  :=  IAT  ,'
      '  ALIQIPI  :=  ALIQIPI  ,'
      '  CSTPISCOFINSSAIDA  :=  CSTPISCOFINSSAIDA  ,'
      '  ALIQPISSAIDA :=  ALIQPISSAIDA ,'
      '  ALIQCOFINSSAIDA :=  ALIQCOFINSSAIDA ,'
      '  CODANP :=  CODANP ,'
      '  CODIF :=  CODIF ,'
      '  ALIQICMSCOMPRA :=  ALIQICMSCOMPRA ,'
      '  CODIGOVENDA :=  CODIGOVENDA ,'
      ' CEST_OPC :=  CEST_OPC ,'
      ' CSTIPIENTRADA :=  CSTIPIENTRADA ,'
      ' CENQIPICOMPRA :=  CENQIPICOMPRA ,'
      ' CENQIPIVENDA :=  CENQIPIVENDA ,'
      ' CLASFISCAL :=  CLASFISCAL '
      ''
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into itens'
      '  (ITEM, TIPOITEM, CODIGO, DESCRICAOCOMPRA, GRUPO, DESCRICAO, '
      'TAXAVEL, '
      '   CUSTOMEDIO, ULTIMOFORNECEDOR, QTDEMINIMO, QTDEMAXIMO, '
      'PONTOPEDIDO, PERCENTUAL, '
      '   APLICARANTESTAX, UNIDADE, LOCALIZACAO, DESATIVADO, '
      'IMPORTACAO, '
      '   COMISSAO, DESCONTOMAXIMO, TAXINCLUSO, CONTA_VENDA, '
      'CONTA_CUSTO, CONTA_INVENT, '
      '   FABRICANTE, BALANCO, CAMPO01, CAMPO02, CAMPO03, CAMPO04, '
      'CAMPO05, PRECOCOMPRA, '
      '   CAMPO06, CUSTOCONTABIL, ISITEMCOMPRA, CAMPO07, CAMPO08, '
      'PTAXINCLUSO, '
      '   CAMPO09, CUSTODESPESAS, CAMPO10, FOTO, PROMOCAO, '
      'FATORLUCRO, '
      '   HASCHILDREN, REFERENCIA, DATACADASTRO ,'
      '  ULTIMACOMPRA ,  UNIDADEENTRADA ,  UNIDADEVAREJO ,'
      '  ULTIMAVENDA ,  CST ,  REDUCAOCST ,  IPICOMPRA ,'
      '  PESOBRUTO ,  PESOLIQUIDO ,  ALIQICMS ,  SITUACAOECF, '
      'CODIGOBARRAS,ORIGEMMERCADORIA,'
      'MODALIDADEBCICMS,'
      'MODALIDADEBCICMSST,'
      'CSTPISCOFINS,'
      'ALIQPIS,'
      'ALIQCOFINS,'
      'CSTIPI,'
      'GENERO,'
      'ALIQIR,'
      'ALIQSS,'
      'IPPT,'
      'IAT,'
      'ALIQIPI,'
      'CSTPISCOFINSSAIDA,'
      'ALIQPISSAIDA,'
      'ALIQCOFINSSAIDA,'
      'CODANP,'
      'CODIF,'
      'ALIQICMSCOMPRA,'
      'CODIGOVENDA,'
      'CEST_OPC,'
      'CSTIPIENTRADA,'
      'CENQIPICOMPRA,'
      'CENQIPIVENDA,'
      'CLASFISCAL)'
      'values'
      
        '  (:ITEM, :TIPOITEM, :CODIGO, :DESCRICAOCOMPRA, :GRUPO, :DESCRIC' +
        'AO, '
      ':TAXAVEL, '
      '   :CUSTOMEDIO, :ULTIMOFORNECEDOR, :QTDEMINIMO, :QTDEMAXIMO, '
      ':PONTOPEDIDO, '
      '   :PERCENTUAL, :APLICARANTESTAX, :UNIDADE, :LOCALIZACAO, '
      ':DESATIVADO, '
      '    :IMPORTACAO, :COMISSAO, :DESCONTOMAXIMO, :TAXINCLUSO, '
      ':CONTA_VENDA, '
      
        '   :CONTA_CUSTO, :CONTA_INVENT, :FABRICANTE, :BALANCO, :CAMPO01,' +
        ' '
      ':CAMPO02, '
      '   :CAMPO03, :CAMPO04, :CAMPO05, :PRECOCOMPRA, :CAMPO06, '
      ':CUSTOCONTABIL, '
      '   :ISITEMCOMPRA, :CAMPO07, :CAMPO08, :PTAXINCLUSO, :CAMPO09, '
      ':CUSTODESPESAS, '
      '   :CAMPO10, :FOTO, :PROMOCAO, :FATORLUCRO, '
      ':HASCHILDREN,    :REFERENCIA,   :DATACADASTRO ,'
      '  :ULTIMACOMPRA ,  :UNIDADEENTRADA ,  :UNIDADEVAREJO ,'
      '  :ULTIMAVENDA ,  :CST ,  :REDUCAOCST ,  :IPICOMPRA ,'
      '  :PESOBRUTO ,  :PESOLIQUIDO ,  :ALIQICMS ,  :SITUACAOECF, '
      ':CODIGOBARRAS,'
      ':ORIGEMMERCADORIA,'
      ':MODALIDADEBCICMS,'
      ':MODALIDADEBCICMSST,'
      ':CSTPISCOFINS,'
      ':ALIQPIS, '
      ':ALIQCOFINS,'
      ':CSTIPI,'
      ':GENERO,'
      ':ALIQIR,'
      ':ALIQSS, '
      ':IPPT,'
      ':IAT, '
      ':ALIQIPI, '
      ':CSTPISCOFINSSAIDA, '
      ':ALIQPISSAIDA,'
      ':ALIQCOFINSSAIDA,'
      ':CODANP,'
      ':CODIF,'
      ':ALIQICMSCOMPRA,'
      ':CODIGOVENDA,'
      ':CEST_OPC,'
      ':CSTIPIENTRADA,'
      ':CENQIPICOMPRA,'
      ':CENQIPIVENDA,'
      ':CLASFISCAL )')
    DeleteSQL.Strings = (
      'delete from itens'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 446
    Top = 206
  end
  object Q_Inventario: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select iv.ajusteitem, iv.data, iv.quantidade,iv.custo,iv.conta,i' +
        'v.motivo,'
      'iv.quantidade as QtdeOld, iv.custo as CustoOld,'
      'pp.preco, i.*'
      
        'from ((itens i left join ajustesitens iv on  iv.item = i.item an' +
        'd iv.data = :dData)'
      
        'left join produtospreco pp on i.item = pp.item and pp.tabelaprec' +
        'o = 0)'
      
        'where i.tipoitem = 1 and i.desativado = '#39'N'#39' and (i.item is null ' +
        'or :bOk = 1)'
      'order by descricao')
    UpdateObject = U_Inventario
    Left = 448
    Top = 105
    ParamData = <
      item
        DataType = ftDateTime
        Name = 'dData'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'bOk'
        ParamType = ptUnknown
      end>
  end
  object P_Inventario: TDataSetProvider
    DataSet = Q_Inventario
    Constraints = True
    Options = [poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 448
    Top = 154
  end
  object C_Inventario: TClientDataSet
    Aggregates = <>
    PacketRecords = 100
    Params = <>
    ProviderName = 'P_Inventario'
    AfterOpen = C_InventarioAfterOpen
    AfterEdit = C_InventarioAfterEdit
    BeforePost = C_InventarioBeforePost
    OnNewRecord = C_InventarioNewRecord
    Left = 454
    Top = 7
    object C_InventarioCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_InventarioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_InventarioUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENS.UNIDADE'
      Size = 6
    end
    object C_InventarioAJUSTEITEM: TIntegerField
      FieldName = 'AJUSTEITEM'
      Origin = 'AJUSTESITENS.AJUSTEITEM'
      Required = True
    end
    object C_InventarioITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
    end
    object C_InventarioDATA: TDateField
      FieldName = 'DATA'
      Origin = 'AJUSTESITENS.DATA'
    end
    object C_InventarioQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'AJUSTESITENS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_InventarioCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'AJUSTESITENS.CONTA'
    end
    object C_InventarioMOTIVO: TStringField
      FieldName = 'MOTIVO'
      Origin = 'AJUSTESITENS.MOTIVO'
      Size = 150
    end
    object C_InventarioQTDEOLD: TBCDField
      FieldName = 'QTDEOLD'
      Origin = 'AJUSTESITENS.QTDEOLD'
      Precision = 18
      Size = 3
    end
    object C_InventarioCONTA_INVENT: TIntegerField
      FieldName = 'CONTA_INVENT'
      Origin = 'ITENS.CONTA_INVENT'
    end
    object C_InventarioPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      OnChange = C_InventarioPRECOChange
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object C_InventarioGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'ITENS.GRUPO'
    end
    object C_InventariolkGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrupo'
      LookupDataSet = C_Grupos
      LookupKeyFields = 'GRUPO'
      LookupResultField = 'DESCRICAOGRUPO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
    end
    object C_InventariolkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 15
      Lookup = True
    end
    object C_InventarioTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Origin = 'ITENS.TAXAVEL'
      Size = 1
    end
    object C_InventarioTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Origin = 'ITENS.TIPOITEM'
    end
    object C_InventarioDESCRICAOCOMPRA: TStringField
      FieldName = 'DESCRICAOCOMPRA'
      Origin = 'ITENS.DESCRICAOCOMPRA'
      Size = 50
    end
    object C_InventarioULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
      Origin = 'ITENS.ULTIMOFORNECEDOR'
    end
    object C_InventarioQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Origin = 'ITENS.QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_InventarioQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Origin = 'ITENS.QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_InventarioPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Origin = 'ITENS.PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_InventarioPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'ITENS.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_InventarioAPLICARANTESTAX: TStringField
      FieldName = 'APLICARANTESTAX'
      Origin = 'ITENS.APLICARANTESTAX'
      Size = 1
    end
    object C_InventarioDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'ITENS.DESATIVADO'
      Size = 1
    end
    object C_InventarioESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_InventarioIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'ITENS.IMPORTACAO'
    end
    object C_InventarioCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITENS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_InventarioDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'ITENS.DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_InventarioTAXINCLUSO: TStringField
      FieldName = 'TAXINCLUSO'
      Origin = 'ITENS.TAXINCLUSO'
      Size = 1
    end
    object C_InventarioCONTA_VENDA: TIntegerField
      FieldName = 'CONTA_VENDA'
      Origin = 'ITENS.CONTA_VENDA'
    end
    object C_InventarioCONTA_CUSTO: TIntegerField
      FieldName = 'CONTA_CUSTO'
      Origin = 'ITENS.CONTA_CUSTO'
    end
    object C_InventarioFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Origin = 'ITENS.FABRICANTE'
    end
    object C_InventarioBALANCO: TStringField
      FieldName = 'BALANCO'
      Origin = 'ITENS.BALANCO'
      Size = 1
    end
    object C_InventarioISITEMCOMPRA: TStringField
      FieldName = 'ISITEMCOMPRA'
      Origin = 'ITENS.ISITEMCOMPRA'
      Size = 1
    end
    object C_InventarioPTAXINCLUSO: TBCDField
      FieldName = 'PTAXINCLUSO'
      Origin = 'ITENS.PTAXINCLUSO'
      Precision = 18
      Size = 2
    end
    object C_InventarioCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Origin = 'ITENS.CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object C_InventarioFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'ITENS.FOTO'
      Size = 255
    end
    object C_InventarioPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Origin = 'ITENS.PROMOCAO'
      Size = 1
    end
    object C_InventarioFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
      Origin = 'ITENS.FATORLUCRO'
    end
    object C_InventarioHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Origin = 'ITENS.HASCHILDREN'
      Size = 1
    end
    object C_InventarioREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
    end
    object C_InventariolkContaVenda: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaVenda'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_VENDA'
      Size = 30
      Lookup = True
    end
    object C_InventariolkContaCusto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaCusto'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_CUSTO'
      Size = 30
      Lookup = True
    end
    object C_InventariolkContaInvent: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaInvent'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_INVENT'
      Size = 30
      Lookup = True
    end
    object C_InventarioQ_ProdutosPreco: TDataSetField
      FieldName = 'Q_ProdutosPreco'
    end
    object C_InventariolkFabricante: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFabricante'
      LookupDataSet = C_FabricLk
      LookupKeyFields = 'FABRICANTE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FABRICANTE'
      Size = 30
      Lookup = True
    end
    object C_InventarioIDNovo: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'IDNovo'
    end
    object C_InventarioCUSTO: TFloatField
      FieldName = 'CUSTO'
      Origin = 'AJUSTESITENS.CUSTO'
    end
    object C_InventarioCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'ITENS.CUSTOMEDIO'
    end
    object C_InventarioCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      Origin = 'ITENS.CUSTOCONTABIL'
    end
    object C_InventarioPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      Origin = 'ITENS.PRECOCOMPRA'
    end
    object C_InventarioCUSTOOLD: TFloatField
      FieldName = 'CUSTOOLD'
      Origin = 'AJUSTESITENS.CUSTOOLD'
    end
    object C_InventarioDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'ITENS.DATACADASTRO'
    end
    object C_InventarioULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ITENS.ULTIMACOMPRA'
    end
    object C_InventarioUNIDADEENTRADA: TStringField
      FieldName = 'UNIDADEENTRADA'
      Origin = 'ITENS.UNIDADEENTRADA'
      Size = 6
    end
    object C_InventarioUNIDADEVAREJO: TStringField
      FieldName = 'UNIDADEVAREJO'
      Origin = 'ITENS.UNIDADEVAREJO'
      Size = 6
    end
    object C_InventarioULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
      Origin = 'ITENS.ULTIMAVENDA'
    end
    object C_InventarioREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      Origin = 'ITENS.REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object C_InventarioIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Origin = 'ITENS.IPICOMPRA'
      Precision = 18
      Size = 2
    end
    object C_InventarioPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'ITENS.PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object C_InventarioPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'ITENS.PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object C_InventarioALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ITENS.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object C_InventarioSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'ITENS.SITUACAOECF'
      Size = 1
    end
    object C_InventarioQ_ItensUnidades: TDataSetField
      FieldName = 'Q_ItensUnidades'
    end
    object C_InventarioCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Origin = 'ITENS.CODIGOBARRAS'
      Size = 13
    end
    object C_InventarioLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'ITENS.LOCALIZACAO'
    end
    object C_InventarioFORNECPREFERENCIA: TIntegerField
      FieldName = 'FORNECPREFERENCIA'
      Origin = 'ITENS.FORNECPREFERENCIA'
      Required = True
    end
    object C_InventarioORIGEMMERCADORIA: TIntegerField
      FieldName = 'ORIGEMMERCADORIA'
      Origin = 'ITENS.ORIGEMMERCADORIA'
    end
    object C_InventarioMODALIDADEBCICMS: TIntegerField
      FieldName = 'MODALIDADEBCICMS'
      Origin = 'ITENS.MODALIDADEBCICMS'
    end
    object C_InventarioMODALIDADEBCICMSST: TIntegerField
      FieldName = 'MODALIDADEBCICMSST'
      Origin = 'ITENS.MODALIDADEBCICMSST'
    end
    object C_InventarioCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'ITENS.CSTPISCOFINS'
      Size = 2
    end
    object C_InventarioALIQPIS: TBCDField
      FieldName = 'ALIQPIS'
      Origin = 'ITENS.ALIQPIS'
      Precision = 18
      Size = 2
    end
    object C_InventarioALIQCOFINS: TBCDField
      FieldName = 'ALIQCOFINS'
      Origin = 'ITENS.ALIQCOFINS'
      Precision = 18
      Size = 2
    end
    object C_InventarioCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'ITENS.CSTIPI'
      Size = 2
    end
    object C_InventarioGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'ITENS.GENERO'
      Size = 2
    end
    object C_InventarioALIQIR: TBCDField
      FieldName = 'ALIQIR'
      Origin = 'ITENS.ALIQIR'
      Precision = 18
      Size = 2
    end
    object C_InventarioALIQSS: TBCDField
      FieldName = 'ALIQSS'
      Origin = 'ITENS.ALIQSS'
      Precision = 18
      Size = 2
    end
    object C_InventarioIPPT: TStringField
      FieldName = 'IPPT'
      Origin = 'ITENS.IPPT'
      FixedChar = True
      Size = 1
    end
    object C_InventarioIAT: TStringField
      FieldName = 'IAT'
      Origin = 'ITENS.IAT'
      FixedChar = True
      Size = 1
    end
    object C_InventarioALIQIPI: TFloatField
      FieldName = 'ALIQIPI'
      Origin = 'ITENS.ALIQIPI'
    end
    object C_InventarioCSTPISCOFINSSAIDA: TStringField
      FieldName = 'CSTPISCOFINSSAIDA'
      Origin = 'ITENS.CSTPISCOFINSSAIDA'
      Size = 2
    end
    object C_InventarioALIQPISSAIDA: TFloatField
      FieldName = 'ALIQPISSAIDA'
      Origin = 'ITENS.ALIQPISSAIDA'
    end
    object C_InventarioALIQCOFINSSAIDA: TFloatField
      FieldName = 'ALIQCOFINSSAIDA'
      Origin = 'ITENS.ALIQCOFINSSAIDA'
    end
    object C_InventarioCODANP: TStringField
      FieldName = 'CODANP'
      Origin = 'ITENS.CODANP'
      Size = 12
    end
    object C_InventarioCODIF: TStringField
      FieldName = 'CODIF'
      Origin = 'ITENS.CODIF'
      Size = 30
    end
    object C_InventarioCODIGOVENDA: TStringField
      FieldName = 'CODIGOVENDA'
      Origin = 'ITENS.CODIGOVENDA'
      Size = 14
    end
    object C_InventarioCEST_OPC: TStringField
      FieldName = 'CEST_OPC'
      Origin = 'ITENS.CEST_OPC'
      Size = 7
    end
    object C_InventarioCSTIPIENTRADA: TStringField
      FieldName = 'CSTIPIENTRADA'
      Origin = 'ITENS.CSTIPIENTRADA'
      Size = 2
    end
    object C_InventarioCENQIPICOMPRA: TStringField
      FieldName = 'CENQIPICOMPRA'
      Origin = 'ITENS.CENQIPICOMPRA'
      Size = 3
    end
    object C_InventarioCENQIPIVENDA: TStringField
      FieldName = 'CENQIPIVENDA'
      Origin = 'ITENS.CENQIPIVENDA'
      Size = 3
    end
    object C_InventarioCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Origin = 'ITENS.CLASFISCAL'
      Size = 15
    end
    object C_InventarioALIQICMSCOMPRA: TBCDField
      FieldName = 'ALIQICMSCOMPRA'
      Origin = 'ITENS.ALIQICMSCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_InventarioQ_ItensCodigos: TDataSetField
      FieldName = 'Q_ItensCodigos'
    end
    object C_InventarioCST: TStringField
      FieldName = 'CST'
      Size = 3
    end
  end
  object C_InventarioDS: TDataSource
    DataSet = C_Inventario
    Left = 451
    Top = 60
  end
  object U_SemInvent: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itens '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update itens'
      'set'
      '  TIPOITEM = :TIPOITEM,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA,'
      '  GRUPO = :GRUPO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TAXAVEL = :TAXAVEL,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  ULTIMOFORNECEDOR = :ULTIMOFORNECEDOR,'
      '  QTDEMINIMO = :QTDEMINIMO,'
      '  QTDEMAXIMO = :QTDEMAXIMO,'
      '  PONTOPEDIDO = :PONTOPEDIDO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  APLICARANTESTAX = :APLICARANTESTAX,'
      '  UNIDADE = :UNIDADE,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  ESTOQUE = :ESTOQUE,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  COMISSAO = :COMISSAO,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  TAXINCLUSO = :TAXINCLUSO,'
      '  CONTA_VENDA = :CONTA_VENDA,'
      '  CONTA_CUSTO = :CONTA_CUSTO,'
      '  CONTA_INVENT = :CONTA_INVENT,'
      '  FABRICANTE = :FABRICANTE,'
      '  BALANCO = :BALANCO,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  CAMPO05 = :CAMPO05,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  CAMPO06 = :CAMPO06,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  ISITEMCOMPRA = :ISITEMCOMPRA,'
      '  CAMPO07 = :CAMPO07,'
      '  CAMPO08 = :CAMPO08,'
      '  PTAXINCLUSO = :PTAXINCLUSO,'
      '  CAMPO09 = :CAMPO09,'
      '  CUSTODESPESAS = :CUSTODESPESAS,'
      '  CAMPO10 = :CAMPO10,'
      '  FOTO = :FOTO,'
      '  PROMOCAO = :PROMOCAO,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  HASCHILDREN = :HASCHILDREN,'
      '  REFERENCIA = :REFERENCIA'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into itens'
      '  (ITEM, TIPOITEM, CODIGO, DESCRICAOCOMPRA, GRUPO, DESCRICAO, '
      'TAXAVEL, '
      '   CUSTOMEDIO, ULTIMOFORNECEDOR, QTDEMINIMO, QTDEMAXIMO, '
      'PONTOPEDIDO, PERCENTUAL, '
      '   APLICARANTESTAX, UNIDADE, LOCALIZACAO, DESATIVADO, ESTOQUE, '
      'IMPORTACAO, '
      '   COMISSAO, DESCONTOMAXIMO, TAXINCLUSO, CONTA_VENDA, '
      'CONTA_CUSTO, CONTA_INVENT, '
      '   FABRICANTE, BALANCO, CAMPO01, CAMPO02, CAMPO03, CAMPO04, '
      'CAMPO05, PRECOCOMPRA, '
      '   CAMPO06, CUSTOCONTABIL, ISITEMCOMPRA, CAMPO07, CAMPO08, '
      'PTAXINCLUSO, '
      '   CAMPO09, CUSTODESPESAS, CAMPO10, FOTO, PROMOCAO, FATORLUCRO, '
      '   HASCHILDREN, REFERENCIA)'
      'values'
      
        '  (:ITEM, :TIPOITEM, :CODIGO, :DESCRICAOCOMPRA, :GRUPO, :DESCRIC' +
        'AO, '
      ':TAXAVEL, '
      '   :CUSTOMEDIO, :ULTIMOFORNECEDOR, :QTDEMINIMO, :QTDEMAXIMO, '
      ':PONTOPEDIDO, '
      '   :PERCENTUAL, :APLICARANTESTAX, :UNIDADE, :LOCALIZACAO, '
      ':DESATIVADO, '
      
        '   :ESTOQUE, :IMPORTACAO, :COMISSAO, :DESCONTOMAXIMO, :TAXINCLUS' +
        'O, '
      ':CONTA_VENDA, '
      
        '   :CONTA_CUSTO, :CONTA_INVENT, :FABRICANTE, :BALANCO, :CAMPO01,' +
        ' '
      ':CAMPO02, '
      '   :CAMPO03, :CAMPO04, :CAMPO05, :PRECOCOMPRA, :CAMPO06, '
      ':CUSTOCONTABIL, '
      '   :ISITEMCOMPRA, :CAMPO07, :CAMPO08, :PTAXINCLUSO, :CAMPO09, '
      ':CUSTODESPESAS, '
      '   :CAMPO10, :FOTO, :PROMOCAO, :FATORLUCRO, :HASCHILDREN, '
      '   :REFERENCIA)')
    DeleteSQL.Strings = (
      'delete from itens'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 532
    Top = 207
  end
  object Q_SemInvent: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select i.*,pp.preco from itens i left join produtospreco pp on i' +
        '.item = pp.item and pp.tabelapreco = 0'
      'where tipoitem = 2 and desativado = '#39'N'#39
      'order by descricao')
    UniDirectional = True
    UpdateObject = U_SemInvent
    Left = 536
    Top = 112
  end
  object P_SemInvent: TDataSetProvider
    DataSet = Q_SemInvent
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 532
    Top = 155
  end
  object P_Grupos: TDataSetProvider
    DataSet = Q_Grupos
    Constraints = True
    Left = 249
    Top = 106
  end
  object C_GruposItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GruposItens'
    BeforePost = C_GruposItensBeforePost
    OnNewRecord = C_GruposItensNewRecord
    Left = 87
    Top = 8
    object C_GruposItensGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Required = True
    end
    object C_GruposItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
    object C_GruposItensDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object C_GruposItensTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
    object C_GruposItenslkTipoItem: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'lkTipoItem'
      LookupDataSet = C_TiposItens
      LookupKeyFields = 'TIPOITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOITEM'
      Size = 30
      Lookup = True
    end
    object C_GruposItensDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      DisplayFormat = '###.0#%'
      Precision = 18
      Size = 2
    end
    object C_GruposItensCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      DisplayFormat = '###.0#%'
      Precision = 18
      Size = 2
    end
    object C_GruposItensFOTO: TStringField
      FieldName = 'FOTO'
      Size = 255
    end
    object C_GruposItensFATORLUCRO: TBCDField
      FieldName = 'FATORLUCRO'
      Precision = 18
      Size = 2
    end
    object C_GruposItensCST: TStringField
      FieldName = 'CST'
      Size = 2
    end
    object C_GruposItensREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object C_GruposItensALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Precision = 18
      Size = 2
    end
    object C_GruposItensSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Size = 1
    end
  end
  object P_TiposItens: TDataSetProvider
    DataSet = Q_TiposItem
    Constraints = True
    Left = 178
    Top = 110
  end
  object C_GruposItensDS: TDataSource
    DataSet = C_GruposItens
    Left = 90
    Top = 52
  end
  object C_UnidDS: TDataSource
    DataSet = C_Unid
    Left = 17
    Top = 52
  end
  object C_Unid: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unid'
    BeforePost = C_UnidBeforePost
    OnNewRecord = C_UnidNewRecord
    Left = 17
    Top = 7
    object C_UnidUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      Size = 6
    end
    object C_UnidDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 30
    end
    object C_UnidINTEIRA: TStringField
      FieldName = 'INTEIRA'
      Size = 1
    end
  end
  object Q_TiposItem: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TIPOSITENS')
    UniDirectional = True
    Left = 175
    Top = 63
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from grupos '
      'where tipoitem = :ntipoitem'
      'order by descricaogrupo')
    UniDirectional = True
    Left = 249
    Top = 58
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ntipoitem'
        ParamType = ptUnknown
      end>
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    UniDirectional = True
    Left = 113
    Top = 265
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 315
    Top = 10
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object C_SemInventDS: TDataSource
    DataSet = C_SemInvent
    Left = 536
    Top = 58
  end
  object C_SemInvent: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SemInvent'
    AfterOpen = C_SemInventAfterOpen
    BeforePost = C_SemInventBeforePost
    OnNewRecord = C_SemInventNewRecord
    Left = 532
    Top = 10
    object C_SemInventITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_SemInventCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_SemInventGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_SemInventDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_SemInventlkGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrupo'
      LookupDataSet = C_Grupos
      LookupKeyFields = 'GRUPO'
      LookupResultField = 'DESCRICAOGRUPO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
    end
    object C_SemInventTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
    end
    object C_SemInventDESCRICAOCOMPRA: TStringField
      FieldName = 'DESCRICAOCOMPRA'
      Size = 50
    end
    object C_SemInventTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_SemInventULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
    end
    object C_SemInventQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_SemInventQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_SemInventPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_SemInventPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_SemInventAPLICARANTESTAX: TStringField
      FieldName = 'APLICARANTESTAX'
      Size = 1
    end
    object C_SemInventUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_SemInventLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 10
    end
    object C_SemInventDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_SemInventESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_SemInventIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_SemInventCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_SemInventDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_SemInventTAXINCLUSO: TStringField
      FieldName = 'TAXINCLUSO'
      Size = 1
    end
    object C_SemInventCONTA_VENDA: TIntegerField
      FieldName = 'CONTA_VENDA'
    end
    object C_SemInventCONTA_CUSTO: TIntegerField
      FieldName = 'CONTA_CUSTO'
    end
    object C_SemInventCONTA_INVENT: TIntegerField
      FieldName = 'CONTA_INVENT'
    end
    object C_SemInventFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_SemInventBALANCO: TStringField
      FieldName = 'BALANCO'
      Size = 1
    end
    object C_SemInventCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Size = 255
    end
    object C_SemInventCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Size = 255
    end
    object C_SemInventCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Size = 255
    end
    object C_SemInventCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Size = 255
    end
    object C_SemInventCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Size = 255
    end
    object C_SemInventPRECOCOMPRA: TBCDField
      FieldName = 'PRECOCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_SemInventCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Size = 255
    end
    object C_SemInventCUSTOCONTABIL: TBCDField
      FieldName = 'CUSTOCONTABIL'
      Precision = 18
      Size = 2
    end
    object C_SemInventISITEMCOMPRA: TStringField
      FieldName = 'ISITEMCOMPRA'
      Size = 1
    end
    object C_SemInventCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Size = 255
    end
    object C_SemInventCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Size = 255
    end
    object C_SemInventPTAXINCLUSO: TBCDField
      FieldName = 'PTAXINCLUSO'
      Precision = 18
      Size = 2
    end
    object C_SemInventCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Size = 255
    end
    object C_SemInventCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object C_SemInventCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 255
    end
    object C_SemInventFOTO: TStringField
      FieldName = 'FOTO'
      Size = 255
    end
    object C_SemInventPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object C_SemInventFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
    end
    object C_SemInventHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Size = 1
    end
    object C_SemInventREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_SemInventlkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 15
      Lookup = True
    end
    object C_SemInventlkContaVenda: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaVenda'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_VENDA'
      Size = 30
      Lookup = True
    end
    object C_SemInventlkContaDespesa: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaDespesa'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_CUSTO'
      Size = 30
      Lookup = True
    end
    object C_SemInventPRECO: TBCDField
      FieldName = 'PRECO'
      OnChange = C_SemInventPRECOChange
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_SemInventQ_ProdutosPreco: TDataSetField
      FieldName = 'Q_ProdutosPreco'
    end
    object C_SemInventCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 376
    Top = 155
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 379
    Top = 9
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
    end
    object C_ContasDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      DisplayWidth = 20
      FieldName = 'DESCTIPO'
      Origin = 'TIPOSCONTAS.DESCTIPO'
      Size = 25
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'CONTAS.SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
      Origin = 'CONTAS.CONTAPAI'
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Origin = 'CONTAS.TIPOCONTA'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Origin = 'CONTAS.CODIGOREDUZIDO'
      Size = 12
    end
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.conta,c.descricao, t.descricao as DescTipo, c.saldo, c.' +
        'contapai,'
      'c.tipoconta, c.codigoreduzido'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'order by c.tipoconta, c.descricao')
    UniDirectional = True
    Left = 375
    Top = 105
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 378
    Top = 60
  end
  object C_Grupos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Grupos'
    BeforeOpen = C_GruposBeforeOpen
    Left = 244
    Top = 9
    object C_GruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPOS.GRUPO'
      Required = True
    end
    object C_GruposDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 310
    Top = 112
  end
  object C_Servicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Servicos'
    AfterOpen = C_ServicosAfterOpen
    BeforePost = C_ServicosBeforePost
    OnNewRecord = C_ServicosNewRecord
    Left = 624
    Top = 12
    object C_ServicosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ServicosTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
    end
    object C_ServicosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_ServicosDESCRICAOCOMPRA: TStringField
      FieldName = 'DESCRICAOCOMPRA'
      Size = 50
    end
    object C_ServicosGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_ServicosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ServicosTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_ServicosULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
    end
    object C_ServicosQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ServicosQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_ServicosPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_ServicosPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_ServicosAPLICARANTESTAX: TStringField
      FieldName = 'APLICARANTESTAX'
      Size = 1
    end
    object C_ServicosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ServicosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 10
    end
    object C_ServicosDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_ServicosESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ServicosIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_ServicosCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_ServicosDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_ServicosTAXINCLUSO: TStringField
      FieldName = 'TAXINCLUSO'
      Size = 1
    end
    object C_ServicosCONTA_VENDA: TIntegerField
      FieldName = 'CONTA_VENDA'
    end
    object C_ServicosCONTA_CUSTO: TIntegerField
      FieldName = 'CONTA_CUSTO'
    end
    object C_ServicosCONTA_INVENT: TIntegerField
      FieldName = 'CONTA_INVENT'
    end
    object C_ServicosFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_ServicosBALANCO: TStringField
      FieldName = 'BALANCO'
      Size = 1
    end
    object C_ServicosCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Size = 255
    end
    object C_ServicosCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Size = 255
    end
    object C_ServicosCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Size = 255
    end
    object C_ServicosCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Size = 255
    end
    object C_ServicosCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Size = 255
    end
    object C_ServicosCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Size = 255
    end
    object C_ServicosISITEMCOMPRA: TStringField
      FieldName = 'ISITEMCOMPRA'
      Size = 1
    end
    object C_ServicosCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Size = 255
    end
    object C_ServicosCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Size = 255
    end
    object C_ServicosPTAXINCLUSO: TBCDField
      FieldName = 'PTAXINCLUSO'
      Precision = 18
      Size = 2
    end
    object C_ServicosCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Size = 255
    end
    object C_ServicosCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object C_ServicosCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 255
    end
    object C_ServicosFOTO: TStringField
      FieldName = 'FOTO'
      Size = 255
    end
    object C_ServicosPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object C_ServicosFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
    end
    object C_ServicosHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Size = 1
    end
    object C_ServicosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_ServicoslkGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrupo'
      LookupDataSet = Q_Grupos
      LookupKeyFields = 'GRUPO'
      LookupResultField = 'DESCRICAOGRUPO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
    end
    object C_ServicoslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 15
      Lookup = True
    end
    object C_ServicoslkContaVenda: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaVenda'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_VENDA'
      Size = 30
      Lookup = True
    end
    object C_ServicoslkContaDespesa: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaDespesa'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_CUSTO'
      Size = 30
      Lookup = True
    end
    object C_ServicosPRECO: TBCDField
      FieldName = 'PRECO'
      OnChange = C_ServicosPRECOChange
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 3
    end
    object C_ServicosQ_ProdutosPreco: TDataSetField
      FieldName = 'Q_ProdutosPreco'
    end
    object C_ServicosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_ServicosCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_ServicosPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
  end
  object C_ServicosDS: TDataSource
    DataSet = C_Servicos
    Left = 627
    Top = 59
  end
  object Q_Servicos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select i.*,pp.preco from itens i left join produtospreco pp on i' +
        '.item = pp.item and pp.tabelapreco = 0'
      'where tipoitem = 3 and desativado = '#39'N'#39
      'order by descricao')
    UniDirectional = True
    UpdateObject = U_Servicos
    Left = 624
    Top = 107
  end
  object P_Servicos: TDataSetProvider
    DataSet = Q_Servicos
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 625
    Top = 155
  end
  object U_Servicos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itens '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update itens'
      'set'
      '  TIPOITEM = :TIPOITEM,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA,'
      '  GRUPO = :GRUPO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TAXAVEL = :TAXAVEL,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  ULTIMOFORNECEDOR = :ULTIMOFORNECEDOR,'
      '  QTDEMINIMO = :QTDEMINIMO,'
      '  QTDEMAXIMO = :QTDEMAXIMO,'
      '  PONTOPEDIDO = :PONTOPEDIDO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  APLICARANTESTAX = :APLICARANTESTAX,'
      '  UNIDADE = :UNIDADE,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  ESTOQUE = :ESTOQUE,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  COMISSAO = :COMISSAO,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  TAXINCLUSO = :TAXINCLUSO,'
      '  CONTA_VENDA = :CONTA_VENDA,'
      '  CONTA_CUSTO = :CONTA_CUSTO,'
      '  CONTA_INVENT = :CONTA_INVENT,'
      '  FABRICANTE = :FABRICANTE,'
      '  BALANCO = :BALANCO,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  CAMPO05 = :CAMPO05,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  CAMPO06 = :CAMPO06,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  ISITEMCOMPRA = :ISITEMCOMPRA,'
      '  CAMPO07 = :CAMPO07,'
      '  CAMPO08 = :CAMPO08,'
      '  PTAXINCLUSO = :PTAXINCLUSO,'
      '  CAMPO09 = :CAMPO09,'
      '  CUSTODESPESAS = :CUSTODESPESAS,'
      '  CAMPO10 = :CAMPO10,'
      '  FOTO = :FOTO,'
      '  PROMOCAO = :PROMOCAO,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  HASCHILDREN = :HASCHILDREN,'
      '  REFERENCIA = :REFERENCIA,'
      '  PRI_CUSTOMEDIO = :PRI_CUSTOMEDIO,'
      '  PRI_CUSTOCONTABIL = :PRI_CUSTOCONTABIL,'
      '  PRI_PRECOCOMPRA = :PRI_PRECOCOMPRA,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  CUSTOPRODUTO = :CUSTOPRODUTO'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into itens'
      '  (ITEM, TIPOITEM, CODIGO, DESCRICAOCOMPRA, GRUPO, DESCRICAO, '
      'TAXAVEL, '
      '   CUSTOMEDIO, ULTIMOFORNECEDOR, QTDEMINIMO, QTDEMAXIMO, '
      'PONTOPEDIDO, PERCENTUAL, '
      '   APLICARANTESTAX, UNIDADE, LOCALIZACAO, DESATIVADO, ESTOQUE, '
      'IMPORTACAO, '
      '   COMISSAO, DESCONTOMAXIMO, TAXINCLUSO, CONTA_VENDA, '
      'CONTA_CUSTO, CONTA_INVENT, '
      '   FABRICANTE, BALANCO, CAMPO01, CAMPO02, CAMPO03, CAMPO04, '
      'CAMPO05, PRECOCOMPRA, '
      '   CAMPO06, CUSTOCONTABIL, ISITEMCOMPRA, CAMPO07, CAMPO08, '
      'PTAXINCLUSO, '
      '   CAMPO09, CUSTODESPESAS, CAMPO10, FOTO, PROMOCAO, FATORLUCRO, '
      'HASCHILDREN, '
      '   REFERENCIA, PRI_CUSTOMEDIO, PRI_CUSTOCONTABIL, '
      'PRI_PRECOCOMPRA, '
      '   DATACADASTRO, CUSTOPRODUTO)'
      'values'
      
        '  (:ITEM, :TIPOITEM, :CODIGO, :DESCRICAOCOMPRA, :GRUPO, :DESCRIC' +
        'AO, '
      ':TAXAVEL, '
      '   :CUSTOMEDIO, :ULTIMOFORNECEDOR, :QTDEMINIMO, :QTDEMAXIMO, '
      ':PONTOPEDIDO, '
      '   :PERCENTUAL, :APLICARANTESTAX, :UNIDADE, :LOCALIZACAO, '
      ':DESATIVADO, '
      
        '   :ESTOQUE, :IMPORTACAO, :COMISSAO, :DESCONTOMAXIMO, :TAXINCLUS' +
        'O, '
      ':CONTA_VENDA, '
      
        '   :CONTA_CUSTO, :CONTA_INVENT, :FABRICANTE, :BALANCO, :CAMPO01,' +
        ' '
      ':CAMPO02, '
      '   :CAMPO03, :CAMPO04, :CAMPO05, :PRECOCOMPRA, :CAMPO06, '
      ':CUSTOCONTABIL, '
      '   :ISITEMCOMPRA, :CAMPO07, :CAMPO08, :PTAXINCLUSO, :CAMPO09, '
      ':CUSTODESPESAS, '
      '   :CAMPO10, :FOTO, :PROMOCAO, :FATORLUCRO, :HASCHILDREN, '
      ':REFERENCIA, :PRI_CUSTOMEDIO, :PRI_CUSTOCONTABIL, '
      ':PRI_PRECOCOMPRA, :DATACADASTRO, '
      '   :CUSTOPRODUTO)')
    DeleteSQL.Strings = (
      'delete from itens'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 625
    Top = 207
  end
  object C_Encargos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Encargos'
    AfterOpen = C_EncargosAfterOpen
    BeforePost = C_EncargosBeforePost
    OnNewRecord = C_EncargosNewRecord
    Left = 174
    Top = 180
    object C_EncargosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_EncargosTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
    end
    object C_EncargosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_EncargosDESCRICAOCOMPRA: TStringField
      FieldName = 'DESCRICAOCOMPRA'
      Size = 50
    end
    object C_EncargosGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_EncargosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_EncargosTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_EncargosULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
    end
    object C_EncargosQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_EncargosQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_EncargosPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_EncargosPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '##0.0#%'
      Precision = 18
      Size = 2
    end
    object C_EncargosAPLICARANTESTAX: TStringField
      FieldName = 'APLICARANTESTAX'
      Size = 1
    end
    object C_EncargosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_EncargosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 10
    end
    object C_EncargosDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_EncargosESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_EncargosIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_EncargosCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_EncargosDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_EncargosTAXINCLUSO: TStringField
      FieldName = 'TAXINCLUSO'
      Size = 1
    end
    object C_EncargosCONTA_VENDA: TIntegerField
      FieldName = 'CONTA_VENDA'
    end
    object C_EncargosCONTA_CUSTO: TIntegerField
      FieldName = 'CONTA_CUSTO'
    end
    object C_EncargosCONTA_INVENT: TIntegerField
      FieldName = 'CONTA_INVENT'
    end
    object C_EncargosFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_EncargosBALANCO: TStringField
      FieldName = 'BALANCO'
      Size = 1
    end
    object C_EncargosCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Size = 255
    end
    object C_EncargosCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Size = 255
    end
    object C_EncargosCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Size = 255
    end
    object C_EncargosCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Size = 255
    end
    object C_EncargosCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Size = 255
    end
    object C_EncargosCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Size = 255
    end
    object C_EncargosISITEMCOMPRA: TStringField
      FieldName = 'ISITEMCOMPRA'
      Size = 1
    end
    object C_EncargosCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Size = 255
    end
    object C_EncargosCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Size = 255
    end
    object C_EncargosPTAXINCLUSO: TBCDField
      FieldName = 'PTAXINCLUSO'
      Precision = 18
      Size = 2
    end
    object C_EncargosCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Size = 255
    end
    object C_EncargosCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object C_EncargosCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 255
    end
    object C_EncargosFOTO: TStringField
      FieldName = 'FOTO'
      Size = 255
    end
    object C_EncargosPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object C_EncargosFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
    end
    object C_EncargosHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Size = 1
    end
    object C_EncargosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_EncargoslkGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrupo'
      LookupDataSet = C_Grupos
      LookupKeyFields = 'GRUPO'
      LookupResultField = 'DESCRICAOGRUPO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
    end
    object C_EncargoslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 15
      Lookup = True
    end
    object C_EncargoslkContaVenda: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaVenda'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_VENDA'
      Size = 30
      Lookup = True
    end
    object C_EncargoslkContaDespesa: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaDespesa'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_CUSTO'
      Size = 30
      Lookup = True
    end
    object C_EncargosQ_ProdutosPreco: TDataSetField
      FieldName = 'Q_ProdutosPreco'
    end
    object C_EncargosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_EncargosPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object C_EncargosCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_EncargosPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 3
    end
  end
  object C_EncargosDS: TDataSource
    DataSet = C_Encargos
    Left = 176
    Top = 227
  end
  object Q_Encargos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select i.*,pp.preco from itens i left join produtospreco pp on i' +
        '.item = pp.item and pp.tabelapreco = 0'
      'where tipoitem = 5 and desativado = '#39'N'#39
      'order by descricao')
    UniDirectional = True
    UpdateObject = U_Encargos
    Left = 174
    Top = 274
  end
  object P_Encargos: TDataSetProvider
    DataSet = Q_Encargos
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 174
    Top = 323
  end
  object U_Encargos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itens '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update itens'
      'set'
      '  ITEM = :ITEM,'
      '  TIPOITEM = :TIPOITEM,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA,'
      '  GRUPO = :GRUPO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TAXAVEL = :TAXAVEL,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  ULTIMOFORNECEDOR = :ULTIMOFORNECEDOR,'
      '  QTDEMINIMO = :QTDEMINIMO,'
      '  QTDEMAXIMO = :QTDEMAXIMO,'
      '  PONTOPEDIDO = :PONTOPEDIDO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  APLICARANTESTAX = :APLICARANTESTAX,'
      '  UNIDADE = :UNIDADE,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  ESTOQUE = :ESTOQUE,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  COMISSAO = :COMISSAO,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  TAXINCLUSO = :TAXINCLUSO,'
      '  CONTA_VENDA = :CONTA_VENDA,'
      '  CONTA_CUSTO = :CONTA_CUSTO,'
      '  CONTA_INVENT = :CONTA_INVENT,'
      '  FABRICANTE = :FABRICANTE,'
      '  BALANCO = :BALANCO,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  CAMPO05 = :CAMPO05,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  CAMPO06 = :CAMPO06,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  ISITEMCOMPRA = :ISITEMCOMPRA,'
      '  CAMPO07 = :CAMPO07,'
      '  CAMPO08 = :CAMPO08,'
      '  PTAXINCLUSO = :PTAXINCLUSO,'
      '  CAMPO09 = :CAMPO09,'
      '  CUSTODESPESAS = :CUSTODESPESAS,'
      '  CAMPO10 = :CAMPO10,'
      '  FOTO = :FOTO,'
      '  PROMOCAO = :PROMOCAO,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  HASCHILDREN = :HASCHILDREN,'
      '  REFERENCIA = :REFERENCIA,'
      '  PRI_CUSTOMEDIO = :PRI_CUSTOMEDIO,'
      '  PRI_CUSTOCONTABIL = :PRI_CUSTOCONTABIL,'
      '  PRI_PRECOCOMPRA = :PRI_PRECOCOMPRA,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  CUSTOPRODUTO = :CUSTOPRODUTO'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into itens'
      '  (ITEM, TIPOITEM, CODIGO, DESCRICAOCOMPRA, GRUPO, DESCRICAO, '
      'TAXAVEL, '
      '   CUSTOMEDIO, ULTIMOFORNECEDOR, QTDEMINIMO, QTDEMAXIMO, '
      'PONTOPEDIDO, PERCENTUAL, '
      '   APLICARANTESTAX, UNIDADE, LOCALIZACAO, DESATIVADO, ESTOQUE, '
      'IMPORTACAO, '
      '   COMISSAO, DESCONTOMAXIMO, TAXINCLUSO, CONTA_VENDA, '
      'CONTA_CUSTO, CONTA_INVENT, '
      '   FABRICANTE, BALANCO, CAMPO01, CAMPO02, CAMPO03, CAMPO04, '
      'CAMPO05, PRECOCOMPRA, '
      '   CAMPO06, CUSTOCONTABIL, ISITEMCOMPRA, CAMPO07, CAMPO08, '
      'PTAXINCLUSO, '
      '   CAMPO09, CUSTODESPESAS, CAMPO10, FOTO, PROMOCAO, FATORLUCRO, '
      'HASCHILDREN, '
      '   REFERENCIA, PRI_CUSTOMEDIO, PRI_CUSTOCONTABIL, '
      'PRI_PRECOCOMPRA, '
      '   DATACADASTRO, CUSTOPRODUTO)'
      'values'
      
        '  (:ITEM, :TIPOITEM, :CODIGO, :DESCRICAOCOMPRA, :GRUPO, :DESCRIC' +
        'AO, '
      ':TAXAVEL, '
      '   :CUSTOMEDIO, :ULTIMOFORNECEDOR, :QTDEMINIMO, :QTDEMAXIMO, '
      ':PONTOPEDIDO, '
      '   :PERCENTUAL, :APLICARANTESTAX, :UNIDADE, :LOCALIZACAO, '
      ':DESATIVADO, '
      
        '   :ESTOQUE, :IMPORTACAO, :COMISSAO, :DESCONTOMAXIMO, :TAXINCLUS' +
        'O, '
      ':CONTA_VENDA, '
      
        '   :CONTA_CUSTO, :CONTA_INVENT, :FABRICANTE, :BALANCO, :CAMPO01,' +
        ' '
      ':CAMPO02, '
      '   :CAMPO03, :CAMPO04, :CAMPO05, :PRECOCOMPRA, :CAMPO06, '
      ':CUSTOCONTABIL, '
      '   :ISITEMCOMPRA, :CAMPO07, :CAMPO08, :PTAXINCLUSO, :CAMPO09, '
      ':CUSTODESPESAS, '
      '   :CAMPO10, :FOTO, :PROMOCAO, :FATORLUCRO, :HASCHILDREN, '
      ':REFERENCIA, :PRI_CUSTOMEDIO, :PRI_CUSTOCONTABIL, '
      ':PRI_PRECOCOMPRA, :DATACADASTRO, '
      '   :CUSTOPRODUTO)')
    DeleteSQL.Strings = (
      'delete from itens'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 174
    Top = 375
  end
  object C_Descontos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Descontos'
    AfterOpen = C_DescontosAfterOpen
    BeforePost = C_DescontosBeforePost
    OnNewRecord = C_DescontosNewRecord
    Left = 269
    Top = 179
    object C_DescontosITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_DescontosTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
    end
    object C_DescontosCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_DescontosDESCRICAOCOMPRA: TStringField
      FieldName = 'DESCRICAOCOMPRA'
      Size = 50
    end
    object C_DescontosGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_DescontosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_DescontosTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_DescontosULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
    end
    object C_DescontosQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_DescontosQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_DescontosPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_DescontosPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      DisplayFormat = '##0.0#%'
      Precision = 18
      Size = 2
    end
    object C_DescontosAPLICARANTESTAX: TStringField
      FieldName = 'APLICARANTESTAX'
      Size = 1
    end
    object C_DescontosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_DescontosLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Size = 10
    end
    object C_DescontosDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_DescontosESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_DescontosIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_DescontosCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_DescontosDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_DescontosTAXINCLUSO: TStringField
      FieldName = 'TAXINCLUSO'
      Size = 1
    end
    object C_DescontosCONTA_VENDA: TIntegerField
      FieldName = 'CONTA_VENDA'
    end
    object C_DescontosCONTA_CUSTO: TIntegerField
      FieldName = 'CONTA_CUSTO'
    end
    object C_DescontosCONTA_INVENT: TIntegerField
      FieldName = 'CONTA_INVENT'
    end
    object C_DescontosFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
    end
    object C_DescontosBALANCO: TStringField
      FieldName = 'BALANCO'
      Size = 1
    end
    object C_DescontosCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Size = 255
    end
    object C_DescontosCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Size = 255
    end
    object C_DescontosCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Size = 255
    end
    object C_DescontosCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Size = 255
    end
    object C_DescontosCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Size = 255
    end
    object C_DescontosCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Size = 255
    end
    object C_DescontosISITEMCOMPRA: TStringField
      FieldName = 'ISITEMCOMPRA'
      Size = 1
    end
    object C_DescontosCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Size = 255
    end
    object C_DescontosCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Size = 255
    end
    object C_DescontosPTAXINCLUSO: TBCDField
      FieldName = 'PTAXINCLUSO'
      Precision = 18
      Size = 2
    end
    object C_DescontosCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Size = 255
    end
    object C_DescontosCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object C_DescontosCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Size = 255
    end
    object C_DescontosFOTO: TStringField
      FieldName = 'FOTO'
      Size = 255
    end
    object C_DescontosPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Size = 1
    end
    object C_DescontosFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
    end
    object C_DescontosHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Size = 1
    end
    object C_DescontosREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
    object C_DescontoslkGrupo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrupo'
      LookupDataSet = C_Grupos
      LookupKeyFields = 'GRUPO'
      LookupResultField = 'DESCRICAOGRUPO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
    end
    object C_DescontoslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 15
      Lookup = True
    end
    object C_DescontoslkContaDesconto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaDesconto'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_VENDA'
      Size = 30
      Lookup = True
    end
    object C_DescontosQ_ProdutosPreco: TDataSetField
      FieldName = 'Q_ProdutosPreco'
    end
    object C_DescontosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
    end
    object C_DescontosPRECO: TBCDField
      FieldName = 'PRECO'
      Precision = 18
      Size = 3
    end
  end
  object C_DescontosDS: TDataSource
    DataSet = C_Descontos
    Left = 271
    Top = 226
  end
  object Q_Descontos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select i.*,pp.preco from itens i left join produtospreco pp on i' +
        '.item = pp.item and pp.tabelapreco = 0'
      'where tipoitem = 6 and desativado = '#39'N'#39
      'order by descricao')
    UniDirectional = True
    UpdateObject = U_Descontos
    Left = 269
    Top = 274
  end
  object P_Descontos: TDataSetProvider
    DataSet = Q_Descontos
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 269
    Top = 322
  end
  object U_Descontos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itens '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update itens'
      'set'
      '  TIPOITEM = :TIPOITEM,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA,'
      '  GRUPO = :GRUPO,'
      '  DESCRICAO = :DESCRICAO,'
      '  TAXAVEL = :TAXAVEL,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  ULTIMOFORNECEDOR = :ULTIMOFORNECEDOR,'
      '  QTDEMINIMO = :QTDEMINIMO,'
      '  QTDEMAXIMO = :QTDEMAXIMO,'
      '  PONTOPEDIDO = :PONTOPEDIDO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  APLICARANTESTAX = :APLICARANTESTAX,'
      '  UNIDADE = :UNIDADE,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  ESTOQUE = :ESTOQUE,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  COMISSAO = :COMISSAO,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  TAXINCLUSO = :TAXINCLUSO,'
      '  CONTA_VENDA = :CONTA_VENDA,'
      '  CONTA_CUSTO = :CONTA_CUSTO,'
      '  CONTA_INVENT = :CONTA_INVENT,'
      '  FABRICANTE = :FABRICANTE,'
      '  BALANCO = :BALANCO,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  CAMPO05 = :CAMPO05,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  CAMPO06 = :CAMPO06,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  ISITEMCOMPRA = :ISITEMCOMPRA,'
      '  CAMPO07 = :CAMPO07,'
      '  CAMPO08 = :CAMPO08,'
      '  PTAXINCLUSO = :PTAXINCLUSO,'
      '  CAMPO09 = :CAMPO09,'
      '  CUSTODESPESAS = :CUSTODESPESAS,'
      '  CAMPO10 = :CAMPO10,'
      '  FOTO = :FOTO,'
      '  PROMOCAO = :PROMOCAO,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  HASCHILDREN = :HASCHILDREN,'
      '  REFERENCIA = :REFERENCIA,'
      '  PRI_CUSTOMEDIO = :PRI_CUSTOMEDIO,'
      '  PRI_CUSTOCONTABIL = :PRI_CUSTOCONTABIL,'
      '  PRI_PRECOCOMPRA = :PRI_PRECOCOMPRA,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  CUSTOPRODUTO = :CUSTOPRODUTO'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into itens'
      '  (ITEM, TIPOITEM, CODIGO, DESCRICAOCOMPRA, GRUPO, DESCRICAO, '
      'TAXAVEL, '
      '   CUSTOMEDIO, ULTIMOFORNECEDOR, QTDEMINIMO, QTDEMAXIMO, '
      'PONTOPEDIDO, PERCENTUAL, '
      '   APLICARANTESTAX, UNIDADE, LOCALIZACAO, DESATIVADO, ESTOQUE, '
      'IMPORTACAO, '
      '   COMISSAO, DESCONTOMAXIMO, TAXINCLUSO, CONTA_VENDA, '
      'CONTA_CUSTO, CONTA_INVENT, '
      '   FABRICANTE, BALANCO, CAMPO01, CAMPO02, CAMPO03, CAMPO04, '
      'CAMPO05, PRECOCOMPRA, '
      '   CAMPO06, CUSTOCONTABIL, ISITEMCOMPRA, CAMPO07, CAMPO08, '
      'PTAXINCLUSO, '
      '   CAMPO09, CUSTODESPESAS, CAMPO10, FOTO, PROMOCAO, FATORLUCRO, '
      'HASCHILDREN, '
      '   REFERENCIA, PRI_CUSTOMEDIO, PRI_CUSTOCONTABIL, '
      'PRI_PRECOCOMPRA, '
      '   DATACADASTRO, CUSTOPRODUTO)'
      'values'
      
        '  (:ITEM, :TIPOITEM, :CODIGO, :DESCRICAOCOMPRA, :GRUPO, :DESCRIC' +
        'AO, '
      ':TAXAVEL, '
      '   :CUSTOMEDIO, :ULTIMOFORNECEDOR, :QTDEMINIMO, :QTDEMAXIMO, '
      ':PONTOPEDIDO, '
      '   :PERCENTUAL, :APLICARANTESTAX, :UNIDADE, :LOCALIZACAO, '
      ':DESATIVADO, '
      
        '   :ESTOQUE, :IMPORTACAO, :COMISSAO, :DESCONTOMAXIMO, :TAXINCLUS' +
        'O, '
      ':CONTA_VENDA, '
      
        '   :CONTA_CUSTO, :CONTA_INVENT, :FABRICANTE, :BALANCO, :CAMPO01,' +
        ' '
      ':CAMPO02, '
      '   :CAMPO03, :CAMPO04, :CAMPO05, :PRECOCOMPRA, :CAMPO06, '
      ':CUSTOCONTABIL, '
      '   :ISITEMCOMPRA, :CAMPO07, :CAMPO08, :PTAXINCLUSO, :CAMPO09, '
      ':CUSTODESPESAS, '
      '   :CAMPO10, :FOTO, :PROMOCAO, :FATORLUCRO, :HASCHILDREN, '
      ':REFERENCIA, :PRI_CUSTOMEDIO, :PRI_CUSTOCONTABIL, '
      ':PRI_PRECOCOMPRA, :DATACADASTRO, '
      '   :CUSTOPRODUTO)')
    DeleteSQL.Strings = (
      'delete from itens'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 269
    Top = 374
  end
  object DlgMsg: TDlgMsg
    Left = 267
    Top = 136
  end
  object Q_MasterDS: TDataSource
    DataSet = Q_Inventario
    Left = 110
    Top = 296
  end
  object C_ProdutosPreco: TClientDataSet
    Aggregates = <>
    DataSetField = C_InventarioQ_ProdutosPreco
    Params = <>
    OnNewRecord = C_ProdutosPrecoNewRecord
    Left = 573
    Top = 360
    object C_ProdutosPrecoITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PRODUTOSPRECO.ITEM'
    end
    object C_ProdutosPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'PRODUTOSPRECO.TABELAPRECO'
    end
    object C_ProdutosPrecoPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object C_ProdutosPrecoPRECOMANUAL: TStringField
      FieldName = 'PRECOMANUAL'
      Origin = 'PRODUTOSPRECO.PRECOMANUAL'
      Size = 1
    end
    object C_ProdutosPrecoBASEADA: TStringField
      FieldName = 'BASEADA'
      Origin = 'TABELASPRECO.BASEADA'
      Size = 1
    end
    object C_ProdutosPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'TABELASPRECO.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_ProdutosPrecoPRODUTOPRECO: TIntegerField
      FieldName = 'PRODUTOPRECO'
      Origin = 'PRODUTOSPRECO.PRODUTOPRECO'
      Required = True
    end
    object C_ProdutosPrecoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOSPRECO.UNIDADE'
      Size = 6
    end
  end
  object Q_ProdutosPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 5000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select pp.*, tp.baseada, tp.percentual '
      'from produtospreco pp, tabelaspreco tp'
      'where item = :ITEM and pp.tabelapreco = tp.tabelapreco')
    UniDirectional = True
    UpdateObject = U_ProdutosPreco
    Left = 524
    Top = 276
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ProdutosPreco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from produtospreco '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update produtospreco'
      'set'
      '  PRECO = :PRECO,'
      '  PRECOMANUAL = :PRECOMANUAL,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ITEM = :OLD_ITEM AND'
      '  TABELAPRECO = :OLD_TABELAPRECO')
    InsertSQL.Strings = (
      'insert into produtospreco'
      '  (ITEM, TABELAPRECO, PRECO, PRECOMANUAL, UNIDADE)'
      'values'
      '  (:ITEM, :TABELAPRECO, :PRECO, :PRECOMANUAL, :UNIDADE)')
    DeleteSQL.Strings = (
      'delete from produtospreco'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 592
    Top = 294
  end
  object C_Fabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Fabricantes'
    BeforePost = C_FabricantesBeforePost
    OnNewRecord = C_FabricantesNewRecord
    Left = 355
    Top = 201
    object C_FabricantesFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Required = True
    end
    object C_FabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_FabricantesCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 10
    end
  end
  object C_FabricantesDS: TDataSource
    DataSet = C_Fabricantes
    Left = 358
    Top = 245
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fabricantes order by descricao')
    UniDirectional = True
    UpdateObject = U_Fabricantes
    Left = 357
    Top = 288
  end
  object P_Fabricantes: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 357
    Top = 335
  end
  object U_Fabricantes: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from fabricantes '
      'where'
      '  FABRICANTE = :FABRICANTE')
    ModifySQL.Strings = (
      'update fabricantes'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  CODIGO = :CODIGO'
      'where'
      '  FABRICANTE = :OLD_FABRICANTE')
    InsertSQL.Strings = (
      'insert into fabricantes'
      '  (FABRICANTE, DESCRICAO, CODIGO)'
      'values'
      '  (:FABRICANTE, :DESCRICAO, :CODIGO)')
    DeleteSQL.Strings = (
      'delete from fabricantes'
      'where'
      '  FABRICANTE = :OLD_FABRICANTE')
    Left = 360
    Top = 379
  end
  object C_FabricLk: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_FabricLk'
    Left = 33
    Top = 271
    object C_FabricLkFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Required = True
    end
    object C_FabricLkDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'FABRICANTES.DESCRICAO'
      Size = 30
    end
  end
  object Q_FabricLk: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fabricantes order by descricao')
    UniDirectional = True
    Left = 33
    Top = 319
  end
  object P_FabricLk: TDataSetProvider
    DataSet = Q_FabricLk
    Constraints = True
    Left = 33
    Top = 367
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasPreco'
    Left = 467
    Top = 263
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Required = True
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
  object Q_TabelasPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AutoCalcFields = False
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tabelaspreco order by tabelapreco')
    UniDirectional = True
    Left = 467
    Top = 311
  end
  object P_TabelasPreco: TDataSetProvider
    DataSet = Q_TabelasPreco
    Constraints = True
    Left = 467
    Top = 359
  end
  object C_ItensUnidadesDS: TDataSource
    Left = 707
    Top = 60
  end
  object C_ItensUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    OnNewRecord = C_ItensUnidadesNewRecord
    Left = 705
    Top = 13
    object C_ItensUnidadesITEMUNIDADE: TIntegerField
      FieldName = 'ITEMUNIDADE'
      Origin = 'ITENSUNIDADES.ITEMUNIDADE'
      Required = True
    end
    object C_ItensUnidadesITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENSUNIDADES.ITEM'
    end
    object C_ItensUnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENSUNIDADES.UNIDADE'
      Size = 6
    end
    object C_ItensUnidadesFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'ITENSUNIDADES.FATOR'
    end
  end
  object Q_ItensUnidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select * from itensunidades where item = :ITEM')
    Left = 708
    Top = 106
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ItensUnidades: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itensunidades '
      'where'
      '  ITEMUNIDADE = :ITEMUNIDADE')
    ModifySQL.Strings = (
      'update itensunidades'
      'set'
      '  ITEM = :ITEM,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR'
      'where'
      '  ITEMUNIDADE = :OLD_ITEMUNIDADE')
    InsertSQL.Strings = (
      'insert into itensunidades'
      '  (ITEMUNIDADE, ITEM, UNIDADE, FATOR)'
      'values'
      '  (:ITEMUNIDADE, :ITEM, :UNIDADE, :FATOR)')
    DeleteSQL.Strings = (
      'delete from itensunidades'
      'where'
      '  ITEMUNIDADE = :OLD_ITEMUNIDADE')
    Left = 704
    Top = 168
  end
  object C_ItensCodigos: TClientDataSet
    Aggregates = <>
    DataSetField = C_InventarioQ_ItensCodigos
    Params = <>
    OnNewRecord = C_ItensCodigosNewRecord
    Left = 821
    Top = 13
    object C_ItensCodigosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENSCODIGOS.ITEM'
      Required = True
    end
    object C_ItensCodigosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENSCODIGOS.CODIGO'
      Required = True
      Size = 14
    end
    object C_ItensCodigosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENSCODIGOS.UNIDADE'
      Size = 6
    end
    object C_ItensCodigosORIGEMREPLIC: TStringField
      FieldName = 'ORIGEMREPLIC'
      Origin = 'ITENSCODIGOS.ORIGEMREPLIC'
      FixedChar = True
      Size = 1
    end
  end
  object C_ItensCodigosDs: TDataSource
    Left = 817
    Top = 66
  end
  object Q_ItensCodigos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select * from itenscodigos where item = :ITEM')
    UpdateObject = U_ItensCodigos
    Left = 820
    Top = 118
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ItensCodigos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itenscodigos '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update itenscodigos'
      'set'
      '  ITEM = :ITEM,'
      '  CODIGO = :CODIGO,'
      '  UNIDADE = :UNIDADE,'
      '  ORIGEMREPLIC = :ORIGEMREPLIC'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into itenscodigos'
      '  (ITEM, CODIGO, UNIDADE, ORIGEMREPLIC)'
      'values'
      '  (:ITEM, :CODIGO, :UNIDADE, :ORIGEMREPLIC)')
    DeleteSQL.Strings = (
      'delete from itenscodigos'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 822
    Top = 180
  end
end
