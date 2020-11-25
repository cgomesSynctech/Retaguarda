inherited DMMontagensProduto: TDMMontagensProduto
  Left = 717
  Top = 101
  Height = 421
  Width = 540
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select m.*, i.codigo as cod_item, i.descricao,'
      
        'cast(coalesce((select sum(im.custocontabil * mf.quantidadetotal)' +
        ' / m.qtdesolic'
      
        'from montagensfilhos mf inner join itens im on mf.item = im.item' +
        ' where mf.montagem = m.montagem), 0) as numeric (15, 3)) as cust' +
        'ocontabilitem'
      'from montagens m inner join itens i on m.item = i.item')
  end
  inherited Q_MasterDS: TDataSource
    Left = 129
    Top = 25
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  MONTAGEM,'
      '  DATA,'
      '  MONTADOR,'
      '  ITEM,'
      '  QTDESOLIC,'
      '  QTDEPRODUZIDO,'
      '  STATUS,'
      '  OBS,'
      '  DATACONCLUSAO,'
      '  HORACONCLUSAO,'
      '  PREVISAOCONCLUSAO,'
      '  DATAENTREGA,'
      '  TIPO,'
      '  URGENTE,'
      '  NUMERO,'
      '  UNIDADE,'
      '  FATOR,'
      '  SAIDAITEM,'
      '  EMPRESA,'
      '  ORIGEMREPLIC'
      'from MONTAGENS '
      'where'
      '  MONTAGEM = :MONTAGEM')
    ModifySQL.Strings = (
      'update MONTAGENS'
      'set'
      '  OBS = :OBS,'
      '  TIPO = :TIPO,'
      '  URGENTE = :URGENTE,'
      '  NUMERO = :NUMERO'
      'where'
      '  MONTAGEM = :OLD_MONTAGEM')
    InsertSQL.Strings = (
      'insert into MONTAGENS'
      '  (OBS, TIPO, URGENTE, NUMERO)'
      'values'
      '  (:OBS, :TIPO, :URGENTE, :NUMERO)')
    DeleteSQL.Strings = (
      'delete from MONTAGENS'
      'where'
      '  MONTAGEM = :OLD_MONTAGEM')
  end
  inherited DMComponent: TDMComponent
    AntesDeIniciar = DMComponentAntesDeIniciar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    KeyForIDs = 'MONTAGENS'
    Tabela_Nome = 'MONTAGENS'
    Tabela_Chave = 'MONTAGEM'
    Tabela_ChaveAlias = 'MONTAGEM'
    Left = 34
    Top = 272
  end
  inherited C_Tabela: TClientDataSet
    Top = 148
    object C_TabelaQ_ItensFilhos: TDataSetField
      FieldName = 'Q_ItensFilhos'
    end
    object C_TabelaMONTAGEM: TIntegerField
      FieldName = 'MONTAGEM'
      Origin = 'MONTAGENS.MONTAGEM'
      Required = True
    end
    object C_TabelaDATA: TDateField
      FieldName = 'DATA'
      Origin = 'MONTAGENS.DATA'
    end
    object C_TabelaMONTADOR: TIntegerField
      FieldName = 'MONTADOR'
      Origin = 'MONTAGENS.MONTADOR'
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'MONTAGENS.ITEM'
    end
    object C_TabelaQTDESOLIC: TBCDField
      FieldName = 'QTDESOLIC'
      Origin = 'MONTAGENS.QTDESOLIC'
      Precision = 18
      Size = 2
    end
    object C_TabelaQTDEPRODUZIDO: TBCDField
      FieldName = 'QTDEPRODUZIDO'
      Origin = 'MONTAGENS.QTDEPRODUZIDO'
      Precision = 18
      Size = 2
    end
    object C_TabelaSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'MONTAGENS.STATUS'
    end
    object C_TabelaOBS: TStringField
      FieldName = 'OBS'
      Origin = 'MONTAGENS.OBS'
      Size = 255
    end
    object C_TabelaDATACONCLUSAO: TDateField
      FieldName = 'DATACONCLUSAO'
      Origin = 'MONTAGENS.DATACONCLUSAO'
    end
    object C_TabelaHORACONCLUSAO: TStringField
      FieldName = 'HORACONCLUSAO'
      Origin = 'MONTAGENS.HORACONCLUSAO'
      Size = 5
    end
    object C_TabelaPREVISAOCONCLUSAO: TDateField
      FieldName = 'PREVISAOCONCLUSAO'
      Origin = 'MONTAGENS.PREVISAOCONCLUSAO'
    end
    object C_TabelaDATAENTREGA: TDateField
      FieldName = 'DATAENTREGA'
      Origin = 'MONTAGENS.DATAENTREGA'
    end
    object C_TabelaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'MONTAGENS.TIPO'
      Size = 1
    end
    object C_TabelaURGENTE: TStringField
      FieldName = 'URGENTE'
      Origin = 'MONTAGENS.URGENTE'
      Size = 1
    end
    object C_TabelaNUMERO: TStringField
      FieldName = 'NUMERO'
      Origin = 'MONTAGENS.NUMERO'
      Size = 10
    end
    object C_TabelaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'MONTAGENS.UNIDADE'
      Size = 6
    end
    object C_TabelaFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'MONTAGENS.FATOR'
    end
    object C_TabelaSAIDAITEM: TIntegerField
      FieldName = 'SAIDAITEM'
      Origin = 'MONTAGENS.SAIDAITEM'
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'MONTAGENS.EMPRESA'
      Required = True
    end
    object C_TabelaORIGEMREPLIC: TStringField
      FieldName = 'ORIGEMREPLIC'
      Origin = 'MONTAGENS.ORIGEMREPLIC'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCOD_ITEM: TStringField
      FieldName = 'COD_ITEM'
      Origin = 'ITENS.COD_ITEM'
      Size = 14
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_TabelaCUSTOCONTABILITEM: TBCDField
      FieldName = 'CUSTOCONTABILITEM'
      Precision = 18
      Size = 3
    end
  end
  inherited ResultSet: TClientDataSet
    Left = 124
    Top = 102
  end
  object C_ItensFilhosDS: TDataSource
    DataSet = C_ItensFilhos
    Left = 225
    Top = 114
  end
  object C_ItensFilhos: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ItensFilhos
    Params = <>
    BeforeOpen = C_ItensFilhosBeforeOpen
    OnCalcFields = C_ItensFilhosCalcFields
    OnNewRecord = C_ItensFilhosNewRecord
    Left = 226
    Top = 58
    object C_ItensFilhos_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ItensFilhosMONTAGEMFILHO: TIntegerField
      FieldName = 'MONTAGEMFILHO'
      Origin = 'MONTAGENSFILHOS.MONTAGEMFILHO'
      Required = True
    end
    object C_ItensFilhosMONTAGEM: TIntegerField
      FieldName = 'MONTAGEM'
      Origin = 'MONTAGENSFILHOS.MONTAGEM'
    end
    object C_ItensFilhosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'MONTAGENSFILHOS.ITEM'
      OnChange = C_ItensFilhosITEMChange
    end
    object C_ItensFilhosQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'MONTAGENSFILHOS.QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object C_ItensFilhosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'MONTAGENSFILHOS.UNIDADE'
      Size = 6
    end
    object C_ItensFilhosFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'MONTAGENSFILHOS.FATOR'
    end
    object C_ItensFilhosFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
    object C_ItensFilhosQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'MONTAGENSFILHOS.QTDE'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'MONTAGENSFILHOS.EMPRESA'
      Required = True
    end
    object C_ItensFilhosORIGEMREPLIC: TStringField
      FieldName = 'ORIGEMREPLIC'
      Origin = 'MONTAGENSFILHOS.ORIGEMREPLIC'
      FixedChar = True
      Size = 1
    end
    object C_ItensFilhosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 14
    end
    object C_ItensFilhosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ItensFilhosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'ITENS.CUSTOMEDIO'
    end
    object C_ItensFilhosCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      Origin = 'ITENS.CUSTOCONTABIL'
    end
    object C_ItensFilhosPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosQUANTIDADETOTAL: TBCDField
      FieldName = 'QUANTIDADETOTAL'
      Origin = 'MONTAGENSFILHOS.QUANTIDADETOTAL'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosicSubTotalPreco: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalPreco'
    end
    object C_ItensFilhosTABELAPRECO1: TBCDField
      FieldName = 'TABELAPRECO1'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosTABELAPRECO2: TBCDField
      FieldName = 'TABELAPRECO2'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosTABELAPRECO3: TBCDField
      FieldName = 'TABELAPRECO3'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosicSubTotalTabela1: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalTabela1'
    end
    object C_ItensFilhosicSubTotalTabela2: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalTabela2'
    end
    object C_ItensFilhosicSubTotalTabela3: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalTabela3'
    end
    object C_ItensFilhosicSubTotalContabil: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalContabil'
    end
    object C_ItensFilhosQTDSOLICITAR: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'QTDSOLICITAR'
    end
    object C_ItensFilhosESTOQUEATUAL: TBCDField
      FieldName = 'ESTOQUEATUAL'
      Origin = 'ITENS.ESTOQUEATUAL'
      Precision = 18
      Size = 3
    end
  end
  object Q_ItensFilhos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select mf.*, ii.codigo, ii.descricao, ii.customedio, coalesce(ii' +
        '.custocontabil, 0) as custocontabil, f.descricao as fabricante, ' +
        'pp.preco, ii.estoque as estoqueatual, '
      
        'coalesce((select p1.preco from produtospreco p1 where p1.item = ' +
        'ii.item and p1.tabelapreco = 111), 0) as tabelapreco1,'
      
        'coalesce((select p2.preco from produtospreco p2 where p2.item = ' +
        'ii.item and p2.tabelapreco = 222), 0) as tabelapreco2,'
      
        'coalesce((select p3.preco from produtospreco p3 where p3.item = ' +
        'ii.item and p3.tabelapreco = 333), 0) as tabelapreco3'
      'from montagensfilhos mf inner join itens ii on mf.item = ii.item'
      'inner join produtospreco pp on ii.item = pp.item'
      'inner join fabricantes f on ii.fabricante = f.fabricante'
      'where mf.montagem = :montagem and pp.tabelapreco = 0')
    UniDirectional = True
    UpdateObject = U_ItensFilhos
    Left = 223
    Top = 9
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MONTAGEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ItensFilhos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from montagensfilhos '
      'where'
      '  MONTAGEMFILHO = :MONTAGEMFILHO')
    ModifySQL.Strings = (
      'update montagensfilhos'
      'set'
      '  MONTAGEMFILHO = :MONTAGEMFILHO,'
      '  MONTAGEM = :MONTAGEM,'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  QTDE = :QTDE,'
      '  QUANTIDADETOTAL = :QUANTIDADETOTAL,'
      '  EMPRESA = :EMPRESA,'
      '  ORIGEMREPLIC = :ORIGEMREPLIC'
      'where'
      '  MONTAGEMFILHO = :OLD_MONTAGEMFILHO')
    InsertSQL.Strings = (
      'insert into montagensfilhos'
      '  (MONTAGEMFILHO, MONTAGEM, ITEM, QUANTIDADE, UNIDADE, FATOR, '
      'QTDE, EMPRESA, '
      '   ORIGEMREPLIC, QUANTIDADETOTAL)'
      'values'
      
        '  (:MONTAGEMFILHO, :MONTAGEM, :ITEM, :QUANTIDADE, :UNIDADE, :FAT' +
        'OR, '
      ':QTDE, '
      '   :EMPRESA, :ORIGEMREPLIC, :QUANTIDADETOTAL)')
    DeleteSQL.Strings = (
      'delete from montagensfilhos'
      'where'
      '  MONTAGEMFILHO = :OLD_MONTAGEMFILHO')
    Left = 225
    Top = 177
  end
end
