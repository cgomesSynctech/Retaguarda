inherited DMPlanos_Pagamento: TDMPlanos_Pagamento
  Left = 463
  Top = 119
  Width = 273
  inherited OpenDialog: TOpenDialog
    Left = 162
  end
  inherited SaveDialog: TSaveDialog
    Left = 187
    Top = 271
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select * from PLANOSPAGAMENTO')
    Left = 27
    Top = 8
  end
  inherited Q_MasterDS: TDataSource
    Left = 100
    Top = 8
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  PLANOPAGAMENTO,'
      '  DESCRICAO,'
      '  PDESCONTO,'
      '  DIAS_ANTECIPACAO,'
      '  JUROS,'
      '  QTDPARCELAS,'
      '  INTERVALOS,'
      '  TIPO,'
      '  JUROSNEGOCIAVEIS,'
      '  PERIODICIDADE,'
      '  ESQUEMAPARCELAS,'
      '  TIPOENTRADA,'
      '  CARENCIAENTRADA,'
      '  PERCENTUALENTRADA,'
      '  VALIDADE,'
      '  DESATIVADO,'
      '  COMISSAO'
      'from PLANOSPAGAMENTO '
      'where'
      '  PLANOPAGAMENTO = :PLANOPAGAMENTO')
    ModifySQL.Strings = (
      'update PLANOSPAGAMENTO'
      'set'
      '  DESCRICAO = :DESCRICAO,'
      '  PDESCONTO = :PDESCONTO,'
      '  DIAS_ANTECIPACAO = :DIAS_ANTECIPACAO,'
      '  JUROS = :JUROS,'
      '  QTDPARCELAS = :QTDPARCELAS,'
      '  INTERVALOS = :INTERVALOS,'
      '  TIPO = :TIPO,'
      '  JUROSNEGOCIAVEIS = :JUROSNEGOCIAVEIS,'
      '  PERIODICIDADE = :PERIODICIDADE,'
      '  ESQUEMAPARCELAS = :ESQUEMAPARCELAS,'
      '  TIPOENTRADA = :TIPOENTRADA,'
      '  CARENCIAENTRADA = :CARENCIAENTRADA,'
      '  PERCENTUALENTRADA = :PERCENTUALENTRADA,'
      '  VALIDADE = :VALIDADE,'
      '  MENORVALOR = :MENORVALOR,'
      '  DESATIVADO = :DESATIVADO,'
      '  COMISSAO = :COMISSAO'
      'where'
      '  PLANOPAGAMENTO = :OLD_PLANOPAGAMENTO')
    InsertSQL.Strings = (
      'insert into PLANOSPAGAMENTO'
      
        '  (PLANOPAGAMENTO, DESCRICAO, PDESCONTO, DIAS_ANTECIPACAO, JUROS' +
        ', '
      'QTDPARCELAS, '
      '   INTERVALOS, TIPO, JUROSNEGOCIAVEIS, PERIODICIDADE, '
      'ESQUEMAPARCELAS, '
      '   TIPOENTRADA, CARENCIAENTRADA, PERCENTUALENTRADA, VALIDADE, '
      'MENORVALOR, DESATIVADO, COMISSAO)'
      'values'
      '  (:PLANOPAGAMENTO, :DESCRICAO, :PDESCONTO, :DIAS_ANTECIPACAO, '
      ':JUROS, '
      '   :QTDPARCELAS, :INTERVALOS, :TIPO, :JUROSNEGOCIAVEIS, '
      ':PERIODICIDADE, '
      '   :ESQUEMAPARCELAS, :TIPOENTRADA, :CARENCIAENTRADA, '
      ':PERCENTUALENTRADA, '
      '   :VALIDADE, :MENORVALOR, :DESATIVADO, :COMISSAO)')
    DeleteSQL.Strings = (
      'delete from PLANOSPAGAMENTO'
      'where'
      '  PLANOPAGAMENTO = :OLD_PLANOPAGAMENTO')
    Left = 27
    Top = 56
  end
  inherited DMComponent: TDMComponent
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    KeyForIDs = 'PLANOSPAGAMENTO'
    Tabela_Nome = 'PLANOSPAGAMENTO'
    Tabela_Chave = 'PLANOPAGAMENTO'
    Tabela_ChaveAlias = 'PLANOPAGAMENTO'
    DeleteValidate.Strings = (
      'SAIDAS=PLANOPAGAMENTO'
      'ENTRADAS=PLANOPAGAMENTO')
    Left = 27
    Top = 271
  end
  inherited P_Tabela: TDataSetProvider
    Left = 27
    Top = 107
  end
  inherited C_Tabela: TClientDataSet
    Left = 28
    object C_TabelaPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
      Required = True
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TabelaPDESCONTO: TBCDField
      FieldName = 'PDESCONTO'
      DisplayFormat = '##0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaDIAS_ANTECIPACAO: TIntegerField
      FieldName = 'DIAS_ANTECIPACAO'
    end
    object C_TabelaJUROS: TBCDField
      FieldName = 'JUROS'
      DisplayFormat = '##0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaQTDPARCELAS: TIntegerField
      FieldName = 'QTDPARCELAS'
      OnChange = C_TabelaQTDPARCELASChange
    end
    object C_TabelaTIPO: TStringField
      FieldName = 'TIPO'
      Size = 1
    end
    object C_TabelaPERIODICIDADE: TIntegerField
      FieldName = 'PERIODICIDADE'
      OnChange = C_TabelaPERIODICIDADEChange
    end
    object C_TabelaJUROSNEGOCIAVEIS: TStringField
      FieldName = 'JUROSNEGOCIAVEIS'
      Size = 1
    end
    object C_TabelaESQUEMAPARCELAS: TStringField
      FieldName = 'ESQUEMAPARCELAS'
      OnChange = C_TabelaESQUEMAPARCELASChange
      Size = 1
    end
    object C_TabelaTIPOENTRADA: TStringField
      FieldName = 'TIPOENTRADA'
      Size = 1
    end
    object C_TabelaPERCENTUALENTRADA: TBCDField
      FieldName = 'PERCENTUALENTRADA'
      DisplayFormat = '##0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaVALIDADE: TDateField
      FieldName = 'VALIDADE'
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelaINTERVALOS: TStringField
      FieldName = 'INTERVALOS'
      Size = 1000
    end
    object C_TabelaCARENCIAENTRADA: TStringField
      FieldName = 'CARENCIAENTRADA'
      Size = 10
    end
    object C_TabelaMENORVALOR: TBCDField
      FieldName = 'MENORVALOR'
      Size = 2
    end
    object C_TabelaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      DisplayFormat = '#,###,###0.00 %'
      Precision = 18
      Size = 2
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 27
    Top = 211
  end
  inherited ResultSet: TClientDataSet
    Left = 100
    Top = 56
  end
  object C_IntervaloDS: TDataSource
    DataSet = C_Intervalo
    Left = 175
    Top = 55
  end
  object C_Intervalo: TClientDataSet
    Aggregates = <>
    Params = <>
    AfterPost = C_IntervaloAfterPost
    OnNewRecord = C_IntervaloNewRecord
    Left = 174
    Top = 8
    object C_IntervaloParcela: TIntegerField
      FieldName = 'Parcela'
    end
    object C_IntervaloDias: TStringField
      FieldName = 'Dias'
      OnValidate = C_IntervaloDiasValidate
    end
    object C_IntervaloData: TDateField
      FieldName = 'Data'
    end
  end
end
