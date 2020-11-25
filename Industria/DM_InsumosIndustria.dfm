inherited DMInsumosIndustria: TDMInsumosIndustria
  Left = 459
  Top = 82
  Height = 531
  Width = 839
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from INSUMOS')
    UpdateObject = nil
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  INSUMO,'
      '  CODIGO,'
      '  DESCRICAO,'
      '  UNIDADE,'
      '  QUANTIDADEMINIMAPRODUCAO,'
      '  TIPOINSUMO,'
      '  OBSERVACAO'
      'from INSUMOS '
      'where'
      '  INSUMO = :INSUMO')
    ModifySQL.Strings = (
      'update INSUMOS'
      'set'
      '  CODIGO = :CODIGO,'
      '  DESCRICAO = :DESCRICAO,'
      '  UNIDADE = :UNIDADE,'
      '  QUANTIDADEMINIMAPRODUCAO = :QUANTIDADEMINIMAPRODUCAO,'
      '  TIPOINSUMO = :TIPOINSUMO,'
      '  OBSERVACAO = :OBSERVACAO'
      'where'
      '  INSUMO = :OLD_INSUMO')
    InsertSQL.Strings = (
      'insert into INSUMOS'
      
        '  (INSUMO, CODIGO, DESCRICAO, UNIDADE, QUANTIDADEMINIMAPRODUCAO,' +
        ' '
      'TIPOINSUMO, OBSERVACAO)'
      'values'
      '  (:INSUMO, :CODIGO, :DESCRICAO, :UNIDADE, '
      ':QUANTIDADEMINIMAPRODUCAO, :TIPOINSUMO, '
      '   :OBSERVACAO)')
    DeleteSQL.Strings = (
      'delete from INSUMOS'
      'where'
      '  INSUMO = :OLD_INSUMO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'INSUMOS'
    Tabela_Nome = 'INSUMOS'
    Tabela_Chave = 'INSUMO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaINSUMO: TIntegerField
      FieldName = 'INSUMO'
      Origin = 'INSUMOS.INSUMO'
      Required = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'INSUMOS.CODIGO'
      Required = True
      Size = 6
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'INSUMOS.DESCRICAO'
      Size = 255
    end
    object C_TabelaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'INSUMOS.UNIDADE'
      Size = 6
    end
    object C_TabelaQUANTIDADEMINIMAPRODUCAO: TBCDField
      FieldName = 'QUANTIDADEMINIMAPRODUCAO'
      Origin = 'INSUMOS.QUANTIDADEMINIMAPRODUCAO'
      Precision = 18
      Size = 2
    end
    object C_TabelaTIPOINSUMO: TIntegerField
      FieldName = 'TIPOINSUMO'
      Origin = 'INSUMOS.TIPOINSUMO'
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'INSUMOS.OBSERVACAO'
      Size = 500
    end
    object C_TabelalkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_TabelalkTipoInsumo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoInsumo'
      LookupDataSet = C_TiposInsumos
      LookupKeyFields = 'TIPOINSUMO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOINSUMO'
      Size = 40
      Lookup = True
    end
    object C_TabelaQ_InsumosMaodeObra: TDataSetField
      FieldName = 'Q_InsumosMaodeObra'
    end
    object C_TabelaQ_InsumosTiposMaquinas: TDataSetField
      FieldName = 'Q_InsumosTiposMaquinas'
    end
    object C_TabelaQ_InsumosMateriasPrimas: TDataSetField
      FieldName = 'Q_InsumosMateriasPrimas'
    end
    object C_TabelaQ_ComposicaoInsumos: TDataSetField
      FieldName = 'Q_ComposicaoInsumos'
    end
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select UNIDADE, DESCRICAO From UNIDADES')
    Left = 176
    Top = 6
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 176
    Top = 57
  end
  object C_Unidades: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 176
    Top = 107
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Required = True
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object Q_TiposInsumos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select TIPOINSUMO, DESCRICAO From TIPOSINSUMOS')
    Left = 265
    Top = 7
  end
  object P_TiposInsumos: TDataSetProvider
    DataSet = Q_TiposInsumos
    Constraints = True
    Left = 265
    Top = 58
  end
  object C_TiposInsumos: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposInsumos'
    Left = 265
    Top = 108
    object C_TiposInsumosTIPOINSUMO: TIntegerField
      FieldName = 'TIPOINSUMO'
      Origin = 'TIPOSINSUMOS.TIPOINSUMO'
      Required = True
    end
    object C_TiposInsumosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSINSUMOS.DESCRICAO'
      Size = 255
    end
  end
  object Q_MaodeObra: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT maodeobra, descricao FROM maosdeobra')
    Left = 360
    Top = 5
  end
  object P_MaodeObra: TDataSetProvider
    DataSet = Q_MaodeObra
    Constraints = True
    Left = 359
    Top = 57
  end
  object C_MaodeObra: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MaodeObra'
    Left = 358
    Top = 114
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
  object Q_InsumosMaodeObra: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'SELECT * FROM INSUMOSMAOSDEOBRA'
      'where Insumo = :INSUMO'
      'order by insumomaodeobra')
    UpdateObject = U_InsumosMaodeObra
    Left = 417
    Top = 230
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INSUMO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_InsumosMaodeObra: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_InsumosMaodeObra
    Params = <>
    OnNewRecord = C_InsumosMaodeObraNewRecord
    Left = 422
    Top = 285
    object C_InsumosMaodeObraINSUMO: TIntegerField
      FieldName = 'INSUMO'
      Origin = 'INSUMOSMAOSDEOBRA.INSUMO'
    end
    object C_InsumosMaodeObraMAODEOBRA: TIntegerField
      FieldName = 'MAODEOBRA'
      Origin = 'INSUMOSMAOSDEOBRA.MAODEOBRA'
    end
    object C_InsumosMaodeObraQUANTIDADEFUNCIONARIOS: TIntegerField
      FieldName = 'QUANTIDADEFUNCIONARIOS'
      Origin = 'INSUMOSMAOSDEOBRA.QUANTIDADEFUNCIONARIOS'
    end
    object C_InsumosMaodeObralkMaoObra: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMaoObra'
      LookupDataSet = C_MaodeObra
      LookupKeyFields = 'MAODEOBRA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MAODEOBRA'
      Size = 50
      Lookup = True
    end
    object C_InsumosMaodeObraINSUMOMAODEOBRA: TIntegerField
      FieldName = 'INSUMOMAODEOBRA'
      Origin = 'INSUMOSMAOSDEOBRA.INSUMOMAODEOBRA'
      Required = True
    end
    object C_InsumosMaodeObraHORASSERVICO: TIntegerField
      FieldName = 'HORASSERVICO'
      Origin = 'INSUMOSMAOSDEOBRA.HORASSERVICO'
    end
  end
  object C_InsumosMaodeObraDS: TDataSource
    DataSet = C_InsumosMaodeObra
    Left = 421
    Top = 332
  end
  object U_InsumosMaodeObra: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  INSUMOMAODEOBRA,'
      '  INSUMO,'
      '  MAODEOBRA,'
      '  QUANTIDADEFUNCIONARIOS,'
      '  HORASSERVICO'
      'from INSUMOSMAOSDEOBRA '
      'where'
      '  INSUMOMAODEOBRA = :INSUMOMAODEOBRA')
    ModifySQL.Strings = (
      'update INSUMOSMAOSDEOBRA'
      'set'
      '  INSUMO = :INSUMO,'
      '  MAODEOBRA = :MAODEOBRA,'
      '  QUANTIDADEFUNCIONARIOS = :QUANTIDADEFUNCIONARIOS,'
      '  HORASSERVICO = :HORASSERVICO'
      'where'
      '  INSUMOMAODEOBRA = :OLD_INSUMOMAODEOBRA')
    InsertSQL.Strings = (
      'insert into INSUMOSMAOSDEOBRA'
      '  (INSUMOMAODEOBRA, INSUMO, MAODEOBRA, QUANTIDADEFUNCIONARIOS, '
      'HORASSERVICO)'
      'values'
      '  (:INSUMOMAODEOBRA, :INSUMO, :MAODEOBRA, '
      ':QUANTIDADEFUNCIONARIOS, :HORASSERVICO)')
    DeleteSQL.Strings = (
      'delete from INSUMOSMAOSDEOBRA'
      'where'
      '  INSUMOMAODEOBRA = :OLD_INSUMOMAODEOBRA')
    Left = 422
    Top = 388
  end
  object C_MaodeObraDS: TDataSource
    DataSet = C_MaodeObra
    Left = 356
    Top = 168
  end
  object Q_InsumosTiposMaquinas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'SELECT * FROM insumostiposmaquinas'
      'WHERE insumo = :INSUMO'
      'order by insumotipomaquina')
    Left = 292
    Top = 226
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INSUMO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_InsumosTiposMaquinas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_InsumosTiposMaquinas
    Params = <>
    OnNewRecord = C_InsumosTiposMaquinasNewRecord
    Left = 297
    Top = 281
    object C_InsumosTiposMaquinasINSUMOTIPOMAQUINA: TIntegerField
      FieldName = 'INSUMOTIPOMAQUINA'
      Origin = 'INSUMOSTIPOSMAQUINAS.INSUMOTIPOMAQUINA'
      Required = True
    end
    object C_InsumosTiposMaquinasINSUMO: TIntegerField
      FieldName = 'INSUMO'
      Origin = 'INSUMOSTIPOSMAQUINAS.INSUMO'
    end
    object C_InsumosTiposMaquinasTIPOMAQUINA: TIntegerField
      FieldName = 'TIPOMAQUINA'
      Origin = 'INSUMOSTIPOSMAQUINAS.TIPOMAQUINA'
    end
    object C_InsumosTiposMaquinasQUANTIDADE: TIntegerField
      FieldName = 'QUANTIDADE'
      Origin = 'INSUMOSTIPOSMAQUINAS.QUANTIDADE'
    end
    object C_InsumosTiposMaquinaslkTipoMaquina: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoMaquina'
      LookupDataSet = C_TiposMaquinas
      LookupKeyFields = 'TIPOMAQUINA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOMAQUINA'
      Size = 50
      Lookup = True
    end
    object C_InsumosTiposMaquinasTEMPONECESSARIO: TIntegerField
      FieldName = 'TEMPONECESSARIO'
      Origin = 'INSUMOSTIPOSMAQUINAS.TEMPONECESSARIO'
    end
  end
  object C_InsumosTiposMaquinasDS: TDataSource
    DataSet = C_InsumosTiposMaquinas
    Left = 296
    Top = 328
  end
  object U_InsumosTiposMaquinas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from insumostiposmaquinas '
      'where'
      '  INSUMOTIPOMAQUINA = :INSUMOTIPOMAQUINA')
    ModifySQL.Strings = (
      'update insumostiposmaquinas'
      'set'
      '  INSUMO = :INSUMO,'
      '  TIPOMAQUINA = :TIPOMAQUINA,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  TEMPONECESSARIO = :TEMPONECESSARIO'
      'where'
      '  INSUMOTIPOMAQUINA = :OLD_INSUMOTIPOMAQUINA')
    InsertSQL.Strings = (
      'insert into insumostiposmaquinas'
      '  (INSUMOTIPOMAQUINA, INSUMO, TIPOMAQUINA, QUANTIDADE, '
      'TEMPONECESSARIO)'
      'values'
      '  (:INSUMOTIPOMAQUINA, :INSUMO, :TIPOMAQUINA, :QUANTIDADE, '
      ':TEMPONECESSARIO)')
    DeleteSQL.Strings = (
      'delete from insumostiposmaquinas'
      'where'
      '  INSUMOTIPOMAQUINA = :OLD_INSUMOTIPOMAQUINA')
    Left = 295
    Top = 387
  end
  object Q_TiposMaquinas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT tipomaquina, descricao FROM TIPOSMAQUINAS')
    Left = 460
    Top = 6
  end
  object P_TiposMaquinas: TDataSetProvider
    DataSet = Q_TiposMaquinas
    Constraints = True
    Left = 459
    Top = 58
  end
  object C_TiposMaquinas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposMaquinas'
    Left = 458
    Top = 115
    object C_TiposMaquinasTIPOMAQUINA: TIntegerField
      FieldName = 'TIPOMAQUINA'
      Origin = 'TIPOSMAQUINAS.TIPOMAQUINA'
      Required = True
    end
    object C_TiposMaquinasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMAQUINAS.DESCRICAO'
      Size = 150
    end
  end
  object C_TiposMaquinasDS: TDataSource
    DataSet = C_TiposMaquinas
    Left = 456
    Top = 169
  end
  object Q_MateriasPrimas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select materiaprima, descricao from materiasprimas'
      'order by descricao')
    Left = 560
    Top = 13
  end
  object P_MateriasPrimas: TDataSetProvider
    DataSet = Q_MateriasPrimas
    Constraints = True
    Left = 559
    Top = 65
  end
  object C_MateriasPrimas: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MateriasPrimas'
    Left = 558
    Top = 122
    object C_MateriasPrimasMATERIAPRIMA: TIntegerField
      FieldName = 'MATERIAPRIMA'
      Origin = 'MATERIASPRIMAS.MATERIAPRIMA'
      Required = True
    end
    object C_MateriasPrimasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MATERIASPRIMAS.DESCRICAO'
      Size = 30
    end
  end
  object C_MateriasPrimasDS: TDataSource
    DataSet = C_MateriasPrimas
    Left = 556
    Top = 176
  end
  object Q_InsumosMateriasPrimas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'SELECT * FROM insumosmateriasprimas'
      'WHERE insumo = :INSUMO'
      'order by insumomateriaprima')
    UpdateObject = U_InsumosMateriasPrimas
    Left = 556
    Top = 242
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INSUMO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_InsumosMateriasPrimas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_InsumosMateriasPrimas
    Params = <>
    OnNewRecord = C_InsumosMateriasPrimasNewRecord
    Left = 561
    Top = 297
    object C_InsumosMateriasPrimasINSUMOMATERIAPRIMA: TIntegerField
      FieldName = 'INSUMOMATERIAPRIMA'
      Origin = 'INSUMOSMATERIASPRIMAS.INSUMOMATERIAPRIMA'
      Required = True
    end
    object C_InsumosMateriasPrimasINSUMO: TIntegerField
      FieldName = 'INSUMO'
      Origin = 'INSUMOSMATERIASPRIMAS.INSUMO'
    end
    object C_InsumosMateriasPrimasMATERIAPRIMA: TIntegerField
      FieldName = 'MATERIAPRIMA'
      Origin = 'INSUMOSMATERIASPRIMAS.MATERIAPRIMA'
    end
    object C_InsumosMateriasPrimasQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'INSUMOSMATERIASPRIMAS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_InsumosMateriasPrimaslkMateriaPrima: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMateriaPrima'
      LookupDataSet = C_MateriasPrimas
      LookupKeyFields = 'MATERIAPRIMA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MATERIAPRIMA'
      Size = 50
      Lookup = True
    end
  end
  object C_InsumosMateriasPrimasDS: TDataSource
    DataSet = C_InsumosMateriasPrimas
    Left = 560
    Top = 344
  end
  object U_InsumosMateriasPrimas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from insumosmateriasprimas '
      'where'
      '  INSUMOMATERIAPRIMA = :INSUMOMATERIAPRIMA')
    ModifySQL.Strings = (
      'update insumosmateriasprimas'
      'set'
      '  INSUMO = :INSUMO,'
      '  MATERIAPRIMA = :MATERIAPRIMA,'
      '  QUANTIDADE = :QUANTIDADE'
      'where'
      '  INSUMOMATERIAPRIMA = :OLD_INSUMOMATERIAPRIMA')
    InsertSQL.Strings = (
      'insert into insumosmateriasprimas'
      '  (INSUMOMATERIAPRIMA, INSUMO, MATERIAPRIMA, QUANTIDADE)'
      'values'
      '  (:INSUMOMATERIAPRIMA, :INSUMO, :MATERIAPRIMA, :QUANTIDADE)')
    DeleteSQL.Strings = (
      'delete from insumosmateriasprimas'
      'where'
      '  INSUMOMATERIAPRIMA = :OLD_INSUMOMATERIAPRIMA')
    Left = 559
    Top = 403
  end
  object Q_ComposicaoInsumos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'SELECT * FROM COMPOSICAOINSUMOS'
      'WHERE INSUMO = :INSUMO'
      'ORDER BY INSUMO')
    UpdateObject = U_ComposicaoInsumos
    Left = 700
    Top = 242
    ParamData = <
      item
        DataType = ftInteger
        Name = 'INSUMO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ComposicaoInsumos: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ComposicaoInsumos
    Params = <>
    OnNewRecord = C_ComposicaoInsumosNewRecord
    Left = 705
    Top = 297
    object C_ComposicaoInsumosCOMPOSICAOINSUMO: TIntegerField
      FieldName = 'COMPOSICAOINSUMO'
      Required = True
    end
    object C_ComposicaoInsumosINSUMO: TIntegerField
      FieldName = 'INSUMO'
    end
    object C_ComposicaoInsumosINSUMOUTILIZADO: TIntegerField
      FieldName = 'INSUMOUTILIZADO'
    end
    object C_ComposicaoInsumosQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_ComposicaoInsumosORDEMPRODUCAO: TIntegerField
      FieldName = 'ORDEMPRODUCAO'
    end
    object C_ComposicaoInsumoslkInsumos: TStringField
      FieldKind = fkLookup
      FieldName = 'lkInsumos'
      LookupDataSet = C_Insumos
      LookupKeyFields = 'INSUMO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'INSUMOUTILIZADO'
      Size = 80
      Lookup = True
    end
  end
  object C_ComposicaoInsumosDS: TDataSource
    DataSet = C_ComposicaoInsumos
    Left = 704
    Top = 344
  end
  object U_ComposicaoInsumos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  COMPOSICAOINSUMO,'
      '  INSUMO,'
      '  INSUMOUTILIZADO,'
      '  QUANTIDADE,'
      '  ORDEMPRODUCAO'
      'from COMPOSICAOINSUMOS '
      'where'
      '  COMPOSICAOINSUMO = :COMPOSICAOINSUMO')
    ModifySQL.Strings = (
      'update COMPOSICAOINSUMOS'
      'set'
      '  INSUMO = :INSUMO,'
      '  INSUMOUTILIZADO = :INSUMOUTILIZADO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  ORDEMPRODUCAO = :ORDEMPRODUCAO'
      'where'
      '  COMPOSICAOINSUMO = :OLD_COMPOSICAOINSUMO')
    InsertSQL.Strings = (
      'insert into COMPOSICAOINSUMOS'
      '  (COMPOSICAOINSUMO, INSUMO, INSUMOUTILIZADO, QUANTIDADE, '
      'ORDEMPRODUCAO)'
      'values'
      '  (:COMPOSICAOINSUMO, :INSUMO, :INSUMOUTILIZADO, :QUANTIDADE, '
      ':ORDEMPRODUCAO)')
    DeleteSQL.Strings = (
      'delete from COMPOSICAOINSUMOS'
      'where'
      '  COMPOSICAOINSUMO = :OLD_COMPOSICAOINSUMO')
    Left = 703
    Top = 403
  end
  object Q_Insumos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT INSUMO, DESCRICAO FROM INSUMOS'
      'ORDER BY DESCRICAO')
    Left = 696
    Top = 13
  end
  object P_Insumos: TDataSetProvider
    DataSet = Q_Insumos
    Constraints = True
    Left = 695
    Top = 65
  end
  object C_Insumos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Insumos'
    Left = 694
    Top = 122
    object C_InsumosINSUMO: TIntegerField
      FieldName = 'INSUMO'
      Origin = 'INSUMOS.INSUMO'
      Required = True
    end
    object C_InsumosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'INSUMOS.DESCRICAO'
      Size = 255
    end
  end
  object C_InsumosDS: TDataSource
    DataSet = C_Insumos
    Left = 692
    Top = 176
  end
end
