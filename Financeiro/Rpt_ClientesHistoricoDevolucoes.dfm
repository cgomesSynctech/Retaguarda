inherited RptClientesHistoricoDevolucoes: TRptClientesHistoricoDevolucoes
  Caption = 'Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 13223591
    inherited lbCaption: TdxfLabel
      Width = 192
      AutoSize = True
      Caption = 'Cheques Devolvidos'
      Effect3D.ShadowedColor = 13223591
    end
  end
  inherited pnGrid: TPanel
    inherited dbgConsulta: TTS_QDBGrid
      Top = 25
      Height = 350
      KeyField = 'OPDOC'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DATA'
      object dbgConsultaOPERACAO: TdxDBGridMaskColumn
        Visible = False
        Width = 36
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OPERACAO'
      end
      object dbgConsultaOPDOC: TdxDBGridMaskColumn
        Visible = False
        Width = 34
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OPDOC'
      end
      object dbgConsultaDATA: TdxDBGridDateColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATA'
      end
      object dbgConsultaNOME: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 155
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object dbgConsultaVALOR: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 67
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
      end
      object dbgConsultaNUMCHEQUE: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 63
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMCHEQUE'
      end
      object dbgConsultaVENCIMENTO: TdxDBGridDateColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 73
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VENCIMENTO'
      end
      object dbgConsultaDescConta: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 125
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCCONTA'
      end
      object dbgConsultaNomeBanco: TdxDBGridMaskColumn
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 111
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEBANCO'
      end
    end
    inherited pnDados: TTS_Panel
      Height = 23
      Color = 14869203
      object TS_DBLookupTipoFav1: TTS_DBLookupTipoFav
        Left = 16
        Top = 1
        Width = 105
        Hint = 
          'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
          ' de edi��o ao lado.'
        ParentShowHint = False
        ShowHint = True
        TabOrder = 0
        StyleController = DMProjeto.esFinanceiro
        ListFieldName = 'DESCRICAO'
        KeyFieldName = 'TIPOFAVORECIDO'
        ListSource = DMProjeto.C_TipoFavDS
        LookupKeyValue = Null
        TipoFavorecido = 1
      end
      object edFavorecido: TTS_EditFavorecido
        Left = 123
        Top = 2
        Width = 229
        TabOrder = 1
        StyleController = DMProjeto.esFinanceiro
        OnChange = edFavorecidoChange
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              26050000424D260500000000000036040000280000000F0000000F0000000100
              080000000000F000000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00070707070707
              070707070707070707000707070707070707070707FCFC000700070707070707
              0707070704FEFC00070007070707070707070704FEFC00070700070707070707
              0707FCFEFC0007070700070707000000000707A4000707070700070700060606
              0600A4A40707070707000707FEFEFEFFFF060007070707070700A4FFFEFEFEFF
              FFFF0600070707070700A4FFFEFEFEFFFFFF0600070707070700A4FEFFFFFFFE
              FEFE060007070707070007FEFFFFFFFEFEFE000707070707070007A4FFFFFFFE
              FE060707070707070700070707A4A4A400070707070707070700070707070707
              07070707070707070700}
            Kind = bkGlyph
            Width = 18
          end>
        LookupTipoFav = TS_DBLookupTipoFav1
        C_Localizar = DMProjeto.C_LocalizarFav
        ID = 0
        OnSelecionou = edFavorecidoSelecionou
        Height = 19
        ExistButtons = True
      end
    end
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select o.Operacao, od.OpDoc, o.Data, od.Valor, f.Nome, od.NumChe' +
        'que,            od.Vencimento, c.Descricao as DescConta, b.Nome ' +
        'as NomeBanco'
      'From OperacoesFinanceiras o'
      
        '         inner join OperacoesFinanceirasDet od on o.operacao = o' +
        'd.operacao'
      '         inner join DepositosDoc dd on dd.IDDoc = od.IDDoc'
      '         left join Favorecidos f on od.favorecido = f.favorecido'
      '         left join Favorecidos b on dd.banco = b.favorecido'
      '         left join Contas c on o.ContaOrigem = c.Conta'
      'Where o.TipoOperacao = 9')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaOPERACAO: TIntegerField
      FieldName = 'OPERACAO'
      Required = True
    end
    object C_ConsultaOPDOC: TIntegerField
      FieldName = 'OPDOC'
      Required = True
    end
    object C_ConsultaDATA: TDateField
      Alignment = taCenter
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object C_ConsultaVALOR: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ConsultaNOME: TStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object C_ConsultaNUMCHEQUE: TIntegerField
      DisplayLabel = '# Cheque'
      FieldName = 'NUMCHEQUE'
    end
    object C_ConsultaVENCIMENTO: TDateField
      Alignment = taCenter
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object C_ConsultaDESCCONTA: TStringField
      DisplayLabel = 'Depositado na Conta'
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object C_ConsultaNOMEBANCO: TStringField
      DisplayLabel = 'Banco do Cheque'
      FieldName = 'NOMEBANCO'
      Size = 50
    end
  end
  inherited dxBarManager1: TdxBarManager
    Bars = <
      item
        Caption = 'Sair'
        DockedDockingStyle = dsLeft
        DockedLeft = 0
        DockedTop = 250
        DockingStyle = dsLeft
        FloatLeft = 659
        FloatTop = 384
        FloatClientWidth = 58
        FloatClientHeight = 106
        ItemLinks = <
          item
            Item = btAtualizar
            UserGlyph.Data = {00000000}
            Visible = True
          end
          item
            Item = btAjuda
            UserGlyph.Data = {00000000}
            Visible = True
          end
          item
            Item = btSair
            UserGlyph.Data = {00000000}
            Visible = True
          end>
        Name = 'Sair'
        OneOnRow = False
        RotateWhenVertical = False
        Row = 0
        UseOwnFont = False
        Visible = True
        WholeRow = False
      end
      item
        Caption = 'Paleta'
        DockedDockingStyle = dsLeft
        DockedLeft = 0
        DockedTop = 0
        DockingStyle = dsLeft
        FloatLeft = 426
        FloatTop = 308
        FloatClientWidth = 101
        FloatClientHeight = 88
        ItemLinks = <
          item
            Item = Dados
            UserGlyph.Data = {00000000}
            Visible = True
          end
          item
            Item = Agrupamento
            UserGlyph.Data = {00000000}
            Visible = True
          end
          item
            Item = Layout
            UserGlyph.Data = {00000000}
            Visible = True
          end
          item
            Item = Sumarizacao
            UserGlyph.Data = {00000000}
            Visible = True
          end
          item
            Item = Exportacao
            UserGlyph.Data = {00000000}
            Visible = True
          end
          item
            Item = Imprimir
            UserGlyph.Data = {00000000}
            Visible = True
          end>
        Name = 'Paleta'
        OneOnRow = False
        RotateWhenVertical = False
        Row = 0
        ShowMark = False
        UseOwnFont = False
        UseRestSpace = True
        Visible = True
        WholeRow = False
      end>
    Categories.ItemsVisibles = (
      2
      2
      2
      2
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True
      True
      True
      True
      True)
    DockControlHeights = (
      98
      0
      0
      0)
  end
  inherited dxPrinterPadrao: TdxComponentPrinter
    inherited dxPrinterPadraoLink1: TdxDBGridReportLink
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
    end
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msFinanceiro
    BarEndColor = 13223591
    CaptionShadow = 13223591
    FormColor = 14869203
    Modulo = 'Financeiro'
    Caption = 'Cheques Devolvidos'
  end
  inherited ppmDados: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = btDadosFiltrar
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btDadosOrdenar
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btDadosFont
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btDadosCor
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btDadosEspac
        UserGlyph.Data = {00000000}
        Visible = True
      end>
  end
  inherited ppmAgrupamento: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = btAgrupamentoPainel
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btAgrupamentoConfigurar
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btAgrupamentoExpandir
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btAgrupamentoResumir
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btAgrupamentoCor
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btAgrupamentoFont
        UserGlyph.Data = {00000000}
        Visible = True
      end>
  end
  inherited ppmLayout: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = btLayoutFont
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btLayoutLargura
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btLayoutGrade
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btLayoutCabec
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btLayoutColunas
        UserGlyph.Data = {00000000}
        Visible = True
      end>
  end
  inherited ppmSumarizacao: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = btSumarizacaoRodape
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btSumarizacaoCalculo
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btSumarizacaoRodapeGrupo
        UserGlyph.Data = {00000000}
        Visible = True
      end>
  end
  inherited ppmExportacao: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = btExportacaoHtml
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btExportacaoExcel
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btExportacaoXml
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btExportacaoTexto
        UserGlyph.Data = {00000000}
        Visible = True
      end>
  end
  inherited ppmImprimir: TdxBarPopupMenu
    ItemLinks = <
      item
        Item = btImprimirImp
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btImprimirEmail
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btImprimirVisual
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btImprimirConfigPag
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btImprimirLayout
        UserGlyph.Data = {00000000}
        Visible = True
      end
      item
        Item = btImprimirImpressora
        UserGlyph.Data = {00000000}
        Visible = True
      end>
  end
end
