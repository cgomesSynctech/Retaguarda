inherited DMBalancoFichas: TDMBalancoFichas
  Left = 57
  Top = 89
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from BalancoFichas')
    Left = 30
    Top = 4
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from BalancoFichas '
      'where'
      '  BALANCOFICHA = :BALANCOFICHA')
    ModifySQL.Strings = (
      'update BalancoFichas'
      'set'
      '  DATA = :DATA,'
      '  USUARIO = :USUARIO,'
      '  STATUS = :STATUS,'
      '  OPENBALANCE = :OPENBALANCE,'
      '  DESCRICAOFICHA = :DESCRICAOFICHA,'
      '  ALMOXARIFADO = :ALMOXARIFADO'
      'where'
      '  BALANCOFICHA = :OLD_BALANCOFICHA')
    InsertSQL.Strings = (
      'insert into BalancoFichas'
      '  (BALANCOFICHA, DATA, USUARIO, STATUS, OPENBALANCE, '
      'DESCRICAOFICHA, ALMOXARIFADO)'
      'values'
      '  (:BALANCOFICHA, :DATA, :USUARIO, :STATUS, :OPENBALANCE, '
      ':DESCRICAOFICHA, :ALMOXARIFADO)')
    DeleteSQL.Strings = (
      'delete from BalancoFichas'
      'where'
      '  BALANCOFICHA = :OLD_BALANCOFICHA')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Exclusao = DMComponentExclusao
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'BalancoFichas'
    Tabela_Nome = 'BalancoFichas'
    Tabela_Chave = 'BalancoFicha'
    GenerateIDFor.Strings = (
      '')
    Left = 38
  end
  inherited C_Tabela: TClientDataSet
    Active = True
    OnCalcFields = C_TabelaCalcFields
    Top = 166
    object C_TabelaBALANCOFICHA: TIntegerField
      FieldName = 'BALANCOFICHA'
      Origin = 'BALANCOFICHAS.BALANCOFICHA'
      Required = True
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'BALANCOFICHAS.DATA'
    end
    object C_TabelaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Origin = 'BALANCOFICHAS.USUARIO'
    end
    object C_TabelaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'BALANCOFICHAS.STATUS'
    end
    object C_TabelacmbUsuario: TStringField
      FieldKind = fkLookup
      FieldName = 'cmbUsuario'
      LookupDataSet = C_Usuarios
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'USUARIO'
      Size = 30
      Lookup = True
    end
    object C_TabelaDescStatus: TStringField
      FieldKind = fkCalculated
      FieldName = 'DescStatus'
      Size = 10
      Calculated = True
    end
    object C_TabelaOPENBALANCE: TStringField
      FieldName = 'OPENBALANCE'
      Origin = 'BALANCOFICHAS.OPENBALANCE'
      Size = 1
    end
    object C_TabelaQ_BalancoFichasItens: TDataSetField
      FieldName = 'Q_BalancoFichasItens'
    end
    object C_TabelaDESCRICAOFICHA: TStringField
      FieldName = 'DESCRICAOFICHA'
      Origin = 'BALANCOFICHAS.DESCRICAOFICHA'
      Size = 30
    end
    object C_TabelaALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'BALANCOFICHAS.ALMOXARIFADO'
    end
    object C_TabelalkAlmox: TStringField
      FieldKind = fkLookup
      FieldName = 'lkAlmox'
      LookupDataSet = C_Almoxarifados
      LookupKeyFields = 'ALMOXARIFADO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ALMOXARIFADO'
      Lookup = True
    end
  end
  object Q_Usuarios: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select favorecido, nome from favorecidos where tipofavorecido = ' +
        '3'
      'and desativado = '#39'N'#39' order by nome')
    Left = 178
    Top = 6
  end
  object C_Usuarios: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_UsuariosProvider'
    Left = 176
    Top = 115
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
    Left = 177
    Top = 58
  end
  object Q_BalancoFichasItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select bi.*, i.codigo, i.descricao, i.unidade, g.descricaogrupo ' +
        'as DescGrupo, f.descricao as DescFabricante, i.referencia, i.cod' +
        'igobarras,'
      '(select bci.quantidade from balancocontagemitens bci'
      
        'where bci.balancofichaitem = bi.balancofichaitem and contagem = ' +
        '1) as Contagem1,'
      '(select bci.quantidade from balancocontagemitens bci'
      
        'where bci.balancofichaitem = bi.balancofichaitem and contagem = ' +
        '2) as Contagem2,'
      '(select bci.quantidade from balancocontagemitens bci'
      
        'where bci.balancofichaitem = bi.balancofichaitem and contagem = ' +
        '3) as Contagem3'
      
        'from (((BalancoFichasItens bi inner join Itens i on bi.item = i.' +
        'item)'
      'left join Grupos g on i.grupo = g.grupo)'
      'left join Fabricantes f on i.fabricante = f.fabricante)'
      'where bi.balancoficha = :BALANCOFICHA')
    UpdateObject = U_BalancoFichasItens
    Left = 290
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'BALANCOFICHA'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_BalancoFichasItens: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = C_TabelaQ_BalancoFichasItens
    Params = <>
    OnNewRecord = C_BalancoFichasItensNewRecord
    Left = 293
    Top = 49
    object C_BalancoFichasItensBALANCOFICHAITEM: TIntegerField
      FieldName = 'BALANCOFICHAITEM'
      Origin = 'BALANCOFICHASITENS.BALANCOFICHAITEM'
    end
    object C_BalancoFichasItensBALANCOFICHA: TIntegerField
      FieldName = 'BALANCOFICHA'
      Origin = 'BALANCOFICHASITENS.BALANCOFICHA'
    end
    object C_BalancoFichasItensITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'BALANCOFICHASITENS.ITEM'
      OnChange = C_BalancoFichasItensITEMChange
    end
    object C_BalancoFichasItensCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_BalancoFichasItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_BalancoFichasItensUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENS.UNIDADE'
      Size = 6
    end
    object C_BalancoFichasItensDESCGRUPO: TStringField
      FieldName = 'DESCGRUPO'
      Origin = 'GRUPOS.DESCGRUPO'
      Size = 30
    end
    object C_BalancoFichasItensDESCFABRICANTE: TStringField
      FieldName = 'DESCFABRICANTE'
      Origin = 'FABRICANTES.DESCFABRICANTE'
      Size = 30
    end
    object C_BalancoFichasItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_BalancoFichasItensCONTAGEM1: TFloatField
      FieldName = 'CONTAGEM1'
    end
    object C_BalancoFichasItensCONTAGEM2: TFloatField
      FieldName = 'CONTAGEM2'
    end
    object C_BalancoFichasItensCONTAGEM3: TFloatField
      FieldName = 'CONTAGEM3'
    end
    object C_BalancoFichasItensCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Origin = 'ITENS.CODIGOBARRAS'
      Size = 14
    end
  end
  object C_BalancoFichasItensDS: TDataSource
    DataSet = C_BalancoFichasItens
    Left = 290
    Top = 98
  end
  object U_BalancoFichasItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from BalancoFichasItens '
      'where'
      '  BALANCOFICHAITEM = :BALANCOFICHAITEM')
    ModifySQL.Strings = (
      'update BalancoFichasItens'
      'set'
      '  ITEM = :ITEM'
      'where'
      '  BALANCOFICHAITEM = :OLD_BALANCOFICHAITEM')
    InsertSQL.Strings = (
      'insert into BalancoFichasItens'
      '  (BALANCOFICHA, ITEM)'
      'values'
      '  (:BALANCOFICHA, :ITEM)')
    DeleteSQL.Strings = (
      'delete from BalancoFichasItens'
      'where'
      '  BALANCOFICHAITEM = :OLD_BALANCOFICHAITEM')
    Left = 287
    Top = 150
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from inventario')
    Left = 177
    Top = 183
  end
  object C_Almoxarifados: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Almoxarifados'
    Left = 422
    Top = 119
    object C_AlmoxarifadosALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'ALMOXARIFADOS.ALMOXARIFADO'
      Required = True
    end
    object C_AlmoxarifadosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ALMOXARIFADOS.DESCRICAO'
      Size = 30
    end
  end
  object P_Almoxarifados: TDataSetProvider
    DataSet = Q_Almoxarifados
    Constraints = True
    Left = 421
    Top = 180
  end
  object Q_Almoxarifados: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from almoxarifados')
    Left = 419
    Top = 65
  end
end
