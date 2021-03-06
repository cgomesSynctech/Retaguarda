inherited DMMontagens: TDMMontagens
  Left = 408
  Top = 164
  Height = 479
  Width = 741
  inherited OpenDialog: TOpenDialog
    Left = 201
    Top = 278
  end
  inherited SaveDialog: TSaveDialog
    Left = 317
    Top = 266
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select m.*, i.codigo, i.descricao,i.empresa,i.fornecpreferencia ' +
        ' from Montagens m, Itens i'
      'where m.item = i.item')
    Left = 35
    Top = 1
  end
  inherited Q_MasterDS: TDataSource
    Left = 123
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from Montagens '
      'where'
      '  MONTAGEM = :MONTAGEM')
    ModifySQL.Strings = (
      'update Montagens'
      'set'
      '  DATA = :DATA,'
      '  MONTADOR = :MONTADOR,'
      '  ITEM = :ITEM,'
      '  QTDESOLIC = :QTDESOLIC,'
      '  QTDEPRODUZIDO = :QTDEPRODUZIDO,'
      '  STATUS = :STATUS,'
      '  OBS = :OBS,'
      '  DATACONCLUSAO = :DATACONCLUSAO,'
      '  HORACONCLUSAO = :HORACONCLUSAO,'
      '  PREVISAOCONCLUSAO = :PREVISAOCONCLUSAO,'
      '  DATAENTREGA = :DATAENTREGA,'
      '  URGENTE = :URGENTE,'
      '  TIPO = :TIPO,'
      '  NUMERO = :NUMERO,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  EMPRESA = :EMPRESA'
      'where'
      '  MONTAGEM = :OLD_MONTAGEM')
    InsertSQL.Strings = (
      'insert into Montagens'
      '  (MONTAGEM, DATA, MONTADOR, ITEM, QTDESOLIC, QTDEPRODUZIDO, '
      'STATUS, OBS, '
      '   DATACONCLUSAO, HORACONCLUSAO, PREVISAOCONCLUSAO, '
      'DATAENTREGA, TIPO, URGENTE, NUMERO, UNIDADE, FATOR,EMPRESA)'
      'values'
      
        '  (:MONTAGEM, :DATA, :MONTADOR, :ITEM, :QTDESOLIC, :QTDEPRODUZID' +
        'O, '
      ':STATUS, '
      '   :OBS, :DATACONCLUSAO, :HORACONCLUSAO, :PREVISAOCONCLUSAO, '
      
        ':DATAENTREGA, :TIPO, :URGENTE, :NUMERO, :UNIDADE, :FATOR,:EMPRES' +
        'A)')
    DeleteSQL.Strings = (
      'delete from Montagens'
      'where'
      '  MONTAGEM = :OLD_MONTAGEM')
  end
  inherited DMComponent: TDMComponent
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    KeyForIDs = 'Montagens'
    Tabela_Nome = 'Montagens'
    Tabela_Chave = 'Montagem'
    GenerateIDFor.Strings = (
      'C_MontagensFilhos=MontagemFilho')
    DeleteValidate.Strings = (
      'MontagensFilhos=montagem')
    Top = 277
  end
  inherited DlgMsg: TDlgMsg
    Left = 116
    Top = 278
  end
  inherited C_Tabela: TClientDataSet
    Active = True
    Top = 166
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
      OnChange = C_TabelaITEMChange
    end
    object C_TabelaQTDESOLIC: TBCDField
      FieldName = 'QTDESOLIC'
      Origin = 'MONTAGENS.QTDESOLIC'
      OnChange = C_TabelaQTDESOLICChange
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
    object C_TabelalkMontador: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMontador'
      LookupDataSet = C_Operadores
      LookupKeyFields = 'OPERADOR'
      LookupResultField = 'NOME'
      KeyFields = 'MONTADOR'
      Size = 30
      Lookup = True
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_TabelaQ_MontagensFilhos: TDataSetField
      FieldName = 'Q_MontagensFilhos'
    end
    object C_TabelaURGENTE: TStringField
      FieldName = 'URGENTE'
      Origin = 'MONTAGENS.URGENTE'
      Size = 1
    end
    object C_TabelaTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'MONTAGENS.TIPO'
      Size = 1
    end
    object C_TabelalkStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'lkStatus'
      LookupDataSet = C_Status
      LookupKeyFields = 'STATUS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'STATUS'
      Lookup = True
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
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'MONTAGENS.EMPRESA'
      Required = True
    end
    object C_TabelaFORNECPREFERENCIA: TIntegerField
      FieldName = 'FORNECPREFERENCIA'
      Origin = 'ITENS.FORNECPREFERENCIA'
      Required = True
    end
  end
  inherited ResultSet: TClientDataSet
    Left = 122
  end
  object Q_Operadores: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from operadores')
    Left = 202
    Top = 6
  end
  object P_Operadores: TDataSetProvider
    DataSet = Q_Operadores
    Constraints = True
    Left = 201
    Top = 58
  end
  object C_Operadores: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Operadores'
    Left = 200
    Top = 115
    object C_OperadoresOPERADOR: TIntegerField
      FieldName = 'OPERADOR'
      Origin = 'OPERADORES.OPERADOR'
      Required = True
    end
    object C_OperadoresNOME: TStringField
      FieldName = 'NOME'
      Origin = 'OPERADORES.NOME'
      Size = 30
    end
  end
  object C_MontagensFilhos: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = C_TabelaQ_MontagensFilhos
    Params = <>
    OnNewRecord = C_MontagensFilhosNewRecord
    Left = 302
    Top = 68
    object C_MontagensFilhosMONTAGEMFILHO: TIntegerField
      FieldName = 'MONTAGEMFILHO'
      Origin = 'MONTAGENSFILHOS.MONTAGEMFILHO'
      Required = True
    end
    object C_MontagensFilhosMONTAGEM: TIntegerField
      FieldName = 'MONTAGEM'
      Origin = 'MONTAGENSFILHOS.MONTAGEM'
    end
    object C_MontagensFilhosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'MONTAGENSFILHOS.ITEM'
      OnChange = C_MontagensFilhosITEMChange
    end
    object C_MontagensFilhosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_MontagensFilhosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_MontagensFilhosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'MONTAGENSFILHOS.UNIDADE'
      Size = 6
    end
    object C_MontagensFilhosFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'MONTAGENSFILHOS.FATOR'
    end
    object C_MontagensFilhosESTOQUEATUAL: TFloatField
      FieldName = 'ESTOQUEATUAL'
    end
    object C_MontagensFilhosQTDE: TBCDField
      FieldName = 'QTDE'
      Origin = 'MONTAGENSFILHOS.QTDE'
      Precision = 18
      Size = 3
    end
    object C_MontagensFilhosEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'MONTAGENSFILHOS.EMPRESA'
      Required = True
    end
    object C_MontagensFilhosFORNECPREFERENCIA: TIntegerField
      FieldName = 'FORNECPREFERENCIA'
      Origin = 'ITENS.FORNECPREFERENCIA'
      Required = True
    end
    object C_MontagensFilhosQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'MONTAGENSFILHOS.QUANTIDADE'
      Precision = 18
      Size = 2
    end
    object C_MontagensFilhosQTDPRODUCAO: TBCDField
      FieldName = 'QTDPRODUCAO'
      Origin = 'MONTAGENSFILHOS.QTDPRODUCAO'
      Precision = 18
      Size = 2
    end
    object C_MontagensFilhosQUANTIDADETOTAL: TBCDField
      FieldName = 'QUANTIDADETOTAL'
      Origin = 'MONTAGENSFILHOS.QUANTIDADETOTAL'
      Precision = 18
      Size = 3
    end
    object C_MontagensFilhosFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
  end
  object Q_MontagensFilhos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select mi.*,i.fornecpreferencia,  i.codigo, i.descricao,'
      
        'f.descricao as fabricante, (i.estoque / mi.fator) as estoqueatua' +
        'l , mi.quantidade AS QTDPRODUCAO'
      'from montagensfilhos mi'
      'INNER JOIN  itens i ON mi.item = i.item '
      'inner join fabricantes f on i.fabricante = f.fabricante'
      'where  MONTAGEM = :MONTAGEM ')
    UpdateObject = U_MontagensFilhos
    Left = 299
    Top = 13
    ParamData = <
      item
        DataType = ftInteger
        Name = 'MONTAGEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Q_Aux: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ii.*, i.codigo, i.descricao , i.estoque, i.haschildren'
      
        'from itensfilhos ii, itens i where ii.subitem = i.item and ii.it' +
        'em = :item')
    Left = 201
    Top = 168
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end>
  end
  object C_MontagensFilhosDS: TDataSource
    DataSet = C_MontagensFilhos
    Left = 305
    Top = 125
  end
  object U_MontagensFilhos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from montagensfilhos '
      'where'
      '  MONTAGEMFILHO = :MONTAGEMFILHO')
    ModifySQL.Strings = (
      'update montagensfilhos'
      'set'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  FATOR = :FATOR,'
      '  UNIDADE = :UNIDADE,'
      '  QTDE = :QTDE,'
      '  EMPRESA = :EMPRESA,'
      '  QUANTIDADETOTAL = :QUANTIDADE * :QTDE'
      'where'
      '  MONTAGEMFILHO = :OLD_MONTAGEMFILHO')
    InsertSQL.Strings = (
      'insert into montagensfilhos'
      '  (MONTAGEMFILHO, MONTAGEM, ITEM, QUANTIDADE, FATOR, UNIDADE, '
      'QTDE,EMPRESA, QUANTIDADETOTAL)'
      'values'
      
        '  (:MONTAGEMFILHO, :MONTAGEM, :ITEM, :QUANTIDADE, :FATOR, :UNIDA' +
        'DE, '
      ':QTDE, :EMPRESA, :QUANTIDADE * :QTDE)')
    DeleteSQL.Strings = (
      'delete from montagensfilhos'
      'where'
      '  MONTAGEMFILHO = :OLD_MONTAGEMFILHO')
    Left = 306
    Top = 179
  end
  object Q_Status: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from statusmontagens')
    Left = 119
    Top = 104
  end
  object P_Status: TDataSetProvider
    DataSet = Q_Status
    Constraints = True
    Left = 120
    Top = 164
  end
  object C_Status: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Status'
    Left = 119
    Top = 212
    object C_StatusSTATUS: TIntegerField
      FieldName = 'STATUS'
      Origin = 'STATUSMONTAGENS.STATUS'
      Required = True
    end
    object C_StatusDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSMONTAGENS.DESCRICAO'
    end
  end
  object Q_AuxSub: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select ii.*, i.codigo, i.descricao , i.estoque'
      
        'from itensfilhos ii, itens i where ii.subitem = i.item and ii.it' +
        'em = :item')
    Left = 203
    Top = 222
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'item'
        ParamType = ptUnknown
      end>
  end
end
