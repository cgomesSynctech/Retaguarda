inherited DMSaidasReferenciadas: TDMSaidasReferenciadas
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from saidasreferenciadas')
    UpdateObject = nil
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
      '  COO = :COO,'
      '  NUMERO = :NUMERO,'
      '  IND_OPER = :IND_OPER,'
      '  IND_EMIT = :IND_EMIT,'
      '  COD_PART = :COD_PART,'
      '  SER = :SER,'
      '  DT_DOC = :DT_DOC'
      'where'
      '  SAIDAREFERENCIADA = :OLD_SAIDAREFERENCIADA')
    InsertSQL.Strings = (
      'insert into saidasreferenciadas'
      '  (SAIDAREFERENCIADA, EMPRESA, SAIDA, PDV, TIPODOCUMENTO, '
      'CHAVEACESSO, '
      '   MODELO, ECF, COO, NUMERO, IND_OPER, IND_EMIT, COD_PART, SER, '
      'DT_DOC)'
      'values'
      '  (:SAIDAREFERENCIADA, :EMPRESA, :SAIDA, :PDV, :TIPODOCUMENTO, '
      ':CHAVEACESSO, '
      
        '   :MODELO, :ECF, :COO, :NUMERO, :IND_OPER, :IND_EMIT, :COD_PART' +
        ', :SER, '
      '   :DT_DOC)')
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
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 10
    end
    object C_TabelaCOD_PART: TIntegerField
      FieldName = 'COD_PART'
    end
    object C_TabelaSER: TStringField
      FieldName = 'SER'
      Size = 4
    end
    object C_TabelaDT_DOC: TDateField
      FieldName = 'DT_DOC'
    end
    object C_TabelaIND_OPER: TIntegerField
      FieldName = 'IND_OPER'
    end
    object C_TabelaIND_EMIT: TIntegerField
      FieldName = 'IND_EMIT'
    end
    object C_TabelaNOMEPART: TStringField
      FieldName = 'NOMEPART'
      Size = 100
    end
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from saidasreferenciadas')
    UpdateObject = U_Tabela
    Left = 192
    Top = 51
  end
end
