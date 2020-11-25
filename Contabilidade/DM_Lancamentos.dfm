inherited DMLancamentos: TDMLancamentos
  Left = 109
  Top = 153
  Height = 479
  Width = 741
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from Lancamentos where origem = 21')
    Left = 33
    Top = 1
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  LANCAMENTO,'
      '  REFERENCIA,'
      '  ORIGEM,'
      '  DATA,'
      '  NUMERO,'
      '  IDGERADOR,'
      '  USUARIO,'
      '  DATA_AUDIT,'
      '  HORA_AUDIT'
      'from LANCAMENTOS '
      'where'
      '  LANCAMENTO = :LANCAMENTO')
    ModifySQL.Strings = (
      'update LANCAMENTOS'
      'set'
      '  REFERENCIA = :REFERENCIA,'
      '  ORIGEM = :ORIGEM,'
      '  DATA = :DATA,'
      '  NUMERO = :NUMERO,'
      '  IDGERADOR = :IDGERADOR,'
      '  USUARIO = :USUARIO,'
      '  DATA_AUDIT = :DATA_AUDIT,'
      '  HORA_AUDIT = :HORA_AUDIT'
      'where'
      '  LANCAMENTO = :OLD_LANCAMENTO')
    InsertSQL.Strings = (
      'insert into LANCAMENTOS'
      '  (LANCAMENTO, REFERENCIA, ORIGEM, DATA, NUMERO, IDGERADOR, '
      'USUARIO, DATA_AUDIT, '
      '   HORA_AUDIT)'
      'values'
      
        '  (:LANCAMENTO, :REFERENCIA, :ORIGEM, :DATA, :NUMERO, :LANCAMENT' +
        'O, '
      ':USUARIO, '
      '   :DATA_AUDIT, :HORA_AUDIT)')
    DeleteSQL.Strings = (
      'delete from LANCAMENTOS'
      'where'
      '  LANCAMENTO = :OLD_LANCAMENTO')
  end
  inherited DMComponent: TDMComponent
    AntesDeIniciar = DMComponentAntesDeIniciar
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Pesquisar2_SQLFinal = DMComponentPesquisar2_SQLFinal
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    Gravar5_Terminar = DMComponentGravar5_Terminar
    Apagar_AntesApply = DMComponentApagar_AntesApply
    KeyForIDs = 'Lancamentos'
    Tabela_Nome = 'Lancamentos'
    Tabela_Chave = 'Lancamento'
    MestreDetalhe = True
    GenerateIDFor.Strings = (
      'C_LancamentosItens=LancamentoItem')
    Left = 33
    Top = 268
  end
  inherited C_Tabela: TClientDataSet
    BeforePost = C_TabelaBeforePost
    object C_TabelaLANCAMENTO: TIntegerField
      FieldName = 'LANCAMENTO'
      Required = True
    end
    object C_TabelaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      OnChange = C_TabelaREFERENCIAChange
      Size = 12
    end
    object C_TabelaORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
    end
    object C_TabelaIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
    object C_TabelaQ_LancamentosItens: TDataSetField
      FieldName = 'Q_LancamentosItens'
    end
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_TabelaUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_TabelaDATA_AUDIT: TDateField
      FieldName = 'DATA_AUDIT'
    end
    object C_TabelaHORA_AUDIT: TStringField
      FieldName = 'HORA_AUDIT'
      Size = 5
    end
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select c.conta,c.descricao, t.descricao as DescTipo, c.contapai,'
      'c.saldo, c.tipoconta'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'order by c.tipoconta, c.descricao')
    Left = 172
    Top = 5
  end
  object Q_ContasProvider: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 172
    Top = 53
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ContasProvider'
    Left = 172
    Top = 104
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_ContasDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      DisplayWidth = 20
      FieldName = 'DESCTIPO'
      Size = 25
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 174
    Top = 159
  end
  object Q_LancamentosItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select li.*, f.nome from lancamentositens li left join Favorecid' +
        'os f on li.favorecido = f.favorecido'
      'where LANCAMENTO = :LANCAMENTO')
    UpdateObject = U_LancamentosItens
    Left = 270
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LANCAMENTO'
        ParamType = ptUnknown
      end>
  end
  object C_LancamentosItens: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_LancamentosItens
    Params = <>
    BeforePost = C_LancamentosItensBeforePost
    OnCalcFields = C_LancamentosItensCalcFields
    OnNewRecord = C_LancamentosItensNewRecord
    Left = 275
    Top = 60
    object C_LancamentosItensLANCAMENTO: TIntegerField
      FieldName = 'LANCAMENTO'
      Required = True
    end
    object C_LancamentosItensCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object C_LancamentosItensVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_LancamentosItensHISTORICO: TStringField
      FieldName = 'HISTORICO'
      OnChange = C_LancamentosItensHISTORICOChange
      Size = 150
    end
    object C_LancamentosItensDebito: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Debito'
      OnChange = C_LancamentosItensDebitoChange
      DisplayFormat = '###,##0.00'
    end
    object C_LancamentosItensCredito: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Credito'
      OnChange = C_LancamentosItensCreditoChange
      DisplayFormat = '###,##0.00'
    end
    object C_LancamentosItenslkConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 40
      Lookup = True
    end
    object C_LancamentosItensLANCAMENTOITEM: TIntegerField
      FieldName = 'LANCAMENTOITEM'
      Required = True
    end
    object C_LancamentosItensFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_LancamentosItensNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object C_LancamentosItensDS: TDataSource
    DataSet = C_LancamentosItens
    Left = 276
    Top = 110
  end
  object U_LancamentosItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from lancamentositens '
      'where'
      '  LANCAMENTOITEM = :LANCAMENTOITEM')
    ModifySQL.Strings = (
      'update lancamentositens'
      'set'
      '  CONTA = :CONTA,'
      '  VALOR = :VALOR,'
      '  HISTORICO = :HISTORICO,'
      '  LANCAMENTO = :LANCAMENTO,'
      '  FAVORECIDO = :FAVORECIDO'
      'where'
      '  LANCAMENTOITEM = :OLD_LANCAMENTOITEM')
    InsertSQL.Strings = (
      'insert into lancamentositens'
      '  (LANCAMENTOITEM, CONTA, VALOR, HISTORICO, LANCAMENTO, '
      'FAVORECIDO)'
      'values'
      '  (:LANCAMENTOITEM, :CONTA, :VALOR, :HISTORICO, :LANCAMENTO, '
      ':FAVORECIDO)')
    DeleteSQL.Strings = (
      'delete from lancamentositens'
      'where'
      '  LANCAMENTOITEM = :OLD_LANCAMENTOITEM')
    Left = 275
    Top = 174
  end
end
