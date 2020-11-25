object FrmTabelaPrecoItens: TFrmTabelaPrecoItens
  Left = 212
  Top = 103
  Width = 789
  Height = 480
  Caption = 'FrmTabelaPrecoItens'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object ZRepItensGrupo: TZReport
    Left = 8
    Top = 2
    Width = 102
    Height = 60
    DataSet = C_Grupo
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options.LineSpacing = zrd16
    Options.AutoHeight = False
    Options.PageFrom = 1
    Options.PageTo = 66
    Minimized = True
    object zrvCODIGO: TZRField
      Format.Width = 10
      DataField = 'CODIGO'
      DataSet = C_Grupo
    end
    object zrvDESCRICAOGRUPO: TZRField
      Format.Width = 30
      DataField = 'DESCRICAOGRUPO'
      DataSet = C_Grupo
    end
    object ZRepItensGrupoHeader: TZRBand
      Left = 2
      Top = 11
      Width = 99
      Height = 7
      Stretch = False
      BandType = zbtHeader
      object zrNomeEmpresa2: TZRLabel
        Left = 0
        Top = 0
        Width = 42
        Height = 1
        Caption = 'zrNomeEmpresa2'
      end
      object zrCidade2: TZRLabel
        Left = 0
        Top = 2
        Width = 42
        Height = 1
        Caption = 'zrCidade2'
      end
      object zrFone2: TZRLabel
        Left = 0
        Top = 3
        Width = 42
        Height = 1
        Caption = 'zrFone2'
      end
      object zrLinha5: TZRLabel
        Left = 43
        Top = 0
        Width = 27
        Height = 1
        Alignment.X = zawRight
        Caption = 'zrLinha5'
      end
      object zrLinha7: TZRLabel
        Left = 43
        Top = 2
        Width = 27
        Height = 1
        Alignment.X = zawRight
        Caption = 'zrLinha7'
      end
      object zrLinha8: TZRLabel
        Left = 43
        Top = 3
        Width = 27
        Height = 1
        Alignment.X = zawRight
        Caption = 'zrLinha8'
      end
      object zrEndereco2: TZRLabel
        Left = 0
        Top = 1
        Width = 42
        Height = 1
        Caption = 'zrEndereco2'
      end
      object zrLinha6: TZRLabel
        Left = 43
        Top = 1
        Width = 27
        Height = 1
        Alignment.X = zawRight
        Caption = 'zrLinha6'
      end
      object ZRLabel9: TZRLabel
        Left = 31
        Top = 5
        Width = 19
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Tabela de Pre'#231'o'
      end
    end
    object ZRepItensGrupoDetail: TZRBand
      Left = 2
      Top = 18
      Width = 99
      Height = 5
      Frame.Top = 1
      Frame.Bottom = 1
      Stretch = False
      BandType = zbtDetail
      object ZRLabel1: TZRLabel
        Left = 6
        Top = 1
        Width = 14
        Height = 1
        Caption = 'ZRLabel1'
        Variable = zrvCODIGO
      end
      object ZRLabel2: TZRLabel
        Left = 21
        Top = 1
        Width = 32
        Height = 1
        Caption = 'ZRLabel2'
        Variable = zrvDESCRICAOGRUPO
      end
      object ZRLabel8: TZRLabel
        Left = 0
        Top = 1
        Width = 6
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Grupo:'
      end
      object ZRLabel5: TZRLabel
        Left = 0
        Top = 3
        Width = 8
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'C'#243'digo'
      end
      object ZRLabel10: TZRLabel
        Left = 15
        Top = 3
        Width = 9
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Descri'#231#227'o'
      end
      object ZRLabel11: TZRLabel
        Left = 46
        Top = 3
        Width = 10
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Fabricante'
      end
      object ZRLabel12: TZRLabel
        Left = 83
        Top = 3
        Width = 5
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Pre'#231'o'
      end
      object ZRLabel13: TZRLabel
        Left = 91
        Top = 3
        Width = 7
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Estoque'
      end
      object ZRLabel33: TZRLabel
        Left = 71
        Top = 3
        Width = 9
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Unidade'
      end
    end
    object ZRepItensGrupoSubDetail: TZRSubDetail
      Left = 2
      Top = 23
      Width = 99
      Height = 1
      DataSet = C_ItensGrupo
      Stretch = False
      MasterIndex = 1
      object zrvITEMCODIGO: TZRField
        Format.Width = 13
        DataField = 'ITEMCODIGO'
        DataSet = C_ItensGrupo
      end
      object zrvITEMDESCRICAO: TZRField
        Format.Width = 50
        DataField = 'ITEMDESCRICAO'
        DataSet = C_ItensGrupo
      end
      object zrvESTOQUE: TZRField
        Format.Width = 19
        DataField = 'ESTOQUE'
        DataSet = C_ItensGrupo
      end
      object zrvPRECO: TZRField
        Format.DisplayMask = '###,###,##0.00'
        Format.Width = 19
        DataField = 'PRECO'
        DataSet = C_ItensGrupo
      end
      object zrvFABRICANTE: TZRField
        Format.Width = 30
        DataField = 'FABRICANTE'
        DataSet = C_ItensGrupo
      end
      object zrvUNIDADE0: TZRField
        Format.Width = 30
        DataField = 'UNIDADE'
        DataSet = C_ItensGrupo
      end
      object ZRLabel3: TZRLabel
        Left = 0
        Top = 0
        Width = 14
        Height = 1
        Caption = 'ZRLabel3'
        Variable = zrvITEMCODIGO
      end
      object ZRLabel4: TZRLabel
        Left = 15
        Top = 0
        Width = 30
        Height = 1
        Caption = 'ZRLabel4'
        Variable = zrvITEMDESCRICAO
      end
      object ZRLabel6: TZRLabel
        Left = 90
        Top = 0
        Width = 8
        Height = 1
        Alignment.X = zawRight
        Caption = 'ZRLabel6'
        Variable = zrvESTOQUE
      end
      object ZRLabel7: TZRLabel
        Left = 81
        Top = 0
        Width = 8
        Height = 1
        Alignment.X = zawRight
        Caption = 'ZRLabel7'
        Variable = zrvPRECO
      end
      object ZRLabel14: TZRLabel
        Left = 46
        Top = 0
        Width = 24
        Height = 1
        Caption = 'ZRLabel14'
        Variable = zrvFABRICANTE
      end
      object ZRLabel34: TZRLabel
        Left = 71
        Top = 0
        Width = 9
        Height = 1
        Caption = 'ZRLabel34'
        Variable = zrvUNIDADE0
      end
    end
    object ZRepItensGrupoFooter: TZRBand
      Left = 2
      Top = 24
      Width = 99
      Height = 2
      Stretch = False
      BandType = zbtFooter
    end
  end
  object ZRepItensFabricante: TZReport
    Left = 26
    Top = 28
    Width = 101
    Height = 60
    DataSet = C_Fabricantes
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Courier New'
    Font.Style = []
    Options.LineSpacing = zrd16
    Options.AutoHeight = False
    Options.PageFrom = 1
    Options.PageTo = 63
    Minimized = True
    object zrvCODIGO0: TZRField
      Format.Width = 10
      DataField = 'CODIGO'
      DataSet = C_Fabricantes
    end
    object zrvDESCRICAO: TZRField
      Format.Width = 30
      DataField = 'DESCRICAO'
      DataSet = C_Fabricantes
    end
    object ZRepItensFabricanteHeader: TZRBand
      Left = 2
      Top = 11
      Width = 98
      Height = 6
      Stretch = False
      BandType = zbtHeader
      object zrNomeEmpresa: TZRLabel
        Left = 0
        Top = 0
        Width = 42
        Height = 1
        Caption = 'zrNomeEmpresa'
      end
      object zrLinha1: TZRLabel
        Left = 43
        Top = 0
        Width = 27
        Height = 1
        Alignment.X = zawRight
        Caption = 'zrLinha1'
      end
      object zrEndereco: TZRLabel
        Left = 0
        Top = 1
        Width = 42
        Height = 1
        Caption = 'zrEndereco'
      end
      object zrLinha2: TZRLabel
        Left = 43
        Top = 1
        Width = 27
        Height = 1
        Alignment.X = zawRight
        Caption = 'zrLinha2'
      end
      object zrCidade: TZRLabel
        Left = 0
        Top = 2
        Width = 42
        Height = 1
        Caption = 'zrCidade'
      end
      object zrLinha3: TZRLabel
        Left = 43
        Top = 2
        Width = 27
        Height = 1
        Alignment.X = zawRight
        Caption = 'zrLinha3'
      end
      object zrFone: TZRLabel
        Left = 0
        Top = 3
        Width = 42
        Height = 1
        Caption = 'zrFone'
      end
      object zrLinha4: TZRLabel
        Left = 43
        Top = 3
        Width = 27
        Height = 1
        Alignment.X = zawRight
        Caption = 'zrLinha4'
      end
      object ZRLabel23: TZRLabel
        Left = 31
        Top = 5
        Width = 19
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Tabela de Pre'#231'o'
      end
    end
    object ZRepItensFabricanteDetail: TZRBand
      Left = 2
      Top = 17
      Width = 98
      Height = 5
      Frame.Top = 1
      Frame.Bottom = 1
      Stretch = False
      BandType = zbtDetail
      object ZRLabel30: TZRLabel
        Left = 0
        Top = 1
        Width = 11
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Fabricante:'
      end
      object ZRLabel31: TZRLabel
        Left = 12
        Top = 1
        Width = 14
        Height = 1
        Caption = 'ZRLabel1'
        Variable = zrvCODIGO0
      end
      object ZRLabel32: TZRLabel
        Left = 27
        Top = 1
        Width = 32
        Height = 1
        Caption = 'ZRLabel2'
        Variable = zrvDESCRICAO
      end
      object ZRLabel25: TZRLabel
        Left = 0
        Top = 3
        Width = 8
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'C'#243'digo'
      end
      object ZRLabel26: TZRLabel
        Left = 15
        Top = 3
        Width = 9
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Descri'#231#227'o'
      end
      object ZRLabel27: TZRLabel
        Left = 46
        Top = 3
        Width = 10
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Grupo'
      end
      object ZRLabel28: TZRLabel
        Left = 71
        Top = 3
        Width = 9
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Unidade'
      end
      object ZRLabel29: TZRLabel
        Left = 84
        Top = 3
        Width = 5
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Pre'#231'o'
      end
      object ZRLabel35: TZRLabel
        Left = 91
        Top = 3
        Width = 7
        Height = 1
        FontStyles = [zfsBold]
        Caption = 'Estoque'
      end
    end
    object ZRepItensFabricanteSubDetail: TZRSubDetail
      Left = 2
      Top = 22
      Width = 98
      Height = 1
      DataSet = C_ItensFabricante
      Stretch = False
      MasterIndex = 1
      object zrvITEMCODIGO0: TZRField
        Format.Width = 13
        DataField = 'ITEMCODIGO'
        DataSet = C_ItensFabricante
      end
      object zrvITEMDESCRICAO0: TZRField
        Format.Width = 50
        DataField = 'ITEMDESCRICAO'
        DataSet = C_ItensFabricante
      end
      object zrvUNIDADE: TZRField
        Format.Width = 30
        DataField = 'UNIDADE'
        DataSet = C_ItensFabricante
      end
      object zrvESTOQUE0: TZRField
        Format.Width = 19
        DataField = 'ESTOQUE'
        DataSet = C_ItensFabricante
      end
      object zrvDESCRICAOGRUPO0: TZRField
        Format.Width = 30
        DataField = 'DESCRICAOGRUPO'
        DataSet = C_ItensFabricante
      end
      object zrvPRECO0: TZRField
        Format.DisplayMask = '###,###,##0.00'
        Format.Width = 19
        DataField = 'PRECO'
        DataSet = C_ItensFabricante
      end
      object ZRLabel15: TZRLabel
        Left = 0
        Top = 0
        Width = 14
        Height = 1
        Caption = 'ZRLabel3'
        Variable = zrvITEMCODIGO0
      end
      object ZRLabel17: TZRLabel
        Left = 15
        Top = 0
        Width = 30
        Height = 1
        Caption = 'ZRLabel4'
        Variable = zrvITEMDESCRICAO0
      end
      object ZRLabel19: TZRLabel
        Left = 46
        Top = 0
        Width = 24
        Height = 1
        Caption = 'ZRLabel14'
        Variable = zrvDESCRICAOGRUPO0
      end
      object ZRLabel21: TZRLabel
        Left = 71
        Top = 0
        Width = 9
        Height = 1
        Caption = 'ZRLabel34'
        Variable = zrvUNIDADE
      end
      object ZRLabel24: TZRLabel
        Left = 81
        Top = 0
        Width = 8
        Height = 1
        Alignment.X = zawRight
        Caption = 'ZRLabel7'
        Variable = zrvPRECO0
      end
      object ZRLabel36: TZRLabel
        Left = 90
        Top = 0
        Width = 8
        Height = 1
        Alignment.X = zawRight
        Caption = 'ZRLabel6'
        Variable = zrvESTOQUE0
      end
    end
  end
  object Q_ItensGrupo: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_GrupoDS
    SQL.Strings = (
      
        'select first 15 i.codigo as itemcodigo, i.descricao as itemdescr' +
        'icao, i.referencia, f.descricao as fabricante, u.descricao as un' +
        'idade, i.estoque,'
      '  g.descricaogrupo, pp.preco, pp.precomanual, pp.precopromocao'
      ''
      ''
      'from itens i'
      'inner join unidades u on i.unidade = u.unidade'
      'left join grupos g on i.grupo = g.grupo'
      
        'inner join produtospreco pp on i.item = pp.item and pp.tabelapre' +
        'co = 0'
      'left join fabricantes f on i.fabricante = f.fabricante'
      ''
      'where i.grupo = :GRUPO'
      'order by  i.descricao')
    Left = 554
    Top = 288
    ParamData = <
      item
        DataType = ftInteger
        Name = 'GRUPO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ItensGrupo: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = C_GrupoQ_ItensGrupo
    Params = <>
    Left = 556
    Top = 338
    object C_ItensGrupoITEMCODIGO: TStringField
      FieldName = 'ITEMCODIGO'
      Origin = 'ITENS.ITEMCODIGO'
      Size = 13
    end
    object C_ItensGrupoITEMDESCRICAO: TStringField
      FieldName = 'ITEMDESCRICAO'
      Origin = 'ITENS.ITEMDESCRICAO'
      Size = 50
    end
    object C_ItensGrupoREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_ItensGrupoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Required = True
      Size = 30
    end
    object C_ItensGrupoESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ItensGrupoDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Size = 30
    end
    object C_ItensGrupoPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object C_ItensGrupoPRECOPROMOCAO: TBCDField
      FieldName = 'PRECOPROMOCAO'
      Origin = 'PRODUTOSPRECO.PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
    object C_ItensGrupoFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
  end
  object C_Grupo: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Grupo'
    Left = 430
    Top = 370
    object C_GrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPOS.GRUPO'
    end
    object C_GrupoCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'GRUPOS.CODIGO'
      Size = 10
    end
    object C_GrupoDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Size = 30
    end
    object C_GrupoQ_ItensGrupo: TDataSetField
      FieldName = 'Q_ItensGrupo'
    end
  end
  object P_Grupo: TDataSetProvider
    DataSet = Q_Grupo
    Constraints = True
    Left = 430
    Top = 324
  end
  object Q_Grupo: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct g.grupo, g.codigo, g.descricaogrupo'
      'from itens i'
      'left join grupos g on i.grupo = i.grupo'
      'order by g.descricaogrupo')
    Left = 430
    Top = 278
  end
  object Q_GrupoDS: TDataSource
    DataSet = Q_Grupo
    Left = 474
    Top = 278
  end
  object C_Fabricantes: TClientDataSet
    Active = True
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Fabricantes'
    Left = 182
    Top = 294
    object C_FabricantesFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
    end
    object C_FabricantesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'FABRICANTES.CODIGO'
      Size = 10
    end
    object C_FabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'FABRICANTES.DESCRICAO'
      Size = 30
    end
    object C_FabricantesQ_ItensFabricante: TDataSetField
      FieldName = 'Q_ItensFabricante'
    end
  end
  object P_Fabricantes: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 184
    Top = 246
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select distinct f.fabricante, f.codigo, f.descricao'
      'from itens i'
      'left join fabricantes f on i.fabricante = f.fabricante'
      'order by f.descricao')
    Left = 182
    Top = 192
  end
  object Q_FabricantesDS: TDataSource
    DataSet = Q_Fabricantes
    Left = 258
    Top = 192
  end
  object Q_ItensFabricante: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_FabricantesDS
    SQL.Strings = (
      
        'select first 15 i.codigo as itemcodigo, i.descricao as itemdescr' +
        'icao, i.referencia, f.descricao as fabricante, u.descricao as un' +
        'idade, i.estoque,'
      '  g.descricaogrupo, pp.preco, pp.precomanual, pp.precopromocao'
      ''
      ''
      'from itens i'
      'inner join unidades u on i.unidade = u.unidade'
      'left join grupos g on i.grupo = g.grupo'
      
        'inner join produtospreco pp on i.item = pp.item and pp.tabelapre' +
        'co = 0'
      'left join fabricantes f on i.fabricante = f.fabricante'
      ''
      'where i.fabricante = :FABRICANTE'
      'order by  i.descricao')
    Left = 326
    Top = 208
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FABRICANTE'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ItensFabricante: TClientDataSet
    Active = True
    Aggregates = <>
    DataSetField = C_FabricantesQ_ItensFabricante
    Params = <>
    Left = 326
    Top = 256
    object C_ItensFabricanteITEMCODIGO: TStringField
      FieldName = 'ITEMCODIGO'
      Origin = 'ITENS.ITEMCODIGO'
      Size = 13
    end
    object C_ItensFabricanteITEMDESCRICAO: TStringField
      FieldName = 'ITEMDESCRICAO'
      Origin = 'ITENS.ITEMDESCRICAO'
      Size = 50
    end
    object C_ItensFabricanteREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_ItensFabricanteFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
      Size = 30
    end
    object C_ItensFabricanteUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Required = True
      Size = 30
    end
    object C_ItensFabricanteESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ItensFabricanteDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Size = 30
    end
    object C_ItensFabricantePRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object C_ItensFabricantePRECOMANUAL: TStringField
      FieldName = 'PRECOMANUAL'
      Origin = 'PRODUTOSPRECO.PRECOMANUAL'
      Size = 1
    end
    object C_ItensFabricantePRECOPROMOCAO: TBCDField
      FieldName = 'PRECOPROMOCAO'
      Origin = 'PRODUTOSPRECO.PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
  end
end
