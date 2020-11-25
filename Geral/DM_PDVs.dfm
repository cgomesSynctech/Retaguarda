inherited DMPDVs: TDMPDVs
  Width = 293
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select p.*, maquina as oldmaquina from PDVs p')
    Top = 2
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from PDVs '
      'where'
      '  PDV = :PDV')
    ModifySQL.Strings = (
      'update PDVs'
      'set'
      '  NUMEROECF = :NUMEROECF,'
      '  NUMEROSERIEECF = :NUMEROSERIEECF,'
      '  MODELODOC = :MODELODOC,'
      '  DESCRICAO = :DESCRICAO,'
      '  PORTA = :PORTA,'
      '  ECF = :ECF,'
      '  MAQUINA = :MAQUINA,'
      '  ATIVO = :ATIVO,'
      '  TEF = :TEF,'
      '  TEFGP = :TEFGP,'
      '  TEFHIPER = :TEFHIPER,'
      '  TEFTECBAN = :TEFTECBAN,'
      '  CONSULTACHEQUE = :CONSULTACHEQUE,'
      '  TEFDEDICADO = :TEFDEDICADO,'
      '  CHEQUEDEDICADO = :CHEQUEDEDICADO,'
      '  DIRETORIOCUPONS = :DIRETORIOCUPONS,'
      '  PDVDEDICADO = :PDVDEDICADO'
      'where'
      '  PDV = :OLD_PDV')
    InsertSQL.Strings = (
      'insert into PDVs'
      '  (PDV, NUMEROECF, NUMEROSERIEECF, MODELODOC, DESCRICAO, PORTA, '
      'ECF, MAQUINA, '
      '   ATIVO, TEF, TEFGP, TEFHIPER, TEFTECBAN, CONSULTACHEQUE, '
      'TEFDEDICADO, CHEQUEDEDICADO, DIRETORIOCUPONS, PDVDEDICADO)'
      'values'
      '  (:PDV, :NUMEROECF, :NUMEROSERIEECF, :MODELODOC, :DESCRICAO, '
      ':PORTA, :ECF, '
      '   :MAQUINA, :ATIVO, :TEF, :TEFGP, :TEFHIPER, :TEFTECBAN, '
      ':CONSULTACHEQUE, :TEFDEDICADO, :CHEQUEDEDICADO, '
      ':DIRETORIOCUPONS, :PDVDEDICADO)')
    DeleteSQL.Strings = (
      'delete from PDVs'
      'where'
      '  PDV = :OLD_PDV')
  end
  inherited DMComponent: TDMComponent
    Gravar5_Terminar = DMComponentGravar5_Terminar
    KeyForIDs = 'PDVs'
    Tabela_Nome = 'PDVs'
    Tabela_Chave = 'PDV'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaPDV: TIntegerField
      FieldName = 'PDV'
      Origin = 'PDVS.PDV'
      Required = True
    end
    object C_TabelaNUMEROECF: TStringField
      FieldName = 'NUMEROECF'
      Origin = 'PDVS.NUMEROECF'
      Size = 3
    end
    object C_TabelaNUMEROSERIEECF: TStringField
      FieldName = 'NUMEROSERIEECF'
      Origin = 'PDVS.NUMEROSERIEECF'
      Size = 15
    end
    object C_TabelaMODELODOC: TStringField
      FieldName = 'MODELODOC'
      Origin = 'PDVS.MODELODOC'
      Size = 2
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PDVS.DESCRICAO'
    end
    object C_TabelaPORTA: TStringField
      FieldName = 'PORTA'
      Origin = 'PDVS.PORTA'
      Size = 4
    end
    object C_TabelaECF: TIntegerField
      FieldName = 'ECF'
      Origin = 'PDVS.ECF'
    end
    object C_TabelaMAQUINA: TStringField
      FieldName = 'MAQUINA'
      Origin = 'PDVS.MAQUINA'
      OnValidate = C_TabelaMAQUINAValidate
      Size = 40
    end
    object C_TabelaOLDMAQUINA: TStringField
      FieldName = 'OLDMAQUINA'
      Origin = 'PDVS.OLDMAQUINA'
      Size = 40
    end
    object C_TabelaATIVO: TStringField
      FieldName = 'ATIVO'
      Size = 1
    end
    object C_TabelaTEF: TStringField
      FieldName = 'TEF'
      Size = 1
    end
    object C_TabelaTEFGP: TStringField
      FieldName = 'TEFGP'
      Size = 1
    end
    object C_TabelaTEFHIPER: TStringField
      FieldName = 'TEFHIPER'
      Size = 1
    end
    object C_TabelaTEFTECBAN: TStringField
      FieldName = 'TEFTECBAN'
      Size = 1
    end
    object C_TabelaCONSULTACHEQUE: TStringField
      FieldName = 'CONSULTACHEQUE'
      Size = 1
    end
    object C_TabelaTEFDEDICADO: TStringField
      FieldName = 'TEFDEDICADO'
      Size = 1
    end
    object C_TabelaCHEQUEDEDICADO: TStringField
      FieldName = 'CHEQUEDEDICADO'
      Size = 1
    end
    object C_TabelaDIRETORIOCUPONS: TStringField
      FieldName = 'DIRETORIOCUPONS'
      Size = 255
    end
    object C_TabelaPDVDEDICADO: TStringField
      FieldName = 'PDVDEDICADO'
      Size = 10
    end
  end
end
