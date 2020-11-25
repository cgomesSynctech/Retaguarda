inherited DMUnidades: TDMUnidades
  Left = 233
  Top = 138
  Height = 359
  Width = 293
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    CachedUpdates = True
    SQL.Strings = (
      'Select unidade, descricao, inteira from UNIDADES')
    Top = 5
  end
  inherited Q_MasterDS: TDataSource
    Top = 7
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  UNIDADE,'
      '  DESCRICAO,'
      '  INTEIRA'
      'from UNIDADES '
      'where'
      '  UNIDADE = :UNIDADE')
    ModifySQL.Strings = (
      'update UNIDADES'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  INTEIRA = :INTEIRA'
      'where'
      '  UNIDADE = :OLD_UNIDADE')
    InsertSQL.Strings = (
      'insert into UNIDADES'
      '  (UNIDADE, DESCRICAO, INTEIRA)'
      'values'
      '  (:UNIDADE, :DESCRICAO, :INTEIRA)')
    DeleteSQL.Strings = (
      'delete from UNIDADES'
      'where'
      '  UNIDADE = :UNIDADE')
    Left = 29
    Top = 50
  end
  inherited DMComponent: TDMComponent
    Exclusao = DMComponentExclusao
    KeyForIDs = 'Unidade'
    Tabela_Nome = 'Unidades'
    Tabela_Chave = 'Unidade'
    DeleteValidate.Strings = (
      'Itens=unidade'
      'Itens=unidadeentrada'
      'Itens=unidadevarejo'
      'SaidasItens=Unidade')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Required = True
      OnValidate = C_TabelaUNIDADEValidate
      Size = 6
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      OnValidate = C_TabelaDESCRICAOValidate
      Size = 30
    end
    object C_TabelaINTEIRA: TStringField
      FieldName = 'INTEIRA'
      Size = 1
    end
  end
end
