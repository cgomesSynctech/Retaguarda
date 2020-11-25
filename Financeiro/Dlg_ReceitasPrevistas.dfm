inherited DlgReceitasPrevistas: TDlgReceitasPrevistas
  Left = 118
  Top = 101
  Width = 638
  Height = 427
  HelpContext = 0
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 512
    Height = 350
    Color = 16116702
    object Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 510
      Height = 23
      Align = alTop
      BevelOuter = bvNone
      Color = 16247774
      TabOrder = 0
      object TS_Label1: TTS_Label
        Left = 12
        Top = 4
        Width = 83
        Caption = 'No per'#237'odo de '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 194
        Top = 4
        Width = 17
        Alignment = taLeftJustify
        Caption = ' a '
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 97
        Top = 2
        Width = 89
        TabOrder = 0
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
        Date = -700000
        OnDateChange = DataFDateChange
        Height = 19
      end
      object DataF: TTS_DateTimePicker
        Left = 213
        Top = 2
        Width = 89
        TabOrder = 1
        AutoSize = False
        StyleController = DMProjeto.esClientes
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
        Date = -700000
        OnDateChange = DataFDateChange
        Height = 19
      end
    end
    object Panel3: TTS_Panel
      Left = 1
      Top = 269
      Width = 510
      Height = 80
      Align = alBottom
      BevelOuter = bvNone
      Color = 16247774
      TabOrder = 1
      DesignSize = (
        510
        80)
      object TS_Shape8: TTS_Shape
        Left = 420
        Top = 7
        Width = 89
        Height = 17
        Anchors = [akRight, akBottom]
        Brush.Color = clGray
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape7: TTS_Shape
        Left = 418
        Top = 5
        Width = 89
        Height = 17
        Anchors = [akRight, akBottom]
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape6: TTS_Shape
        Left = 420
        Top = 26
        Width = 89
        Height = 17
        Anchors = [akRight, akBottom]
        Brush.Color = clGray
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape5: TTS_Shape
        Left = 418
        Top = 24
        Width = 89
        Height = 17
        Anchors = [akRight, akBottom]
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape4: TTS_Shape
        Left = 420
        Top = 45
        Width = 89
        Height = 17
        Anchors = [akRight, akBottom]
        Brush.Color = clGray
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape3: TTS_Shape
        Left = 418
        Top = 43
        Width = 89
        Height = 17
        Anchors = [akRight, akBottom]
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape2: TTS_Shape
        Left = 420
        Top = 64
        Width = 89
        Height = 17
        Anchors = [akRight, akBottom]
        Brush.Color = clGray
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Shape1: TTS_Shape
        Left = 418
        Top = 62
        Width = 89
        Height = 17
        Anchors = [akRight, akBottom]
        Pen.Style = psClear
        Transparent = False
      end
      object Label4: TTS_Label
        Left = 266
        Top = 45
        Width = 145
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'A Ser Disponibilizado:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object Label5: TTS_Label
        Left = 318
        Top = 64
        Width = 92
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'Total:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object lbTotalGeral: TTS_Label
        Left = 422
        Top = 64
        Width = 81
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object Label7: TTS_Label
        Left = 327
        Top = 7
        Width = 84
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'Dispon'#237'vel:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object Label6: TTS_Label
        Left = 285
        Top = 26
        Width = 126
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = 'Parcelas a Receber:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object lblADisp: TTS_Label
        Left = 420
        Top = 45
        Width = 83
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object lblTitulos: TTS_Label
        Left = 422
        Top = 25
        Width = 81
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
      object lblDisp: TTS_Label
        Left = 420
        Top = 6
        Width = 83
        Height = 13
        Anchors = [akRight, akBottom]
        Caption = '0.00'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clNavy
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
        LinkTime = ltAfterClick
        LinkStyle = lsChild
      end
    end
    object MasterView: TdxMasterView
      Left = 1
      Top = 24
      Width = 510
      Height = 245
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = TS_PopupMenu1
      TabOrder = 2
      OptionsView = [movAnimation, movAutoColumnWidth, movHideFocusRect, movHideSelection, movKeepColumnWidths, movTransparentDragAndDrop, movUseBitmapToDrawPreview]
      OnDblClick = MasterViewDblClick
      object CorDisponivel: TdxMasterViewStyle
        Color = 15781535
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object CorParcelasAReceber: TdxMasterViewStyle
        Color = 16769183
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object CorADisponibilizar: TdxMasterViewStyle
        Color = 16771022
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object CorCabecalho: TdxMasterViewStyle
        Color = 15461355
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svColor, svFont]
      end
      object CorGrupo: TdxMasterViewStyle
        Color = 16247774
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svColor, svFont]
      end
      object CorRegistros: TdxMasterViewStyle
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svColor, svFont]
      end
      object StylePositivo: TdxMasterViewStyle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlue
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        AssignedValues = [svFont]
      end
      object StyleNegativo: TdxMasterViewStyle
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clRed
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        AssignedValues = [svFont]
      end
      object MasterViewLevel7: TdxMasterViewLevel
        ContentStyle = CorDisponivel
        DataSource = Q_DisponivelTotalDS
        GridLinesColor = 15781535
        ID = 'IDFALSO'
        OptionsView = [lovGridWithPreview, lovOccupyRestSpace]
        object MasterViewLevel7NOMEDISPONIVEL: TdxMasterViewColumn
          FieldName = 'NOMEDISPONIVEL'
          RowIndex = 0
          ColIndex = 0
        end
        object MasterViewLevel7DISPONIVEL: TdxMasterViewColumn
          FieldName = 'DISPONIVEL'
          RowIndex = 0
          ColIndex = 1
          Width = 40
        end
        object MasterViewLevel1: TdxMasterViewLevel
          Caption = 'Dispon'#237'vel'
          CaptionStyle = CorDisponivel
          DataSource = Q_DisponivelDs
          DetailKey = 'IDFALSO'
          GridLinesColor = clWhite
          GroupByBoxStyle = CorGrupo
          GroupStyle = CorGrupo
          HeaderStyle = CorCabecalho
          ID = 'CONTA'
          MasterKey = 'IDFALSO'
          OptionsView = [lovGrid, lovGridWithPreview, lovOccupyRestSpace]
          object MasterViewLevel1DESCRICAO: TdxMasterViewColumn
            FieldName = 'DESCRICAO'
            RowIndex = 0
            ColIndex = 0
          end
          object MasterViewLevel1DISPONIVEL: TdxMasterViewColumn
            FieldName = 'DISPONIVEL'
            RowIndex = 0
            ColIndex = 1
            SummaryFormat = '###,###,##0.00'
            OnGetContentStyle = MasterViewLevel4TOTALESPECIEGetContentStyle
          end
          object MasterViewLevel4: TdxMasterViewLevel
            Caption = 'Forma de Pagamento'
            ContentStyle = CorRegistros
            DataSource = Q_DisponivelDetDS
            DetailKey = 'CONTA'
            GridLinesColor = clWhite
            HeaderStyle = CorCabecalho
            ID = 'ESPECIE'
            MasterKey = 'CONTA'
            object MasterViewLevel4DESCRICAO: TdxMasterViewColumn
              Caption = 'Forma de Pagamento'
              FieldName = 'DESCRICAO'
              RowIndex = 0
              ColIndex = 0
              Width = 380
            end
            object MasterViewLevel4TOTALESPECIE: TdxMasterViewColumn
              Caption = 'Valor'
              FieldName = 'TOTALESPECIE'
              HeaderAlignment = taRightJustify
              RowIndex = 0
              ColIndex = 1
              Width = 90
              OnGetContentStyle = MasterViewLevel4TOTALESPECIEGetContentStyle
            end
          end
        end
      end
      object MasterViewLevel2: TdxMasterViewLevel
        Caption = 'Parcelas a Receber'
        ContentStyle = CorDisponivel
        DataSource = Q_TitulosnaEmpresaDs
        GridLinesColor = 15781535
        GroupStyle = CorGrupo
        HeaderStyle = CorCabecalho
        ID = 'DESCRICAO'
        OptionsView = [lovGridWithPreview, lovOccupyRestSpace]
        object MasterViewLevel2DESCRICAO: TdxMasterViewColumn
          FieldName = 'DESCRICAO'
          RowIndex = 0
          ColIndex = 0
          SortIndex = 0
          SortOrder = soAscending
        end
        object MasterViewLevel2TITULOS: TdxMasterViewColumn
          FieldName = 'TITULOS'
          RowIndex = 0
          ColIndex = 1
          Width = 40
        end
        object MasterViewLevel5: TdxMasterViewLevel
          Tag = 1
          Caption = 'Detalhe'
          ContentStyle = CorRegistros
          DataSource = Q_TitulosDetDs
          DetailKey = 'IDFALSO'
          GridLinesColor = clBtnFace
          HeaderStyle = CorCabecalho
          ID = 'ID'
          MasterKey = 'IDFALSO'
          object MasterViewLevel5NOME: TdxMasterViewColumn
            FieldName = 'NOME'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 0
            Width = 138
          end
          object MasterViewLevel5VENCIMENTO: TdxMasterViewColumn
            FieldName = 'VENCIMENTO'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 1
            Width = 62
          end
          object MasterViewLevel5COMPETENCIA: TdxMasterViewColumn
            FieldName = 'COMPETENCIA'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 2
            Width = 69
          end
          object MasterViewLevel5VALOR: TdxMasterViewColumn
            FieldName = 'VALOR'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 3
            Width = 62
          end
          object MasterViewLevel5VALORPAGO: TdxMasterViewColumn
            FieldName = 'VALORPAGO'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 4
            Width = 59
          end
          object MasterViewLevel5SALDO: TdxMasterViewColumn
            FieldName = 'SALDO'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 5
            Width = 63
          end
        end
      end
      object MasterViewLevel8: TdxMasterViewLevel
        ContentStyle = CorDisponivel
        DataSource = Q_ChequesTotalDS
        GridLinesColor = 15781535
        ID = 'IDFALSO'
        OptionsView = [lovGridWithPreview, lovOccupyRestSpace]
        object MasterViewLevel8TITULO: TdxMasterViewColumn
          FieldName = 'TITULO'
          RowIndex = 0
          ColIndex = 0
        end
        object MasterViewLevel8DISPONIVEL: TdxMasterViewColumn
          FieldName = 'DISPONIVEL'
          RowIndex = 0
          ColIndex = 1
          Width = 40
        end
        object MasterViewLevel3: TdxMasterViewLevel
          Caption = 'Cheques Predatados'
          CaptionStyle = CorDisponivel
          ContentStyle = CorRegistros
          DataSource = Q_AdisponibilizarDs
          DetailKey = 'IDFALDO'
          GridLinesColor = clWhite
          GroupStyle = CorGrupo
          HeaderStyle = CorCabecalho
          ID = 'DESCRICAO'
          MasterKey = 'IDFALSO'
          OptionsView = [lovGrid, lovGridWithPreview, lovOccupyRestSpace]
          object MasterViewLevel3DESCRICAO: TdxMasterViewColumn
            FieldName = 'DESCRICAO'
            RowIndex = 0
            ColIndex = 0
            Width = 397
          end
          object MasterViewLevel3DISPONIVEL: TdxMasterViewColumn
            FieldName = 'DISPONIVEL'
            RowIndex = 0
            ColIndex = 1
            Width = 73
          end
          object MasterViewLevel6: TdxMasterViewLevel
            Tag = 2
            Caption = 'Detalhe'
            ContentStyle = CorRegistros
            DataSource = Q_ChequesDetDS
            DetailKey = 'FORMAPAGAMENTO'
            GridLinesColor = clBtnFace
            GroupByBoxStyle = CorGrupo
            HeaderStyle = CorCabecalho
            ID = 'IDDOC'
            MasterKey = 'FORMAPAGAMENTO'
            object MasterViewLevel6NOME: TdxMasterViewColumn
              FieldName = 'NOME'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 0
              Width = 110
            end
            object MasterViewLevel6VENCIMENTO: TdxMasterViewColumn
              FieldName = 'VENCIMENTO'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 1
              Width = 61
            end
            object MasterViewLevel6VALOR: TdxMasterViewColumn
              FieldName = 'VALOR'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 5
              Width = 73
            end
            object MasterViewLevel6DESCCONTA: TdxMasterViewColumn
              FieldName = 'DESCCONTA'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 2
              Width = 88
            end
            object MasterViewLevel6NUMCHEQUE: TdxMasterViewColumn
              FieldName = 'NUMCHEQUE'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 3
              Width = 53
            end
            object MasterViewLevel6NOMEBANCO: TdxMasterViewColumn
              FieldName = 'NOMEBANCO'
              HeaderAlignment = taCenter
              RowIndex = 0
              ColIndex = 4
              Width = 84
            end
          end
        end
      end
    end
  end
  inherited pnNavigator: TTS_Panel
    Left = 512
    Height = 350
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 316
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = 'Pesquisar'
      Glyph.Data = {00000000}
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Caption = 'Visualizar'
      Glyph.Data = {
        42010000424D4201000000000000760000002800000011000000110000000100
        040000000000CC00000000000000000000001000000010000000000000000000
        BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00777777777777
        77777000000070000000007777777000000070FFFFFFF07777700000000070F7
        7777F07777000000000070F77777F07770007000000070F77780008700077000
        000070F7700FFF0000777000000070F708FFFF0807777000000070F80E000F07
        08777000000070F0EFEFEF0770777000000070F0F0000F077077700000007000
        EFEFFF0770777000000077780000000708777000000077770077777807777000
        0000777770077700777770000000777777800087777770000000777777777777
        777770000000}
      NumGlyphs = 1
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 630
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 174
      Caption = 'Receitas Previstas'
      Effect3D.ShadowedColor = 14859922
    end
    inherited lbEstadoForm: TTS_Label
      Width = 87
      Caption = 'Valores a Receber'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 425
    end
    inherited lbUpperHint: TTS_Label
      Left = 625
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 538
    Top = 326
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 593
    Top = 283
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 577
    Top = 325
  end
  inherited FormsComponent: TFormsComponent
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Receitas Previstas'
    OnRefresh = FormsComponentRefresh
    Left = 266
    Top = 338
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 345
    Top = 8
    inherited Ajuda1: TMenuItem
      HelpContext = 365
    end
  end
  object Q_Disponivel: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT 1 as IDFalso, c.Descricao, c.Conta, c.TipoConta,Sum(t.Val' +
        'or) AS Disponivel'
      'FROM Transacoes t INNER JOIN Contas c ON t.Conta = c.Conta'
      'GROUP BY c.Descricao, c.Conta, c.TipoConta'
      'Order by  c.Descricao, c.Conta'
      ''
      ''
      ' '
      ' ')
    Left = 24
    Top = 264
  end
  object Q_DisponivelDs: TDataSource
    DataSet = C_Disponivel
    Left = 22
    Top = 157
  end
  object Q_Adisponibilizar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT 1 as IDFaldo, fp.formapagamento, fp.Descricao, SUM(dd.Val' +
        'or) as Disponivel '
      
        'FROM DepositosDoc dd INNER JOIN FormasPagamento fp ON dd.FormaPa' +
        'gamento = fp.FormaPagamento '
      
        'Where dd.Vencimento >= :DataI and dd.Vencimento <= :DataF and dd' +
        '.Status = 3'
      'Group by fp.formapagamento, fp.Descricao'
      ' '
      ' '
      ' '
      ' '
      ' ')
    Left = 200
    Top = 265
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '01/01/2001'
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
        Value = '14/06/2001'
      end>
  end
  object Q_AdisponibilizarDs: TDataSource
    DataSet = C_ADisponibilizar
    Left = 480
    Top = 275
  end
  object Q_TitulosnaEmpresa: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select '#39'Parcelas a Receber'#39' as Descricao, 1 as IDFalso, '
      
        '          Sum(tr.Valor - tr.ValorPago - tr.CreditoUtilizado - tr' +
        '.Descontos)  as Titulos'
      'From titulosareceber tr'
      'where (tr.Vencimento >= :DataI And tr.Vencimento <= :DataF)'
      '           and (tr.status > 0 And tr.status < 50) '
      '          '
      ''
      ''
      ' '
      ' '
      ' ')
    Left = 106
    Top = 265
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '01/01/2001'
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
        Value = '14/06/2001'
      end>
  end
  object Q_TitulosnaEmpresaDs: TDataSource
    DataSet = C_TitulosNaEmpresa
    Left = 519
    Top = 218
  end
  object C_Disponivel: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'C_DisponivelProvider'
    Left = 24
    Top = 215
    object C_DisponivelDESCRICAO: TStringField
      DisplayLabel = 'Local'
      FieldName = 'DESCRICAO'
      Size = 35
    end
    object C_DisponivelCONTA: TIntegerField
      FieldName = 'CONTA'
      Required = True
    end
    object C_DisponivelDISPONIVEL: TBCDField
      DisplayLabel = 'Valor'
      FieldName = 'DISPONIVEL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_DisponivelTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
    end
    object C_DisponivelIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object C_TitulosNaEmpresa: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '01/01/2001'
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
        Value = '14/06/2001'
      end>
    ProviderName = 'C_TitulosNaEmpresaProv'
    Left = 107
    Top = 215
    object C_TitulosNaEmpresaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 17
    end
    object C_TitulosNaEmpresaTITULOS: TBCDField
      FieldName = 'TITULOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TitulosNaEmpresaIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object C_ADisponibilizar: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
        Value = '01/01/2001'
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
        Value = '14/06/2001'
      end>
    ProviderName = 'C_ADisponibilizarProvider'
    Left = 200
    Top = 215
    object C_ADisponibilizarDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_ADisponibilizarDISPONIVEL: TBCDField
      FieldName = 'DISPONIVEL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ADisponibilizarFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object C_ADisponibilizarIDFALDO: TIntegerField
      FieldName = 'IDFALDO'
      Required = True
    end
  end
  object C_DisponivelProvider: TDataSetProvider
    DataSet = Q_Disponivel
    Constraints = True
    Options = [poAllowCommandText]
    Left = 399
    Top = 159
  end
  object C_TitulosNaEmpresaProv: TDataSetProvider
    DataSet = Q_TitulosnaEmpresa
    Constraints = True
    Options = [poAllowCommandText]
    Left = 399
    Top = 218
  end
  object C_ADisponibilizarProvider: TDataSetProvider
    DataSet = Q_Adisponibilizar
    Constraints = True
    Options = [poAllowCommandText]
    Left = 399
    Top = 275
  end
  object Q_TitulosDetDs: TDataSource
    DataSet = Q_TitulosDet
    Left = 402
    Top = 116
  end
  object Q_TitulosDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT c.Nome, t.Titulo, t.Parcela, t.ID, 1 as IDFalso, '
      '       t.Vencimento, t.Competencia,'
      
        '       t.Valor, t.ValorPago, (t.Valor - t.ValorPago- t.CreditoUt' +
        'ilizado - t.Descontos) as Saldo'
      
        'FROM TitulosAReceber t INNER JOIN Favorecidos c ON t.Cliente = c' +
        '.Favorecido'
      'WHERE t.Vencimento >= :DataI and t.Vencimento <= :DataF and '
      '(t.status > 0 And t.status < 50)'
      ''
      ' '
      ' ')
    Left = 310
    Top = 218
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end>
    object Q_TitulosDetNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_TitulosDetTITULO: TIBStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object Q_TitulosDetPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object Q_TitulosDetID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_TitulosDetVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_TitulosDetCOMPETENCIA: TDateField
      DisplayLabel = 'Compet'#234'ncia'
      FieldName = 'COMPETENCIA'
    end
    object Q_TitulosDetVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_TitulosDetVALORPAGO: TIBBCDField
      DisplayLabel = 'Vlr Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_TitulosDetSALDO: TIBBCDField
      DisplayLabel = 'Saldo'
      FieldName = 'SALDO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_TitulosDetIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object Q_DisponivelDetDS: TDataSource
    DataSet = Q_DisponivelDet
    Left = 313
    Top = 120
  end
  object Q_DisponivelDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT t.Conta, fp.Descricao, fp.especie,Sum(t.Valor) AS TotalEs' +
        'pecie'
      
        'FROM Transacoes t INNER JOIN FormasPagamento fp ON t.FormaPagame' +
        'nto = fp.FormaPagamento'
      'Group by t.Conta, fp.Descricao, fp.especie'
      ''
      ' '
      ' ')
    Left = 312
    Top = 160
    object Q_DisponivelDetCONTA: TIntegerField
      FieldName = 'CONTA'
    end
    object Q_DisponivelDetDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Q_DisponivelDetESPECIE: TIntegerField
      FieldName = 'ESPECIE'
    end
    object Q_DisponivelDetTOTALESPECIE: TIBBCDField
      FieldName = 'TOTALESPECIE'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object Q_ChequesDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT dd.IDDoc, dd.Vencimento, dd.Valor, f.Nome, c.Descricao as' +
        ' DescConta, dd.NumCheque, b.Nome as NomeBanco, dd.formapagamento' +
        ', d.TipoDeposito, d.Deposito'
      
        'FROM DepositosDoc dd inner join Depositos d on dd.deposito = d.d' +
        'eposito'
      
        '           left join Favorecidos f on d.favorecido = f.favorecid' +
        'o'
      '           inner join Contas c on dd.ContaAtual = c.Conta'
      '           left join Favorecidos b on dd.banco = f.favorecido'
      
        'Where  dd.Vencimento >= :DataI and dd.Vencimento <= :DataF and d' +
        'd.Status = 3'
      'Order by dd.Vencimento'
      ' '
      ' ')
    Left = 312
    Top = 273
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end>
    object Q_ChequesDetNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ChequesDetVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ChequesDetVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ChequesDetDESCCONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'DESCCONTA'
      Size = 50
    end
    object Q_ChequesDetNUMCHEQUE: TIntegerField
      DisplayLabel = '# Cheque'
      FieldName = 'NUMCHEQUE'
    end
    object Q_ChequesDetNOMEBANCO: TIBStringField
      DisplayLabel = 'Banco'
      FieldName = 'NOMEBANCO'
      Size = 50
    end
    object Q_ChequesDetIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object Q_ChequesDetFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
    end
    object Q_ChequesDetTIPODEPOSITO: TIntegerField
      FieldName = 'TIPODEPOSITO'
    end
    object Q_ChequesDetDEPOSITO: TIntegerField
      FieldName = 'DEPOSITO'
      Required = True
    end
  end
  object Q_ChequesDetDS: TDataSource
    DataSet = Q_ChequesDet
    Left = 210
    Top = 158
  end
  object TS_PopupMenu1: TTS_PopupMenu
    OnPopup = TS_PopupMenu1Popup
    Left = 392
    Top = 4
    object mGrupo: TMenuItem
      Caption = 'Quebrar por Grupo'
      OnClick = mGrupoClick
    end
  end
  object Imprimir: TdxComponentPrinter
    CurrentLink = ImprimirLink1
    Version = 0
    Left = 116
    Top = 107
    object ImprimirLink1: TdxMasterViewReportLink
      Active = True
      Caption = 'ImprimirLink1'
      Component = MasterView
      DateTime = 37370.68142625
      DesignerHelpContext = 0
      PrinterPage.CenterOnPageH = True
      PrinterPage.DMPaper = 256
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 27500
      PrinterPage.PageFooter.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageFooter.Font.Color = clWindowText
      PrinterPage.PageFooter.Font.Height = -11
      PrinterPage.PageFooter.Font.Name = 'Tahoma'
      PrinterPage.PageFooter.Font.Style = []
      PrinterPage.PageHeader.Font.Charset = DEFAULT_CHARSET
      PrinterPage.PageHeader.Font.Color = clWindowText
      PrinterPage.PageHeader.Font.Height = -11
      PrinterPage.PageHeader.Font.Name = 'Tahoma'
      PrinterPage.PageHeader.Font.Style = []
      PrinterPage.PageSize.X = 215900
      PrinterPage.PageSize.Y = 279400
      PrinterPage._dxMeasurementUnits_ = 0
      PrinterPage._dxLastMU_ = 2
      ReportTitle.Font.Charset = DEFAULT_CHARSET
      ReportTitle.Font.Color = clWindowText
      ReportTitle.Font.Height = -19
      ReportTitle.Font.Name = 'Times New Roman'
      ReportTitle.Font.Style = [fsBold]
      CaptionColor = 14079702
      CaptionNodeFont.Charset = ANSI_CHARSET
      CaptionNodeFont.Color = clWindowText
      CaptionNodeFont.Height = -13
      CaptionNodeFont.Name = 'Tahoma'
      CaptionNodeFont.Style = []
      DrawMode = mvdmBorrowSource
      EvenFont.Charset = ANSI_CHARSET
      EvenFont.Color = clWindowText
      EvenFont.Height = -13
      EvenFont.Name = 'Tahoma'
      EvenFont.Style = []
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = []
      FooterColor = 14408667
      FooterFont.Charset = ANSI_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -13
      FooterFont.Name = 'Tahoma'
      FooterFont.Style = []
      GroupNodeFont.Charset = ANSI_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -13
      GroupNodeFont.Name = 'Tahoma'
      GroupNodeFont.Style = []
      GroupNodeColor = 16773589
      HeaderColor = 15263976
      HeaderFont.Charset = ANSI_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -13
      HeaderFont.Name = 'Tahoma'
      HeaderFont.Style = []
      OddFont.Charset = ANSI_CHARSET
      OddFont.Color = clWindowText
      OddFont.Height = -13
      OddFont.Name = 'Tahoma'
      OddFont.Style = []
      PreviewFont.Charset = ANSI_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -13
      PreviewFont.Name = 'Tahoma'
      PreviewFont.Style = []
      BuiltInReportLink = True
    end
  end
  object Q_DisponivelTotal: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT 1 as IDFalso, '#39'Dispon'#237'vel'#39' as NomeDisponivel,Sum(t.Valor)' +
        ' AS Disponivel'
      'FROM Transacoes t ')
    Left = 25
    Top = 311
    object Q_DisponivelTotalNOMEDISPONIVEL: TIBStringField
      FieldName = 'NOMEDISPONIVEL'
      Required = True
      Size = 10
    end
    object Q_DisponivelTotalDISPONIVEL: TIBBCDField
      FieldName = 'DISPONIVEL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_DisponivelTotalIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object Q_DisponivelTotalDS: TDataSource
    DataSet = Q_DisponivelTotal
    Left = 113
    Top = 311
  end
  object Q_ChequesTotal: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT 1 as IDFalso, '#39'Cheques Predatados'#39' as Titulo, SUM(dd.Valo' +
        'r) as Disponivel '
      
        'FROM DepositosDoc dd INNER JOIN FormasPagamento fp ON dd.FormaPa' +
        'gamento = fp.FormaPagamento '
      
        'Where dd.Vencimento >= :DataI and dd.Vencimento <= :DataF and dd' +
        '.Status = 3'
      '')
    Left = 25
    Top = 359
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'DataI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'DataF'
        ParamType = ptUnknown
      end>
    object Q_ChequesTotalTITULO: TIBStringField
      FieldName = 'TITULO'
      Required = True
      Size = 18
    end
    object Q_ChequesTotalDISPONIVEL: TIBBCDField
      FieldName = 'DISPONIVEL'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ChequesTotalIDFALSO: TIntegerField
      FieldName = 'IDFALSO'
      Required = True
    end
  end
  object Q_ChequesTotalDS: TDataSource
    DataSet = Q_ChequesTotal
    Left = 113
    Top = 359
  end
end
