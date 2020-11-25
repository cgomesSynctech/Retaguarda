inherited DMClassesPrecos: TDMClassesPrecos
  Left = 125
  Top = 92
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from CLASSESPRECOS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CLASSEPRECO,'
      '  DESCRICAO'
      'from CLASSESPRECOS '
      'where'
      '  CLASSEPRECO = :CLASSEPRECO')
    ModifySQL.Strings = (
      'update CLASSESPRECOS'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  CLASSEPRECO = :OLD_CLASSEPRECO')
    InsertSQL.Strings = (
      'insert into CLASSESPRECOS'
      '  (CLASSEPRECO, DESCRICAO)'
      'values'
      '  (:CLASSEPRECO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from CLASSESPRECOS'
      'where'
      '  CLASSEPRECO = :OLD_CLASSEPRECO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'CLASSESPRECOS'
    Tabela_Nome = 'CLASSESPRECOS'
    Tabela_Chave = 'CLASSEPRECO'
    ChavesDetalhes.Strings = (
      'C_ClassesPrecosDet=ClassePrecoDet')
    Top = 272
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaCLASSEPRECO: TIntegerField
      FieldName = 'CLASSEPRECO'
      Origin = 'CLASSESPRECOS.CLASSEPRECO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CLASSESPRECOS.DESCRICAO'
      Size = 50
    end
    object C_TabelaQ_ClassesPrecosDet: TDataSetField
      FieldName = 'Q_ClassesPrecosDet'
    end
  end
  inherited ResultSet: TClientDataSet
    Top = 54
  end
  object Q_ClassesPrecosDet: TIBQuery
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
      'Select * from CLASSESPRECOSDET'
      'WHERE CLASSEPRECO =  :CLASSEPRECO')
    UpdateObject = U_ClassesPrecosDet
    Left = 166
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = 'CLASSEPRECO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ClassesPrecosDet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  CLASSEPRECODET,'
      '  CLASSEPRECO,'
      '  UNIDADE,'
      '  PERCENTUAL'
      'from CLASSESPRECOSDET '
      'where'
      '  CLASSEPRECODET = :CLASSEPRECODET')
    ModifySQL.Strings = (
      'update CLASSESPRECOSDET'
      'set'
      '  CLASSEPRECO = :CLASSEPRECO,'
      '  UNIDADE = :UNIDADE,'
      '  PERCENTUAL = :PERCENTUAL'
      'where'
      '  CLASSEPRECODET = :OLD_CLASSEPRECODET')
    InsertSQL.Strings = (
      'insert into CLASSESPRECOSDET'
      '  (CLASSEPRECODET, CLASSEPRECO, UNIDADE, PERCENTUAL)'
      'values'
      '  (:CLASSEPRECODET, :CLASSEPRECO, :UNIDADE, :PERCENTUAL)')
    DeleteSQL.Strings = (
      'delete from CLASSESPRECOSDET'
      'where'
      '  CLASSEPRECODET = :OLD_CLASSEPRECODET')
    Left = 168
    Top = 51
  end
  object P_ClassesPrecosDet: TDataSetProvider
    DataSet = Q_ClassesPrecosDet
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 168
    Top = 99
  end
  object C_ClassesPrecosDet: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_ClassesPrecosDet
    Params = <>
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_ClassesPrecosDetNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 171
    Top = 148
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ClassesPrecosDetCLASSEPRECODET: TIntegerField
      FieldName = 'CLASSEPRECODET'
      Origin = 'CLASSESPRECOSDET.CLASSEPRECODET'
      Required = True
    end
    object C_ClassesPrecosDetCLASSEPRECO: TIntegerField
      FieldName = 'CLASSEPRECO'
      Origin = 'CLASSESPRECOSDET.CLASSEPRECO'
    end
    object C_ClassesPrecosDetUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'CLASSESPRECOSDET.UNIDADE'
      Size = 6
    end
    object C_ClassesPrecosDetPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'CLASSESPRECOSDET.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_ClassesPrecosDetlkUNidades: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUNidades'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
  end
  object C_ClassesPrecosDetdS: TDataSource
    Tag = 100
    DataSet = C_ClassesPrecosDet
    Left = 168
    Top = 196
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from UNIDADES')
    Left = 270
    Top = 7
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 270
    Top = 57
  end
  object C_Unidades: TClientDataSet
    Tag = 100
    Active = False
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 273
    Top = 104
    object IntegerField2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
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
  end
  object C_UnidadesDs: TDataSource
    Tag = 100
    DataSet = C_Unidades
    Left = 274
    Top = 152
  end
end
