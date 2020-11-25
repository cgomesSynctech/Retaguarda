inherited DMFretes: TDMFretes
  Left = 274
  Top = 123
  Height = 497
  Width = 536
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select e.entrada, e.numero, e.cif_fob, e.data, e.datanota, e.fav' +
        'orecido, e.cfopnota, e.cfopentrada, e.serienota, e.modelo, e.bas' +
        'ecalcicms, e.aliqicmscompra, e.valoricms, e.total, e.dataentrega' +
        ', e.obs, e.tipomovimento, e.tipopadrao, e.situacao, e.volumes, e' +
        '.desconto, e.frete, e.notaorigem, e.juros, e.outrasdespesas, e.t' +
        'otalitens, e.totalitens123, e.descontoitens, e.pjuros, e.usuario' +
        ', e.uforigem, f.nome, f.razao, e.PDV '
      'from Entradas e, Favorecidos f'
      'where e.tipopadrao = 108 and e.favorecido = f.favorecido')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Entradas '
      'where'
      '  ENTRADA = :ENTRADA')
    ModifySQL.Strings = (
      'update Entradas'
      'set'
      '  NUMERO = :NUMERO,'
      '  CIF_FOB = :CIF_FOB,'
      '  DATA = :DATA,'
      '  DATANOTA = :DATANOTA,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  CFOPNOTA = :CFOPNOTA,'
      '  CFOPENTRADA = :CFOPENTRADA,'
      '  SERIENOTA = :SERIENOTA,'
      '  MODELO = :MODELO,'
      '  BASECALCICMS = :BASECALCICMS,'
      '  ALIQICMSCOMPRA = :ALIQICMSCOMPRA,'
      '  VALORICMS = :VALORICMS,'
      '  TOTAL = :TOTAL,'
      '  DATAENTREGA = :DATAENTREGA,'
      '  OBS = :OBS,'
      '  TIPOMOVIMENTO = :TIPOMOVIMENTO,'
      '  TIPOPADRAO = :TIPOPADRAO,'
      '  SITUACAO = :SITUACAO,'
      '  VOLUMES = :VOLUMES,'
      '  DESCONTO = :DESCONTO,'
      '  FRETE = :FRETE,'
      '  NOTAORIGEM = :NOTAORIGEM,'
      '  JUROS = :JUROS,'
      '  OUTRASDESPESAS = :OUTRASDESPESAS,'
      '  TOTALITENS = :TOTALITENS,'
      '  TOTALITENS123 = :TOTALITENS123,'
      '  DESCONTOITENS = :DESCONTOITENS,'
      '  PJUROS = :PJUROS,'
      '  USUARIO = :USUARIO,'
      '  UFORIGEM = :UFORIGEM'
      'where'
      '  ENTRADA = :OLD_ENTRADA')
    InsertSQL.Strings = (
      'insert into Entradas'
      
        '  (ENTRADA, NUMERO, CIF_FOB, DATA, DATANOTA, FAVORECIDO, CFOPNOT' +
        'A, '
      'CFOPENTRADA, '
      '   SERIENOTA, MODELO, BASECALCICMS, ALIQICMSCOMPRA, VALORICMS, '
      'TOTAL, DATAENTREGA, '
      '   OBS, TIPOMOVIMENTO, TIPOPADRAO, SITUACAO, VOLUMES, DESCONTO, '
      'FRETE, '
      
        '   NOTAORIGEM, JUROS, OUTRASDESPESAS, TOTALITENS, TOTALITENS123,' +
        ' '
      'DESCONTOITENS, '
      '   PJUROS, USUARIO, UFORIGEM, PDV)'
      'values'
      '  (:ENTRADA, :NUMERO, :CIF_FOB, :DATA, :DATANOTA, :FAVORECIDO, '
      ':CFOPNOTA, '
      '   :CFOPENTRADA, :SERIENOTA, :MODELO, :BASECALCICMS, '
      ':ALIQICMSCOMPRA, :VALORICMS, '
      '   :TOTAL, :DATAENTREGA, :OBS, :TIPOMOVIMENTO, :TIPOPADRAO, '
      ':SITUACAO, '
      '   :VOLUMES, :DESCONTO, :FRETE, :NOTAORIGEM, :JUROS, '
      ':OUTRASDESPESAS, :TOTALITENS, '
      
        '   :TOTALITENS123, :DESCONTOITENS, :PJUROS, :USUARIO, :UFORIGEM,' +
        ' :PDV)')
    DeleteSQL.Strings = (
      'delete from Entradas'
      'where'
      '  ENTRADA = :OLD_ENTRADA')
  end
  inherited DMComponent: TDMComponent
    Exclusao = DMComponentExclusao
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'Entradas'
    Tabela_Nome = 'Entradas'
    Tabela_Chave = 'Entrada'
  end
  inherited C_Tabela: TClientDataSet
    Left = 31
    object C_TabelaENTRADA: TIntegerField
      FieldName = 'ENTRADA'
      Required = True
    end
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Size = 12
    end
    object C_TabelaCIF_FOB: TStringField
      FieldName = 'CIF_FOB'
      Size = 1
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Required = True
    end
    object C_TabelaDATANOTA: TDateField
      FieldName = 'DATANOTA'
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
    end
    object C_TabelaCFOPNOTA: TStringField
      FieldName = 'CFOPNOTA'
      Size = 4
    end
    object C_TabelaCFOPENTRADA: TStringField
      FieldName = 'CFOPENTRADA'
      Size = 4
    end
    object C_TabelaSERIENOTA: TStringField
      FieldName = 'SERIENOTA'
      Size = 3
    end
    object C_TabelaMODELO: TStringField
      FieldName = 'MODELO'
      Size = 2
    end
    object C_TabelaDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
    object C_TabelaTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
    end
    object C_TabelaTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
    end
    object C_TabelaSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_TabelaNOTAORIGEM: TIntegerField
      FieldName = 'NOTAORIGEM'
    end
    object C_TabelaUSUARIO: TStringField
      FieldName = 'USUARIO'
      Size = 15
    end
    object C_TabelaUFORIGEM: TStringField
      FieldName = 'UFORIGEM'
      Size = 2
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaRAZAO: TStringField
      FieldName = 'RAZAO'
      Size = 50
    end
    object C_TabelalkCFOP: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCFOP'
      LookupDataSet = C_CFOPs
      LookupKeyFields = 'CFOP'
      LookupResultField = 'CFOP'
      KeyFields = 'CFOPNOTA'
      Size = 4
      Lookup = True
    end
    object C_TabelalkTipoMov: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoMov'
      LookupDataSet = C_TiposMovimento
      LookupKeyFields = 'TIPOMOVIMENTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOMOVIMENTO'
      Size = 30
      Lookup = True
    end
    object C_TabelaPDV: TIntegerField
      FieldName = 'PDV'
      Required = True
    end
    object C_TabelaBASECALCICMS: TFloatField
      FieldName = 'BASECALCICMS'
    end
    object C_TabelaALIQICMSCOMPRA: TBCDField
      FieldName = 'ALIQICMSCOMPRA'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALORICMS: TFloatField
      FieldName = 'VALORICMS'
    end
    object C_TabelaTOTAL: TFloatField
      FieldName = 'TOTAL'
    end
    object C_TabelaDESCONTO: TBCDField
      FieldName = 'DESCONTO'
      Precision = 18
      Size = 2
    end
    object C_TabelaFRETE: TBCDField
      FieldName = 'FRETE'
      Precision = 18
      Size = 2
    end
    object C_TabelaOUTRASDESPESAS: TFloatField
      FieldName = 'OUTRASDESPESAS'
    end
    object C_TabelaTOTALITENS: TFloatField
      FieldName = 'TOTALITENS'
    end
    object C_TabelaTOTALITENS123: TFloatField
      FieldName = 'TOTALITENS123'
    end
    object C_TabelaDESCONTOITENS: TFloatField
      FieldName = 'DESCONTOITENS'
    end
    object C_TabelaPJUROS: TFloatField
      FieldName = 'PJUROS'
    end
    object C_TabelaVOLUMES: TFloatField
      FieldName = 'VOLUMES'
    end
    object C_TabelaJUROS: TFloatField
      FieldName = 'JUROS'
    end
  end
  object Q_CFOPs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from cfops'
      'order by cfop')
    Left = 157
    Top = 9
  end
  object C_CFOPs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CFOPs'
    Left = 160
    Top = 105
    object C_CFOPsCFOP: TStringField
      FieldName = 'CFOP'
      Required = True
      Size = 4
    end
    object C_CFOPsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 150
    end
    object C_CFOPsPAI: TStringField
      FieldName = 'PAI'
      Size = 4
    end
  end
  object P_CFOPs: TDataSetProvider
    DataSet = Q_CFOPs
    Constraints = True
    Left = 161
    Top = 59
  end
  object C_CFOPsDS: TDataSource
    DataSet = C_CFOPs
    Left = 159
    Top = 152
  end
  object Q_TiposMovimento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao, tp.TipoOrigem'
      'From TiposMovimento t, TiposPadrao tp'
      'Where t.TipoPadrao = tp.TipoPadrao and T.Tipo = '#39'E'#39' '
      'Order by T.TipoPadrao, T.Descricao')
    UniDirectional = True
    Left = 255
    Top = 7
  end
  object P_TiposMovimento: TDataSetProvider
    DataSet = Q_TiposMovimento
    Constraints = True
    Options = [poAllowMultiRecordUpdates, poDisableInserts, poDisableDeletes]
    Left = 255
    Top = 52
  end
  object C_TiposMovimento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposMovimento'
    Left = 257
    Top = 101
    object C_TiposMovimentoTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TiposMovimentoDESCRICAO: TStringField
      DisplayWidth = 18
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 30
    end
    object C_TiposMovimentoTIPOPADRAO: TIntegerField
      FieldName = 'TIPOPADRAO'
      Origin = 'TIPOSMOVIMENTO.TIPOPADRAO'
    end
    object C_TiposMovimentoTIPOORIGEM: TIntegerField
      FieldName = 'TIPOORIGEM'
      Origin = 'TIPOSPADRAO.TIPOORIGEM'
    end
    object C_TiposMovimentoPOSSUIICMS: TStringField
      FieldName = 'POSSUIICMS'
      Origin = 'TIPOSMOVIMENTO.POSSUIICMS'
      Size = 1
    end
    object C_TiposMovimentoPOSSUIIPI: TStringField
      FieldName = 'POSSUIIPI'
      Origin = 'TIPOSMOVIMENTO.POSSUIIPI'
      Size = 1
    end
    object C_TiposMovimentoCONTABILIZAICMS: TStringField
      FieldName = 'CONTABILIZAICMS'
      Origin = 'TIPOSMOVIMENTO.CONTABILIZAICMS'
      Size = 1
    end
    object C_TiposMovimentoSERIE: TStringField
      FieldName = 'SERIE'
      Size = 3
    end
    object C_TiposMovimentoMODELODOC: TStringField
      FieldName = 'MODELODOC'
      Size = 2
    end
    object C_TiposMovimentoCFOPASSOCIADO: TStringField
      FieldName = 'CFOPASSOCIADO'
      Size = 4
    end
  end
  object C_TiposMovimentoDS: TDataSource
    DataSet = C_TiposMovimento
    Left = 255
    Top = 152
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 258
    Top = 209
  end
end
