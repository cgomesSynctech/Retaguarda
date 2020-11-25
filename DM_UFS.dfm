inherited DMUFS: TDMUFS
  Left = 154
  Top = 111
  Height = 322
  Width = 452
  inherited OpenDialog: TOpenDialog
    Left = 285
    Top = 167
  end
  inherited SaveDialog: TSaveDialog
    Left = 370
    Top = 173
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from UFS')
    Left = 30
    Top = 7
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  UF,'
      '  DESCRICAO,'
      '  ICMS_INTERNO,'
      '  ICMS_EXTERNO,'
      '  ISSLOCAL'
      'from UFS '
      'where'
      '  UF = :UF')
    ModifySQL.Strings = (
      'update UFS'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  ICMS_INTERNO = :ICMS_INTERNO,'
      '  ICMS_EXTERNO = :ICMS_EXTERNO,'
      '  ISSLOCAL = :ISSLOCAL'
      'where'
      '  UF = :OLD_UF')
    InsertSQL.Strings = (
      'insert into UFS'
      '  (UF, DESCRICAO, ICMS_INTERNO, ICMS_EXTERNO, ISSLOCAL)'
      'values'
      '  (:UF, :DESCRICAO, :ICMS_INTERNO, :ICMS_EXTERNO, :ISSLOCAL)')
    DeleteSQL.Strings = (
      'delete from UFS'
      'where'
      '  UF = :OLD_UF')
    Top = 111
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'UFS'
    Tabela_Nome = 'UFS'
    Tabela_Chave = 'UF'
    DeleteValidate.Strings = (
      'Favorecidos=UF'
      'Clientes=UF_AVAL')
    Left = 133
    Top = 164
  end
  inherited DlgMsg: TDlgMsg
    Left = 222
    Top = 171
  end
  inherited P_Tabela: TDataSetProvider
    Left = 27
    Top = 53
  end
  inherited C_Tabela: TClientDataSet
    Left = 32
    object C_TabelaUF: TStringField
      FieldName = 'UF'
      OnValidate = C_TabelaUFValidate
      Size = 2
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaICMS_INTERNO: TBCDField
      FieldName = 'ICMS_INTERNO'
      DisplayFormat = '#0.0#%'
      Precision = 18
      Size = 2
    end
    object C_TabelaICMS_EXTERNO: TBCDField
      FieldName = 'ICMS_EXTERNO'
      DisplayFormat = '#0.0#%'
      Precision = 18
      Size = 2
    end
    object C_TabelaISSLOCAL: TBCDField
      FieldName = 'ISSLOCAL'
      DisplayFormat = '#0.0#%'
      Precision = 18
      Size = 2
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 30
    Top = 224
  end
end
