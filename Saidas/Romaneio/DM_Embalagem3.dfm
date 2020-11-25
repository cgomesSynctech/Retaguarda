inherited DMEmbalagem3: TDMEmbalagem3
  Left = 602
  Top = 181
  Width = 302
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select s.saida, s.embalagens, s.numero, f.razao, s.data, f.cidad' +
        'e, f.uf'
      
        'from saidas s inner join favorecidos F on f.favorecido = s.favor' +
        'ecido')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from saidas '
      'where'
      '  SAIDA = :SAIDA')
    ModifySQL.Strings = (
      'update saidas'
      'set'
      '  EMBALAGENS = :EMBALAGENS'
      'where'
      '  SAIDA = :OLD_SAIDA')
    InsertSQL.Strings = (
      'insert into saidas'
      '  (EMBALAGENS)'
      'values'
      '  (:EMBALAGENS)')
    DeleteSQL.Strings = (
      'delete from saidas'
      'where'
      '  SAIDA = :OLD_SAIDA')
    Top = 56
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'SAIDAS'
    Tabela_Nome = 'SAIDAS'
    Tabela_Chave = 'saida'
    Tabela_ChaveAlias = 'saida'
  end
  inherited C_Tabela: TClientDataSet
    Top = 148
    object C_TabelaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_TabelaEMBALAGENS: TIntegerField
      FieldName = 'EMBALAGENS'
    end
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_TabelaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_TabelaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
  end
  object Q_Etiqueta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from ETIQUETAEMBALAGEM')
    Left = 184
    Top = 3
  end
  object Q_Print: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from ETIQUETAEMBALAGEM ')
    Left = 184
    Top = 59
  end
  object P_Print: TDataSetProvider
    DataSet = Q_Print
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 184
    Top = 109
  end
  object C_Print: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Print'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 185
    Top = 164
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_PrintMAQUINA: TStringField
      FieldName = 'MAQUINA'
      Origin = 'ETIQUETAEMBALAGEM.MAQUINA'
    end
    object C_PrintNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'ETIQUETAEMBALAGEM.NUMERO'
      Size = 12
    end
    object C_PrintTOTEMBALAGEM: TIntegerField
      FieldName = 'TOTEMBALAGEM'
      Origin = 'ETIQUETAEMBALAGEM.TOTEMBALAGEM'
    end
    object C_PrintSEQUENCIA: TIntegerField
      FieldName = 'SEQUENCIA'
      Origin = 'ETIQUETAEMBALAGEM.SEQUENCIA'
    end
    object C_PrintRAZAO: TStringField
      FieldName = 'RAZAO'
      Origin = 'ETIQUETAEMBALAGEM.RAZAO'
      Size = 50
    end
    object C_PrintCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'ETIQUETAEMBALAGEM.CIDADE'
      Size = 30
    end
    object C_PrintUF: TStringField
      FieldName = 'UF'
      Origin = 'ETIQUETAEMBALAGEM.UF'
      Size = 2
    end
  end
  object C_PrintDS: TDataSource
    Tag = 100
    DataSet = C_Print
    Left = 184
    Top = 212
  end
end
