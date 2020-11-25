inherited DMLicitacoes: TDMLicitacoes
  Left = 67
  Top = 43
  Height = 522
  Width = 674
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'SELECT L.licitacao, l.codigo, l.data, l.descricao, l.status'
      'FROM LICITACOES L')
  end
  inherited Q_MasterDS: TDataSource
    Left = 115
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  LICITACAO,'
      '  CODIGO,'
      '  DATA,'
      '  DESCRICAO,'
      '  STATUS'
      'from LICITACOES '
      'where'
      '  LICITACAO = :LICITACAO')
    ModifySQL.Strings = (
      'update LICITACOES'
      'set'
      '  CODIGO = :CODIGO,'
      '  DATA = :DATA,'
      '  DESCRICAO = :DESCRICAO,'
      '  STATUS = :STATUS'
      'where'
      '  LICITACAO = :OLD_LICITACAO')
    InsertSQL.Strings = (
      'insert into LICITACOES'
      '  (LICITACAO, CODIGO, DATA, DESCRICAO, STATUS)'
      'values'
      '  (:LICITACAO, :CODIGO, :DATA, :DESCRICAO, :STATUS)')
    DeleteSQL.Strings = (
      'delete from LICITACOES'
      'where'
      '  LICITACAO = :OLD_LICITACAO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'LICITACOES'
    Tabela_Nome = 'LICITACOES'
    Tabela_Chave = 'LICITACAO'
    GenerateIDFor.Strings = (
      'C_Itens=LICITACAOITEM'
      'C_ItensFornec=LICITACAOITEMFORNECEDOR')
  end
  inherited C_Tabela: TClientDataSet
    Active = False
    Left = 35
    Top = 154
    object C_TabelaLICITACAO: TIntegerField
      FieldName = 'LICITACAO'
      Origin = 'LICITACOES.LICITACAO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'LICITACOES.CODIGO'
      Size = 12
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'LICITACOES.DATA'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'LICITACOES.DESCRICAO'
      Size = 50
    end
    object C_TabelaSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'LICITACOES.STATUS'
      FixedChar = True
      Size = 1
    end
    object C_TabelaQ_Itens: TDataSetField
      FieldName = 'Q_Itens'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 36
    Top = 208
  end
  inherited ResultSet: TClientDataSet
    Left = 116
    Top = 50
  end
  object Q_Itens: TIBQuery
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
      'Select LI.licitacaoitem, li.licitacao, li.item,'
      'I.CODIGO, I.descricao, I.ipicompra, i.referencia, i.precocompra,'
      'f.nome'
      'From licitacoesitens li'
      ' Inner join Itens i on li.item = i.item'
      ' Inner join favorecidos f on f.favorecido = i.ultimofornecedor'
      'WHere li.licitacao = :LICITACAO')
    UpdateObject = U_Itens
    Left = 184
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LICITACAO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Itens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from licitacoesitens '
      'where'
      '  LICITACAOITEM = :LICITACAOITEM')
    ModifySQL.Strings = (
      'update licitacoesitens'
      'set'
      '  LICITACAO = :LICITACAO,'
      '  ITEM = :ITEM'
      'where'
      '  LICITACAOITEM = :OLD_LICITACAOITEM')
    InsertSQL.Strings = (
      'insert into licitacoesitens'
      '  (LICITACAOITEM, LICITACAO, ITEM)'
      'values'
      '  (:LICITACAOITEM, :LICITACAO, :ITEM)')
    DeleteSQL.Strings = (
      'delete from licitacoesitens'
      'where'
      '  LICITACAOITEM = :OLD_LICITACAOITEM')
    Left = 184
    Top = 55
  end
  object P_Itens: TDataSetProvider
    DataSet = Q_Itens
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 184
    Top = 105
  end
  object C_Itens: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_Itens
    Params = <>
    ProviderName = 'P_Itens'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_ItensNewRecord
    Left = 185
    Top = 152
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ItensLICITACAOITEM: TIntegerField
      FieldName = 'LICITACAOITEM'
      Origin = 'LICITACOESITENS.LICITACAOITEM'
      Required = True
    end
    object C_ItensLICITACAO: TIntegerField
      FieldName = 'LICITACAO'
      Origin = 'LICITACOESITENS.LICITACAO'
    end
    object C_ItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'LICITACOESITENS.ITEM'
      OnChange = C_ItensITEMChange
    end
    object C_ItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ItensQ_ItensFornec: TDataSetField
      FieldName = 'Q_ItensFornec'
    end
    object C_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_ItensPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      Origin = 'ITENS.PRECOCOMPRA'
    end
    object C_ItensNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ItensIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Origin = 'ITENS.IPICOMPRA'
      Precision = 18
      Size = 2
    end
  end
  object C_ItensDs: TDataSource
    Tag = 100
    DataSet = C_Itens
    Left = 186
    Top = 206
  end
  object Q_ItensMasterDs: TDataSource
    DataSet = Q_Itens
    Left = 263
    Top = 5
  end
  object Q_ItensFornec: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_ItensMasterDs
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      
        'SELECT LIF.licitacaoitemfornecedor, lif.licitacaoitem, lif.forne' +
        'cedor, lif.precocompra, lif.valoricms, lif.valoripi, lif.valorfr' +
        'ete, lif.valoroutras, lif.precocusto,'
      '   lif.percicms, lif.percipi,'
      '   f.codigo, f.nome, f.UF'
      'FROM licitacoesitensfornecedores lif'
      ' left join favorecidos f on lif.fornecedor = f.favorecido'
      'where lif.licitacaoitem = :LICITACAOITEM')
    UpdateObject = U_ItensFornec
    Left = 348
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LICITACAOITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ItensFornec: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from licitacoesitensfornecedores '
      'where'
      '  LICITACAOITEMFORNECEDOR = :LICITACAOITEMFORNECEDOR')
    ModifySQL.Strings = (
      'update licitacoesitensfornecedores'
      'set'
      '  LICITACAOITEM = :LICITACAOITEM,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  VALORICMS = :VALORICMS,'
      '  VALORIPI = :VALORIPI,'
      '  VALORFRETE = :VALORFRETE,'
      '  VALOROUTRAS = :VALOROUTRAS,'
      '  PRECOCUSTO = :PRECOCUSTO,'
      '  PERCICMS = :PERCICMS,'
      '  PERCIPI = :PERCIPI'
      'where'
      '  LICITACAOITEMFORNECEDOR = :OLD_LICITACAOITEMFORNECEDOR')
    InsertSQL.Strings = (
      'insert into licitacoesitensfornecedores'
      '  (LICITACAOITEMFORNECEDOR, LICITACAOITEM, FORNECEDOR, '
      'PRECOCOMPRA, VALORICMS, '
      '   VALORIPI, VALORFRETE, VALOROUTRAS, PRECOCUSTO, PERCICMS, '
      'PERCIPI)'
      'values'
      '  (:LICITACAOITEMFORNECEDOR, :LICITACAOITEM, :FORNECEDOR, '
      ':PRECOCOMPRA, '
      
        '   :VALORICMS, :VALORIPI, :VALORFRETE, :VALOROUTRAS, :PRECOCUSTO' +
        ', '
      ':PERCICMS, '
      '   :PERCIPI)')
    DeleteSQL.Strings = (
      'delete from licitacoesitensfornecedores'
      'where'
      '  LICITACAOITEMFORNECEDOR = :OLD_LICITACAOITEMFORNECEDOR')
    Left = 348
    Top = 57
  end
  object P_ItensFornec: TDataSetProvider
    DataSet = Q_ItensFornec
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 346
    Top = 109
  end
  object C_ItensFornec: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_ItensQ_ItensFornec
    Params = <>
    ProviderName = 'P_ItensFornec'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_ItensFornecNewRecord
    Left = 347
    Top = 160
    object IntegerField2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ItensFornecLICITACAOITEMFORNECEDOR: TIntegerField
      FieldName = 'LICITACAOITEMFORNECEDOR'
      Origin = 'LICITACOESITENSFORNECEDORES.LICITACAOITEMFORNECEDOR'
      Required = True
    end
    object C_ItensFornecLICITACAOITEM: TIntegerField
      FieldName = 'LICITACAOITEM'
      Origin = 'LICITACOESITENSFORNECEDORES.LICITACAOITEM'
    end
    object C_ItensFornecFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
      Origin = 'LICITACOESITENSFORNECEDORES.FORNECEDOR'
      OnChange = C_ItensFornecFORNECEDORChange
    end
    object C_ItensFornecPRECOCOMPRA: TBCDField
      FieldName = 'PRECOCOMPRA'
      Origin = 'LICITACOESITENSFORNECEDORES.PRECOCOMPRA'
      OnChange = C_ItensFornecPRECOCOMPRAChange
      Precision = 18
      Size = 2
    end
    object C_ItensFornecVALORICMS: TBCDField
      FieldName = 'VALORICMS'
      Origin = 'LICITACOESITENSFORNECEDORES.VALORICMS'
      Precision = 18
      Size = 2
    end
    object C_ItensFornecVALORIPI: TBCDField
      FieldName = 'VALORIPI'
      Origin = 'LICITACOESITENSFORNECEDORES.VALORIPI'
      Precision = 18
      Size = 2
    end
    object C_ItensFornecVALORFRETE: TBCDField
      FieldName = 'VALORFRETE'
      Origin = 'LICITACOESITENSFORNECEDORES.VALORFRETE'
      OnChange = C_ItensFornecVALORFRETEChange
      Precision = 18
      Size = 2
    end
    object C_ItensFornecVALOROUTRAS: TBCDField
      FieldName = 'VALOROUTRAS'
      Origin = 'LICITACOESITENSFORNECEDORES.VALOROUTRAS'
      OnChange = C_ItensFornecVALOROUTRASChange
      Precision = 18
      Size = 2
    end
    object C_ItensFornecPRECOCUSTO: TBCDField
      FieldName = 'PRECOCUSTO'
      Origin = 'LICITACOESITENSFORNECEDORES.PRECOCUSTO'
      Precision = 18
      Size = 2
    end
    object C_ItensFornecCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FAVORECIDOS.CODIGO'
    end
    object C_ItensFornecNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ItensFornecPERCIPI: TBCDField
      FieldName = 'PERCIPI'
      Origin = 'LICITACOESITENSFORNECEDORES.PERCIPI'
      OnChange = C_ItensFornecPERCIPIChange
      Precision = 18
      Size = 2
    end
    object C_ItensFornecUF: TStringField
      FieldName = 'UF'
      Origin = 'FAVORECIDOS.UF'
      Size = 2
    end
    object C_ItensFornecPERCICMS: TBCDField
      FieldName = 'PERCICMS'
      Origin = 'LICITACOESITENSFORNECEDORES.PERCICMS'
      Precision = 18
      Size = 2
    end
  end
  object C_ItensFornecDs: TDataSource
    Tag = 100
    DataSet = C_ItensFornec
    Left = 344
    Top = 210
  end
  object P_Relatorio: TDataSetProvider
    DataSet = Q_Relatorio
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 454
    Top = 119
  end
  object Q_Relatorio: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT l.Data, l.codigo as Numero, l.descricao as Licita,'
      
        '       i.codigo, i.descricao, i.referencia, i.precocompra as Ult' +
        'PrcCompra, i.estoque, i.estoquefiscal,'
      
        '       f.nome, f.endereco, f.bairro, f.cidade,f.cep, f.uf, f.fon' +
        'e1, f.fone2, f.fax,'
      
        '       lif.precocusto, Lif.precocompra, lif.percicms, lif.percip' +
        'i,'
      
        '       lif.valoricms, lif.valoripi, lif.valorfrete, lif.valorout' +
        'ras,'
      '       u.nome as UltimoFornec'
      'FROM LICITACOES L'
      '   left JOIN licitacoesitens li on li.licitacao = l.licitacao'
      
        '   left JOIN licitacoesitensfornecedores lif on lif.licitacaoite' +
        'm = li.licitacaoitem'
      '   left join itens i on i.item = li.item'
      '   left join favorecidos f on f.favorecido = lif.fornecedor'
      '   left join favorecidos u on u.favorecido = i.ultimofornecedor'
      'where l.licitacao = :licitacao'
      'order by l.licitacao,  i.descricao , lif.precocusto')
    Left = 452
    Top = 69
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'LICITACAO'
        ParamType = ptUnknown
      end>
  end
  object C_Relatorio: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Relatorio'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_ItensFornecNewRecord
    Left = 455
    Top = 170
    object IntegerField3: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_RelatorioDATA: TDateField
      FieldName = 'DATA'
    end
    object C_RelatorioNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_RelatorioLICITA: TStringField
      FieldName = 'LICITA'
      Size = 50
    end
    object C_RelatorioCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 13
    end
    object C_RelatorioDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_RelatorioREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_RelatorioULTPRCCOMPRA: TFloatField
      FieldName = 'ULTPRCCOMPRA'
    end
    object C_RelatorioESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_RelatorioESTOQUEFISCAL: TBCDField
      FieldName = 'ESTOQUEFISCAL'
      Precision = 18
      Size = 3
    end
    object C_RelatorioNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_RelatorioENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_RelatorioBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Size = 30
    end
    object C_RelatorioCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_RelatorioCEP: TStringField
      FieldName = 'CEP'
      Size = 10
    end
    object C_RelatorioUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_RelatorioFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_RelatorioFONE2: TStringField
      FieldName = 'FONE2'
    end
    object C_RelatorioFAX: TStringField
      FieldName = 'FAX'
    end
    object C_RelatorioPRECOCUSTO: TBCDField
      FieldName = 'PRECOCUSTO'
      Precision = 18
      Size = 2
    end
    object C_RelatorioPRECOCOMPRA: TBCDField
      FieldName = 'PRECOCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_RelatorioPERCICMS: TBCDField
      FieldName = 'PERCICMS'
      Precision = 9
      Size = 2
    end
    object C_RelatorioPERCIPI: TBCDField
      FieldName = 'PERCIPI'
      Precision = 9
      Size = 2
    end
    object C_RelatorioVALORICMS: TBCDField
      FieldName = 'VALORICMS'
      Precision = 18
      Size = 2
    end
    object C_RelatorioVALORIPI: TBCDField
      FieldName = 'VALORIPI'
      Precision = 18
      Size = 2
    end
    object C_RelatorioVALORFRETE: TBCDField
      FieldName = 'VALORFRETE'
      Precision = 18
      Size = 2
    end
    object C_RelatorioVALOROUTRAS: TBCDField
      FieldName = 'VALOROUTRAS'
      Precision = 18
      Size = 2
    end
    object C_RelatorioULTIMOFORNEC: TStringField
      FieldName = 'ULTIMOFORNEC'
      Size = 50
    end
  end
  object C_RelatorioDs: TDataSource
    Tag = 100
    DataSet = C_Relatorio
    Left = 456
    Top = 220
  end
  object C_RelFornec: TClientDataSet
    Aggregates = <>
    IndexFieldNames = 'NOME;DESCRICAO;PRECOCUSTO'
    Params = <>
    Left = 558
    Top = 170
    object C_RelFornecPRECOCUSTO: TCurrencyField
      FieldName = 'PRECOCUSTO'
    end
    object C_RelFornecVALOROUTRAS: TCurrencyField
      FieldName = 'VALOROUTRAS'
    end
    object C_RelFornecVALORFRETE: TCurrencyField
      FieldName = 'VALORFRETE'
    end
    object C_RelFornecPERCIPI: TCurrencyField
      FieldName = 'PERCIPI'
    end
    object C_RelFornecPERCICMS: TCurrencyField
      FieldName = 'PERCICMS'
    end
    object C_RelFornecPRECOCOMPRA: TCurrencyField
      FieldName = 'PRECOCOMPRA'
    end
    object C_RelFornecNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_RelFornecCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 12
    end
    object C_RelFornecDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_RelFornecREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  object C_RelFornecDs: TDataSource
    DataSet = C_RelFornec
    Left = 554
    Top = 218
  end
end
