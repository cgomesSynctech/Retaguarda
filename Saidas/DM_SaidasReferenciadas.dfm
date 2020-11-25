inherited DMSaidasReferenciadas: TDMSaidasReferenciadas
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from saidasreferenciadas')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from saidasreferenciadas '
      'where'
      '  SAIDAREFERENCIADA = :SAIDAREFERENCIADA')
    ModifySQL.Strings = (
      'update saidasreferenciadas'
      'set'
      '  SAIDAREFERENCIADA = :SAIDAREFERENCIADA,'
      '  EMPRESA = :EMPRESA,'
      '  SAIDA = :SAIDA,'
      '  PDV = :PDV,'
      '  TIPODOCUMENTO = :TIPODOCUMENTO,'
      '  CHAVEACESSO = :CHAVEACESSO,'
      '  MODELO = :MODELO,'
      '  ECF = :ECF,'
      '  COO = :COO'
      'where'
      '  SAIDAREFERENCIADA = :OLD_SAIDAREFERENCIADA')
    InsertSQL.Strings = (
      'insert into saidasreferenciadas'
      '  (SAIDAREFERENCIADA, EMPRESA, SAIDA, PDV, TIPODOCUMENTO, '
      'CHAVEACESSO, '
      '   MODELO, ECF, COO)'
      'values'
      '  (:SAIDAREFERENCIADA, :EMPRESA, :SAIDA, :PDV, :TIPODOCUMENTO, '
      ':CHAVEACESSO, '
      '   :MODELO, :ECF, :COO)')
    DeleteSQL.Strings = (
      'delete from saidasreferenciadas'
      'where'
      '  SAIDAREFERENCIADA = :OLD_SAIDAREFERENCIADA')
  end
  inherited DMComponent: TDMComponent
    AntesDeIniciar = DMComponentAntesDeIniciar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    KeyForIDs = 'SaidasReferenciadas'
    Tabela_Nome = 'SaidasReferenciadas'
    Tabela_Chave = 'SaidaReferenciada'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaSAIDAREFERENCIADA: TIntegerField
      FieldName = 'SAIDAREFERENCIADA'
      Required = True
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_TabelaSAIDA: TIntegerField
      FieldName = 'SAIDA'
      Required = True
    end
    object C_TabelaPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
    object C_TabelaTIPODOCUMENTO: TIntegerField
      FieldName = 'TIPODOCUMENTO'
      Required = True
    end
    object C_TabelaCHAVEACESSO: TStringField
      FieldName = 'CHAVEACESSO'
      Size = 44
    end
    object C_TabelaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object C_TabelaECF: TStringField
      FieldName = 'ECF'
      Size = 3
    end
    object C_TabelaCOO: TStringField
      FieldName = 'COO'
      Size = 6
    end
  end
end
