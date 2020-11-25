inherited DMFactoryEmpresa: TDMFactoryEmpresa
  Left = 257
  Top = 91
  Height = 367
  Width = 350
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select fc.*, f.nome from FACTORYCHEQUES fc'
      'Left join Favorecidos f on fc.favorecido = f.favorecido')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FACTORYCHEQUE,'
      '  FAVORECIDO,'
      '  DATA,'
      '  IDAPAGAR,'
      '  IDARECEBER,'
      '  TAXA,'
      '  PERCENTUALJUROS'
      'from FACTORYCHEQUES '
      'where'
      '  FACTORYCHEQUE = :FACTORYCHEQUE')
    ModifySQL.Strings = (
      'update FACTORYCHEQUES'
      'set'
      '  FAVORECIDO = :FAVORECIDO,'
      '  DATA = :DATA,'
      '  IDAPAGAR = :IDAPAGAR,'
      '  IDARECEBER = :IDARECEBER,'
      '  TAXA = :TAXA,'
      '  PERCENTUALJUROS = :PERCENTUALJUROS'
      'where'
      '  FACTORYCHEQUE = :OLD_FACTORYCHEQUE')
    InsertSQL.Strings = (
      'insert into FACTORYCHEQUES'
      
        '  (FACTORYCHEQUE, FAVORECIDO, DATA, IDAPAGAR, IDARECEBER, TAXA, ' +
        'PERCENTUALJUROS)'
      'values'
      
        '  (:FACTORYCHEQUE, :FAVORECIDO, :DATA, :IDAPAGAR, :IDARECEBER, :' +
        'TAXA, :PERCENTUALJUROS)')
    DeleteSQL.Strings = (
      'delete from FACTORYCHEQUES'
      'where'
      '  FACTORYCHEQUE = :OLD_FACTORYCHEQUE')
  end
  inherited DMComponent: TDMComponent
    AposIniciar = DMComponentAposIniciar
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    Exclusao = DMComponentExclusao
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Apagar_AntesApply = DMComponentApagar_AntesApply
    KeyForIDs = 'FACTORYCHEQUE'
    Tabela_Nome = 'FACTORYCHEQUES'
    Tabela_Chave = 'FACTORYCHEQUE'
    MestreDetalhe = True
    GenerateIDFor.Strings = (
      'C_CHEQUES=FACTORYCHEQUEDET')
  end
  inherited C_Tabela: TClientDataSet
    Active = False
    object C_TabelaFACTORYCHEQUE: TIntegerField
      FieldName = 'FACTORYCHEQUE'
      Origin = 'FACTORYCHEQUES.FACTORYCHEQUE'
      Required = True
    end
    object C_TabelaFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FACTORYCHEQUES.FAVORECIDO'
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'FACTORYCHEQUES.DATA'
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelaIDAPAGAR: TIntegerField
      FieldName = 'IDAPAGAR'
      Origin = 'FACTORYCHEQUES.IDAPAGAR'
    end
    object C_TabelaQ_Cheques: TDataSetField
      FieldName = 'Q_Cheques'
    end
    object C_TabelaPERCENTUALJUROS: TBCDField
      FieldName = 'PERCENTUALJUROS'
      Origin = 'FACTORYCHEQUES.PERCENTUALJUROS'
      OnChange = C_TabelaPERCENTUALJUROSChange
      DisplayFormat = '##0.00 %'
      Precision = 18
      Size = 2
    end
    object C_TabelaIDARECEBER: TIntegerField
      FieldName = 'IDARECEBER'
      Origin = 'FACTORYCHEQUES.IDARECEBER'
    end
    object C_TabelaTAXA: TBCDField
      FieldName = 'TAXA'
      Origin = 'FACTORYCHEQUES.TAXA'
      Precision = 18
      Size = 2
    end
  end
  object Q_Cheques: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select fc.*, f.nome from FACTORYCHEQUESDET fc'
      'left join Favorecidos f on fc.cliente = f.favorecido'
      'where factorycheque = :factorycheque')
    UpdateObject = U_Cheques
    Left = 169
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FACTORYCHEQUE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_Cheques: TClientDataSet
    Active = False
    Aggregates = <>
    DataSetField = C_TabelaQ_Cheques
    Params = <>
    OnCalcFields = C_ChequesCalcFields
    OnNewRecord = C_ChequesNewRecord
    Left = 169
    Top = 100
    object C_ChequesFACTORYCHEQUEDET: TIntegerField
      FieldName = 'FACTORYCHEQUEDET'
      Origin = 'FACTORYCHEQUESDET.FACTORYCHEQUEDET'
      Required = True
    end
    object C_ChequesFACTORYCHEQUE: TIntegerField
      FieldName = 'FACTORYCHEQUE'
      Origin = 'FACTORYCHEQUESDET.FACTORYCHEQUE'
    end
    object C_ChequesCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'FACTORYCHEQUESDET.CLIENTE'
    end
    object C_ChequesNUMCHEQUE: TIntegerField
      FieldName = 'NUMCHEQUE'
      Origin = 'FACTORYCHEQUESDET.NUMCHEQUE'
    end
    object C_ChequesVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
      Origin = 'FACTORYCHEQUESDET.VENCIMENTO'
      OnChange = C_ChequesVENCIMENTOChange
      EditMask = '!99/99/0000;1;_'
    end
    object C_ChequesBANCO: TIntegerField
      FieldName = 'BANCO'
      Origin = 'FACTORYCHEQUESDET.BANCO'
    end
    object C_ChequesVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'FACTORYCHEQUESDET.VALOR'
      OnChange = C_ChequesVALORChange
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesENCARGOS: TBCDField
      FieldName = 'ENCARGOS'
      Origin = 'FACTORYCHEQUESDET.ENCARGOS'
      OnChange = C_ChequesENCARGOSChange
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesAPAGAR: TBCDField
      FieldName = 'APAGAR'
      Origin = 'FACTORYCHEQUESDET.APAGAR'
      OnChange = C_ChequesAPAGARChange
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_ChequesDiasVencimento: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'DiasVencimento'
    end
    object C_ChequesOBS: TStringField
      FieldName = 'OBS'
      Origin = 'FACTORYCHEQUESDET.OBS'
      Size = 50
    end
    object C_ChequesDescBanco: TStringField
      FieldKind = fkLookup
      FieldName = 'DescBanco'
      LookupDataSet = C_Bancos
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'BANCO'
      Size = 50
      Lookup = True
    end
    object C_ChequesContaReceber: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = 'ContaReceber'
    end
    object C_ChequesTAXA: TBCDField
      FieldName = 'TAXA'
      Origin = 'FACTORYCHEQUESDET.TAXA'
      OnChange = C_ChequesTAXAChange
      DisplayFormat = '#,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ChequesIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Origin = 'FACTORYCHEQUESDET.IDDOC'
    end
  end
  object C_ChequesDS: TDataSource
    DataSet = C_Cheques
    Left = 167
    Top = 147
  end
  object U_Cheques: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  FACTORYCHEQUEDET,'
      '  FACTORYCHEQUE,'
      '  CLIENTE,'
      '  NUMCHEQUE,'
      '  VENCIMENTO,'
      '  BANCO,'
      '  VALOR,'
      '  ENCARGOS,'
      '  APAGAR,'
      '  OBS,'
      '  TAXA,'
      '  IDDOC'
      'from FACTORYCHEQUESDET '
      'where'
      '  FACTORYCHEQUEDET = :FACTORYCHEQUEDET')
    ModifySQL.Strings = (
      'update FACTORYCHEQUESDET'
      'set'
      '  FACTORYCHEQUE = :FACTORYCHEQUE,'
      '  CLIENTE = :CLIENTE,'
      '  NUMCHEQUE = :NUMCHEQUE,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  BANCO = :BANCO,'
      '  VALOR = :VALOR,'
      '  ENCARGOS = :ENCARGOS,'
      '  APAGAR = :APAGAR,'
      '  OBS = :OBS,'
      '  TAXA = :TAXA,'
      '  IDDOC = :IDDOC'
      'where'
      '  FACTORYCHEQUEDET = :OLD_FACTORYCHEQUEDET')
    InsertSQL.Strings = (
      'insert into FACTORYCHEQUESDET'
      
        '  (FACTORYCHEQUEDET, FACTORYCHEQUE, CLIENTE, NUMCHEQUE, VENCIMEN' +
        'TO, BANCO, '
      '   VALOR, ENCARGOS, APAGAR, OBS, TAXA, IDDOC)'
      'values'
      
        '  (:FACTORYCHEQUEDET, :FACTORYCHEQUE, :CLIENTE, :NUMCHEQUE, :VEN' +
        'CIMENTO, '
      '   :BANCO, :VALOR, :ENCARGOS, :APAGAR, :OBS, :TAXA, :IDDOC)')
    DeleteSQL.Strings = (
      'delete from FACTORYCHEQUESDET'
      'where'
      '  FACTORYCHEQUEDET = :OLD_FACTORYCHEQUEDET')
    Left = 169
    Top = 52
  end
  object Q_Bancos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select f.favorecido, f.nome from favorecidos f'
      'where f.tipofavorecido = 4 and desativado = '#39'N'#39
      'order by f.nome')
    Left = 256
    Top = 8
  end
  object C_Bancos: TClientDataSet
    Active = False
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Bancos'
    Left = 256
    Top = 56
    object C_BancosFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_BancosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object P_Bancos: TDataSetProvider
    DataSet = Q_Bancos
    Constraints = True
    Left = 256
    Top = 104
  end
end
