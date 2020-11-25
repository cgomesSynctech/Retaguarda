inherited RptClientesEquipamentos: TRptClientesEquipamentos
  Left = 128
  Top = 105
  Width = 743
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 735
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 236
      Caption = 'Clientes / Equipamentos'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 701
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 674
    end
  end
  inherited pnGrid: TPanel
    Width = 682
    inherited pnDados: TTS_Panel
      Width = 682
      Height = 25
      Color = 15456728
      object btClientes: TTS_SpeedButton
        Left = 7
        Top = 4
        Width = 85
        Height = 19
        Caption = '&Clientes'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        Glyph.Data = {
          0A050000424D0A050000000000000A0400002800000010000000100000000100
          08000000000000010000D10E0000D10E0000F5000000F5000000030003000303
          030006060600066A060003060B000B0B0B00731C0B008F2A0B00982A0B00B62A
          0B000B730B000B7B0B000B0B110011111100B62A1100C03111007B4811004060
          1100116A1100118F1100161616007331160084311600B6311600C0311600CA31
          16001658160016601600060B1C0006111C001C1C1C00B6401C00B6481C001C50
          1C00A1501C001C581C001C841C001C981C001CA11C000006230023232300E040
          2300EA402300D4482300235823001C6A230023732300607323000B162A001C1C
          2A002A2A2A0073382A00EA402A008F482A00CA502A00D4502A002A6A2A002A73
          2A002A982A002AA12A002AAB2A0003113100313131008F383100EA483100F448
          3100CA503100D4603100318F310031AB310038383800FF483800FF503800A158
          3800F458380038603800E060380040843800608F380038A1380038AB380038B6
          3800061140002A1140004838400040404000FF5040004058400048584000F458
          4000FF584000EA604000F4604000D4734000E0734000408F4000409840004898
          400040A1400058A1400040B6400048484800FF604800CA6A48006098480048AB
          480048B6480048C04800505050006A585000FF735000060B5800111158000B1C
          58002A1C580040585800585858006AAB580060C0580058CA5800111160002A50
          60000B60600060606000608F600006236A0031406A0040486A006A6A6A00D484
          6A00EAA16A006AD46A00061C7300385073005860730073737300D48F7300FFAB
          730003167B00061C7B0006237B00586A7B0073AB7B00EAB67B00061C84000623
          840006508400065884006A7B84007B848400FFCA84000B318F000B388F001140
          8F0011588F0016588F002A6A8F00487B8F007B848F008F8F8F008FC08F00FFCA
          8F00062A98000B2A9800063198001C6A9800FFD498000B60A1001C73A1002A73
          A1003173A1007B98A100B6D4A1000B38AB000B40AB00116AAB00166AAB001C73
          AB000B48B6000B50B6001150B600237BB6003884B600508FB600CAE0B6001148
          C0001150C0001673C0001C7BC0002A84C0003184C0003884C00073A1C0001150
          CA001158CA000B6ACA00116ACA00388FCA00408FCA0058A1CA006AA1CA0073AB
          CA001660D4001173D4001C7BD4002A84D400238FD4002A8FD4003898D4004098
          D40050A1D4007BB6D40084B6D400F4EAD4001660E000166AE0001673E0002A8F
          E000318FE00060ABE00073B6E0007BB6E0007BC0E000EAF4E000FFF4E000167B
          EA0098CAEA00FFF4EA001673F4001C7BF4003198F40031A1F400FF00FF001C7B
          FF001C84FF002384FF00238FFF002A8FFF002A98FF003198FF0031A1FF0038A1
          FF0038ABFF0040ABFF00FFFFFF00E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E84949090E18171633E8E8E8E8E8E8E8E80909
          29415640293415582C231B1A21570F0F5A6637824359292F75616A51260BE867
          666E5D965D5B294EACB8776B3B0AE8E8350670783F1F6383E0E068692EE8E8E8
          05018B8B6F544469ABAA9D2DE8E8E8020497AEAEAD84E8E8E5E5E5E1E8E8E805
          1DAEBABAB9A4E8BFECECEBEB79E8E81E1499E5E5E4BAE8D9F0F1F0EFBBE8E81E
          3E30BAD6E5B4E8DAF2F3F2F1CCE8E8E8556C9F801E3EE8B6B5BEBCBB92E8E8E8
          3274878028E8E8E8C6D2E2C79CE8E8E8E8E8E8E8E8E8E8E8D4C9C8C0E8E8E8E8
          E8E8E8E8E8E8E8E8E8E8E8E8E8E8}
        ParentFont = False
        OnClick = btClientesClick
        RepeatedClick = False
        Border = True
      end
      object TS_Label3: TTS_Label
        Left = 107
        Top = 6
        Width = 55
        Caption = 'Marca:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 323
        Top = 6
        Width = 55
        Caption = 'Tecnologia:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_PopupEdit1: TTS_PopupEdit
        Left = 163
        Top = 4
        Width = 136
        TabOrder = 0
        AutoSelect = False
        StyleController = DMProjeto.esRemessa
        HideEditCursor = True
        PopupControl = clbMarcas
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = TS_PopupEdit1CloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object TS_PopupEdit2: TTS_PopupEdit
        Left = 379
        Top = 4
        Width = 136
        TabOrder = 1
        AutoSelect = False
        StyleController = DMProjeto.esRemessa
        HideEditCursor = True
        PopupControl = clbTecnologias
        PopupFormBorderStyle = pbsSysPanel
        OnCloseUp = TS_PopupEdit2CloseUp
        LookupKeyValue = 0
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Top = 25
      Width = 682
      Height = 364
      KeyField = 'EQUIPAMENTO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'NUMCONTRATO'
      object dbgConsultaNUMCONTRATO: TdxDBGridMaskColumn
        Caption = 'N'#250'm. Contrato'
        HeaderAlignment = taCenter
        Width = 97
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMCONTRATO'
      end
      object dbgConsultaNUMMAQUINA: TdxDBGridMaskColumn
        Caption = 'Num. M'#225'quina'
        HeaderAlignment = taCenter
        Width = 89
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMMAQUINA'
      end
      object dbgConsultaDESCROTA: TdxDBGridMaskColumn
        Caption = 'Rota'
        HeaderAlignment = taCenter
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCROTA'
      end
      object dbgConsultaMARCA: TdxDBGridMaskColumn
        Caption = 'Marca'
        HeaderAlignment = taCenter
        Width = 155
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MARCA'
      end
      object dbgConsultaENDERECO: TdxDBGridMaskColumn
        Caption = 'Endere'#231'o'
        HeaderAlignment = taCenter
        Width = 206
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENDERECO'
      end
      object dbgConsultaCIDADE: TdxDBGridMaskColumn
        Caption = 'Cidade'
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CIDADE'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        HeaderAlignment = taCenter
        Sorted = csUp
        Visible = False
        Width = 141
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
        GroupIndex = 0
      end
      object dbgConsultaLOCALMAPA: TdxDBGridMaskColumn
        Caption = 'Local no Mapa'
        HeaderAlignment = taCenter
        Width = 98
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALMAPA'
      end
      object dbgConsultaTECNOLOGIA: TdxDBGridMaskColumn
        Caption = 'Tecnologia'
        HeaderAlignment = taCenter
        Visible = False
        Width = 128
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TECNOLOGIA'
      end
      object dbgConsultaPAVIMENTOS: TdxDBGridMaskColumn
        Caption = 'Num. Pavimentos'
        HeaderAlignment = taCenter
        Visible = False
        Width = 104
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PAVIMENTOS'
      end
      object dbgConsultaUF: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UF'
      end
      object dbgConsultaEDIFICIO: TdxDBGridMaskColumn
        Caption = 'Edif'#237'cio'
        HeaderAlignment = taCenter
        Visible = False
        Width = 177
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EDIFICIO'
      end
      object dbgConsultaTIPOCONTRATO: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Tipo Contrato'
        HeaderAlignment = taCenter
        MinWidth = 16
        Visible = False
        Width = 96
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOCONTRATO'
        Descriptions.Strings = (
          'Proposta'
          'Contrato com Pe'#231'a'
          'Contrato sem Pe'#231'a'
          'Cancelado'
          'Perdido')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        ShowDescription = True
        Values.Strings = (
          'P'
          'C'
          'S'
          'X'
          'R')
      end
      object dbgConsultaCONTATO: TdxDBGridMaskColumn
        Caption = 'Contato'
        HeaderAlignment = taCenter
        Visible = False
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONTATO'
      end
      object dbgConsultaFONE1: TdxDBGridMaskColumn
        Caption = 'Fone'
        HeaderAlignment = taCenter
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FONE1'
      end
      object dbgConsultaOBS: TdxDBGridMaskColumn
        Caption = 'Observa'#231#245'es'
        HeaderAlignment = taCenter
        Visible = False
        Width = 300
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 682
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
    object clbMarcas: TTS_CheckListBox
      Left = 283
      Top = 254
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 4
      Visible = False
      KeyField = 'MARCA'
      ListField = 'DESCRICAO'
      Transparent = False
    end
    object clbTecnologias: TTS_CheckListBox
      Left = 485
      Top = 256
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 5
      Visible = False
      KeyField = 'TECNOLOGIA'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  inherited TS_Panel1: TTS_Panel
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select'
      
        ' e.equipamento, f.nome, f.endereco, f.cidade, f.uf, f.localmapa,' +
        ' f.edificio, f.numcontrato, f.tipocontrato, f.contato, f.fone1, ' +
        'f.obs, f.tipocontrato,e.nummaquina, m.descricao marca, t.descric' +
        'ao tecnologia, e.pavimentos, (select first 1 r.descricao'
      'from rotasclientes rc'
      'inner join rotas r on r.rota = rc.rota'
      'where rc.cliente = f.favorecido) as descrota'
      'from equipamentos e'
      'inner join favorecidos f on f.favorecido = e.favorecido'
      'inner join marcas m on e.marca = m.marca'
      'inner join tecnologias t on e.tecnologia = t.tecnologia'
      'order by f.nome')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Required = True
    end
    object C_ConsultaNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaNUMMAQUINA: TStringField
      FieldName = 'NUMMAQUINA'
      Size = 25
    end
    object C_ConsultaMARCA: TStringField
      FieldName = 'MARCA'
      Size = 30
    end
    object C_ConsultaTECNOLOGIA: TStringField
      FieldName = 'TECNOLOGIA'
      Size = 25
    end
    object C_ConsultaPAVIMENTOS: TIntegerField
      FieldName = 'PAVIMENTOS'
    end
    object C_ConsultaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Size = 50
    end
    object C_ConsultaCIDADE: TStringField
      FieldName = 'CIDADE'
      Size = 30
    end
    object C_ConsultaUF: TStringField
      FieldName = 'UF'
      Size = 2
    end
    object C_ConsultaLOCALMAPA: TStringField
      FieldName = 'LOCALMAPA'
      Size = 25
    end
    object C_ConsultaEDIFICIO: TStringField
      FieldName = 'EDIFICIO'
      Size = 50
    end
    object C_ConsultaNUMCONTRATO: TStringField
      FieldName = 'NUMCONTRATO'
      Size = 25
    end
    object C_ConsultaTIPOCONTRATO: TStringField
      FieldName = 'TIPOCONTRATO'
      Size = 1
    end
    object C_ConsultaDESCROTA: TStringField
      FieldName = 'DESCROTA'
      Size = 25
    end
    object C_ConsultaCONTATO: TStringField
      FieldName = 'CONTATO'
      Size = 100
    end
    object C_ConsultaFONE1: TStringField
      FieldName = 'FONE1'
    end
    object C_ConsultaOBS: TStringField
      FieldName = 'OBS'
      Size = 255
    end
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 93
    Top = 175
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 38372.4433790741
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited Q_SQLReport: TIBQuery
    Left = 92
    Top = 304
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 624
    Top = 88
  end
  inherited Q_FullSelect: TIBQuery
    Left = 663
    Top = 283
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Clientes / Equipamentos'
    Left = 91
    Top = 246
  end
  object P_Marcas: TDataSetProvider
    DataSet = Q_Marcas
    Constraints = True
    Left = 522
    Top = 178
  end
  object C_Marcas: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'MARCA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 30
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    ProviderName = 'P_Marcas'
    StoreDefs = True
    Left = 522
    Top = 234
    object C_MarcasMARCA: TIntegerField
      FieldName = 'MARCA'
      Origin = 'MARCAS.MARCA'
      Required = True
    end
    object C_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MARCAS.DESCRICAO'
      Size = 30
    end
  end
  object Q_Marcas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select '
      '  Marca, Descricao'
      'From Marcas'
      'order by 2')
    Left = 522
    Top = 124
  end
  object C_Tecnologias: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TECNOLOGIA'
        Attributes = [faRequired]
        DataType = ftInteger
      end
      item
        Name = 'DESCRICAO'
        DataType = ftString
        Size = 25
      end>
    IndexDefs = <
      item
        Name = 'DEFAULT_ORDER'
      end
      item
        Name = 'CHANGEINDEX'
      end>
    Params = <>
    ProviderName = 'P_Tecnologias'
    StoreDefs = True
    Left = 620
    Top = 230
    object C_TecnologiasTECNOLOGIA: TIntegerField
      FieldName = 'TECNOLOGIA'
      Required = True
    end
    object C_TecnologiasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
  end
  object P_Tecnologias: TDataSetProvider
    DataSet = Q_Tecnologias
    Constraints = True
    Left = 620
    Top = 174
  end
  object Q_Tecnologias: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select tecnologia, descricao from tecnologias order by 2')
    Left = 620
    Top = 128
  end
end
