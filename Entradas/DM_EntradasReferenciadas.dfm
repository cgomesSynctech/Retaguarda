inherited DMEntradasReferenciadas: TDMEntradasReferenciadas
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select * from entradasreferenciadas')
    UpdateObject = nil
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from entradasreferenciadas '
      'where'
      '  ENTRADAREFERENCIADA = :ENTRADAREFERENCIADA')
    ModifySQL.Strings = (
      'update entradasreferenciadas'
      'set'
      '  ENTRADAREFERENCIADA = :ENTRADAREFERENCIADA,'
      '  EMPRESA = :EMPRESA,'
      '  ENTRADA = :ENTRADA,'
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
      '  DT_DOC = :DT_DOC,'
      '  NOMEPART = :NOMEPART'
      'where'
      '  ENTRADAREFERENCIADA = :OLD_ENTRADAREFERENCIADA')
    InsertSQL.Strings = (
      'insert into entradasreferenciadas'
      '  (ENTRADAREFERENCIADA, EMPRESA, ENTRADA, PDV, TIPODOCUMENTO, '
      'CHAVEACESSO, '
      '   MODELO, ECF, COO, NUMERO, IND_OPER, IND_EMIT, COD_PART, SER, '
      'DT_DOC, '
      '   NOMEPART)'
      'values'
      
        '  (:ENTRADAREFERENCIADA, :EMPRESA, :ENTRADA, :PDV, :TIPODOCUMENT' +
        'O, '
      ':CHAVEACESSO, '
      
        '   :MODELO, :ECF, :COO, :NUMERO, :IND_OPER, :IND_EMIT, :COD_PART' +
        ', :SER, '
      '   :DT_DOC, :NOMEPART)')
    DeleteSQL.Strings = (
      'delete from entradasreferenciadas'
      'where'
      '  ENTRADAREFERENCIADA = :OLD_ENTRADAREFERENCIADA')
  end
  inherited DMComponent: TDMComponent
    AntesDeIniciar = DMComponentAntesDeIniciar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    KeyForIDs = 'EntradasReferenciadas'
    Tabela_Nome = 'EntradasReferenciadas'
    Tabela_Chave = 'EntradaReferenciada'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaENTRADAREFERENCIADA: TIntegerField
      FieldName = 'ENTRADAREFERENCIADA'
      Required = True
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Required = True
    end
    object C_TabelaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
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
    object C_TabelaIND_OPER: TIntegerField
      FieldName = 'IND_OPER'
    end
    object C_TabelaIND_EMIT: TIntegerField
      FieldName = 'IND_EMIT'
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
