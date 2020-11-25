inherited DMTipoTributacao: TDMTipoTributacao
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select situacaoecf, descricao, decreto from situacoesecf'
      'where situacaoecf not in ('#39'C'#39','#39'D'#39')')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from situacoesecf '
      'where'
      '  SITUACAOECF = :SITUACAOECF')
    ModifySQL.Strings = (
      'update situacoesecf'
      'set'
      '  DECRETO = :DECRETO'
      'where'
      '  SITUACAOECF = :OLD_SITUACAOECF')
    InsertSQL.Strings = (
      'insert into situacoesecf'
      '  (DECRETO)'
      'values'
      '  (:DECRETO)')
    DeleteSQL.Strings = (
      'delete from situacoesecf'
      'where'
      '  SITUACAOECF = :OLD_SITUACAOECF')
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'SITUACOESECF'
    Tabela_Nome = 'SITUACOESECF'
    Tabela_Chave = 'SITUACAOECF'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Required = True
      Size = 1
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TabelaDECRETO: TStringField
      FieldName = 'DECRETO'
      Size = 255
    end
  end
end
