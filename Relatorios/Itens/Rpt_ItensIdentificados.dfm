inherited RptItensIdentificados: TRptItensIdentificados
  Left = 83
  Top = 103
  Width = 1187
  Height = 625
  Caption = 'Itens Identificados/N'#186' S'#233'rie'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1171
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Left = 6
      Width = 313
      Caption = 'Listagem de Itens Identificados'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1145
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 1118
    end
  end
  inherited pnGrid: TPanel
    Width = 1118
    Height = 549
    inherited pnDados: TTS_Panel
      Width = 1118
      Color = 14019327
      object FiltroItens: TTS_PopupFiltrarItens
        Left = 9
        Top = 2
        Width = 144
        Hint = 'Click na seta de escolha para restrin'#231#227'o de registros'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        AutoSelect = False
        StyleController = DMProjeto.esItens
        Text = 'Filtrar itens...'
        HideEditCursor = True
        PopupFormBorderStyle = pbsSysPanel
        PopupClientEdge = True
        LookupKeyValue = 0
        TS_DB_Projeto = DMProjeto.DB_Projeto
        TS_TipoEstoque = 0
        TS_FornecedorSelecionado = 0
        TS_FornPrefSelecionado = 0
        TS_NaoPossuiEstoque = False
        TS_EstoqueMinimo = False
        TS_EstoqueMaximo = False
        TS_EstoquePontoPedido = False
        TS_EstoqueNegativo = False
        TS_ItensDesativado = False
        TS_C_LocalizarItem = DMProjeto.C_LocalizarItens
        TS_C_LocalizarFav = DMProjeto.C_LocalizarFav
        TS_PossuiEstoque = False
        TS_TipoItem = 0
        TS_AliasItens = 'i'
        TS_ItemAlterado = False
        OnSelecionou = FiltroItensSelecionou
        Height = 19
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 1118
      Height = 508
      KeyField = 'ITEM'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaSERIAL: TdxDBGridMaskColumn
        Caption = 'N'#250'm. Identificador'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERIAL'
      end
      object dbgConsultaCODIGOBARRAS: TdxDBGridMaskColumn
        Caption = 'C'#243'digo Barras'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGOBARRAS'
      end
      object dbgConsultaSTATUS: TdxDBGridMaskColumn
        Caption = 'Status'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS'
      end
      object dbgConsultaUNIDADE: TdxDBGridMaskColumn
        Alignment = taCenter
        Caption = 'Unidade'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'UNIDADE'
      end
      object dbgConsultaREFERENCIA: TdxDBGridMaskColumn
        Caption = 'Refer'#234'ncia'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'REFERENCIA'
      end
      object dbgConsultaDATACADASTRO: TdxDBGridDateColumn
        Alignment = taCenter
        Caption = 'Data Cadastro'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATACADASTRO'
        DateButtons = []
      end
      object dbgConsultaGRUPO: TdxDBGridMaskColumn
        Caption = 'Grupo'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAOGRUPO'
      end
      object dbgConsultaFABRICANTE: TdxDBGridMaskColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Top = 530
      Width = 1118
      inherited cbFullSelect: TTS_CheckBox
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    Height = 549
    inherited btSair: TTS_SpeedButton
      Top = 504
    end
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'select i.item, i.codigo, i.descricao, id.serial, i.codigobarras,'
      'case upper(id.status) when '#39'E'#39' then '#39'Produto em Estoque'#39
      '                      when '#39'F'#39' then '#39'Produto Faturado'#39
      '                      else 0 end as STATUS,'
      
        'i.unidade, i.referencia, i.datacadastro, g.descricaogrupo, f.des' +
        'cricao as fabricante'
      'from itens i left join itensidents id on i.item = id.item'
      'left join grupos g on i.grupo = g.grupo'
      'left join fabricantes f on i.fabricante = f.fabricante')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Required = True
    end
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Size = 14
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_ConsultaSERIAL: TStringField
      FieldName = 'SERIAL'
      Size = 25
    end
    object C_ConsultaCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 14
    end
    object C_ConsultaSTATUS: TStringField
      FieldName = 'STATUS'
      Required = True
      Size = 18
    end
    object C_ConsultaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_ConsultaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Size = 25
    end
    object C_ConsultaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
    end
    object C_ConsultaDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Size = 30
    end
    object C_ConsultaFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 41829.689253287
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited FormsComponent: TFormsComponent
    Caption = 'Listagem de Itens Identificados'
  end
end
