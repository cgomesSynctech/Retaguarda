inherited DMVeiculos: TDMVeiculos
  Left = 399
  Top = 147
  Width = 299
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Veiculos')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Veiculos '
      'where'
      '  VEICULO = :VEICULO')
    ModifySQL.Strings = (
      'update Veiculos'
      'set'
      '  PLACA = :PLACA,'
      '  CHASSI = :CHASSI,'
      '  DESCRICAO = :DESCRICAO,'
      '  CAPACIDADE = :CAPACIDADE'
      'where'
      '  VEICULO = :OLD_VEICULO')
    InsertSQL.Strings = (
      'insert into Veiculos'
      '  ( PLACA, CHASSI, DESCRICAO, CAPACIDADE)'
      'values'
      '  (:PLACA, :CHASSI, :DESCRICAO, :CAPACIDADE)')
    DeleteSQL.Strings = (
      'delete from Veiculos'
      'where'
      '  VEICULO = :OLD_VEICULO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'VEICULOS'
    Tabela_Nome = 'VEICULOS'
    Tabela_Chave = 'VEICULO'
  end
  inherited C_Tabela: TClientDataSet
    AfterOpen = nil
    AfterPost = nil
    object C_TabelaVEICULO: TIntegerField
      FieldName = 'VEICULO'
      Origin = 'VEICULOS.VEICULO'
      Required = True
    end
    object C_TabelaPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'VEICULOS.PLACA'
      Size = 8
    end
    object C_TabelaCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'VEICULOS.CHASSI'
      Size = 30
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'VEICULOS.DESCRICAO'
    end
    object C_TabelaCAPACIDADE: TBCDField
      FieldName = 'CAPACIDADE'
      Origin = 'VEICULOS.CAPACIDADE'
      Precision = 18
      Size = 2
    end
  end
end
