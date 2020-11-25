inherited DMEntradasReferenciadas: TDMEntradasReferenciadas
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select * from entradasreferenciadas')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from entradasreferenciadas '
      'where'
      '  ENTRADA = :ENTRADA'
      '')
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
      '  COO = :COO'
      'where'
      '  ENTRADAREFERENCIADA = :OLD_ENTRADAREFERENCIADA and'
      '  EMPRESA = :OLD_EMPRESA and'
      '  ENTRADA = :OLD_ENTRADA and'
      '  PDV = :OLD_PDV')
    InsertSQL.Strings = (
      'insert into entradasreferenciadas'
      '  (ENTRADAREFERENCIADA, EMPRESA, ENTRADA, PDV, TIPODOCUMENTO, '
      'CHAVEACESSO, '
      '   MODELO, ECF, COO)'
      'values'
      
        '  (:ENTRADAREFERENCIADA, :EMPRESA, :ENTRADA, :PDV, :TIPODOCUMENT' +
        'O, '
      ':CHAVEACESSO, '
      '   :MODELO, :ECF, :COO)')
    DeleteSQL.Strings = (
      'delete from entradasreferenciadas'
      'where'
      '  ENTRADAREFERENCIADA = :OLD_ENTRADAREFERENCIADA and'
      '  EMPRESA = :OLD_EMPRESA and'
      '  ENTRADA = :OLD_ENTRADA and'
      '  PDV = :OLD_PDV')
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
  end
end
