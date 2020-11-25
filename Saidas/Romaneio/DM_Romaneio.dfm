inherited DMRomaneio: TDMRomaneio
  Left = 247
  Top = 169
  Height = 372
  Width = 534
  inherited OpenDialog: TOpenDialog
    Left = 158
    Top = 269
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from ROMANEIOS')
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
      '  ROMANEIO,'
      '  VEICULO,'
      '  FUNCIONARIO,'
      '  DATA,'
      '  OBSERVACAO,'
      '  SITUACAO,'
      '  TOTALPESO,'
      '  PERCENTUAL'
      'from ROMANEIOS '
      'where'
      '  ROMANEIO = :ROMANEIO')
    ModifySQL.Strings = (
      'update ROMANEIOS'
      'set'
      '  VEICULO = :VEICULO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  DATA = :DATA,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  SITUACAO = :SITUACAO,'
      '  TOTALPESO = :TOTALPESO,'
      '  PERCENTUAL = :PERCENTUAL'
      'where'
      '  ROMANEIO = :OLD_ROMANEIO')
    InsertSQL.Strings = (
      'insert into ROMANEIOS'
      '  (ROMANEIO, VEICULO, FUNCIONARIO, DATA, OBSERVACAO, SITUACAO, '
      'TOTALPESO,PERCENTUAL)'
      'values'
      
        '  (:ROMANEIO, :VEICULO, :FUNCIONARIO, :DATA, :OBSERVACAO, :SITUA' +
        'CAO, '
      ':TOTALPESO,:PERCENTUAL)')
    DeleteSQL.Strings = (
      'delete from ROMANEIOS'
      'where'
      '  ROMANEIO = :OLD_ROMANEIO')
    Left = 30
    Top = 59
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'ROMANEIO'
    Tabela_Nome = 'ROMANEIOS'
    Tabela_Chave = 'ROMANEIO'
    Tabela_ChaveAlias = 'ROMANEIO'
  end
  inherited DlgMsg: TDlgMsg
    Top = 268
  end
  inherited P_Tabela: TDataSetProvider
    Left = 28
    Top = 113
  end
  inherited C_Tabela: TClientDataSet
    Left = 29
    Top = 168
    object C_TabelaROMANEIO: TIntegerField
      FieldName = 'ROMANEIO'
      Origin = 'ROMANEIOS.ROMANEIO'
      Required = True
    end
    object C_TabelaVEICULO: TIntegerField
      FieldName = 'VEICULO'
      Origin = 'ROMANEIOS.VEICULO'
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
      Origin = 'ROMANEIOS.FUNCIONARIO'
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'ROMANEIOS.DATA'
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'ROMANEIOS.OBSERVACAO'
      Size = 255
    end
    object C_TabelaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Origin = 'ROMANEIOS.SITUACAO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaTOTALPESO: TBCDField
      FieldName = 'TOTALPESO'
      Origin = 'ROMANEIOS.TOTALPESO'
      Precision = 18
      Size = 2
    end
    object C_TabelacmbUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'cmbUsuario'
      LookupDataSet = C_Usuarios
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'FUNCIONARIO'
      Size = 40
      Lookup = True
    end
    object C_TabelacmbVeiculos: TStringField
      FieldKind = fkLookup
      FieldName = 'cmbVeiculos'
      LookupDataSet = C_Veiculos
      LookupKeyFields = 'VEICULO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'VEICULO'
      Size = 40
      Lookup = True
    end
    object C_TabelaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'ROMANEIOS.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelaQ_RomaneiosSaidas: TDataSetField
      FieldName = 'Q_RomaneiosSaidas'
    end
  end
  inherited C_TabelaDS: TDataSource
    Top = 218
  end
  inherited ResultSet: TClientDataSet
    Left = 94
    Top = 84
  end
  object C_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_UsuariosProvider'
    Left = 348
    Top = 109
    object C_UsuariosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_UsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object Q_UsuariosProvider: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Left = 349
    Top = 60
  end
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select favorecido, nome from favorecidos where tipofavorecido = ' +
        '3'
      'and desativado = ''N'' '
      'order by nome')
    Left = 346
    Top = 6
  end
  object Q_RomaneiosSaidas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'SELECT r.*,s.numero as NumeroDoc,'
      '              s.data as DataSaida,'
      '              f.nome as NomeFornecedor,'
      '              a.DESCRICAO'
      'FROM ROMANEIOSAIDAS r'
      '   Inner join Saidas s on r.saida = s.saida'
      '   Inner join favorecidos f on f.favorecido = s.favorecido'
      '   Inner Join ALMOXARIFADOS a on a.ALMOXARIFADO = s.ALMOXPADRAO'
      'WHERE R.ROMANEIO = :ROMANEIO')
    UpdateObject = U_RomaneiosSaidas
    Left = 202
    Top = 10
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ROMANEIO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_RomaneiosSaidas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_RomaneiosSaidas
    Params = <>
    OnNewRecord = C_RomaneiosSaidasNewRecord
    Left = 203
    Top = 161
    object C_RomaneiosSaidasROMANEIOSAIDA: TIntegerField
      FieldName = 'ROMANEIOSAIDA'
      Origin = 'ROMANEIOSAIDAS.ROMANEIOSAIDA'
      Required = True
    end
    object C_RomaneiosSaidasROMANEIO: TIntegerField
      FieldName = 'ROMANEIO'
      Origin = 'ROMANEIOSAIDAS.ROMANEIO'
    end
    object C_RomaneiosSaidasSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Origin = 'ROMANEIOSAIDAS.SAIDA'
    end
    object C_RomaneiosSaidasNUMERODOC: TStringField
      FieldName = 'NUMERODOC'
      Origin = 'SAIDAS.NUMERODOC'
      Size = 12
    end
    object C_RomaneiosSaidasDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'SAIDAS.DATASAIDA'
    end
    object C_RomaneiosSaidasNOMEFORNECEDOR: TStringField
      FieldName = 'NOMEFORNECEDOR'
      Origin = 'FAVORECIDOS.NOMEFORNECEDOR'
      Size = 50
    end
    object C_RomaneiosSaidasENTREGUE: TStringField
      FieldName = 'ENTREGUE'
      Origin = 'ROMANEIOSAIDAS.ENTREGUE'
      Size = 1
    end
    object C_RomaneiosSaidasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ALMOXARIFADOS.DESCRICAO'
      Size = 30
    end
  end
  object C_RomaneiosSaidasDS: TDataSource
    DataSet = C_RomaneiosSaidas
    Left = 202
    Top = 208
  end
  object U_RomaneiosSaidas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ROMANEIOSAIDAS '
      'where'
      '  ROMANEIOSAIDA = :ROMANEIOSAIDA ')
    ModifySQL.Strings = (
      'update ROMANEIOSAIDAS'
      'set'
      '  ROMANEIO = :ROMANEIO,'
      '  SAIDA = :SAIDA,'
      '  ENTREGUE = :ENTREGUE'
      'where'
      '  ROMANEIOSAIDA = :OLD_ROMANEIOSAIDA ')
    InsertSQL.Strings = (
      'insert into ROMANEIOSAIDAS'
      '  ( ROMANEIO, SAIDA,ENTREGUE)'
      'values'
      '  (:ROMANEIO, :SAIDA,:ENTREGUE)')
    DeleteSQL.Strings = (
      'delete from ROMANEIOSAIDAS'
      'where'
      '  ROMANEIOSAIDA = :OLD_ROMANEIOSAIDA ')
    Left = 203
    Top = 60
  end
  object Q_Veiculos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM VEICULOS')
    Left = 446
    Top = 6
  end
  object Q_VeiculosProvider: TDataSetProvider
    DataSet = Q_Veiculos
    Constraints = True
    Left = 447
    Top = 56
  end
  object C_Veiculos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_VeiculosProvider'
    Left = 452
    Top = 105
    object C_VeiculosVEICULO: TIntegerField
      FieldName = 'VEICULO'
      Origin = 'VEICULOS.VEICULO'
      Required = True
    end
    object C_VeiculosPLACA: TStringField
      FieldName = 'PLACA'
      Origin = 'VEICULOS.PLACA'
      Size = 8
    end
    object C_VeiculosCHASSI: TStringField
      FieldName = 'CHASSI'
      Origin = 'VEICULOS.CHASSI'
      Size = 30
    end
    object C_VeiculosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'VEICULOS.DESCRICAO'
    end
    object C_VeiculosCAPACIDADE: TBCDField
      FieldName = 'CAPACIDADE'
      Origin = 'VEICULOS.CAPACIDADE'
      Precision = 18
      Size = 2
    end
  end
  object C_VeiculosDS: TDataSource
    DataSet = C_Veiculos
    Left = 462
    Top = 154
  end
  object C_UsuariosDs: TDataSource
    DataSet = C_Usuarios
    Left = 348
    Top = 160
  end
  object P_RomaneioSaidas: TDataSetProvider
    DataSet = Q_RomaneiosSaidas
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 202
    Top = 111
  end
end
