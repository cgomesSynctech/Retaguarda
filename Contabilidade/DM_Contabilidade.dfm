object DMContabilidade: TDMContabilidade
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Left = 255
  Top = 186
  Height = 459
  Width = 633
  object Q_Contabilidade: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select  idgerador, '
      '           lancamento,'
      '           data,'
      '           origem,'
      '           referencia,'
      '           numero, usuario, data_audit, hora_audit'
      'from lancamentos where idgerador = :idgerador')
    UpdateObject = U_Contabilidade
    Left = 38
    Top = 7
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'idgerador'
        ParamType = ptUnknown
      end>
  end
  object C_Contabilidade: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_ContabilProvider'
    OnNewRecord = C_ContabilidadeNewRecord
    Left = 39
    Top = 102
    object C_ContabilidadeLANCAMENTO: TIntegerField
      FieldName = 'LANCAMENTO'
    end
    object C_ContabilidadeDATA: TDateField
      FieldName = 'DATA'
    end
    object C_ContabilidadeORIGEM: TIntegerField
      FieldName = 'ORIGEM'
    end
    object C_ContabilidadeREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 12
    end
    object C_ContabilidadeNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_ContabilidadeDATA_AUDIT: TDateField
      FieldName = 'DATA_AUDIT'
    end
    object C_ContabilidadeUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_ContabilidadeHORA_AUDIT: TStringField
      FieldName = 'HORA_AUDIT'
      Size = 5
    end
    object C_ContabilidadeQ_ContabilidadeItens: TDataSetField
      FieldName = 'Q_ContabilidadeItens'
    end
    object C_ContabilidadeIDGERADOR: TIntegerField
      FieldName = 'IDGERADOR'
    end
  end
  object U_Contabilidade: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from lancamentos '
      'where'
      '  LANCAMENTO = :LANCAMENTO')
    ModifySQL.Strings = (
      'update lancamentos'
      'set'
      '  DATA = :DATA,'
      '  ORIGEM = :ORIGEM,'
      '  REFERENCIA = :REFERENCIA,'
      '  NUMERO = :NUMERO,'
      '  USUARIO = :USUARIO,'
      '  DATA_AUDIT = :DATA_AUDIT,'
      '  HORA_AUDIT = :HORA_AUDIT'
      'where'
      '  LANCAMENTO = :OLD_LANCAMENTO')
    InsertSQL.Strings = (
      'insert into lancamentos'
      '  (LANCAMENTO, DATA, ORIGEM, REFERENCIA, NUMERO, USUARIO, '
      'DATA_AUDIT, HORA_AUDIT, IDGERADOR)'
      'values'
      '  (:LANCAMENTO, :DATA, :ORIGEM, :REFERENCIA, :NUMERO, :USUARIO, '
      ':DATA_AUDIT, :HORA_AUDIT, :IDGERADOR)')
    DeleteSQL.Strings = (
      'delete from lancamentos'
      'where'
      '  LANCAMENTO = :OLD_LANCAMENTO')
    Left = 42
    Top = 151
  end
  object Q_PlanoConta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.conta,c.codigoreduzido, c.descricao, t.descricao as Des' +
        'cTipo, c.contapai, c.saldo, c.tipoconta'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'order by c.tipoconta, c.descricao')
    Left = 292
    Top = 16
  end
  object Q_PlanoContaProvider: TDataSetProvider
    DataSet = Q_PlanoConta
    Constraints = True
    Left = 291
    Top = 63
  end
  object C_PlanoConta: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'Q_PlanoContaProvider'
    Left = 295
    Top = 114
    object C_PlanoContaCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
    end
    object C_PlanoContaSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_PlanoContaCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Size = 12
    end
    object C_PlanoContaTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_PlanoContaCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_PlanoContaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_PlanoContaDESCTIPO: TStringField
      FieldName = 'DESCTIPO'
      Size = 25
    end
  end
  object C_PlanoContaDS: TDataSource
    DataSet = C_PlanoConta
    Left = 295
    Top = 164
  end
  object Q_ContabilidadeItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_ContabilidadeDS
    SQL.Strings = (
      'select li.*, c.tipoconta'
      'from lancamentositens li , contas c'
      'where lancamento = :LANCAMENTO'
      'and  li.conta = c.conta ')
    UpdateObject = U_ContabilidadeItens
    Left = 168
    Top = 8
    ParamData = <
      item
        DataType = ftInteger
        Name = 'LANCAMENTO'
        ParamType = ptUnknown
      end>
  end
  object C_ContabilidadeItens: TClientDataSet
    Aggregates = <>
    DataSetField = C_ContabilidadeQ_ContabilidadeItens
    Params = <>
    BeforePost = C_ContabilidadeItensBeforePost
    OnNewRecord = C_ContabilidadeItensNewRecord
    Left = 167
    Top = 64
    object C_ContabilidadeItensLANCAMENTOITEM: TIntegerField
      FieldName = 'LANCAMENTOITEM'
      Required = True
    end
    object C_ContabilidadeItensCONTA: TIntegerField
      FieldName = 'CONTA'
      OnChange = C_ContabilidadeItensCONTAChange
    end
    object C_ContabilidadeItensVALOR: TBCDField
      FieldName = 'VALOR'
      Precision = 18
      Size = 2
    end
    object C_ContabilidadeItensHISTORICO: TStringField
      FieldName = 'HISTORICO'
      Size = 255
    end
    object C_ContabilidadeItensLANCAMENTO: TIntegerField
      FieldName = 'LANCAMENTO'
    end
    object C_ContabilidadeItensDebito: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Debito'
      DisplayFormat = '###,##0.00'
      Precision = 18
    end
    object C_ContabilidadeItensCredito: TIBBCDField
      FieldKind = fkInternalCalc
      FieldName = 'Credito'
      DisplayFormat = '###,##0.00'
      Precision = 18
    end
    object C_ContabilidadeItenslkConta: TStringField
      FieldKind = fkLookup
      FieldName = 'lkConta'
      LookupDataSet = C_PlanoConta
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA'
      Size = 40
      Lookup = True
    end
    object C_ContabilidadeItensFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_ContabilidadeItensREGISTRO: TIntegerField
      FieldName = 'REGISTRO'
    end
    object C_ContabilidadeItensALTERAR: TIntegerField
      FieldName = 'ALTERAR'
    end
    object C_ContabilidadeItensTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_ContabilidadeItensDescTipo: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'DescTipo'
      Size = 25
    end
    object C_ContabilidadeItensFlag: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'Flag'
      Size = 10
    end
    object C_ContabilidadeItensFLAG_ID: TIntegerField
      FieldName = 'FLAG_ID'
    end
  end
  object U_ContabilidadeItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from lancamentositens '
      'where'
      '  LANCAMENTOITEM = :LANCAMENTOITEM')
    ModifySQL.Strings = (
      'update lancamentositens'
      'set'
      '  CONTA = :CONTA,'
      '  HISTORICO = :HISTORICO,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  REGISTRO = :REGISTRO,'
      '  ALTERAR = :ALTERAR,'
      '  FLAG_ID = :FLAG_ID'
      'where'
      '  LANCAMENTOITEM = :OLD_LANCAMENTOITEM')
    InsertSQL.Strings = (
      'insert into lancamentositens'
      '  (LANCAMENTOITEM, CONTA, VALOR, HISTORICO, LANCAMENTO, '
      ' FAVORECIDO, REGISTRO, ALTERAR, FLAG_ID)'
      'values'
      '  (:LANCAMENTOITEM, :CONTA, :VALOR, :HISTORICO, :LANCAMENTO, '
      ' :FAVORECIDO, :REGISTRO, :ALTERAR, :FLAG_ID)')
    DeleteSQL.Strings = (
      'delete from lancamentositens'
      'where'
      '  LANCAMENTOITEM = :OLD_LANCAMENTOITEM')
    Left = 172
    Top = 121
  end
  object Q_ContabilProvider: TDataSetProvider
    DataSet = Q_Contabilidade
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 40
    Top = 55
  end
  object Q_ContabilidadeDS: TDataSource
    DataSet = Q_Contabilidade
    Left = 40
    Top = 207
  end
  object DlgMsg: TDlgMsg
    Left = 148
    Top = 208
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 211
    Top = 180
  end
end
