inherited DMClientesEquip: TDMClientesEquip
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'select e.equipamento, e.cliente, e.numeroserie, e.modelo, e.data' +
        'compra, e.diasgarantia, e.notafiscal, e.revendedor,e.cpf_cnpj,'
      'f.nome, m.descricao, e.marca, e.tipo'
      'from clientesequipamentos e'
      'left join favorecidos f on e.cliente = f.favorecido'
      'left join modelos m on e.modelo = m.modelo')
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from clientesequipamentos '
      'where'
      '  EQUIPAMENTO = :EQUIPAMENTO')
    ModifySQL.Strings = (
      'update clientesequipamentos'
      'set'
      '  CLIENTE = :CLIENTE,'
      '  NUMEROSERIE = :NUMEROSERIE,'
      '  MODELO = :MODELO,'
      '  DATACOMPRA = :DATACOMPRA,'
      '  DIASGARANTIA = :DIASGARANTIA,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  REVENDEDOR = :REVENDEDOR,'
      '  CPF_CNPJ = :CPF_CNPJ'
      '  MARCA = :MARCA'
      '  TIPO = :TIPO'
      'where'
      '  EQUIPAMENTO = :OLD_EQUIPAMENTO')
    InsertSQL.Strings = (
      'insert into clientesequipamentos'
      '  (EQUIPAMENTO, CLIENTE, NUMEROSERIE, MODELO, DATACOMPRA, '
      'DIASGARANTIA, '
      '   NOTAFISCAL, REVENDEDOR,CPF_CNPJ, MARCA, TIPO)'
      'values'
      '  (:EQUIPAMENTO, :CLIENTE, :NUMEROSERIE, :MODELO, :DATACOMPRA, '
      ':DIASGARANTIA, '
      '   :NOTAFISCAL, :REVENDEDOR,:CPF_CNPJ, :MARCA, :TIPO')
    DeleteSQL.Strings = (
      'delete from clientesequipamentos'
      'where'
      '  EQUIPAMENTO = :OLD_EQUIPAMENTO')
  end
  inherited DMComponent: TDMComponent
    KeyForIDs = 'CLIENTESEQUIPAMENTOS'
    Tabela_Nome = 'CLIENTESEQUIPAMENTOS'
    Tabela_Chave = 'EQUIPAMENTO'
  end
  inherited C_Tabela: TClientDataSet
    object C_TabelaEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Required = True
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
    end
    object C_TabelaNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Size = 30
    end
    object C_TabelaMODELO: TIntegerField
      FieldName = 'MODELO'
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 60
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_TabelaDATACOMPRA: TDateField
      FieldName = 'DATACOMPRA'
    end
    object C_TabelaDIASGARANTIA: TIntegerField
      FieldName = 'DIASGARANTIA'
    end
    object C_TabelaNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 10
    end
    object C_TabelaREVENDEDOR: TStringField
      FieldName = 'REVENDEDOR'
      Size = 50
    end
    object C_TabelaCPF_CNPJ: TStringField
      FieldName = 'CPF_CNPJ'
      Size = 14
    end
    object C_TabelaMARCA: TStringField
      FieldName = 'MARCA'
    end
    object C_TabelaTIPO: TStringField
      FieldName = 'TIPO'
    end
  end
end
