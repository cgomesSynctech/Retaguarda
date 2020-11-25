inherited DlgGridPagamentos: TDlgGridPagamentos
  Left = 60
  Top = 93
  Width = 644
  Height = 418
  Caption = 'Módulo Financeiro'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnDados: TTS_Panel
    Width = 518
    Height = 350
    Color = 15196913
    object TS_Label1: TTS_Label
      Left = 51
      Top = 10
      Width = 77
      Caption = 'No período de '
      FormatoTabela = False
      LinkToResult = 0
    end
    object TS_Label2: TTS_Label
      Left = 224
      Top = 10
      Width = 13
      Caption = ' a '
      FormatoTabela = False
      LinkToResult = 0
    end
    object MasterView: TdxMasterView
      Left = 1
      Top = 53
      Width = 516
      Height = 296
      Align = alBottom
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      PopupMenu = TS_PopupMenu1
      TabOrder = 4
      OptionsView = [movAnimation, movAutoColumnWidth, movHideFocusRect, movHideSelection, movKeepColumnWidths, movTransparentDragAndDrop, movUseBitmapToDrawPreview]
      OnDblClick = MasterViewDblClick
      object CorCabecalho: TdxMasterViewStyle
        Color = 15461355
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svColor, svFont]
      end
      object CorParcelasAReceber: TdxMasterViewStyle
        AnotherColor = 15781535
        Color = 15781535
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svAnotherColor, svColor, svFont]
      end
      object CorParcelasLiquidadas: TdxMasterViewStyle
        AnotherColor = 12895487
        Color = 14803455
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svAnotherColor, svColor, svFont]
      end
      object CorParcelasAtrasadas: TdxMasterViewStyle
        AnotherColor = 14342838
        Color = 15132364
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svAnotherColor, svColor, svFont]
      end
      object CorCaptionAReceber: TdxMasterViewStyle
        Color = 16771022
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object CorCaptionLiquidadas: TdxMasterViewStyle
        Color = 14803455
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object CorCaptionAtrasadas: TdxMasterViewStyle
        Color = 15132364
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object CorAgrupamento: TdxMasterViewStyle
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object CorRegistrosAReceber: TdxMasterViewStyle
        AnotherColor = 16774378
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svAnotherColor, svColor, svFont]
      end
      object CorRegistrosLiquidados: TdxMasterViewStyle
        AnotherColor = 15265791
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svAnotherColor, svColor, svFont]
      end
      object CorRegistrosEmAtraso: TdxMasterViewStyle
        AnotherColor = 15132364
        Color = clWhite
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        AssignedValues = [svAnotherColor, svColor, svFont]
      end
      object CorParcelasCanceladas: TdxMasterViewStyle
        AnotherColor = 15790320
        Color = 14408667
        AssignedValues = [svAnotherColor, svColor]
      end
      object CorCaptionCanceladas: TdxMasterViewStyle
        Color = 14811135
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        AssignedValues = [svColor, svFont]
      end
      object CorRegistrosCancelados: TdxMasterViewStyle
        AnotherColor = clWhite
        Color = 15790320
        AssignedValues = [svAnotherColor, svColor]
      end
      object FormaPagamento: TdxMasterViewStyle
        Color = 16771022
        AssignedValues = [svColor]
      end
      object ContasAPagar: TdxMasterViewLevel
        Caption = 'Contas a Pagar'
        CaptionStyle = CorCaptionAReceber
        ContentStyle = CorRegistrosAReceber
        DataSource = Q_ContasAPagarDS
        GridLinesColor = clSilver
        GroupByBoxStyle = CorAgrupamento
        GroupStyle = CorParcelasAReceber
        HeaderStyle = CorCabecalho
        ID = 'ID'
        OptionsBehavior = []
        OptionsCustomize = [locColumnMoving, locColumnHorSizing, locColumnVerSizing, locColumnSorting, locColumnGrouping, locHideColumnOnGrouping, locShowColumnOnUngrouping]
        OptionsHeader = [lohForFirstNode, lohForFirstVisibleNode]
        OptionsView = [lovCaption, lovFooter, lovGrid, lovGridWithPreview, lovHeader, lovOccupyRestSpace]
        object ContasAPagarNOTAFISCAL: TdxMasterViewColumn
          FieldName = 'NOTAFISCAL'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 0
          Width = 57
        end
        object ContasAPagarNOME: TdxMasterViewColumn
          FieldName = 'NOME'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 1
          SortIndex = 0
          SortOrder = soAscending
          Width = 135
          LeaveSortOrder = True
        end
        object ContasAPagarCOMPETENCIA: TdxMasterViewColumn
          FieldName = 'COMPETENCIA'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 2
          Width = 57
        end
        object ContasAPagarVENCIMENTO: TdxMasterViewColumn
          FieldName = 'VENCIMENTO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 3
          Width = 61
        end
        object ContasAPagarVALOR: TdxMasterViewColumn
          FieldName = 'VALOR'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 4
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 60
        end
        object ContasAPagarVALORPAGO: TdxMasterViewColumn
          FieldName = 'VALORPAGO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 5
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 59
        end
        object ContasAPagarDATAPAGO: TdxMasterViewColumn
          FieldName = 'DATAPAGO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 6
          Visible = False
          Width = 62
        end
        object ContasAPagarDESCONTOS: TdxMasterViewColumn
          FieldName = 'DESCONTOS'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 7
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 36
        end
        object ContasAPagarJurosPagos: TdxMasterViewColumn
          Caption = 'Juros'
          FieldName = 'JUROSPAGOS'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 8
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 31
        end
        object ContasAPagarCREDITOGERADO: TdxMasterViewColumn
          FieldName = 'CREDITOGERADO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 9
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 37
        end
        object ContasAPagarCREDITOUTILIZADO: TdxMasterViewColumn
          FieldName = 'CREDITOUTILIZADO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 10
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 39
        end
        object ContasAPagarColumn1ValorAPagar: TdxMasterViewColumn
          Caption = 'Vlr.a Pagar'
          FieldName = 'ValorAReceber'
          RowIndex = 0
          ColIndex = 6
          Width = 57
        end
      end
      object MasterViewLevel2: TdxMasterViewLevel
        Caption = 'Contas Liquidadas'
        CaptionStyle = CorCaptionLiquidadas
        ContentStyle = CorRegistrosLiquidados
        DataSource = Q_ContasLiquidadasDS
        GridLinesColor = clBtnFace
        GroupByBoxStyle = CorAgrupamento
        GroupStyle = CorParcelasLiquidadas
        HeaderStyle = CorCabecalho
        ID = 'ID'
        LevelSeparatorColor = 14803455
        OptionsBehavior = []
        OptionsCustomize = [locColumnMoving, locColumnHorSizing, locColumnVerSizing, locColumnSorting, locColumnGrouping, locHideColumnOnGrouping, locShowColumnOnUngrouping]
        OptionsHeader = [lohForFirstNode, lohForFirstVisibleNode]
        OptionsView = [lovCaption, lovFooter, lovGrid, lovGridWithPreview, lovHeader, lovOccupyRestSpace]
        object MasterViewLevel2NOTAFISCAL: TdxMasterViewColumn
          FieldName = 'NOTAFISCAL'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 0
          Width = 38
        end
        object Nome: TdxMasterViewColumn
          FieldName = 'NOME'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 1
          SortIndex = 0
          SortOrder = soAscending
          Width = 135
        end
        object MasterViewLevel2NOME: TdxMasterViewColumn
          FieldName = 'NOME'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 2
          Visible = False
          Width = 109
        end
        object MasterViewLevel2COMPETENCIA: TdxMasterViewColumn
          FieldName = 'COMPETENCIA'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 2
          Width = 59
          LeaveSortOrder = True
        end
        object MasterViewLevel2VENCIMENTO: TdxMasterViewColumn
          FieldName = 'VENCIMENTO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 3
          Width = 61
        end
        object MasterViewLevel2VALOR: TdxMasterViewColumn
          FieldName = 'VALOR'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 4
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 79
        end
        object MasterViewLevel2VALORPAGO: TdxMasterViewColumn
          FieldName = 'VALORPAGO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 5
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 74
        end
        object MasterViewLevel2DATAPAGO: TdxMasterViewColumn
          FieldName = 'DATAPAGO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 6
          Visible = False
          Width = 63
        end
        object MasterViewLevel2DESCONTOS: TdxMasterViewColumn
          FieldName = 'DESCONTOS'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 6
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 46
        end
        object JUROSPAGOS: TdxMasterViewColumn
          Caption = 'Juros'
          FieldName = 'JUROSPAGOS'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 7
          Width = 35
        end
        object MasterViewLevel2CREDITOGERADO: TdxMasterViewColumn
          FieldName = 'CREDITOGERADO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 8
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 43
        end
        object MasterViewLevel2CREDITOUTILIZADO: TdxMasterViewColumn
          FieldName = 'CREDITOUTILIZADO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 9
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 41
        end
        object MasterViewLevel5: TdxMasterViewLevel
          Tag = 1
          Caption = 'Formas de Pagamento'
          DataSource = Q_ContasLiquidadasDocDS
          DetailKey = 'DUPLICATA'
          HeaderStyle = FormaPagamento
          ID = 'IDDOC'
          MasterKey = 'ID'
          OptionsBehavior = []
          object MasterViewLevel5VALOR: TdxMasterViewColumn
            FieldName = 'VALOR'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 3
            SummaryFormat = '###,###,##0.00'
            Width = 63
          end
          object MasterViewLevel5VENCIMENTO: TdxMasterViewColumn
            FieldName = 'VENCIMENTO'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 2
            Width = 61
          end
          object MasterViewLevel5NOMECONTA: TdxMasterViewColumn
            FieldName = 'NOMECONTA'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 1
            Width = 145
          end
          object MasterViewLevel5DATA: TdxMasterViewColumn
            FieldName = 'DATA'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 0
            Width = 58
          end
          object MasterViewLevel5DESCFORMAPAG: TdxMasterViewColumn
            FieldName = 'DESCFORMAPAG'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 4
            Width = 118
          end
          object MasterViewLevel5DESCSTATUS: TdxMasterViewColumn
            FieldName = 'DESCSTATUS'
            HeaderAlignment = taCenter
            RowIndex = 0
            ColIndex = 5
            Width = 165
          end
        end
      end
      object MasterViewLevel3: TdxMasterViewLevel
        Caption = 'Contas em Atraso'
        CaptionStyle = CorCaptionAtrasadas
        ContentStyle = CorRegistrosEmAtraso
        DataSource = Q_ContasAtrasadasDS
        GridLinesColor = clBtnFace
        GroupByBoxStyle = CorAgrupamento
        GroupStyle = CorParcelasAtrasadas
        HeaderStyle = CorCabecalho
        ID = 'ID'
        OptionsBehavior = []
        OptionsHeader = [lohForFirstNode, lohForFirstVisibleNode]
        OptionsView = [lovCaption, lovFooter, lovGrid, lovGridWithPreview, lovHeader, lovOccupyRestSpace]
        object MasterViewLevel3NOTAFISCAL: TdxMasterViewColumn
          FieldName = 'NOTAFISCAL'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 0
          Width = 56
        end
        object MasterViewLevel3NOME: TdxMasterViewColumn
          FieldName = 'NOME'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 1
          Width = 165
        end
        object MasterViewLevel3COMPETENCIA: TdxMasterViewColumn
          FieldName = 'COMPETENCIA'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 2
          Width = 61
        end
        object MasterViewLevel3VENCIMENTO: TdxMasterViewColumn
          FieldName = 'VENCIMENTO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 3
          Width = 62
        end
        object MasterViewLevel3VALOR: TdxMasterViewColumn
          FieldName = 'VALOR'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 4
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 78
        end
        object MasterViewLevel3VALORPAGO: TdxMasterViewColumn
          FieldName = 'VALORPAGO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 5
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Visible = False
          Width = 54
        end
        object MasterViewLevel3DATAPAGO: TdxMasterViewColumn
          FieldName = 'DATAPAGO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 5
          Visible = False
          Width = 53
        end
        object MasterViewLevel3DESCONTOS: TdxMasterViewColumn
          Caption = 'Descontos'
          FieldName = 'DESCONTOS'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 6
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 65
        end
        object MasterViewLevel3JUROSPAGOS: TdxMasterViewColumn
          Caption = 'Juros'
          FieldName = 'JUROSPAGOS'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 7
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
        end
        object MasterViewLevel3CREDITOGERADO: TdxMasterViewColumn
          FieldName = 'CREDITOGERADO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 6
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Visible = False
          Width = 41
        end
        object MasterViewLevel3CREDITOUTILIZADO: TdxMasterViewColumn
          FieldName = 'CREDITOUTILIZADO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 7
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Visible = False
          Width = 41
        end
        object MasterViewLevel3Column1ValorAPagar: TdxMasterViewColumn
          Caption = 'Valor a Pagar'
          FieldName = 'ValorAReceber'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 5
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 78
        end
      end
      object MasterViewLevel4: TdxMasterViewLevel
        Caption = 'Contas Canceladas'
        CaptionStyle = CorCaptionCanceladas
        ContentStyle = CorRegistrosCancelados
        DataSource = Q_ContasCanceladasDS
        GridLinesColor = clSilver
        GroupByBoxStyle = CorAgrupamento
        GroupStyle = CorCaptionCanceladas
        HeaderStyle = CorCabecalho
        ID = 'ID'
        OptionsBehavior = []
        OptionsHeader = [lohForFirstNode, lohForFirstVisibleNode]
        OptionsView = [lovCaption, lovFooter, lovGrid, lovGridWithPreview, lovHeader, lovOccupyRestSpace]
        RowSeparatorColor = clSilver
        object MasterViewLevel4NOTAFISCAL: TdxMasterViewColumn
          FieldName = 'NOTAFISCAL'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 0
          Width = 56
        end
        object MasterViewLevel4NOME: TdxMasterViewColumn
          FieldName = 'NOME'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 1
          SortIndex = 0
          SortOrder = soAscending
          Width = 166
          LeaveSortOrder = True
        end
        object MasterViewLevel4COMPETENCIA: TdxMasterViewColumn
          Caption = 'Data'
          FieldName = 'COMPETENCIA'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 2
          Width = 60
        end
        object MasterViewLevel4VENCIMENTO: TdxMasterViewColumn
          FieldName = 'VENCIMENTO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 3
          Width = 62
        end
        object MasterViewLevel4VALOR: TdxMasterViewColumn
          FieldName = 'VALOR'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 4
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 79
        end
        object MasterViewLevel4VALORPAGO: TdxMasterViewColumn
          FieldName = 'VALORPAGO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 5
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Visible = False
          Width = 61
        end
        object MasterViewLevel4DATAPAGO: TdxMasterViewColumn
          FieldName = 'DATAPAGO'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 6
          Visible = False
          Width = 59
        end
        object MasterViewLevel4DESCONTOS: TdxMasterViewColumn
          FieldName = 'DESCONTOS'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 5
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 54
        end
        object MasterViewLevel4JUROSPAGOS: TdxMasterViewColumn
          Caption = 'Juros'
          FieldName = 'JUROSPAGOS'
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 6
          Width = 52
        end
        object MasterViewLevel4CREDITOGERADO: TdxMasterViewColumn
          FieldName = 'CREDITOGERADO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 7
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 50
        end
        object MasterViewLevel4CREDITOUTILIZADO: TdxMasterViewColumn
          FieldName = 'CREDITOUTILIZADO'
          FooterStyle = CorCabecalho
          HeaderAlignment = taCenter
          RowIndex = 0
          ColIndex = 8
          SummaryFormat = '###,###,##0.00'
          SummaryType = stSum
          Width = 50
        end
      end
    end
    object TS_DBLookupTipoFav1: TTS_DBLookupTipoFav
      Left = 25
      Top = 28
      Width = 101
      Hint = 
        'Selecione o tipo de favorecido para filtrar a pesquisar no campo' +
        ' de edição ao lado.'
      ParentShowHint = False
      ShowHint = True
      TabOrder = 2
      StyleController = DMProjeto.EditStyleFinanceiroPagamentos
      DropDownRows = 15
      ListFieldName = 'DESCRICAO'
      KeyFieldName = 'TIPOFAVORECIDO'
      ListSource = DMProjeto.Q_TipoFavDS
      LookupKeyValue = Null
      TipoFavorecido = 2
    end
    object edFav: TTS_EditFavorecido
      Left = 128
      Top = 29
      Width = 201
      TabOrder = 3
      StyleController = DMProjeto.EditStyleFinanceiroPagamentos
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
      TipoFavorecido = 2
      C_Localizar = DMProjeto.C_LocalizarFav
      ID = 0
      Height = 19
      ExistButtons = True
    end
    object DataI: TTS_DateTimePicker
      Left = 128
      Top = 8
      Width = 89
      TabOrder = 0
      AutoSize = False
      StyleController = DMProjeto.EditStyleFinanceiroPagamentos
      Date = -700000
      Height = 19
    end
    object DataF: TTS_DateTimePicker
      Left = 240
      Top = 8
      Width = 89
      TabOrder = 1
      AutoSize = False
      StyleController = DMProjeto.EditStyleFinanceiroPagamentos
      Date = -700000
      Height = 19
    end
  end
  inherited btFechar: TTS_BitBtn
    Left = 680
    Top = 511
  end
  inherited pnNavigator: TTS_Panel
    Left = 518
    Height = 350
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 316
    end
    inherited btComando2: TTS_SpeedButton
      AllowAllUp = True
      GroupIndex = 1
      Caption = 'Agrupar'
    end
    inherited btLimpar: TTS_SpeedButton
      Caption = '&Pesquisar'
      Glyph.Data = {
        0E100000424D0E100000000000003600000028000000340000001A0000000100
        180000000000D80F0000120B0000120B00000000000000000000FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF000100000100FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5000000000000C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FF000100000100000100000000000000FF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF220022000100FF00FFFF00FF
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C50000000000000000
        00000000000000C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5000000000000C5C5C5C5C5C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF00010000010001FFFF01FFFF000000000000050000FF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FF1D001E3823373216301C151BFF00FFC5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000000000C8C8C8C8C8C8000000
        000000000000C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C50000000000
        00000000000000C5C5C5FF00FFFF00FFFF00FFFF00FFFF00FF00010000010001
        FFFF01FFFF04FFFF0DFFFF000000000000050000040004FF00FFFF00FFFF00FF
        FF00FFFF00FF1E001E1E221EFFFFFF2A2C32241423FF00FFC5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5000000000000C8C8C8C8C8C8CBCBCBD9D9D900000000000000
        0000000000C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000000000FFFFFF000000
        000000C5C5C5FF00FFFF00FFFF00FF00000000010000FFFF00FFFF01FFFF0FFF
        FF01FFFF0AF5FF000000000000050000040000090004FF00FFFF00FFFF00FF26
        2D26242924FFFFFF24252C2A112B4A114AFF00FFC5C5C5C5C5C5C5C5C5000000
        000000C5C5C5C5C5C5C8C8C8DCDCDCC8C8C8D4D4D40000000000000000000000
        00000000C5C5C5C5C5C5C5C5C5000000000000FFFFFF000000000000000000C5
        C5C5FF00FF00000000000004FFFF04FFFF04FFFF00FFFF00FFFF04F5FF17F6FF
        44F7FF44F7FF44F7FF44F7FF44F7FF44F7FF050000FF00FF360036262D26FFFF
        FF2B2B33210D214A1047FF00FFFF00FFC5C5C5000000000000CBCBCBCBCBCBCB
        CBCBC5C5C5C5C5C5CBCBCBE7E7E7FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        000000C5C5C5000000000000FFFFFF000000000000000000C5C5C5C5C5C50000
        0004FFFF04FFFF05FFFF04FFFF00FFFF02F5FF0CF6FF26F6FF38F7FF44F7FF51
        F8FF64FFFF4AFFFF27FFFF2FFFFF7DFFFF000000313A30FFFFFF2F2D371C0D20
        50114EFF00FFFF00FFFF00FF000000CBCBCBCBCBCBCECECECBCBCBC5C5C5C8C8
        C8D6D6D6FBFBFBFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFEFEFEFFFFFFFFFFFF00
        0000000000FFFFFF000000000000000000C5C5C5C5C5C5C5C5C500000004FFFF
        18FFFF18F5FF17F6FF07F6FF17F6FF32F6FF43F8FF4CFDFF55FDFF5BF5FD5EF0
        F668F1F875FAFF7DFFFF7DFFFF0E0D0CFFFFFF383E3F150C1A531050FF00FFFF
        00FFFF00FFFF00FF000000CBCBCBE7E7E7E7E7E7E7E7E7D1D1D1E7E7E7FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FFFF
        FF050505000000000000C5C5C5C5C5C5C5C5C5C5C5C5FF00FF00000017F6FF17
        FFFF15F5FF1CF6FF39F7FF30F8FF3EF5FE51DADF4CBEC2449598396F71468F91
        55BCC064C1C73B5151FFFFFF363633030B07511150FE00FEFF00FFFF00FFFF00
        FFFF00FFC5C5C5000000E7E7E7E7E7E7E5E5E5EDEDEDFFFFFFFFFFFFFFFFFFFF
        FFFFDCDCDC9595954E4E4E8D8D8DE5E5E5FFFFFF242424FFFFFF000000000000
        000000C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5FF00FFFF00FF00000017F6FF20FF
        FF18F5FF2FF7FF10FAFF2EC5CB2C53532A6A6C2663641C46442455542965662A
        31302F2C2EFFFFFF4A4544000E00F504F4FF00FFFF00FFFF00FFFF00FFFF00FF
        C5C5C5C5C5C5000000E7E7E7F3F3F3E7E7E7FFFFFFDCDCDCBDBDBD1010103232
        32212121000000070707272727000000000000FFFFFF272727000000BDBDBDC5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5FF00FFFF00FFFF00FF00000017F6FF17F6FF
        14F6FF3BDAE1365C5D25565952F2EF52F2EF52F2EF52F2EF18F5FF1E73744A5A
        5A2F2C2E4A4544A4FFFF090004FF00FFFF00FFFF00FFFF00FFFF00FFC5C5C5C5
        C5C5C5C5C5000000E7E7E7E7E7E7E2E2E2F0F0F02C2C2C101010FFFFFFFFFFFF
        FFFFFFFFFFFFE7E7E72C2C2C464646000000272727FFFFFF000000C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5FF00FFFF00FFFF00FFFF00FF00000017F6FF27FEFF38
        5A5B2B878A52F2EF52F2EF52F2EF52F2EF52F2EF52F2EF52F2EF265F5C040000
        9FFAFFA4FFFFA4FFFF090004FF00FFFF00FFFF00FFFF00FFC5C5C5C5C5C5C5C5
        C5C5C5C5000000E7E7E7FEFEFE2C2C2C5C5C5CFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFF181818000000FFFFFFFFFFFFFFFFFF000000C5C5C5C5C5C5
        C5C5C5C5C5C5FF00FFFF00FFFF00FFFF00FFFF00FF0000001D727B22525152F2
        EF52F2EF52F2EF52F2EF52F2EF52F2EF52F2EF52F2EFBD9C522E1704A3FFFF9F
        FAFFA4FFFFA4FFFF090004FF00FFFF00FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5000000353535020202FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFDCDCDC000000FFFFFFFFFFFFFFFFFFFFFFFF000000C5C5C5C5C5C5C5
        C5C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FF04030052F2EF52F2EF52F2EF
        52F2EF52F2EF52F2EF52F2EF52F2EF94AF73C79B35E09C1D1D262AA3FFFFA4FF
        FFA4FFFFC0FFFF090004FF00FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8
        C3C3C3C3C3C3000000FFFFFFFFFFFFFFFFFFFFFFFF000000C5C5C5C5C5C5FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FF00190A52F2EF52F2EF52F2EF52F2EF52
        F2EF52F2EF52F2EFA9A159C88E23E09C1DE09C1D060708A3FFFFABFFFFA4FFFF
        A4FFFFA4FFFF090004FF00FFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C50000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFCBCBCBA9A9A9C3C3C3C3
        C3C3000000FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000C5C5C5FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FF001B0052F2EF52F2EF52F2EF52F2EF52F2EF52F2
        EFB29B4CDFAF64EBD3ABEFC256E09C1D0D0F12A3FFFFA4FFFF9FFAFFA4FFFFA4
        FFFFA4FFFF090004C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFC5C5C5FFFFFFFFFFFFFFFFFFC3C3C30000
        00FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF000D00000D0052F2EF52F2EF52F2EFA7924DC38A2CE7C289
        FFFFFFFFFFFFCB9C20E09C1D0D0F12A3FFFFA3FFFF9FFAFFA4FFFFA4FFFFA4FF
        FF090004C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000000000FFFFFFFF
        FFFFFFFFFFB7B7B7AFAFAFFFFFFFFFFFFFFFFFFFA9A9A9C3C3C3000000FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFF000000FF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FF000D0094AF7394AF73BA893AC68624CB9531DFBF81FFFFFFFF
        D155CB9C203B4145A2F9F9A2F9F9A4FFFFA4FFFFA4FFFF194C32000400F800F8
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000F8F8F8F8F8F8B7B7
        B7A9A9A9C3C3C3FFFFFFFFFFFFFFFFFFA9A9A9131313FFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFF000000000000BDBDBDFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FF000D00020A00BF892CBF892CDCA02DDBA12DE6AE2CD9A825D9A8253B41
        453B4145ABFFFFA4FFFFA4FFFF123A23000000FF00FFFF00FFFE00FEC5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000000000A9A9A9A9A9A9D4D4D4
        D4D4D4E2E2E2C5C5C5C5C5C5131313131313FFFFFFFFFFFFFFFFFF0000000000
        00C5C5C5C5C5C5C5C5C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FF000D00000200352719BF892CBF892CBF892CD9A8253B4145ABFFFFABFFFF
        C0FFFF0C2A18000400FF00FFFF00FFFF00FFFF00FFFF00FFC5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000000000000000A9A9A9A9A9A9A9
        A9A9C5C5C5131313FFFFFFFFFFFFFFFFFF000000000000C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FF0001000001000001000001003B4145A9F1F2ABFFFF0B2315000700FF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C50000000000000000000000001313
        13FFFFFFFFFFFF000000000000C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FF021D0B091D13021D0B000A00FF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000000000000000
        000000C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5FF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FF021D0BFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5000000C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5FF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5FF00FFFF00FFFF00FFFF
        00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FF
        FF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00FFFF00
        FFFF00FFC5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5
        C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5C5}
    end
    inherited btGravar: TTS_SpeedButton
      Caption = '&Imprimir'
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
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 636
    Gradient.ColorStart = 12170983
    Gradient.ColorEnd = clWhite
    Color = clWhite
    inherited lbCaption: TdxfLabel
      Width = 337
      Caption = 'Consulta de Pagamentos de Contas'
      Effect3D.ShadowedColor = 12170983
    end
    inherited lbEstadoForm: TTS_Label
      Width = 90
      Caption = 'Pesquisa de Dados'
    end
    inherited lbUpperHint: TTS_Label
      Left = 431
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 673
    Top = 201
  end
  inherited DlgMsg: TDlgMsg
    Left = 726
    Top = 202
  end
  inherited FormINI: Tvg2AppIniFile
    Left = 669
    Top = 267
  end
  inherited FormPStorage: Tvg2PropStorage
    Left = 698
    Top = 267
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 728
    Top = 267
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.ModuloFinancePagamentos
    BarEndColor = 12170983
    BarStartColor = clWhite
    CaptionShadow = 12170983
    FormColor = 15196913
    Modulo = 'Módulo Financeiro'
    Caption = 'Consulta de Pagamentos de Contas'
    FirstEditField = edFav
  end
  object Q_ContasAPagarDS: TDataSource
    DataSet = Q_ContasAPagar
    Left = 108
    Top = 240
  end
  object Q_ContasAPagar: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    OnCalcFields = Q_ContasAPagarCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.ID, t.notafiscal, f.nome, t.competencia, t.vencimento, ' +
        't.valor, t.valorpago, t.datapago, t.descontos, t.jurospagos, t.c' +
        'reditogerado, t.creditoutilizado '
      
        'from DuplicatasAPagar t inner join favorecidos f on t.fornecedor' +
        ' = f.favorecido'
      'where t.competencia >= :DataI and t.competencia <= :DataF '
      '          and t.status > 0 and t.status < 50 '
      '          and (t.fornecedor = :favorecido OR :todos = 0 )'
      ''
      '')
    Left = 108
    Top = 196
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
      end
      item
        DataType = ftInteger
        Name = 'favorecido'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'todos'
        ParamType = ptUnknown
        Value = '0'
      end>
    object Q_ContasAPagarID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_ContasAPagarNOTAFISCAL: TIBStringField
      DisplayLabel = '#'
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object Q_ContasAPagarNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ContasAPagarCOMPETENCIA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'COMPETENCIA'
    end
    object Q_ContasAPagarVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ContasAPagarVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAPagarVALORPAGO: TIBBCDField
      DisplayLabel = 'Vlr.Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAPagarDATAPAGO: TDateField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'DATAPAGO'
    end
    object Q_ContasAPagarDESCONTOS: TIBBCDField
      DisplayLabel = 'Desc.'
      FieldName = 'DESCONTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAPagarCREDITOGERADO: TIBBCDField
      DisplayLabel = 'Créd.Gerado'
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAPagarCREDITOUTILIZADO: TIBBCDField
      DisplayLabel = 'Créd.Utilizado'
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAPagarJUROSPAGOS: TIBBCDField
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAPagarValorAReceber: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorAReceber'
      Calculated = True
    end
  end
  object Q_ContasLiquidadas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.ID, t.notafiscal, f.nome, t.competencia, t.vencimento, ' +
        't.valor, t.valorpago, t.datapago, t.descontos, t.jurospagos, t.c' +
        'reditogerado, t.creditoutilizado'
      
        'from DuplicatasAPagar t inner join favorecidos f on t.fornecedor' +
        ' = f.favorecido'
      'where  t.competencia >= :DataI and t.competencia <= :DataF '
      '           and (t.fornecedor = :favorecido OR :todos = 0) '
      '           and t.status = 50')
    Left = 216
    Top = 196
    ParamData = <
      item
        DataType = ftDate
        Name = 'DataI'
        ParamType = ptUnknown
        Value = 36892d
      end
      item
        DataType = ftDate
        Name = 'DataF'
        ParamType = ptUnknown
        Value = 37056d
      end
      item
        DataType = ftInteger
        Name = 'favorecido'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'todos'
        ParamType = ptUnknown
        Value = 0
      end>
    object Q_ContasLiquidadasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_ContasLiquidadasNOTAFISCAL: TIBStringField
      DisplayLabel = '#'
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object Q_ContasLiquidadasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ContasLiquidadasCOMPETENCIA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'COMPETENCIA'
    end
    object Q_ContasLiquidadasVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ContasLiquidadasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasLiquidadasVALORPAGO: TIBBCDField
      DisplayLabel = 'Vlr.Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasLiquidadasDATAPAGO: TDateField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'DATAPAGO'
    end
    object Q_ContasLiquidadasDESCONTOS: TIBBCDField
      DisplayLabel = 'Desc.'
      FieldName = 'DESCONTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasLiquidadasCREDITOGERADO: TIBBCDField
      DisplayLabel = 'Créd.Gerado'
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasLiquidadasCREDITOUTILIZADO: TIBBCDField
      DisplayLabel = 'Créd.Utilizado'
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasLiquidadasJUROSPAGOS: TIBBCDField
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object Q_ContasLiquidadasDS: TDataSource
    DataSet = Q_ContasLiquidadas
    Left = 216
    Top = 240
  end
  object Q_ContasAtrasadas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    OnCalcFields = Q_ContasAtrasadasCalcFields
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.ID, t.notafiscal, f.nome, t.competencia, t.vencimento, ' +
        't.valor, t.valorpago, t.datapago, t.descontos, t.jurospagos, t.c' +
        'reditogerado, t.creditoutilizado '
      'from DuplicatasAPagar t '
      '        inner join favorecidos f on t.fornecedor = f.favorecido'
      'where  t.competencia >= :DataI and t.competencia <= :DataF '
      '           and (t.fornecedor = :favorecido OR :todos = 0) '
      '           and t.status = 3')
    Left = 340
    Top = 196
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
        Value = '15/06/2001'
      end
      item
        DataType = ftUnknown
        Name = 'favorecido'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'todos'
        ParamType = ptUnknown
        Value = 0
      end>
    object Q_ContasAtrasadasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_ContasAtrasadasNOTAFISCAL: TIBStringField
      DisplayLabel = '#'
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object Q_ContasAtrasadasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ContasAtrasadasCOMPETENCIA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'COMPETENCIA'
    end
    object Q_ContasAtrasadasVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ContasAtrasadasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAtrasadasVALORPAGO: TIBBCDField
      DisplayLabel = 'Vlr.Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAtrasadasDATAPAGO: TDateField
      DisplayLabel = 'Dt.Pgto'
      FieldName = 'DATAPAGO'
    end
    object Q_ContasAtrasadasDESCONTOS: TIBBCDField
      DisplayLabel = 'Desc.'
      FieldName = 'DESCONTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAtrasadasCREDITOGERADO: TIBBCDField
      DisplayLabel = 'Créd.Gerado'
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAtrasadasCREDITOUTILIZADO: TIBBCDField
      DisplayLabel = 'Créd.Utilizado'
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAtrasadasJUROSPAGOS: TIBBCDField
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasAtrasadasValorAReceber: TFloatField
      FieldKind = fkCalculated
      FieldName = 'ValorAReceber'
      DisplayFormat = '###,###,##0.00'
      Calculated = True
    end
  end
  object Q_ContasAtrasadasDS: TDataSource
    DataSet = Q_ContasAtrasadas
    Left = 340
    Top = 240
  end
  object Q_ContasCanceladas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select t.ID, t.notafiscal, f.nome, t.competencia, t.vencimento, ' +
        't.valor, t.valorpago, t.datapago, t.descontos, t.jurospagos, t.c' +
        'reditogerado, t.creditoutilizado '
      'from DuplicatasAPagar t '
      '        inner join favorecidos f on t.fornecedor = f.favorecido'
      'where  t.competencia >= :DataI and t.competencia <= :DataF '
      '           and (t.fornecedor = :favorecido OR :todos = 0) '
      '           and t.status = 0 ')
    Left = 468
    Top = 196
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
        Value = '15/06/2001'
      end
      item
        DataType = ftUnknown
        Name = 'favorecido'
        ParamType = ptUnknown
      end
      item
        DataType = ftInteger
        Name = 'todos'
        ParamType = ptUnknown
        Value = '0'
      end>
    object Q_ContasCanceladasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object Q_ContasCanceladasNOTAFISCAL: TIBStringField
      DisplayLabel = '#'
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object Q_ContasCanceladasNOME: TIBStringField
      DisplayLabel = 'Nome'
      FieldName = 'NOME'
      Size = 50
    end
    object Q_ContasCanceladasCOMPETENCIA: TDateField
      DisplayLabel = 'Competência'
      FieldName = 'COMPETENCIA'
    end
    object Q_ContasCanceladasVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ContasCanceladasVALOR: TIBBCDField
      DisplayLabel = 'Valor'
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasCanceladasVALORPAGO: TIBBCDField
      DisplayLabel = 'Vlr.Pago'
      FieldName = 'VALORPAGO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasCanceladasDATAPAGO: TDateField
      DisplayLabel = 'Dt.Pago'
      FieldName = 'DATAPAGO'
    end
    object Q_ContasCanceladasDESCONTOS: TIBBCDField
      DisplayLabel = 'Desc.'
      FieldName = 'DESCONTOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasCanceladasCREDITOGERADO: TIBBCDField
      DisplayLabel = 'Créd.Gerado'
      FieldName = 'CREDITOGERADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasCanceladasCREDITOUTILIZADO: TIBBCDField
      DisplayLabel = 'Créd.Utilizado'
      FieldName = 'CREDITOUTILIZADO'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasCanceladasJUROSPAGOS: TIBBCDField
      FieldName = 'JUROSPAGOS'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object Q_ContasCanceladasDS: TDataSource
    DataSet = Q_ContasCanceladas
    Left = 468
    Top = 240
  end
  object Q_ContasLiquidadasDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_ContasLiquidadasDS
    SQL.Strings = (
      
        'Select dt.duplicata, rd.IDDoc, rd.Valor, rd.Vencimento, c.Descri' +
        'cao as NomeConta, r.retirada, r.TipoRetirada, r.Data, f.descrica' +
        'o as descFormaPag, st.descricao as DescStatus, rd.Status'
      
        'from RetiradasDuplicatas dt, Retiradas r, RetiradasDoc rd, Dupli' +
        'catasAPagar dp, Contas c, FormasPagamento f, StatusDoc st'
      'where dt.duplicata = :ID and '
      '           dt.retirada = r.retirada and'
      '           dt.retirada = rd.retirada and'
      '           dt.duplicata = dp.ID and '
      '           rd.formapagamento = f.formapagamento and '
      '           rd.status = st.status and '
      '           rd.Conta = c.Conta and '
      
        '           dp.competencia >= :DataI and dp.competencia <= :DataF' +
        ' and '
      '           (dp.fornecedor = :favorecido OR :todos = 0) and '
      '           dp.Status = 50')
    Left = 595
    Top = 195
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ID'
        ParamType = ptUnknown
      end
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
      end
      item
        DataType = ftInteger
        Name = 'favorecido'
        ParamType = ptUnknown
        Value = '0'
      end
      item
        DataType = ftInteger
        Name = 'todos'
        ParamType = ptUnknown
        Value = '0'
      end>
    object Q_ContasLiquidadasDetDUPLICATA: TIntegerField
      FieldName = 'DUPLICATA'
      Required = True
    end
    object Q_ContasLiquidadasDetIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object Q_ContasLiquidadasDetVALOR: TIBBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
    object Q_ContasLiquidadasDetVENCIMENTO: TDateField
      DisplayLabel = 'Vencimento'
      FieldName = 'VENCIMENTO'
    end
    object Q_ContasLiquidadasDetNOMECONTA: TIBStringField
      DisplayLabel = 'Conta'
      FieldName = 'NOMECONTA'
      Size = 50
    end
    object Q_ContasLiquidadasDetRETIRADA: TIntegerField
      FieldName = 'RETIRADA'
      Required = True
    end
    object Q_ContasLiquidadasDetTIPORETIRADA: TIntegerField
      FieldName = 'TIPORETIRADA'
    end
    object Q_ContasLiquidadasDetDATA: TDateField
      DisplayLabel = 'Data'
      FieldName = 'DATA'
    end
    object Q_ContasLiquidadasDetDESCFORMAPAG: TIBStringField
      DisplayLabel = 'Forma de Pagamento'
      FieldName = 'DESCFORMAPAG'
      Required = True
      Size = 50
    end
    object Q_ContasLiquidadasDetDESCSTATUS: TIBStringField
      DisplayLabel = 'Status'
      FieldName = 'DESCSTATUS'
      Size = 50
    end
    object Q_ContasLiquidadasDetSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
  end
  object Q_ContasLiquidadasDocDS: TDataSource
    DataSet = Q_ContasLiquidadasDet
    Left = 595
    Top = 240
  end
  object TS_PopupMenu1: TTS_PopupMenu
    OnPopup = TS_PopupMenu1Popup
    Left = 384
    Top = 156
    object mGrupo: TMenuItem
      Caption = 'Quebrar por Grupo'
      OnClick = mGrupoClick
    end
  end
  object dxComponentPrinter1: TdxComponentPrinter
    CurrentLink = Imprimir
    PreviewOptions.RegistryPath = 'Software\Developer Express\PrintingSystem\DesignTime'
    Left = 380
    Top = 228
    object Imprimir: TdxMasterViewReportLink
      Active = True
      Component = MasterView
      DateTime = 37085.5580757176
      DesignerHelpContext = 0
      PrinterPage.Footer = 6350
      PrinterPage.Header = 6350
      PrinterPage.Margins.Bottom = 12700
      PrinterPage.Margins.Left = 12700
      PrinterPage.Margins.Right = 12700
      PrinterPage.Margins.Top = 12700
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
      AutoNodesExpand = True
      CaptionNodeFont.Charset = DEFAULT_CHARSET
      CaptionNodeFont.Color = clWindowText
      CaptionNodeFont.Height = -11
      CaptionNodeFont.Name = 'Times New Roman'
      CaptionNodeFont.Style = []
      DrawMode = mvdmBorrowSource
      EvenFont.Charset = DEFAULT_CHARSET
      EvenFont.Color = clWindowText
      EvenFont.Height = -11
      EvenFont.Name = 'Times New Roman'
      EvenFont.Style = []
      FixedTransparent = True
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Times New Roman'
      Font.Style = []
      FooterFont.Charset = DEFAULT_CHARSET
      FooterFont.Color = clWindowText
      FooterFont.Height = -11
      FooterFont.Name = 'Times New Roman'
      FooterFont.Style = []
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Times New Roman'
      GroupNodeFont.Style = []
      HeaderFont.Charset = DEFAULT_CHARSET
      HeaderFont.Color = clWindowText
      HeaderFont.Height = -11
      HeaderFont.Name = 'Times New Roman'
      HeaderFont.Style = []
      OddFont.Charset = DEFAULT_CHARSET
      OddFont.Color = clWindowText
      OddFont.Height = -11
      OddFont.Name = 'Times New Roman'
      OddFont.Style = []
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clWindowText
      PreviewFont.Height = -11
      PreviewFont.Name = 'Times New Roman'
      PreviewFont.Style = []
    end
  end
end
