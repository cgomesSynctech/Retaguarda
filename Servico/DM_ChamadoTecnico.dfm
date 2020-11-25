inherited DMChamadoTecnico: TDMChamadoTecnico
  Left = 349
  Top = 141
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select ch.chamado, ch.cliente, ch.funcionario,'
      'ch.datamarcacao, ch.horamarcacao, ch.defeitoalegado,'
      
        'ch.status, ch.defeitoencontrado, ch.dataentrada, ch.horaentrada,' +
        ' ch.datasaida, ch.horasaida, f.nome as nomecliente, v.nome as no' +
        'mefunc'
      'from chamados ch'
      'left join favorecidos f on ch.cliente = f.favorecido'
      'left join favorecidos v on ch.funcionario = v.favorecido')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from chamados '
      'where'
      '  CHAMADO = :CHAMADO')
    ModifySQL.Strings = (
      'update chamados'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  FUNCIONARIO = :FUNCIONARIO,'
      '  DATAMARCACAO = :DATAMARCACAO,'
      '  HORAMARCACAO = :HORAMARCACAO,'
      '  DEFEITOALEGADO = :DEFEITOALEGADO,'
      '  STATUS = :STATUS,'
      '  DEFEITOENCONTRADO = :DEFEITOENCONTRADO,'
      '  DATAENTRADA = :DATAENTRADA,'
      '  HORAENTRADA = :HORAENTRADA,'
      '  DATASAIDA = :DATASAIDA,'
      '  HORASAIDA = :HORASAIDA'
      'where'
      '  CHAMADO = :OLD_CHAMADO')
    InsertSQL.Strings = (
      'insert into chamados'
      '  (CHAMADO, CLIENTE, FUNCIONARIO, DATAMARCACAO, HORAMARCACAO, '
      'DEFEITOALEGADO, '
      '   STATUS, DEFEITOENCONTRADO, DATAENTRADA, HORAENTRADA, '
      'DATASAIDA, HORASAIDA)'
      'values'
      
        '  (:CHAMADO, :CLIENTE, :FUNCIONARIO, :DATAMARCACAO, :HORAMARCACA' +
        'O, '
      ':DEFEITOALEGADO, '
      '   :STATUS, :DEFEITOENCONTRADO, :DATAENTRADA, :HORAENTRADA, '
      ':DATASAIDA, '
      '   :HORASAIDA)')
    DeleteSQL.Strings = (
      'delete from chamados'
      'where'
      '  CHAMADO = :OLD_CHAMADO')
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    KeyForIDs = 'CHAMADOS'
    Tabela_Nome = 'CHAMADOS'
    Tabela_Chave = 'CHAMADO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaCHAMADO: TIntegerField
      FieldName = 'CHAMADO'
      Required = True
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_TabelaFUNCIONARIO: TIntegerField
      FieldName = 'FUNCIONARIO'
    end
    object C_TabelaDATAMARCACAO: TDateField
      FieldName = 'DATAMARCACAO'
    end
    object C_TabelaHORAMARCACAO: TTimeField
      FieldName = 'HORAMARCACAO'
    end
    object C_TabelaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object C_TabelaNOMECLIENTE: TStringField
      FieldName = 'NOMECLIENTE'
      Size = 50
    end
    object C_TabelaNOMEFUNC: TStringField
      FieldName = 'NOMEFUNC'
      Size = 50
    end
    object C_TabelaDEFEITOALEGADO: TStringField
      FieldName = 'DEFEITOALEGADO'
      Size = 255
    end
    object C_TabelaDEFEITOENCONTRADO: TStringField
      FieldName = 'DEFEITOENCONTRADO'
      Size = 255
    end
    object C_TabelaDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
    end
    object C_TabelaHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
    end
    object C_TabelaDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
    end
    object C_TabelaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
    end
  end
end
