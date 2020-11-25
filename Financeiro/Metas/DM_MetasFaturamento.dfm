inherited DMMetasFaturamento: TDMMetasFaturamento
  Left = 376
  Top = 221
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from metasfaturamento')
    Top = 1
  end
  inherited Q_MasterDS: TDataSource
    Top = 2
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from metasfaturamento '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update metasfaturamento'
      'set'
      '  DATAINICIAL = :DATAINICIAL,'
      '  DATAFINAL = :DATAFINAL,'
      '  METAPERIODO = :METAPERIODO,'
      '  METADIARIA = :METADIARIA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into metasfaturamento'
      '  (ID, DATAINICIAL, DATAFINAL, METAPERIODO, METADIARIA)'
      'values'
      '  (:ID, :DATAINICIAL, :DATAFINAL, :METAPERIODO, :METADIARIA)')
    DeleteSQL.Strings = (
      'delete from metasfaturamento'
      'where'
      '  ID = :OLD_ID')
    Top = 53
  end
  inherited DMComponent: TDMComponent
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'METASFATURAMENTO'
    Tabela_Nome = 'METASFATURAMENTO'
    Tabela_Chave = 'ID'
    GenerateIDFor.Strings = (
      'C_Detalhe=METADETALHE')
    Left = 34
  end
  inherited DlgMsg: TDlgMsg
    Top = 269
  end
  inherited C_Tabela: TClientDataSet
    Active = False
    Left = 35
    object C_TabelaID: TIntegerField
      FieldName = 'ID'
      Origin = 'METASFATURAMENTO.ID'
      Required = True
    end
    object C_TabelaDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
      Origin = 'METASFATURAMENTO.DATAINICIAL'
    end
    object C_TabelaDATAFINAL: TDateField
      FieldName = 'DATAFINAL'
      Origin = 'METASFATURAMENTO.DATAFINAL'
    end
    object C_TabelaMETAPERIODO: TBCDField
      FieldName = 'METAPERIODO'
      Origin = 'METASFATURAMENTO.METAPERIODO'
      Precision = 18
      Size = 3
    end
    object C_TabelaMETADIARIA: TBCDField
      FieldName = 'METADIARIA'
      Origin = 'METASFATURAMENTO.METADIARIA'
      Precision = 18
      Size = 3
    end
    object C_TabelaQ_Detalhe: TDataSetField
      FieldName = 'Q_Detalhe'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 33
  end
  object Q_Detalhe: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select md.metadetalhe, md.vendedor, md.id, md.metaperiodo,'
      'md.metadiaria, f.nome'
      'from metasdetalhe md, favorecidos f'
      'where md.vendedor = f.favorecido and md.ID = :ID')
    UpdateObject = U_Detalhe
    Left = 224
    Top = 6
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Detalhe: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from metasdetalhe '
      'where'
      '  METADETALHE = :METADETALHE')
    ModifySQL.Strings = (
      'update metasdetalhe'
      'set'
      '  VENDEDOR = :VENDEDOR,'
      '  ID = :ID,'
      '  METAPERIODO = :METAPERIODO,'
      '  METADIARIA = :METADIARIA'
      'where'
      '  METADETALHE = :OLD_METADETALHE')
    InsertSQL.Strings = (
      'insert into metasdetalhe'
      '  (METADETALHE, VENDEDOR, ID, METAPERIODO, METADIARIA)'
      'values'
      '  (:METADETALHE, :VENDEDOR, :ID, :METAPERIODO, :METADIARIA)')
    DeleteSQL.Strings = (
      'delete from metasdetalhe'
      'where'
      '  METADETALHE = :OLD_METADETALHE')
    Left = 225
    Top = 56
  end
  object C_Detalhe: TClientDataSet
    Active = False
    Aggregates = <>
    DataSetField = C_TabelaQ_Detalhe
    Params = <
      item
        DataType = ftUnknown
        ParamType = ptUnknown
      end>
    BeforeCancel = C_DetalheBeforeCancel
    OnNewRecord = C_DetalheNewRecord
    Left = 224
    Top = 111
    object C_DetalheMETADETALHE: TIntegerField
      FieldName = 'METADETALHE'
      Origin = 'METASDETALHE.METADETALHE'
      Required = True
    end
    object C_DetalheVENDEDOR: TIntegerField
      FieldName = 'VENDEDOR'
      Origin = 'METASDETALHE.VENDEDOR'
    end
    object C_DetalheID: TIntegerField
      FieldName = 'ID'
      Origin = 'METASDETALHE.ID'
    end
    object C_DetalheMETAPERIODO: TBCDField
      FieldName = 'METAPERIODO'
      Origin = 'METASDETALHE.METAPERIODO'
      Precision = 18
      Size = 3
    end
    object C_DetalheMETADIARIA: TBCDField
      FieldName = 'METADIARIA'
      Origin = 'METASDETALHE.METADIARIA'
      Precision = 18
      Size = 3
    end
    object C_DetalheNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object C_DetalheDS: TDataSource
    DataSet = C_Detalhe
    Left = 224
    Top = 167
  end
  object Q_GetVendedor: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select favorecido, nome from favorecidos'
      'where tipofavorecido = 3 and isvendedor = '#39'S'#39)
    Left = 311
    Top = 7
  end
end
