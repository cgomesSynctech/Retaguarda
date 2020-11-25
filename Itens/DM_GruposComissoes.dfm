inherited DMGruposComissoes: TDMGruposComissoes
  Left = 386
  Top = 251
  Width = 277
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select grupocomissao, descricao'
      'from gruposcomissoes')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from gruposcomissoes '
      'where'
      '  GRUPOCOMISSAO = :GRUPOCOMISSAO')
    ModifySQL.Strings = (
      'update gruposcomissoes'
      'set'
      '  DESCRICAO = :DESCRICAO'
      'where'
      '  GRUPOCOMISSAO = :OLD_GRUPOCOMISSAO')
    InsertSQL.Strings = (
      'insert into gruposcomissoes'
      '  (GRUPOCOMISSAO, DESCRICAO)'
      'values'
      '  (:GRUPOCOMISSAO, :DESCRICAO)')
    DeleteSQL.Strings = (
      'delete from gruposcomissoes'
      'where'
      '  GRUPOCOMISSAO = :OLD_GRUPOCOMISSAO')
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'GRUPOSCOMISSOES'
    Tabela_Nome = 'GRUPOSCOMISSOES'
    Tabela_Chave = 'GRUPOCOMISSAO'
    GenerateIDFor.Strings = (
      'C_Detalhe=GRUPOCOMISSAODET')
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaGRUPOCOMISSAO: TIntegerField
      FieldName = 'GRUPOCOMISSAO'
      Origin = 'GRUPOSCOMISSOES.GRUPOCOMISSAO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'GRUPOSCOMISSOES.DESCRICAO'
      Size = 30
    end
    object C_TabelaQ_Detalhe: TDataSetField
      FieldName = 'Q_Detalhe'
    end
  end
  object Q_Detalhe: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select grupocomissaodet, grupocomissao, valorini, valorfim, comi' +
        'ssao'
      'from gruposcomissoesdet'
      'where grupocomissao = :GRUPOCOMISSAO')
    UpdateObject = U_Detalhe
    Left = 192
    Top = 18
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPOCOMISSAO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_Detalhe: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from gruposcomissoesdet '
      'where'
      '  GRUPOCOMISSAODET = :GRUPOCOMISSAODET')
    ModifySQL.Strings = (
      'update gruposcomissoesdet'
      'set'
      '  GRUPOCOMISSAO = :GRUPOCOMISSAO,'
      '  VALORINI = :VALORINI,'
      '  VALORFIM = :VALORFIM,'
      '  COMISSAO = :COMISSAO'
      'where'
      '  GRUPOCOMISSAODET = :OLD_GRUPOCOMISSAODET')
    InsertSQL.Strings = (
      'insert into gruposcomissoesdet'
      
        '  (GRUPOCOMISSAODET, GRUPOCOMISSAO, VALORINI, VALORFIM, COMISSAO' +
        ')'
      'values'
      '  (:GRUPOCOMISSAODET, :GRUPOCOMISSAO, :VALORINI, :VALORFIM, '
      ':COMISSAO)')
    DeleteSQL.Strings = (
      'delete from gruposcomissoesdet'
      'where'
      '  GRUPOCOMISSAODET = :OLD_GRUPOCOMISSAODET')
    Left = 192
    Top = 72
  end
  object C_Detalhe: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Detalhe
    Params = <>
    OnNewRecord = C_DetalheNewRecord
    Left = 192
    Top = 128
    object C_DetalheGRUPOCOMISSAODET: TIntegerField
      FieldName = 'GRUPOCOMISSAODET'
      Required = True
    end
    object C_DetalheGRUPOCOMISSAO: TIntegerField
      FieldName = 'GRUPOCOMISSAO'
    end
    object C_DetalheVALORINI: TBCDField
      FieldName = 'VALORINI'
      Precision = 18
      Size = 2
    end
    object C_DetalheVALORFIM: TBCDField
      FieldName = 'VALORFIM'
      Precision = 18
      Size = 2
    end
    object C_DetalheCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Precision = 18
      Size = 2
    end
  end
  object C_DetalheDS: TDataSource
    DataSet = C_Detalhe
    Left = 192
    Top = 176
  end
end
