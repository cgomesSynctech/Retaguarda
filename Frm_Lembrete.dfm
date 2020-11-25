inherited FrmLembrete: TFrmLembrete
  Left = 95
  Top = 114
  Width = 595
  Height = 388
  Caption = 'Agenda'
  Constraints.MinHeight = 388
  Constraints.MinWidth = 595
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel [0]
    Width = 472
    Height = 311
    inherited Grid: TTS_QDBGrid
      Width = 470
      Height = 309
      KeyField = 'LEMBRETE'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoShowButtonAlways, edgoUseBitmap]
      TS_SelectedColumn = 'TIPO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridTIPO: TdxDBGridImageColumn
        Alignment = taLeftJustify
        Caption = 'Tipo'
        DisableEditor = True
        HeaderAlignment = taCenter
        MinWidth = 16
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPO'
        Descriptions.Strings = (
          'Somente uma vez'
          'Diariamente'
          'Semanalmente'
          'Mensalmente')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3')
        ShowDescription = True
        Values.Strings = (
          '0'
          '1'
          '2'
          '3')
      end
      object GridOBS: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Lembrete'
        DisableEditor = True
        HeaderAlignment = taCenter
        Width = 251
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBS'
      end
      object GridDATAINICIAL: TdxDBGridDateColumn
        Caption = 'Data Inicial'
        HeaderAlignment = taCenter
        Visible = False
        Width = 69
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAINICIAL'
      end
      object GridSITUACAO: TdxDBGridCheckColumn
        Caption = 'OK'
        HeaderAlignment = taCenter
        MinWidth = 20
        Width = 22
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SITUACAO'
        ValueChecked = 'S'
        ValueUnchecked = 'N'
      end
      object GridDESATIVADO: TdxDBGridMaskColumn
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESATIVADO'
      end
      object GridDATAFINAL: TdxDBGridDateColumn
        Caption = 'Data Final'
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAFINAL'
      end
      object GridQ_lcliente: TdxDBGridColumn
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Q_lcliente'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 470
      Height = 309
    end
    inherited sbDados: TTS_Panel
      Width = 470
      Height = 309
      Anchors = [akLeft, akTop, akBottom]
      Color = 14936298
      object TS_Panel3: TTS_Panel
        Left = 0
        Top = 83
        Width = 470
        Height = 131
        Align = alClient
        BevelOuter = bvNone
        Color = 14936298
        TabOrder = 4
        DesignSize = (
          470
          131)
        object TS_Label3: TTS_Label
          Left = 12
          Top = 30
          Width = 65
          Height = 31
          Alignment = taLeftJustify
          Anchors = [akLeft, akTop, akBottom]
          Caption = '&Observa'#231#227'o:'
          FocusControl = MemoObs
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label2: TTS_Label
          Left = 3
          Top = 116
          Width = 475
          Height = 18
          Alignment = taLeftJustify
          Anchors = [akLeft, akBottom]
          Caption = 
            'Informe os clientes/fornecedores/etc que desejam ser lembrados q' +
            'uando este lembrete ocorrer:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label4: TTS_Label
          Left = 9
          Top = 7
          Width = 65
          Caption = 'Para Usu'#225'rio:'
          FocusControl = TS_DBLookupComboBox1
          FormatoTabela = False
          LinkToResult = 0
        end
        object MemoObs: TTS_DBMemo
          Left = 76
          Top = 28
          Width = 375
          TabOrder = 1
          Anchors = [akLeft, akTop, akRight, akBottom]
          DataField = 'OBS'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esAgenda
          Height = 87
        end
        object TS_DBLookupComboBox1: TTS_DBLookupComboBox
          Left = 76
          Top = 5
          Width = 173
          TabOrder = 0
          DataField = 'lkUsuario'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esAgenda
          ClearKey = 32
          LookupKeyValue = Null
          Height = 19
        end
      end
      object pnSemana: TTS_Panel
        Left = 0
        Top = 61
        Width = 470
        Height = 22
        Align = alTop
        BevelOuter = bvNone
        Color = 14936298
        TabOrder = 0
        Visible = False
        object CheckDomingo: TTS_DBCheckBox
          Left = 6
          Top = 0
          Width = 66
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 0
          AutoSize = True
          Caption = 'Domingo'
          DataField = 'DOMINGO'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esClientes
          ValueChecked = 'S'
          ValueGrayed = 'null'
          ValueUnchecked = 'N'
          DisableEdit = False
        end
        object CheckSegunda: TTS_DBCheckBox
          Left = 72
          Top = 0
          Width = 66
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 1
          AutoSize = True
          Caption = 'Segunda'
          DataField = 'SEGUNDA'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esClientes
          ValueChecked = 'S'
          ValueGrayed = 'null'
          ValueUnchecked = 'N'
          DisableEdit = False
        end
        object CheckTerca: TTS_DBCheckBox
          Left = 144
          Top = 0
          Width = 66
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 2
          AutoSize = True
          Caption = 'Ter'#231'a'
          DataField = 'TERCA'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esClientes
          ValueChecked = 'S'
          ValueGrayed = 'null'
          ValueUnchecked = 'N'
          DisableEdit = False
        end
        object CheckQuarta: TTS_DBCheckBox
          Left = 206
          Top = 0
          Width = 66
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 3
          AutoSize = True
          Caption = 'Quarta'
          DataField = 'QUARTA'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esClientes
          ValueChecked = 'S'
          ValueGrayed = 'null'
          ValueUnchecked = 'N'
          DisableEdit = False
        end
        object CheckQuinta: TTS_DBCheckBox
          Left = 270
          Top = 0
          Width = 66
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 4
          AutoSize = True
          Caption = 'Quinta'
          DataField = 'QUINTA'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esClientes
          ValueChecked = 'S'
          ValueGrayed = 'null'
          ValueUnchecked = 'N'
          DisableEdit = False
        end
        object CheckSexta: TTS_DBCheckBox
          Left = 338
          Top = 0
          Width = 62
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 5
          AutoSize = True
          Caption = 'Sexta'
          DataField = 'SEXTA'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esClientes
          ValueChecked = 'S'
          ValueGrayed = 'null'
          ValueUnchecked = 'N'
          DisableEdit = False
        end
        object CheckSabado: TTS_DBCheckBox
          Left = 396
          Top = 0
          Width = 66
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 6
          AutoSize = True
          Caption = 'S'#225'bado'
          DataField = 'SABADO'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esClientes
          ValueChecked = 'S'
          ValueGrayed = 'null'
          ValueUnchecked = 'N'
          AllowGrayed = True
          DisableEdit = False
        end
      end
      object dbgLCliente: TTS_QDBGrid
        Left = 0
        Top = 214
        Width = 470
        Height = 95
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'LEMBRETECLIENTE'
        SummaryGroups = <>
        SummarySeparator = '|'
        Align = alBottom
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = ppmGridLembrete
        TabOrder = 1
        AutoSearchColor = 6611199
        AutoSearchTextColor = clBlue
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMLembrete.C_lclienteDS
        Filter.Criteria = {00000000}
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
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        OnChangeNode = dbgLClienteChangeNode
        TS_PermitirQuantidade = False
        TS_DescriptionCanChange = False
        TS_GridMenuOptions = [gmDados]
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
        TS_SelectedColumn = 'lkTipoFav'
        TS_ID = 0
        TS_ChaveEstrangeira = 'CLIENTE'
        TS_C_Localizar = DMProjeto.C_LocalizarFav
        TS_ItemColumns = 'Nome'
        TS_TipoDescricao = tdVenda
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgLClienteLEMBRETECLIENTE: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 94
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEMBRETECLIENTE'
        end
        object dbgLClienteLEMBRETE: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'LEMBRETE'
        end
        object dbgLClienteCLIENTE: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 62
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CLIENTE'
        end
        object dbgLClienteTIPOFAVORECIDO: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 93
          BandIndex = 0
          RowIndex = 0
          FieldName = 'TIPOFAVORECIDO'
        end
        object dbgLClienteTipoFav: TdxDBGridLookupColumn
          Caption = 'Tipo'
          HeaderAlignment = taCenter
          Width = 112
          BandIndex = 0
          RowIndex = 0
          OnChange = dbgLClienteTipoFavChange
          FieldName = 'lkTipoFav'
        end
        object dbgLClienteNOME: TdxDBGridButtonColumn
          Caption = 'Nome'
          HeaderAlignment = taCenter
          Width = 303
          BandIndex = 0
          RowIndex = 0
          FieldName = 'NOME'
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
          OnButtonClick = dbgLClienteNOMEButtonClick
        end
      end
      object TS_Panel1: TTS_Panel
        Left = 0
        Top = 0
        Width = 470
        Height = 33
        Align = alTop
        BevelOuter = bvNone
        Color = 14936298
        TabOrder = 2
        DesignSize = (
          470
          33)
        object lbtipo: TTS_Label
          Left = 2
          Top = 13
          Width = 73
          Height = 13
          Caption = 'Frequ'#234'ncia:'
          FocusControl = LookTipo
          FormatoTabela = False
          LinkToResult = 0
        end
        object CheckFeito: TTS_DBCheckBox
          Left = 395
          Top = 9
          Width = 81
          Color = 14936298
          ParentColor = False
          Style.BorderStyle = xbsNone
          Style.ButtonStyle = btsSimple
          Style.HotTrack = False
          TabOrder = 0
          Anchors = [akLeft, akBottom]
          AutoSize = True
          Caption = 'Conclu'#237'do'
          DataField = 'SITUACAO'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esClientes
          ValueChecked = 'S'
          ValueGrayed = 'null'
          ValueUnchecked = 'N'
          DisableEdit = False
        end
        object LookTipo: TTS_DBImageEdit
          Left = 76
          Top = 11
          Width = 157
          TabOrder = 1
          Alignment = taLeftJustify
          DataField = 'TIPO'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esAgenda
          OnChange = LookTipoChange
          Descriptions.Strings = (
            'Somente uma vez'
            'Diariamente'
            'Semanalmente'
            'Mensalmente')
          ImageIndexes.Strings = (
            '0'
            '1'
            '2'
            '3')
          Values.Strings = (
            '0'
            '1'
            '2'
            '3')
          Height = 19
          StoredValues = 1
        end
      end
      object pnData: TTS_Panel
        Left = 0
        Top = 33
        Width = 470
        Height = 28
        Align = alTop
        BevelOuter = bvNone
        Color = 14936298
        TabOrder = 3
        object TS_Label1: TTS_Label
          Left = 0
          Top = 7
          Width = 74
          Height = 13
          Caption = 'Data:'
          FocusControl = editDataIni
          FormatoTabela = False
          LinkToResult = 0
        end
        object lbAteData: TTS_Label
          Left = 156
          Top = 7
          Width = 30
          Caption = 'at'#233'  '
          FocusControl = editDataFim
          Visible = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object editDataIni: TTS_DBEditDate
          Left = 76
          Top = 5
          Width = 79
          TabOrder = 0
          DataField = 'DATAINICIAL'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esAgenda
          ButtonGlyph.Data = {
            AE040000424DAE0400000000000036040000280000000A0000000A0000000100
            0800000000007800000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
            A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
            FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
            0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
            FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
          Height = 19
        end
        object editDataFim: TTS_DBEditDate
          Left = 190
          Top = 5
          Width = 79
          TabOrder = 1
          Visible = False
          DataField = 'DATAFINAL'
          DataSource = DMLembrete.C_TabelaDS
          StyleController = DMProjeto.esAgenda
          ButtonGlyph.Data = {
            AE040000424DAE0400000000000036040000280000000A0000000A0000000100
            0800000000007800000000000000000000000001000000000000000000000000
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
            FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
            A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
            FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
            0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
            FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
          Height = 19
        end
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 470
    end
  end
  inherited pnNavigator: TTS_Panel [1]
    Left = 472
    Height = 311
    inherited btComando1: TTS_SpeedButton
      Caption = 'Memorizado'
      Glyph.Data = {
        C6050000424DC605000000000000360400002800000014000000140000000100
        0800000000009001000000000000000000000001000000010000000000000000
        80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
        A600D4F0FF00B1E2FF008ED4FF006BC6FF0048B8FF0025AAFF0000AAFF000092
        DC00007AB90000629600004A730000325000D4E3FF00B1C7FF008EABFF006B8F
        FF004873FF002557FF000055FF000049DC00003DB90000319600002573000019
        5000D4D4FF00B1B1FF008E8EFF006B6BFF004848FF002525FF000000FE000000
        DC000000B900000096000000730000005000E3D4FF00C7B1FF00AB8EFF008F6B
        FF007348FF005725FF005500FF004900DC003D00B90031009600250073001900
        5000F0D4FF00E2B1FF00D48EFF00C66BFF00B848FF00AA25FF00AA00FF009200
        DC007A00B900620096004A00730032005000FFD4FF00FFB1FF00FF8EFF00FF6B
        FF00FF48FF00FF25FF00FE00FE00DC00DC00B900B90096009600730073005000
        5000FFD4F000FFB1E200FF8ED400FF6BC600FF48B800FF25AA00FF00AA00DC00
        9200B9007A009600620073004A0050003200FFD4E300FFB1C700FF8EAB00FF6B
        8F00FF487300FF255700FF005500DC004900B9003D0096003100730025005000
        1900FFD4D400FFB1B100FF8E8E00FF6B6B00FF484800FF252500FE000000DC00
        0000B9000000960000007300000050000000FFE3D400FFC7B100FFAB8E00FF8F
        6B00FF734800FF572500FF550000DC490000B93D000096310000732500005019
        0000FFF0D400FFE2B100FFD48E00FFC66B00FFB84800FFAA2500FFAA0000DC92
        0000B97A000096620000734A000050320000FFFFD400FFFFB100FFFF8E00FFFF
        6B00FFFF4800FFFF2500FEFE0000DCDC0000B9B9000096960000737300005050
        0000F0FFD400E2FFB100D4FF8E00C6FF6B00B8FF4800AAFF2500AAFF000092DC
        00007AB90000629600004A73000032500000E3FFD400C7FFB100ABFF8E008FFF
        6B0073FF480057FF250055FF000049DC00003DB9000031960000257300001950
        0000D4FFD400B1FFB1008EFF8E006BFF6B0048FF480025FF250000FE000000DC
        000000B90000009600000073000000500000D4FFE300B1FFC7008EFFAB006BFF
        8F0048FF730025FF570000FF550000DC490000B93D0000963100007325000050
        1900D4FFF000B1FFE2008EFFD4006BFFC60048FFB80025FFAA0000FFAA0000DC
        920000B97A000096620000734A0000503200D4FFFF00B1FFFF008EFFFF006BFF
        FF0048FFFF0025FFFF0000FEFE0000DCDC0000B9B90000969600007373000050
        5000F2F2F200E6E6E600DADADA00CECECE00C2C2C200B6B6B600AAAAAA009E9E
        9E0092929200868686007A7A7A006E6E6E0062626200565656004A4A4A003E3E
        3E0032323200262626001A1A1A000E0E0E00F0FBFF00A4A0A000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00010101010101
        01E8F8F8F8F8E801010101010101010101010101E8ED00000000EDE801010101
        0101010101010101EE00EEDDDEEE00EE010101010101010101010101EE00FFDC
        DDDE00EE010101010101010101010101EE00DDDEDFE100EE0101010101010101
        01010101EE00FFDCDDDE00EE010101010101010101010101EE00DEDFE0E100EE
        010101010101010101010101F100E7EAEAEB00F10101010101010101010101EE
        00E9E7E9E9E7EB00EE010101010101010101EE00E9E7E5E6E6E5E7EB00EE0101
        0101010101E8F1F2E7E5E5E9E9E5E5E7F2F1E8010101010101EE00EBE4E2E9E3
        E3E9E5E5EB00EE010101010101EE00E4E2E2E9D6D6E9E4E4E700EE0101010101
        01EE00E4D6FF0ED6D60EE3E4E600EE010101010101EE00EBD6FF0CFBFB0CE2E3
        EB00EE010101010101E8F1F2E4D6DCFFFFDCE2E4F2F1E801010101010101EE00
        EBE4E3D6E2E3E4EB00EE010101010101010101EE00F2EBE6E7EBF200EE010101
        0101010101010101EEF100000000F1EE01010101010101010101010101E8EEEE
        EEEEE801010101010101}
      OnClick = btComando1Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 277
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 587
    Gradient.ColorStart = 11122108
    inherited lbCaption: TdxfLabel
      Width = 100
      Caption = 'Lembretes'
      Effect3D.ShadowedColor = 11122108
    end
    inherited btHelp: TTS_SpeedButton
      Left = 478
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 395
    Top = 282
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 420
    Top = 311
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 451
    Top = 319
  end
  inherited ImgPadrao: TImageList
    Left = 444
    Top = 313
  end
  inherited FormComponent: TFormComponent
    BeforeLoadKey = FormComponentBeforeLoadKey
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msAgenda
    BarEndColor = 11122108
    CaptionShadow = 11122108
    FormColor = 14936298
    Modulo = 'Agenda'
    Caption = 'Lembretes'
    OnInclusao = FormComponentInclusao
    Left = 308
    Top = 262
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 635
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 316
    Top = 185
  end
  object ppmGridLembrete: TTS_PopupMenu
    Left = 318
    Top = 63
    object MenuItem5: TMenuItem
      Caption = 'Novo'
      ShortCut = 45
      OnClick = MenuItem5Click
    end
    object Apagar1: TMenuItem
      Caption = 'Apagar'
      ShortCut = 16430
      OnClick = Apagar1Click
    end
  end
  object Q_Memorizacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT T.FORMNAME, M.IDGERADOR'
      'FROM MEMORIZACOES M'
      '   INNER JOIN TIPOSORIGENS T ON (M.ORIGEM = T.ORIGEM)'
      'where m.memorizacao = :memoria')
    Left = 38
    Top = 155
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'memoria'
        ParamType = ptUnknown
      end>
  end
end
