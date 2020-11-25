inherited DMAlerta: TDMAlerta
  Left = 64
  Top = 123
  Height = 426
  Width = 556
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from ALERTAS')
    Left = 30
    Top = 5
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ALERTA,'
      '  APLICAR,'
      '  TIPO,'
      '  CONDICAO,'
      '  VALOR'
      'from ALERTAS '
      'where'
      '  ALERTA = :ALERTA')
    ModifySQL.Strings = (
      'update ALERTAS'
      'set'
      '  APLICAR = :APLICAR,'
      '  TIPO = :TIPO,'
      '  CONDICAO = :CONDICAO,'
      '  VALOR = :VALOR,'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  ALERTA = :OLD_ALERTA')
    InsertSQL.Strings = (
      'insert into ALERTAS'
      '  (ALERTA, APLICAR, TIPO, CONDICAO, VALOR, DESCRICAO)'
      'values'
      '  (:ALERTA, :APLICAR, :TIPO, :CONDICAO, :VALOR, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from ALERTAS'
      'where'
      '  ALERTA = :OLD_ALERTA')
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    KeyForIDs = 'ALERTAS'
    Tabela_Nome = 'ALERTAS'
    Tabela_Chave = 'ALERTA'
    ChavesDetalhes.Strings = (
      'Q_Cliente')
    GenerateIDFor.Strings = (
      'C_cliente=ALERTACLIENTE')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaQ_Cliente: TDataSetField
      FieldName = 'Q_Cliente'
    end
    object C_TabelaALERTA: TIntegerField
      FieldName = 'ALERTA'
      Required = True
    end
    object C_TabelaAPLICAR: TStringField
      FieldName = 'APLICAR'
      Size = 1
    end
    object C_TabelaTIPO: TIntegerField
      Alignment = taLeftJustify
      FieldName = 'TIPO'
    end
    object C_TabelaCONDICAO: TStringField
      FieldName = 'CONDICAO'
      Size = 2
    end
    object C_TabelaVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object C_TabelalkTipo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipo'
      LookupDataSet = C_TiposAlertas
      LookupKeyFields = 'TIPOALERTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPO'
      Size = 80
      Lookup = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
  end
  object Q_Cliente: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'SELECT ac.*, f.nome, f.tipofavorecido'
      'FROM ALERTASCLIENTES ac JOIN favorecidos f ON'
      ' ac.cliente = f.favorecido'
      'where '
      '  ac.alerta = :ALERTA')
    UpdateObject = U_Cliente
    Left = 224
    Top = 14
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ALERTA'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Cliente: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ALERTACLIENTE,'
      '  ALERTA,'
      '  CLIENTE'
      'from ALERTASCLIENTES '
      'where'
      '  ALERTACLIENTE = :ALERTACLIENTE')
    ModifySQL.Strings = (
      'update ALERTASCLIENTES'
      'set'
      '  ALERTACLIENTE = :ALERTACLIENTE,'
      '  ALERTA = :ALERTA,'
      '  CLIENTE = :CLIENTE'
      'where'
      '  ALERTACLIENTE = :OLD_ALERTACLIENTE')
    InsertSQL.Strings = (
      'insert into ALERTASCLIENTES'
      '  (ALERTACLIENTE, ALERTA, CLIENTE)'
      'values'
      '  (:ALERTACLIENTE, :ALERTA, :CLIENTE)')
    DeleteSQL.Strings = (
      'delete from ALERTASCLIENTES'
      'where'
      '  ALERTACLIENTE = :OLD_ALERTACLIENTE')
    Left = 248
    Top = 72
  end
  object C_Cliente: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Cliente
    Params = <>
    OnNewRecord = C_ClienteNewRecord
    Left = 368
    Top = 8
    object C_ClienteALERTACLIENTE: TIntegerField
      FieldName = 'ALERTACLIENTE'
      Required = True
    end
    object C_ClienteALERTA: TIntegerField
      FieldName = 'ALERTA'
      Required = True
    end
    object C_ClienteCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_ClienteNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ClienteTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_ClientelkTipoFav: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoFav'
      LookupDataSet = DMProjeto.C_TipoFav
      LookupKeyFields = 'TIPOFAVORECIDO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOFAVORECIDO'
      Lookup = True
    end
  end
  object C_ClienteDS: TDataSource
    DataSet = C_Cliente
    Left = 330
    Top = 64
  end
  object Q_TiposAlertas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tiposalertas'
      'order by descricao'
      '')
    Left = 132
    Top = 118
  end
  object C_TiposAlertas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposAlertas'
    Left = 132
    Top = 163
    object C_TiposAlertasTIPOALERTA: TIntegerField
      FieldName = 'TIPOALERTA'
      Required = True
    end
    object C_TiposAlertasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 80
    end
    object C_TiposAlertasCOMANDOSQL: TStringField
      FieldName = 'COMANDOSQL'
      Size = 255
    end
    object C_TiposAlertasTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object C_TiposAlertasCONDICAO: TStringField
      FieldName = 'CONDICAO'
      Size = 1
    end
  end
  object P_TiposAlertas: TDataSetProvider
    DataSet = Q_TiposAlertas
    Constraints = True
    Left = 131
    Top = 210
  end
end
