inherited DMEmails: TDMEmails
  Left = 266
  Top = 130
  Height = 408
  Width = 530
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from EMAILS')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  EMAIL,'
      '  COMPROMISSO,'
      '  DE,'
      '  PARA,'
      '  ASSUNTO,'
      '  MENSAGEM,'
      '  ANEXO,'
      '  PENDENTE'
      'from EMAILS '
      'where'
      '  EMAIL = :EMAIL')
    ModifySQL.Strings = (
      'update EMAILS'
      'set'
      '  COMPROMISSO = :COMPROMISSO,'
      '  DE = :DE,'
      '  PARA = :PARA,'
      '  ASSUNTO = :ASSUNTO,'
      '  MENSAGEM = :MENSAGEM,'
      '  ANEXO = :ANEXO,'
      '  PENDENTE = :PENDENTE'
      'where'
      '  EMAIL = :OLD_EMAIL')
    InsertSQL.Strings = (
      'insert into EMAILS'
      '  (EMAIL, COMPROMISSO, DE, PARA, ASSUNTO, MENSAGEM, ANEXO, '
      'PENDENTE)'
      'values'
      
        '  (:EMAIL, :COMPROMISSO, :DE, :PARA, :ASSUNTO, :MENSAGEM, :ANEXO' +
        ', '
      ':PENDENTE)')
    DeleteSQL.Strings = (
      'delete from EMAILS'
      'where'
      '  EMAIL = :OLD_EMAIL')
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    KeyForIDs = 'EMAILS'
    Tabela_Nome = 'EMAILS'
    Tabela_Chave = 'EMAIL'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaEMAIL: TIntegerField
      FieldName = 'EMAIL'
    end
    object C_TabelaCOMPROMISSO: TIntegerField
      FieldName = 'COMPROMISSO'
    end
    object C_TabelaDE: TStringField
      FieldName = 'DE'
      Size = 50
    end
    object C_TabelaPARA: TStringField
      FieldName = 'PARA'
      Size = 50
    end
    object C_TabelaASSUNTO: TStringField
      FieldName = 'ASSUNTO'
      Size = 100
    end
    object C_TabelaMENSAGEM: TStringField
      FieldName = 'MENSAGEM'
      Size = 500
    end
    object C_TabelaANEXO: TStringField
      FieldName = 'ANEXO'
      Size = 500
    end
    object C_TabelaPENDENTE: TStringField
      FieldName = 'PENDENTE'
      Size = 1
    end
  end
  object Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 190
    Top = 190
  end
end
