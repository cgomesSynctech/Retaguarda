inherited DMRomaneioSeparacao: TDMRomaneioSeparacao
  Left = 247
  Top = 169
  Height = 383
  Width = 534
  inherited OpenDialog: TOpenDialog
    Left = 158
    Top = 269
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from LOTESSEPARACAO')
    Left = 26
    Top = 9
  end
  inherited Q_MasterDS: TDataSource
    Left = 99
    Top = 15
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  LOTESEPARACAO,'
      '  DATA'
      'from LOTESSEPARACAO '
      'where'
      '  LOTESEPARACAO = :LOTESEPARACAO')
    ModifySQL.Strings = (
      'update LOTESSEPARACAO'
      'set'
      '  DATA = :DATA'
      'where'
      '  LOTESEPARACAO = :OLD_LOTESEPARACAO')
    InsertSQL.Strings = (
      'insert into LOTESSEPARACAO'
      '  (LOTESEPARACAO, DATA)'
      'values'
      '  (:LOTESEPARACAO, :DATA)')
    DeleteSQL.Strings = (
      'delete from LOTESSEPARACAO'
      'where'
      '  LOTESEPARACAO = :OLD_LOTESEPARACAO')
    Left = 30
    Top = 59
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'LOTESSEPARACAO'
    Tabela_Nome = 'LOTESSEPARACAO'
    Tabela_Chave = 'LOTESEPARACAO'
    Tabela_ChaveAlias = 'LOTESEPARACAO'
    GenerateIDFor.Strings = (
      '')
  end
  inherited DlgMsg: TDlgMsg
    Top = 268
  end
  inherited P_Tabela: TDataSetProvider
    Left = 28
    Top = 113
  end
  inherited C_Tabela: TClientDataSet
    Active = True
    Left = 29
    Top = 168
    object C_TabelaLOTESEPARACAO: TIntegerField
      FieldName = 'LOTESEPARACAO'
      Origin = 'LOTESSEPARACAO.LOTESEPARACAO'
      Required = True
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'LOTESSEPARACAO.DATA'
    end
    object C_TabelaQ_Detalhe: TDataSetField
      FieldName = 'Q_Detalhe'
    end
  end
  inherited C_TabelaDS: TDataSource
    Top = 218
  end
  inherited ResultSet: TClientDataSet
    Left = 94
    Top = 84
  end
  object Q_Detalhe: TIBQuery
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
      'Select s.Numero, s.data, f.nome, s.total, '
      ' ls.loteseparacao, ls.saida, ls.loteseparacaosaida'
      'from LOTESSEPARACAOSAIDAS ls'
      '  inner join saidas s on s.saida = ls.saida'
      '  inner join favorecidos f on f.favorecido = s.favorecido'
      'WHERE LOTESEPARACAO = :LOTESEPARACAO')
    UpdateObject = U_Detalhe
    Left = 200
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LOTESEPARACAO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Detalhe: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  LOTESEPARACAOSAIDA,'
      '  LOTESEPARACAO,'
      '  SAIDA'
      'from LOTESSEPARACAOSAIDAS '
      'where'
      '  LOTESEPARACAOSAIDA = :LOTESEPARACAOSAIDA')
    ModifySQL.Strings = (
      'update LOTESSEPARACAOSAIDAS'
      'set'
      '  LOTESEPARACAO = :LOTESEPARACAO,'
      '  SAIDA = :SAIDA'
      'where'
      '  LOTESEPARACAOSAIDA = :OLD_LOTESEPARACAOSAIDA')
    InsertSQL.Strings = (
      'insert into LOTESSEPARACAOSAIDAS'
      '  (LOTESEPARACAO, SAIDA)'
      'values'
      '  (:LOTESEPARACAO, :SAIDA)')
    DeleteSQL.Strings = (
      'delete from LOTESSEPARACAOSAIDAS'
      'where'
      '  LOTESEPARACAOSAIDA = :OLD_LOTESEPARACAOSAIDA')
    Left = 204
    Top = 57
  end
  object P_Detalhe: TDataSetProvider
    DataSet = Q_Detalhe
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 202
    Top = 111
  end
  object C_Detalhe: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_Detalhe
    Params = <>
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_DetalheNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 203
    Top = 166
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_DetalheNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_DetalheDATA: TDateField
      FieldName = 'DATA'
    end
    object C_DetalheNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_DetalheLOTESEPARACAO: TIntegerField
      FieldName = 'LOTESEPARACAO'
    end
    object C_DetalheSAIDA: TIntegerField
      FieldName = 'SAIDA'
    end
    object C_DetalheLOTESEPARACAOSAIDA: TIntegerField
      FieldName = 'LOTESEPARACAOSAIDA'
      Required = True
    end
    object C_DetalheTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
  end
  object C_DetalheDs: TDataSource
    Tag = 100
    DataSet = C_Detalhe
    Left = 206
    Top = 216
  end
end
