inherited DlgContratosFav: TDlgContratosFav
  Left = 171
  Top = 42
  Width = 791
  Height = 455
  Caption = 'Clientes / Vendas'
  Constraints.MinHeight = 318
  Constraints.MinWidth = 588
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 668
    Height = 378
    Color = 16116702
    object TS_Label2: TTS_Label
      Left = 7
      Top = 3
      Width = 644
      Height = 41
      Alignment = taLeftJustify
      Caption = 
        'Estas informa'#231#245'es representam os contratos de servi'#231'os (e suas f' +
        'ormas de cobran'#231'a) que sua empresa tem com este cliente.  Se est' +
        'e contrato ser'#225' executado por um funcion'#225'rio fixo, informe seu n' +
        'ome com o espec'#237'fico Item de Payroll que servir'#225' para c'#225'lculo de' +
        ' seus pagamentos:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label1: TTS_Label
      Left = 2
      Top = 46
      Width = 201
      Caption = 'Conta para Pagamento aos funcion'#225'rios:'
      FormatoTabela = False
      LinkToResult = 0
    end
    object GridContratos: TTS_QDBGrid
      Left = 1
      Top = 65
      Width = 666
      Height = 312
      Bands = <
        item
          Width = 200
        end>
      DefaultLayout = False
      HeaderPanelRowCount = 1
      KeyField = 'CONTRATO'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              ColumnName = 'GridContratosFUNCIONARIO'
              SummaryField = 'NomeFuncionario'
              SummaryFormat = '###0'
              SummaryType = cstCount
            end
            item
              ColumnName = 'GridContratosPRECO'
              SummaryField = 'Preco'
              SummaryFormat = '#,###,##0.00'
              SummaryType = cstSum
            end
            item
              ColumnName = 'GridContratosValorFunc'
              SummaryField = 'ValorFunc'
              SummaryFormat = '###,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Align = alBottom
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmContratos
      TabOrder = 0
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = DMClientes.C_ContratosDS
      Filter.Criteria = {00000000}
      FixedBandLineWidth = 1
      GroupPanelColor = 15461355
      HeaderColor = 15461355
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      HideFocusRect = True
      HideSelection = True
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoEnterThrough, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsCustomize = [edgoBandMoving, edgoBandSizing, edgoColumnMoving, edgoColumnSizing, edgoHeaderPanelSizing]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnEditing = GridContratosEditing
      OnColumnClick = GridContratosColumnClick
      Anchors = [akLeft, akTop, akRight, akBottom]
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = False
      TS_GridMenuOptions = [gmSumarizar, gmImprimir, gmExportar]
      TS_AppendOnEnter = True
      RowFooterNodeFont.Charset = DEFAULT_CHARSET
      RowFooterNodeFont.Color = clWindowText
      RowFooterNodeFont.Height = -11
      RowFooterNodeFont.Name = 'Tahoma'
      RowFooterNodeFont.Style = [fsBold]
      TS_AccountFooterStyle = False
      TS_TipoLocalizar = tlFavorecidos
      TS_HideGroupHeader = False
      TS_AnotherColor = clWindow
      TS_ReportHeaderStyle = False
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Tahoma'
      GroupNodeFont.Style = []
      TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterFont.Color = clWindowText
      TS_SummaryFooterFont.Height = -11
      TS_SummaryFooterFont.Name = 'Tahoma'
      TS_SummaryFooterFont.Style = [fsBold]
      TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
      TS_SummaryFooterSelFont.Color = clWindowText
      TS_SummaryFooterSelFont.Height = -11
      TS_SummaryFooterSelFont.Name = 'Tahoma'
      TS_SummaryFooterSelFont.Style = [fsBold]
      TS_LikeString = False
      TS_SelectionColor = 12054783
      TS_SelectionFont.Charset = DEFAULT_CHARSET
      TS_SelectionFont.Color = clWindowText
      TS_SelectionFont.Height = -11
      TS_SelectionFont.Name = 'Tahoma'
      TS_SelectionFont.Style = []
      TS_SelectedColumn = 'NOMEFUNCIONARIO'
      TS_ID = 0
      TS_ChaveEstrangeira = 'FUNCIONARIO'
      TS_TipoItem = '3'
      TS_C_Localizar = DMProjeto.C_LocalizarFav
      TS_ItemColumns = 'NOMEFUNCIONARIO'
      TS_TipoDescricao = tdVenda
      TS_SummaryFields.Strings = (
        'NomeFuncionario;Count;D'
        'Preco;Sum;D'
        'ValorFunc;Sum;D')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object GridContratosFUNCIONARIO: TdxDBGridButtonColumn
        Caption = 'Funcion'#225'rio Fixo'
        HeaderAlignment = taCenter
        Width = 128
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOMEFUNCIONARIO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
        Buttons = <
          item
            Default = True
          end
          item
            Default = False
            Glyph.Data = {
              DE000000424DDE0000000000000076000000280000000D0000000D0000000100
              0400000000006800000000000000000000001000000010000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
              700077777777777770007777700077777000777770C077777000777770C07777
              7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
              7000777770C07777700077777000777770007777777777777000777777777777
              7000}
            Kind = bkGlyph
          end>
        OnButtonClick = GridContratosFUNCIONARIOButtonClick
      end
      object GridContratoslkPayrollItem: TdxDBGridLookupColumn
        Caption = 'Payroll Item'
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkPayrollItem'
        ClearKey = 32
        DropDownWidth = 150
      end
      object GridContratosITEM: TdxDBGridLookupColumn
        Caption = 'Item de Servi'#231'o'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        HeaderGlyph.Data = {
          DE000000424DDE0000000000000076000000280000000D0000000D0000000100
          0400000000006800000000000000000000001000000000000000000000000000
          BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
          700077777777777770007777700077777000777770C077777000777770C07777
          7000770000C000077000770CCCCCCC077000770000C000077000777770C07777
          7000777770C07777700077777000777770007777777777777000777777777777
          7000}
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkItem'
      end
      object GridContratosValorFunc: TdxDBGridMaskColumn
        Caption = 'Valor Func.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clMaroon
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        HeaderAlignment = taCenter
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALORFUNC'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '###,###,##0.00'
      end
      object GridContratosPRECO: TdxDBGridMaskColumn
        Caption = 'Valor Cliente'
        DisableCustomizing = True
        Font.Charset = ANSI_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        HeaderAlignment = taCenter
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PRECO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object GridContratosPERIODICIDADE: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Periodicidade'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERIODICIDADE'
        Descriptions.Strings = (
          'Diario'
          'Semanal'
          'Quinzenal'
          'Mensal')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3')
        ShowDescription = True
        Values.Strings = (
          'D'
          'S'
          'Q'
          'M')
        StoredRowIndex = 1
      end
      object GridContratosWDiadeCobranca: TdxDBGridWrapperColumn
        Caption = 'Dia de Cobran'#231'a'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 66
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIACOBRANCA'
        OnGetReferenceColumn = GridContratosWDiadeCobrancaGetReferenceColumn
        StoredRowIndex = 1
      end
      object GridContratosMETODOPGTO: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Metodo Pgto'
        DisableCustomizing = True
        DisableDragging = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'METODOPGTO'
        Descriptions.Strings = (
          'Por Valor'
          'Por Hora')
        ImageIndexes.Strings = (
          '0'
          '1')
        ShowDescription = True
        Values.Strings = (
          'V'
          'H')
        StoredRowIndex = 1
      end
      object GridContratosDIACOBRANCA_DOFW: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Dia de Cobran'#231'a'
        DisableDragging = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Visible = False
        Width = 106
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIACOBRANCA'
        Descriptions.Strings = (
          'Domingo'
          'Segunda'
          'Ter'#231'a'
          'Quarta'
          'Quinta'
          'Sexta'
          'S'#225'bado')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6')
        ShowDescription = True
        Values.Strings = (
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7')
        StoredRowIndex = 1
      end
      object GridContratosDIACOBRANCA_DIAMES: TdxDBGridSpinColumn
        Caption = 'Dia de Cobran'#231'a'
        DisableDragging = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 123
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DIACOBRANCA'
        MinValue = 1
        MaxValue = 31
        StoredRowIndex = 1
      end
      object GridContratosGrupo: TdxDBGridColumn
        Caption = 'Grupo'
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Width = 41
        BandIndex = 0
        RowIndex = 0
        FieldName = 'GRUPOCOBRANCA'
      end
    end
    object cmbContas: TTS_DBPopupEdit
      Left = 206
      Top = 44
      Width = 242
      TabOrder = 1
      DataField = 'lkContaPagamento'
      DataSource = DMClientes.C_TabelaDS
      StyleController = DMProjeto.esClientes
      OnInitPopup = cmbContasInitPopup
      Height = 19
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 668
    Width = 115
    Height = 378
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 344
      Width = 113
    end
    inherited btComando2: TTS_SpeedButton
      Width = 113
    end
    inherited btComando1: TTS_SpeedButton
      Width = 113
      Caption = 'Imprimir'
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FF0A000A0A000A0A000A
        0A000A0A000A0A000A0A000A0A000A0A000A0A000A0A000A0A000A0A000A0A00
        0A0A000A0A000A0A000AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDD
        DDDDDDDDDD5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A
        5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5A5ADDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FF0A000AFFFFFFFFFFFFD3D3D4C2
        C3C3B1B1B2A3A3A495959688898A7C7D7E70707263656757585A4A4B4E000000
        33312E0A000AFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDD
        DD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8DBDBDBCE
        CECEC1C1C1B3B3B3A7A7A75555558989895A5A5ADDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDFF00FFFF00FFFF00FF0A000AFFFFFFFFFFFFD3D3D4C2C3C3B1B1
        B2A3A3A495959688898A7C7D7E70707263656757585A4A4B4E00000086827D0A
        000A0A000AFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDD5A5A5A
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8DBDBDBCECECEC1C1
        C1B3B3B3A7A7A7555555DFDFDF5A5A5A5A5A5ADDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDFF00FFFF00FFFF00FF0A000AFFFFFFFFFFFFD3D3D4C2C3C3B1B1B2A3A3A4
        95959688898A7C7D7E70707263656757585A4A4B4E00000086827D86827D0A00
        0A0A000AFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDD5A5A5AFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8DBDBDBCECECEC1C1C1B3B3B3
        A7A7A7555555DFDFDFDFDFDF5A5A5A5A5A5ADDDDDDDDDDDDDDDDDDDDDDDDFF00
        FFFF00FF0A000A0A000A00000000000000000000000000000000000000000000
        00003535343232312F2F2E2C2C2B29292800000000000086827D86827D0A000A
        0A000AFF00FFFF00FFFF00FFDDDDDDDDDDDD5A5A5A5A5A5A5555555555555555
        555555555555555555555555555555558D8D8D8A8A8A86868683838380808055
        5555555555DFDFDFDFDFDF5A5A5A5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FF
        0A000AFFFFFFFFFFFFDADBDBCACACBBBBCBCADADAEA1A2A29595968A8B8C7F80
        827576776B6C6E6062645557594A4B4E0000000A000A86827D86827D0A000AFF
        00FFFF00FFFF00FFDDDDDDDDDDDD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFF5F5F5EAEAEADEDEDED4D4D4C9C9C9BEBEBEB2B2B2A7A7A75555
        555A5A5ADFDFDFDFDFDF5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FF0A000AFF
        FFFFFFFFFFDADBDBCACACBBBBCBCADADAEA1A2A29595968A8B8C7F8082757677
        6B6C6E6062645557594A4B4E0000009F9B980A000A86827D0A000AFF00FFFF00
        FFFF00FFDDDDDDDDDDDD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFF5F5F5EAEAEADEDEDED4D4D4C9C9C9BEBEBEB2B2B2A7A7A7555555FBFBFB
        5A5A5ADFDFDF5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FF0A000AFFFFFFFFFF
        FFDADBDBCACACBBBBCBCADADAEA1A2A29595968A8B8C7F80827576776B6C6E00
        00FF0000FF0000FF0000009F9B989F9B980A000A0A000AFF00FFFF00FFFF00FF
        DDDDDDDDDDDD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5
        F5EAEAEADEDEDED4D4D4C9C9C9DDDDDDDDDDDDDDDDDD555555FBFBFBFBFBFB5A
        5A5A5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FF0A000A000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000009F9B989F9B989F9B980A000A0A000AFF00FFFF00FFDDDDDDDD
        DDDD5A5A5A555555555555555555555555555555555555555555555555555555
        555555555555555555555555555555555555555555FBFBFBFBFBFBFBFBFB5A5A
        5A5A5A5ADDDDDDDDDDDDFF00FFFF00FF0A000A0A000AFFFFFFFFFFFFD3D3D4C2
        C3C3B1B1B2A3A3A495959688898A7C7D7E70707263656757585A4A4B4E4A4B4E
        5D5A580000000000009F9B989F9B980A000AFF00FFFF00FFDDDDDDDDDDDD5A5A
        5A5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5F5F5E8E8E8DBDBDBCE
        CECEC1C1C1B3B3B3A7A7A7A7A7A7B6B6B6555555555555FBFBFBFBFBFB5A5A5A
        DDDDDDDDDDDDFF00FFFF00FFFF00FF0A000A0000000000000000000000000000
        000000000000000000000000000000000000000000000000000000000000009F
        9B989F9B980000009F9B980A000AFF00FFFF00FFDDDDDDDDDDDDDDDDDD5A5A5A
        5555555555555555555555555555555555555555555555555555555555555555
        55555555555555555555555555FBFBFBFBFBFB555555FBFBFB5A5A5ADDDDDDDD
        DDDDFF00FFFF00FFFF00FF0A000A0A000A0A000AD6FDFFD6FDFFD6FDFFD6FDFF
        D6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFF3B71720000000000009F9B
        989F9B980000000A000AFF00FFFF00FFDDDDDDDDDDDDDDDDDD5A5A5A5A5A5A5A
        5A5AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFB1B1B1555555555555FBFBFBFBFBFB5555555A5A5ADDDDDDDDDDDDFF00
        FFFF00FFFF00FFFF00FFFF00FF0A000AD6FDFFD6FDFF00DA0700DA0700DA0700
        DA0700DA0700DA0700DA0700DA07D6FDFFD6FDFF0000009F9B980000009F9B98
        0A000A0A000AFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5AFFFF
        FFFFFFFFCACACACACACACACACACACACACACACACACACACACACACACACAFFFFFFFF
        FFFF555555FBFBFB555555FBFBFB5A5A5A5A5A5ADDDDDDDDDDDDFF00FFFF00FF
        FF00FFFF00FFFF00FF0A000A302947D6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FD
        FFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFF0000000000009F9B980000000A000AFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5A919191FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555
        55555555FBFBFB5555555A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF0A000AD6FDFFD6FDFFDA0000DA0000DA0000DA0000DA0000
        DA0000DA0000DA0000DA0000D6FDFF1E24220A000A0A000A0A000AFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5AFFFFFFFFFFFFCA
        CACACACACACACACACACACACACACACACACACACACACACACACACACAFFFFFF797979
        5A5A5A5A5A5A5A5A5ADDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0A000A0A000AD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6
        FDFFD6FDFFD6FDFFD6FDFF0000000A000AFF00FFFF00FFFF00FFFF00FFFF00FF
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5A5A5A5AFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5555555A5A5ADD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF0A000A0A000AD6FDFF0000FF0000FF0000FF0000FF0000FF0000FF0000
        FF0000FF0000FFBDFCFF0A000AFF00FFFF00FFFF00FFFF00FFFF00FFDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5A5A5A5AFFFFFFDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFFFFFF5A5A5ADDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF0A000AD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFFD6FDFF
        D6FDFFD6FDFF0A000A0A000AFF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD5A5A5AFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF5A5A5A5A5A5ADDDDDDDDDDDD
        DDDDDDDDDDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A00
        0A0A000AC1F6FE00AAF300AAF300AAF300AAF300AAF300AAF300AAF300AAF300
        AAF3D6FDFF30132D0A000AFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDD5A5A5A5A5A5AFFFFFFD7D7D7D7D7D7D7D7D7D7D7
        D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7D7FFFFFF7979795A5A5ADDDDDDDDDDDDDD
        DDDDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF0A000A
        0A000A59245956235656235551215050204F4E1F4C4B1F49481D46471C46451C
        4230132D0A000AFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDD5A5A5A5A5A5A989898959595959595929292919191
        8F8F8F8E8E8E8B8B8B8A8A8A8989897979795A5A5ADDDDDDDDDDDDDDDDDDFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD
        DDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDDD}
      NumGlyphs = 2
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 113
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 113
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 113
      Visible = False
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 783
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 302
      Caption = 'Contratos de Servi'#231'o do Cliente'
      Effect3D.ShadowedColor = 14859922
    end
    inherited lbEstadoForm: TTS_Label
      Width = 205
      Caption = 'Inclua / Altere os Contratos e Contratados'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 747
    end
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 232
    Top = 238
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 307
    Top = 239
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    RefreshList.Strings = (
      'C_FuncsPayItens=FAVORECIDOS')
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Contratos de Servi'#231'o do Cliente'
    OnRefresh = FormsComponentRefresh
    Left = 148
    Top = 237
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 25
    Top = 238
    inherited Ajuda1: TMenuItem
      HelpContext = 432
    end
  end
  inherited FormStorage: TFormStorage
    Left = 384
    Top = 240
  end
  object C_FuncsPayItensDS: TDataSource
    Left = 139
    Top = 349
  end
  object P_FuncsPayItens: TDataSetProvider
    Constraints = True
    Left = 42
    Top = 349
  end
  object ppmContratos: TTS_PopupMenu
    Left = 501
    Top = 165
  end
end
