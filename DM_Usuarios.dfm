inherited DMUsuarios: TDMUsuarios
  Left = 452
  Top = 127
  Height = 510
  Width = 558
  inherited SaveDialog: TSaveDialog
    Left = 152
    Top = 280
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Usuarios')
    Left = 33
    Top = 4
  end
  inherited Q_MasterDS: TDataSource
    Top = 4
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Usuarios '
      'where'
      '  USUARIO = :USUARIO')
    ModifySQL.Strings = (
      'update Usuarios'
      'set'
      '  PERFIL = :PERFIL,'
      '  LOGINNAME = :LOGINNAME,'
      '  LOGINPASS = :LOGINPASS,'
      '  IDIOMA = :IDIOMA,'
      '  INTERVALO_MINUTOS = :INTERVALO_MINUTOS,'
      '  HORA_INI = :HORA_INI,'
      '  HORA_FIM = :HORA_FIM,'
      '  RECADOS_TIMER = :RECADOS_TIMER,'
      '  EMAIL = :EMAIL,'
      '  DESATIVADO = :DESATIVADO,'
      '  FORMATO_HORA = :FORMATO_HORA,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  LOGOTIPO = :LOGOTIPO,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  TABELAPADRAO = :TABELAPADRAO, '
      '  TIPOMOVPR = :TIPOMOVPR,'
      '  Empresa = :empresa,'
      '  LOGINPASSMD5 = :LOGINPASSMD5'
      'where'
      '  USUARIO = :OLD_USUARIO')
    InsertSQL.Strings = (
      'insert into Usuarios'
      
        '  (USUARIO, PERFIL, LOGINNAME, LOGINPASS, IDIOMA, INTERVALO_MINU' +
        'TOS, '
      '   HORA_INI, HORA_FIM, RECADOS_TIMER, EMAIL, DESATIVADO, '
      'FORMATO_HORA,'
      '   DESCONTOMAXIMO, LOGOTIPO, FUNCIONARIO, '
      '   TABELAPADRAO, TIPOMOVPR, EMPRESA, LOGINPASSMD5)'
      'values'
      '  (:USUARIO, :PERFIL, :LOGINNAME, :LOGINPASS, :IDIOMA,'
      
        '   :INTERVALO_MINUTOS, :HORA_INI, :HORA_FIM, :RECADOS_TIMER, :EM' +
        'AIL, '
      ':DESATIVADO,'
      '   :FORMATO_HORA, :DESCONTOMAXIMO, :LOGOTIPO, :FUNCIONARIO,'
      '   :TABELAPADRAO, :TIPOMOVPR, :EMPRESA,:LOGINPASSMD5 )')
    DeleteSQL.Strings = (
      'delete from Usuarios'
      'where'
      '  USUARIO = :OLD_USUARIO')
  end
  inherited DMComponent: TDMComponent
    Exclusao = DMComponentExclusao
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    Gravar5_Terminar = DMComponentGravar5_Terminar
    KeyForIDs = 'Usuarios'
    Tabela_Nome = 'Usuarios'
    Tabela_Chave = 'Usuario'
    DeleteValidate.Strings = (
      'Compromissos=USUORIGEM'
      'Compromissos=USUDESTINO'
      'Tarefas=USUORIGEM'
      'Tarefas=USUDESTINO')
  end
  inherited C_Tabela: TClientDataSet
    BeforePost = C_TabelaBeforePost
    Top = 162
    object C_TabelaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
      Required = True
    end
    object C_TabelaPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Required = True
    end
    object C_TabelaLOGINNAME: TStringField
      FieldName = 'LOGINNAME'
      Required = True
      OnValidate = C_TabelaLOGINNAMEValidate
      Size = 30
    end
    object C_TabelaLOGINPASS: TStringField
      FieldName = 'LOGINPASS'
      Required = True
      Visible = False
      Size = 30
    end
    object C_TabelaIDIOMA: TIntegerField
      FieldName = 'IDIOMA'
    end
    object C_TabelaEMAIL: TStringField
      FieldName = 'EMAIL'
      Size = 100
    end
    object C_TabelaHORA_INI: TIntegerField
      FieldName = 'HORA_INI'
    end
    object C_TabelaHORA_FIM: TIntegerField
      FieldName = 'HORA_FIM'
    end
    object C_TabelaINTERVALO_MINUTOS: TIntegerField
      FieldName = 'INTERVALO_MINUTOS'
    end
    object C_TabelaRECADOS_TIMER: TIntegerField
      FieldName = 'RECADOS_TIMER'
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaFORMATO_HORA: TStringField
      FieldName = 'FORMATO_HORA'
      Size = 2
    end
    object C_TabelaDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      DisplayFormat = '##0.0# %'
      Precision = 9
      Size = 2
    end
    object C_TabelaLOGOTIPO: TStringField
      FieldName = 'LOGOTIPO'
      Size = 150
    end
    object C_TabelacmbPerfil: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPerfil'
      LookupDataSet = C_Perfis
      LookupKeyFields = 'PERFIL'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PERFIL'
      ReadOnly = True
      Size = 30
      Lookup = True
    end
    object C_TabelacmbIdioma: TStringField
      FieldKind = fkLookup
      FieldName = 'lkIdioma'
      LookupDataSet = C_Idiomas
      LookupKeyFields = 'IDIOMA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'IDIOMA'
      Lookup = True
    end
    object C_TabelalkVendedor: TStringField
      FieldKind = fkLookup
      FieldName = 'lkVendedor'
      LookupDataSet = C_Vendedores
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'FUNCIONARIO'
      Size = 30
      Lookup = True
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
    object C_TabelaTABELAPADRAO: TIntegerField
      FieldName = 'TABELAPADRAO'
    end
    object C_TabelaTIPOMOVPR: TIntegerField
      FieldName = 'TIPOMOVPR'
    end
    object C_TabelalkTipoMovPR: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoMovPR'
      LookupDataSet = C_TiposMovimento
      LookupKeyFields = 'TIPOMOVIMENTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOMOVPR'
      Size = 50
      Lookup = True
    end
    object C_TabelalkTabelaPadrao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTabelaPadrao'
      LookupDataSet = C_TabelasPreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPADRAO'
      Size = 30
      Lookup = True
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_TabelalkEmpresa: TStringField
      FieldKind = fkLookup
      FieldName = 'lkEmpresa'
      LookupDataSet = C_Empresa
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'EMPRESA'
      Size = 50
      Lookup = True
    end
    object C_TabelaLOGINPASSMD5: TStringField
      FieldName = 'LOGINPASSMD5'
      Size = 32
    end
  end
  inherited ResultSet: TClientDataSet
    Top = 51
  end
  object Q_Perfis: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Perfis')
    Left = 165
    Top = 4
  end
  object C_Perfis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_PerfisProvider'
    Left = 165
    Top = 101
    object C_PerfisPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Required = True
    end
    object C_PerfisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_PerfisINICIALIZACAO: TStringField
      FieldName = 'INICIALIZACAO'
      Size = 50
    end
  end
  object Q_PerfisProvider: TDataSetProvider
    DataSet = Q_Perfis
    Constraints = True
    Left = 165
    Top = 51
  end
  object Q_Idiomas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from Idiomas')
    Left = 244
    Top = 4
  end
  object Q_IdiomasProv: TDataSetProvider
    DataSet = Q_Idiomas
    Constraints = True
    Left = 244
    Top = 51
  end
  object C_Idiomas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_IdiomasProv'
    Left = 244
    Top = 101
    object C_IdiomasIDIOMA: TIntegerField
      FieldName = 'IDIOMA'
    end
    object C_IdiomasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 153
    Top = 188
  end
  object Q_Vendedores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  Favorecido, Nome, Codigo, Comissao  From Favorecidos '
      'Where Desativado = '#39'N'#39' and TipoFavorecido = 3')
    UniDirectional = True
    Left = 325
    Top = 4
  end
  object P_Vendedores: TDataSetProvider
    DataSet = Q_Vendedores
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 325
    Top = 51
  end
  object C_Vendedores: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Vendedores'
    Left = 325
    Top = 101
    object C_VendedoresFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_VendedoresCODIGO: TStringField
      FieldName = 'CODIGO'
    end
    object C_VendedoresNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_VendedoresCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
  end
  object Q_TiposMovimento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao'
      'From TiposMovimento t, TiposPadrao tp'
      
        'Where t.TipoPadrao = tp.TipoPadrao and t.Tipo = '#39'S'#39'  and t.TipoP' +
        'adrao in (1,2,3,4,5,6) and (t.Serie <> '#39'ECF'#39' or t.Serie is null)'
      'Order by t.TipoPadrao, t.TipoMovimento')
    UniDirectional = True
    Left = 327
    Top = 166
  end
  object P_TiposMovimento: TDataSetProvider
    DataSet = Q_TiposMovimento
    Constraints = True
    Options = [poAllowMultiRecordUpdates, poDisableInserts, poDisableDeletes]
    Left = 327
    Top = 212
  end
  object C_TiposMovimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposMovimento'
    Left = 327
    Top = 258
    object C_TiposMovimentoTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TiposMovimentoDESCRICAO: TStringField
      DisplayWidth = 18
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 30
    end
  end
  object Q_TabelasPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tabelaspreco where desativado = '#39'N'#39
      'order by Percentual, TabelaPreco')
    UniDirectional = True
    Left = 234
    Top = 166
    object Q_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object Q_TabelasPrecoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object Q_TabelasPrecoPERCENTUAL: TIBBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object Q_TabelasPrecoDESATIVADO: TIBStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object Q_TabelasPrecoBASEADA: TIBStringField
      FieldName = 'BASEADA'
      Size = 1
    end
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasPreco'
    Left = 234
    Top = 258
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object C_TabelasPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object P_TabelasPreco: TDataSetProvider
    DataSet = Q_TabelasPreco
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 234
    Top = 212
  end
  object Q_Empresas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select favorecido, nome from favorecidos where favorecido < 0')
    UniDirectional = True
    Left = 425
    Top = 4
  end
  object P_Empresa: TDataSetProvider
    DataSet = Q_Empresas
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 425
    Top = 51
  end
  object C_Empresa: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Empresa'
    Left = 425
    Top = 101
    object C_EmpresaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_EmpresaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
end
