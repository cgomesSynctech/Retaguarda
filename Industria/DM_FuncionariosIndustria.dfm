inherited DMFuncionariosIndustria: TDMFuncionariosIndustria
  Left = 647
  Top = 163
  Height = 422
  Width = 507
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from FUNCIONARIOS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FUNCIONARIO,'
      '  CODIGO,'
      '  NOME,'
      '  CARGO,'
      '  CUSTOHORA'
      'from FUNCIONARIOS '
      'where'
      '  FUNCIONARIO = :FUNCIONARIO')
    ModifySQL.Strings = (
      'update FUNCIONARIOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  NOME = :NOME,'
      '  CARGO = :CARGO,'
      '  CUSTOHORA = :CUSTOHORA'
      'where'
      '  FUNCIONARIO = :OLD_FUNCIONARIO')
    InsertSQL.Strings = (
      'insert into FUNCIONARIOS'
      '  (FUNCIONARIO, CODIGO, NOME, CARGO, CUSTOHORA)'
      'values'
      '  (:FUNCIONARIO, :CODIGO, :NOME, :CARGO, :CUSTOHORA)')
    DeleteSQL.Strings = (
      'delete from FUNCIONARIOS'
      'where'
      '  FUNCIONARIO = :OLD_FUNCIONARIO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'FUNCIONARIOS'
    Tabela_Nome = 'FUNCIONARIOS'
    Tabela_Chave = 'FUNCIONARIO'
  end
  inherited C_Tabela: TClientDataSet
    Active = True
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'FUNCIONARIOS.FUNCIONARIO'
      Required = True
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FUNCIONARIOS.NOME'
      Size = 250
    end
    object TIntegerField
      FieldName = 'CARGO'
      Origin = 'FUNCIONARIOS.CARGO'
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FUNCIONARIOS.CODIGO'
      Required = True
      Size = 6
    end
    object C_TabelalkCargo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCargo'
      LookupDataSet = C_Cargos
      LookupKeyFields = 'CARGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CARGO'
      Size = 30
      Lookup = True
    end
    object C_TabelaCUSTOHORA: TBCDField
      FieldName = 'CUSTOHORA'
      Origin = 'FUNCIONARIOS.CUSTOHORA'
      Precision = 18
      Size = 2
    end
    object C_TabelaQ_MaosdeObraFuncionarios: TDataSetField
      FieldName = 'Q_MaosdeObraFuncionarios'
    end
  end
  object Q_Cargos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select CARGO, DESCRICAO From CARGOS')
    Left = 157
    Top = 5
  end
  object P_Cargos: TDataSetProvider
    DataSet = Q_Cargos
    Constraints = True
    Left = 157
    Top = 56
  end
  object C_Cargos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Cargos'
    Left = 157
    Top = 106
    object C_CargosCARGO: TIntegerField
      FieldName = 'CARGO'
      Origin = 'CARGOS.CARGO'
      Required = True
    end
    object C_CargosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CARGOS.DESCRICAO'
      Size = 30
    end
  end
  object Q_MaodeObra: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT maodeobra, descricao FROM maosdeobra')
    Left = 411
    Top = 14
  end
  object P_MaodeObra: TDataSetProvider
    DataSet = Q_MaodeObra
    Constraints = True
    Left = 410
    Top = 66
  end
  object C_MaodeObra: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MaodeObra'
    Left = 409
    Top = 123
    object C_MaodeObraMAODEOBRA: TIntegerField
      FieldName = 'MAODEOBRA'
      Origin = 'MAOSDEOBRA.MAODEOBRA'
      Required = True
    end
    object C_MaodeObraDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MAOSDEOBRA.DESCRICAO'
      Size = 100
    end
  end
  object C_MaodeObraDS: TDataSource
    DataSet = C_MaodeObra
    Left = 409
    Top = 178
  end
  object Q_MaosdeObraFuncionarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select * from maosdeobrafuncionarios'
      'where funcionario = :funcionario')
    UpdateObject = U_MaosdeObraFuncionarios
    Left = 274
    Top = 18
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FUNCIONARIO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_MaosdeObraFuncionarios: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_MaosdeObraFuncionarios
    Params = <>
    OnNewRecord = C_MaosdeObraFuncionariosNewRecord
    Left = 279
    Top = 73
    object C_MaosdeObraFuncionariosMAODEOBRA: TIntegerField
      FieldName = 'MAODEOBRA'
      Origin = 'MAOSDEOBRAFUNCIONARIOS.MAODEOBRA'
    end
    object C_MaosdeObraFuncionariosFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'MAOSDEOBRAFUNCIONARIOS.FUNCIONARIO'
    end
    object C_MaosdeObraFuncionarioslkMaodeObra: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMaodeObra'
      LookupDataSet = C_MaodeObra
      LookupKeyFields = 'MAODEOBRA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MAODEOBRA'
      Size = 50
      Lookup = True
    end
    object C_MaosdeObraFuncionariosMAODEOBRAFUNCIONARIO: TIntegerField
      FieldName = 'MAODEOBRAFUNCIONARIO'
      Origin = 'MAOSDEOBRAFUNCIONARIOS.MAODEOBRAFUNCIONARIO'
      Required = True
    end
  end
  object C_MaosdeObraFuncionariosDS: TDataSource
    DataSet = C_MaosdeObraFuncionarios
    Left = 278
    Top = 120
  end
  object U_MaosdeObraFuncionarios: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from maosdeobrafuncionarios '
      'where'
      '  MAODEOBRAFUNCIONARIO = :MAODEOBRAFUNCIONARIO')
    ModifySQL.Strings = (
      'update maosdeobrafuncionarios'
      'set'
      '  MAODEOBRA = :MAODEOBRA,'
      '  FUNCIONARIO = :FUNCIONARIO'
      'where'
      '  MAODEOBRAFUNCIONARIO = :OLD_MAODEOBRAFUNCIONARIO')
    InsertSQL.Strings = (
      'insert into maosdeobrafuncionarios'
      '  (MAODEOBRAFUNCIONARIO, MAODEOBRA, FUNCIONARIO)'
      'values'
      '  (:MAODEOBRAFUNCIONARIO, :MAODEOBRA, :FUNCIONARIO)')
    DeleteSQL.Strings = (
      'delete from maosdeobrafuncionarios'
      'where'
      '  MAODEOBRAFUNCIONARIO = :OLD_MAODEOBRAFUNCIONARIO')
    Left = 280
    Top = 179
  end
end
