inherited DMOcorrencias: TDMOcorrencias
  Left = 94
  Top = 123
  Height = 390
  Width = 577
  inherited OpenDialog: TOpenDialog
    Left = 152
    Top = 171
  end
  inherited SaveDialog: TSaveDialog
    Left = 215
    Top = 172
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select O.*, F.NOME, F.TIPOFAVORECIDO, TF.descricao'
      'from OCORRENCIAS O inner join FAVORECIDOS F'
      'ON O.FAVORECIDO = F.FAVORECIDO'
      'inner JOIN tiposfavorecido TF'
      'ON F.tipofavorecido = TF.TIPOFAVORECIDO'
      '')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  OCORRENCIA,'
      '  FAVORECIDO,'
      '  DATA,'
      '  OBS,'
      '  DESATIVADO,'
      '  HORA,'
      '  USUARIO'
      'from OCORRENCIAS '
      'where'
      '  OCORRENCIA = :OCORRENCIA')
    ModifySQL.Strings = (
      'update OCORRENCIAS'
      'set'
      '  FAVORECIDO = :FAVORECIDO,'
      '  DATA = :DATA,'
      '  OBS = :OBS,'
      '  DESATIVADO = :DESATIVADO,'
      '  HORA = :HORA,'
      '  USUARIO = :USUARIO'
      'where'
      '  OCORRENCIA = :OLD_OCORRENCIA')
    InsertSQL.Strings = (
      'insert into OCORRENCIAS'
      '  (OCORRENCIA, FAVORECIDO, DATA, OBS, DESATIVADO, HORA, USUARIO)'
      'values'
      
        '  (:OCORRENCIA, :FAVORECIDO, :DATA, :OBS, :DESATIVADO, :HORA, :U' +
        'SUARIO)')
    DeleteSQL.Strings = (
      'delete from OCORRENCIAS'
      'where'
      '  OCORRENCIA = :OLD_OCORRENCIA')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'OCORRENCIAS'
    Tabela_Nome = 'OCORRENCIAS'
    Tabela_Chave = 'OCORRENCIA'
    Left = 28
    Top = 170
  end
  inherited DlgMsg: TDlgMsg
    Left = 94
    Top = 170
  end
  inherited C_Tabela: TClientDataSet
    Left = 171
    Top = 3
    object C_TabelaOCORRENCIA: TIntegerField
      FieldName = 'OCORRENCIA'
      Required = True
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
    end
    object C_TabelaHORA: TStringField
      FieldName = 'HORA'
      Size = 4
    end
    object C_TabelaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_TabelalkUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUsuario'
      LookupDataSet = C_Usuarios
      LookupKeyFields = 'USUARIO'
      LookupResultField = 'LOGINNAME'
      KeyFields = 'USUARIO'
      Lookup = True
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 170
    Top = 50
  end
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select usuario, loginname from usuarios u'
      'where desativado <> '#39'S'#39)
    Left = 264
  end
  object DataSource1: TDataSource
    Left = 408
    Top = 32
  end
  object C_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Usuarios'
    Left = 264
    Top = 104
    object C_UsuariosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object C_UsuariosLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Required = True
      Size = 30
    end
  end
  object P_Usuarios: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Left = 264
    Top = 48
  end
end
