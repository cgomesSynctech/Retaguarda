inherited DMItensFalta: TDMItensFalta
  Left = 304
  Top = 238
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select  i.*, f.nome, f.tipofavorecido'
      'from itensfalta i'
      'left join favorecidos f on i.cliente = f.favorecido')
    Left = 33
    Top = 2
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itensfalta '
      'where'
      '  ITEMFALTA = :ITEMFALTA')
    ModifySQL.Strings = (
      'update itensfalta'
      'set'
      '  ITEM = :ITEM,'
      '  DESCRICAO = :DESCRICAO,'
      '  DATA = :DATA,'
      '  QTD = :QTD,'
      '  USUARIO = :USUARIO,'
      '  CLIENTE = :CLIENTE,'
      '  OBS = :OBS'
      'where'
      '  ITEMFALTA = :OLD_ITEMFALTA')
    InsertSQL.Strings = (
      'insert into itensfalta'
      '  (ITEMFALTA, ITEM, DESCRICAO, DATA, QTD, USUARIO, CLIENTE, OBS)'
      'values'
      
        '  (:ITEMFALTA, :ITEM, :DESCRICAO, :DATA, :QTD, :USUARIO, :CLIENT' +
        'E, :OBS)')
    DeleteSQL.Strings = (
      'delete from itensfalta'
      'where'
      '  ITEMFALTA = :OLD_ITEMFALTA')
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'ITENSFALTA'
    Tabela_Nome = 'ITENSFALTA'
    Tabela_Chave = 'ITEMFALTA'
    GenerateIDFor.Strings = (
      '')
    Left = 33
  end
  inherited DlgMsg: TDlgMsg
    Top = 269
  end
  inherited C_Tabela: TClientDataSet
    Left = 34
    object C_TabelaITEMFALTA: TIntegerField
      FieldName = 'ITEMFALTA'
      Required = True
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaQTD: TBCDField
      FieldName = 'QTD'
      Precision = 18
      Size = 3
    end
    object C_TabelaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Size = 40
    end
    object C_TabelaTIPOFAVORECIDO: TIntegerField
      FieldName = 'TIPOFAVORECIDO'
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
end
