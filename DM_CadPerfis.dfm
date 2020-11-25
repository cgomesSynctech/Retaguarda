inherited DMCadPerfis: TDMCadPerfis
  Left = 479
  Top = 182
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    AfterCancel = C_TabelaAfterPost
    SQL.Strings = (
      'Select * from Perfis')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Perfis '
      'where'
      '  PERFIL = :PERFIL')
    ModifySQL.Strings = (
      'update Perfis'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  PERFIL = :OLD_PERFIL')
    InsertSQL.Strings = (
      'insert into Perfis'
      '  (PERFIL, DESCRICAO)'
      'values'
      '  (:PERFIL, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from Perfis'
      'where'
      '  PERFIL = :OLD_PERFIL')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Exclusao = DMComponentExclusao
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'Perfis'
    Tabela_Nome = 'Perfis'
    Tabela_Chave = 'Perfil'
    DeleteValidate.Strings = (
      'LimitacoesMenu=Perfil')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TabelaAproveitarPerfil: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'AproveitarPerfil'
    end
  end
  object Q_Perfis: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from perfis')
    Left = 170
    Top = 18
  end
  object C_PerfisDS: TDataSource
    DataSet = C_Perfis
    Left = 167
    Top = 68
  end
  object Q_PerfisProvider: TDataSetProvider
    DataSet = Q_Perfis
    Constraints = True
    Left = 169
    Top = 122
  end
  object C_Perfis: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_PerfisProvider'
    Left = 170
    Top = 174
    object C_PerfisPERFIL: TIntegerField
      FieldName = 'PERFIL'
      Required = True
    end
    object C_PerfisDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
end
