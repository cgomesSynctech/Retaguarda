inherited DMPontuacaoResgates: TDMPontuacaoResgates
  Width = 356
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'SELECT  P.PONTUACAORESGATE, P.PONTUACAO, P.FAVORECIDO, P.DATA, P' +
        '.VALORRESGATE, F.NOME'
      'FROM FAVORECIDOS F'
      'INNER JOIN PONTUACAORESGATES P ON F.FAVORECIDO = P.FAVORECIDO')
    Left = 40
    Top = 7
  end
  inherited Q_MasterDS: TDataSource
    Left = 103
    Top = 5
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PONTUACAORESGATE,'
      '  PONTUACAO,'
      '  FAVORECIDO,'
      '  DATA,'
      '  VALORRESGATE'
      'from PONTUACAORESGATES '
      'where'
      '  PONTUACAORESGATE = :PONTUACAORESGATE')
    ModifySQL.Strings = (
      'update PONTUACAORESGATES'
      'set'
      '  PONTUACAO = :PONTUACAO,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  DATA = :DATA,'
      '  VALORRESGATE = :VALORRESGATE'
      'where'
      '  PONTUACAORESGATE = :OLD_PONTUACAORESGATE')
    InsertSQL.Strings = (
      'insert into PONTUACAORESGATES'
      '  (PONTUACAORESGATE, PONTUACAO, FAVORECIDO, DATA, VALORRESGATE)'
      'values'
      '  (:PONTUACAORESGATE, :PONTUACAO, :FAVORECIDO, :DATA, '
      ':VALORRESGATE)')
    DeleteSQL.Strings = (
      'delete from PONTUACAORESGATES'
      'where'
      '  PONTUACAORESGATE = :OLD_PONTUACAORESGATE')
    Left = 38
    Top = 55
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'PONTUACAORESGATE'
    Tabela_Nome = 'PONTUACAORESGATEs'
    Tabela_Chave = 'PONTUACAORESGATE'
  end
  inherited P_Tabela: TDataSetProvider
    Left = 42
    Top = 103
  end
  inherited C_Tabela: TClientDataSet
    OnCalcFields = C_TabelaCalcFields
    Left = 43
    Top = 150
    object C_TabelaPONTUACAORESGATE: TIntegerField
      FieldName = 'PONTUACAORESGATE'
      Required = True
    end
    object C_TabelaPONTUACAO: TIntegerField
      FieldName = 'PONTUACAO'
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_TabelaVALORRESGATE: TBCDField
      FieldName = 'VALORRESGATE'
      Precision = 18
      Size = 3
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaicSALDO: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSALDO'
    end
    object C_TabelaicVENDAS: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icVENDAS'
    end
    object C_TabelaicRESGATES: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icRESGATES'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 36
    Top = 202
  end
  inherited ResultSet: TClientDataSet
    Left = 100
  end
  object Q_MaxResgate: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select Favorecido,Nome,codigo from Favorecidos'
      '')
    Left = 252
    Top = 7
  end
  object P_MaxResgate: TDataSetProvider
    DataSet = Q_MaxResgate
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 252
    Top = 55
  end
  object C_MaxResgate: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MaxResgate'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 253
    Top = 98
  end
  object C_MaxResgateDs: TDataSource
    Tag = 100
    DataSet = C_MaxResgate
    Left = 254
    Top = 142
  end
end
