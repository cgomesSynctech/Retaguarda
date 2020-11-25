inherited DMLembrete: TDMLembrete
  Left = 120
  Height = 419
  Width = 558
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from LEMBRETES'
      '')
    Left = 34
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  LEMBRETE,'
      '  DATAINICIAL,'
      '  DATAFINAL,'
      '  OBS,'
      '  SITUACAO,'
      '  DESATIVADO,'
      '  TIPO,'
      '  DOMINGO,'
      '  SEGUNDA,'
      '  TERCA,'
      '  QUARTA,'
      '  QUINTA,'
      '  SEXTA,'
      '  SABADO,'
      '  MEMORIZACAO'
      'from LEMBRETES '
      'where'
      '  LEMBRETE = :LEMBRETE')
    ModifySQL.Strings = (
      'update LEMBRETES'
      'set'
      '  DATAINICIAL = :DATAINICIAL,'
      '  DATAFINAL = :DATAFINAL,'
      '  OBS = :OBS,'
      '  SITUACAO = :SITUACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  TIPO = :TIPO,'
      '  DOMINGO = :DOMINGO,'
      '  SEGUNDA = :SEGUNDA,'
      '  TERCA = :TERCA,'
      '  QUARTA = :QUARTA,'
      '  QUINTA = :QUINTA,'
      '  SEXTA = :SEXTA,'
      '  SABADO = :SABADO,'
      '  MEMORIZACAO = :MEMORIZACAO,'
      '  USUARIO = :USUARIO'
      'where'
      '  LEMBRETE = :OLD_LEMBRETE')
    InsertSQL.Strings = (
      'insert into LEMBRETES'
      
        '  (LEMBRETE, DATAINICIAL, DATAFINAL, OBS, SITUACAO, DESATIVADO, ' +
        'TIPO, '
      'DOMINGO, '
      '   SEGUNDA, TERCA, QUARTA, QUINTA, SEXTA, SABADO, MEMORIZACAO, '
      'USUARIO)'
      'values'
      
        '  (:LEMBRETE, :DATAINICIAL, :DATAFINAL, :OBS, :SITUACAO, :DESATI' +
        'VADO, '
      ':TIPO, '
      
        '   :DOMINGO, :SEGUNDA, :TERCA, :QUARTA, :QUINTA, :SEXTA, :SABADO' +
        ', '
      ':MEMORIZACAO, :USUARIO)')
    DeleteSQL.Strings = (
      'delete from LEMBRETES'
      'where'
      '  LEMBRETE = :OLD_LEMBRETE')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    KeyForIDs = 'LEMBRETES'
    Tabela_Nome = 'LEMBRETES'
    Tabela_Chave = 'LEMBRETE'
    ChavesDetalhes.Strings = (
      'Q_lcliente')
    GenerateIDFor.Strings = (
      'C_lcliente=LEMBRETECLIENTE')
  end
  inherited C_Tabela: TClientDataSet
    Left = 35
    object C_TabelaLEMBRETE: TIntegerField
      FieldName = 'LEMBRETE'
      Required = True
    end
    object C_TabelaDATAINICIAL: TDateField
      FieldName = 'DATAINICIAL'
      OnChange = C_TabelaDATAINICIALChange
    end
    object C_TabelaDATAFINAL: TDateField
      FieldName = 'DATAFINAL'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_TabelaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaTIPO: TIntegerField
      FieldName = 'TIPO'
    end
    object C_TabelaDOMINGO: TStringField
      FieldName = 'DOMINGO'
      Size = 1
    end
    object C_TabelaSEGUNDA: TStringField
      FieldName = 'SEGUNDA'
      Size = 1
    end
    object C_TabelaTERCA: TStringField
      FieldName = 'TERCA'
      Size = 1
    end
    object C_TabelaQUARTA: TStringField
      FieldName = 'QUARTA'
      Size = 1
    end
    object C_TabelaQUINTA: TStringField
      FieldName = 'QUINTA'
      Size = 1
    end
    object C_TabelaSEXTA: TStringField
      FieldName = 'SEXTA'
      Size = 1
    end
    object C_TabelaSABADO: TStringField
      FieldName = 'SABADO'
      Size = 1
    end
    object C_TabelaQ_lcliente: TDataSetField
      FieldName = 'Q_lcliente'
    end
    object C_TabelaMEMORIZACAO: TIntegerField
      FieldName = 'MEMORIZACAO'
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
      Size = 30
      Lookup = True
    end
  end
  object Q_lcliente: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'SELECT lc.*, f.nome, f.tipofavorecido'
      'FROM lembretesclientes lc JOIN favorecidos f ON'
      ' lc.cliente = f.favorecido'
      'where '
      '  lc.lembrete = :LEMBRETE')
    UpdateObject = U_lcliente
    Left = 256
    Top = 18
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LEMBRETE'
        ParamType = ptUnknown
        Size = 4
      end>
    object Q_lclienteLEMBRETECLIENTE: TIntegerField
      FieldName = 'LEMBRETECLIENTE'
      Required = True
    end
    object Q_lclienteLEMBRETE: TIntegerField
      FieldName = 'LEMBRETE'
      Required = True
    end
    object Q_lclienteCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object Q_lclienteNOME: TIBStringField
      FieldName = 'NOME'
      Size = 50
    end
    object Q_lclienteTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
  end
  object C_lcliente: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_lcliente
    Params = <>
    OnNewRecord = C_lclienteNewRecord
    Left = 258
    Top = 64
    object C_lclienteLEMBRETECLIENTE: TIntegerField
      FieldName = 'LEMBRETECLIENTE'
      Required = True
    end
    object C_lclienteLEMBRETE: TIntegerField
      FieldName = 'LEMBRETE'
      Required = True
    end
    object C_lclienteCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_lclienteNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_lclienteTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_lclientelkTipoFav: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoFav'
      LookupDataSet = DMProjeto.C_TipoFav
      LookupKeyFields = 'TIPOFAVORECIDO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOFAVORECIDO'
      Lookup = True
    end
  end
  object Q_lclienteProvider: TDataSetProvider
    DataSet = Q_lcliente
    Constraints = True
    Left = 330
    Top = 66
  end
  object C_lclienteDS: TDataSource
    DataSet = C_lcliente
    Left = 322
    Top = 12
  end
  object U_lcliente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from lembretesclientes '
      'where'
      '  LEMBRETECLIENTE = :LEMBRETECLIENTE')
    ModifySQL.Strings = (
      'update lembretesclientes'
      'set'
      '  LEMBRETECLIENTE = :LEMBRETECLIENTE,'
      '  LEMBRETE = :LEMBRETE,'
      '  CLIENTE = :CLIENTE'
      'where'
      '  LEMBRETECLIENTE = :OLD_LEMBRETECLIENTE')
    InsertSQL.Strings = (
      'insert into lembretesclientes'
      '  (LEMBRETECLIENTE, LEMBRETE, CLIENTE)'
      'values'
      '  (:LEMBRETECLIENTE, :LEMBRETE, :CLIENTE)')
    DeleteSQL.Strings = (
      'delete from lembretesclientes'
      'where'
      '  LEMBRETECLIENTE = :OLD_LEMBRETECLIENTE')
    Left = 334
    Top = 114
  end
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from usuarios where desativado = '#39'N'#39
      'order by loginname'
      '')
    Left = 132
    Top = 118
  end
  object C_Usuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_UsuariosProvider'
    Left = 132
    Top = 163
    object C_UsuariosUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'USUARIOS.USUARIO'
      Required = True
    end
    object C_UsuariosLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Origin = 'USUARIOS.LOGINNAME'
      Required = True
      Size = 30
    end
  end
  object Q_UsuariosProvider: TDataSetProvider
    DataSet = Q_Usuarios
    Constraints = True
    Left = 131
    Top = 210
  end
end
