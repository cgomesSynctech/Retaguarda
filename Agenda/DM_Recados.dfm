inherited DMRecados: TDMRecados
  Left = 156
  Top = 50
  Height = 435
  Width = 493
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * From RECADOS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  RECADO,'
      '  DATA,'
      '  HORARIO,'
      '  DE,'
      '  PARA,'
      '  DESCRICAO,'
      '  LIDO'
      'from RECADOS '
      'where'
      '  RECADO = :RECADO')
    ModifySQL.Strings = (
      'update RECADOS'
      'set'
      '  DATA = :DATA,'
      '  HORARIO = :HORARIO,'
      '  DE = :DE,'
      '  PARA = :PARA,'
      '  DESCRICAO = :DESCRICAO,'
      '  LIDO = :LIDO'
      'where'
      '  RECADO = :OLD_RECADO')
    InsertSQL.Strings = (
      'insert into RECADOS'
      '  (RECADO, DATA, HORARIO, DE, PARA, DESCRICAO, LIDO)'
      'values'
      '  (:RECADO, :DATA, :HORARIO, :DE, :PARA, :DESCRICAO, :LIDO)')
    DeleteSQL.Strings = (
      'delete from RECADOS'
      'where'
      '  RECADO = :OLD_RECADO')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    KeyForIDs = 'RECADOS'
    Tabela_Nome = 'RECADOS'
    Tabela_Chave = 'RECADO'
  end
  inherited C_Tabela: TClientDataSet
    OnCalcFields = C_TabelaCalcFields
    object C_TabelaRECADO: TIntegerField
      FieldName = 'RECADO'
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaDE: TIntegerField
      FieldName = 'DE'
    end
    object C_TabelaHORARIO: TIntegerField
      FieldName = 'HORARIO'
    end
    object C_TabelaPARA: TIntegerField
      FieldName = 'PARA'
    end
    object C_TabelaDESCRICAO: TStringField
      DisplayLabel = 'Descrição'
      DisplayWidth = 2000
      FieldName = 'DESCRICAO'
      Size = 2000
    end
    object C_TabelaLIDO: TStringField
      DisplayLabel = 'Lido'
      FieldName = 'LIDO'
      Size = 1
    end
    object C_TabelacfDATA_HORA: TStringField
      DisplayLabel = 'Data/Horário'
      FieldKind = fkCalculated
      FieldName = 'cfDATA_HORA'
      Calculated = True
    end
    object C_TabelalkDE: TStringField
      DisplayLabel = 'De'
      FieldKind = fkLookup
      FieldName = 'lkDE'
      LookupDataSet = DMAgenda.C_Usuarios
      LookupKeyFields = 'USUARIO'
      LookupResultField = 'LOGINNAME'
      KeyFields = 'DE'
      Size = 30
      Lookup = True
    end
    object C_TabelalkPARA: TStringField
      DisplayLabel = 'Para'
      FieldKind = fkLookup
      FieldName = 'lkPARA'
      LookupDataSet = DMAgenda.C_Usuarios
      LookupKeyFields = 'USUARIO'
      LookupResultField = 'LOGINNAME'
      KeyFields = 'PARA'
      Size = 30
      Lookup = True
    end
  end
end
