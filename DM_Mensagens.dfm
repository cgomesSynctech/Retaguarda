inherited DMMensagens: TDMMensagens
  Left = 104
  Top = 134
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Mensagens where idioma = 1')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MENSAGEM,'
      '  IDIOMA,'
      '  TITULO,'
      '  DESCRICAO,'
      '  BOTOES,'
      '  TIPOMSG,'
      '  MODULO,'
      '  IMPORTACAO'
      'from Mensagens '
      'where'
      '  MENSAGEM = :MENSAGEM and'
      '  IDIOMA = :IDIOMA')
    ModifySQL.Strings = (
      'update Mensagens'
      'set'
      '  MENSAGEM = :MENSAGEM,'
      '  IDIOMA = :IDIOMA,'
      '  TITULO = :TITULO,'
      '  DESCRICAO = :DESCRICAO,'
      '  BOTOES = :BOTOES,'
      '  TIPOMSG = :TIPOMSG,'
      '  MODULO = :MODULO,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  PORQUE = :PORQUE,'
      '  SOLUCAO = :SOLUCAO'
      'where'
      '  MENSAGEM = :OLD_MENSAGEM and'
      '  IDIOMA = :OLD_IDIOMA')
    InsertSQL.Strings = (
      'insert into Mensagens'
      
        '  (MENSAGEM, IDIOMA, TITULO, DESCRICAO, BOTOES, TIPOMSG, MODULO,' +
        ' '
      'IMPORTACAO, PORQUE, SOLUCAO)'
      'values'
      
        '  (:MENSAGEM, :IDIOMA, :TITULO, :DESCRICAO, :BOTOES, :TIPOMSG, :' +
        'MODULO, '
      '   :IMPORTACAO, :PORQUE, :SOLUCAO)')
    DeleteSQL.Strings = (
      'delete from Mensagens'
      'where'
      '  MENSAGEM = :OLD_MENSAGEM and'
      '  IDIOMA = :OLD_IDIOMA')
  end
  inherited DMComponent: TDMComponent
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'Mensagens'
    Tabela_Nome = 'Mensagens'
    Tabela_Chave = 'Mensagem'
  end
  inherited C_Tabela: TClientDataSet
    Left = 31
    object C_TabelaMENSAGEM: TIntegerField
      FieldName = 'MENSAGEM'
    end
    object C_TabelaIDIOMA: TIntegerField
      FieldName = 'IDIOMA'
    end
    object C_TabelaTITULO: TStringField
      FieldName = 'TITULO'
      Size = 50
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 255
    end
    object C_TabelaBOTOES: TStringField
      FieldName = 'BOTOES'
      Size = 50
    end
    object C_TabelaTIPOMSG: TStringField
      FieldName = 'TIPOMSG'
      Size = 1
    end
    object C_TabelaMODULO: TStringField
      FieldName = 'MODULO'
      Size = 30
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
    end
    object C_TabelaSOLUCAO: TStringField
      FieldName = 'SOLUCAO'
      Size = 255
    end
    object C_TabelaPORQUE: TStringField
      FieldName = 'PORQUE'
      Size = 255
    end
  end
end
