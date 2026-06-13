inherited RptApuracaoTabela: TRptApuracaoTabela
  Width = 1159
  Caption = 'Clientes / Vendas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnTitulo: TTS_MaxPanel
    Width = 1151
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 185
      Caption = 'Apuracao Bordados'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 1109
    end
    inherited btTemplates: TTS_SpeedButton
      Left = 1082
    end
  end
  inherited pnGrid: TPanel
    Width = 1098
    inherited pnDados: TTS_Panel
      Width = 1098
      Color = 16116702
      object TS_Label1: TTS_Label
        Left = -2
        Top = 5
        Width = 78
        Caption = 'No per'#237'odo de:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 151
        Top = 6
        Width = 18
        Caption = ' '#224' '
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 252
        Top = 4
        Width = 81
        Height = 15
        Caption = 'Tipo Opera'#231#227'o :'
        FormatoTabela = False
        LinkToResult = 0
      end
      object DataI: TTS_DateTimePicker
        Left = 78
        Top = 3
        Width = 81
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
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
      object DataF: TTS_DateTimePicker
        Left = 169
        Top = 3
        Width = 81
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
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
    end
    inherited dbgConsulta: TTS_QDBGrid
      Width = 1098
      KeyField = 'ITEM'
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'Codigo'
              SummaryFormat = '>Codigo=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'SUBTOTALVENDAITEN'
              SummaryFormat = '>SUBTOTALVENDAITEN=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Tot_Atacado'
              SummaryFormat = '>Tot_Atacado=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'qtd_Bord_P'
              SummaryFormat = '>qtd_Bord_P=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Tot_Bord_P'
              SummaryFormat = '>Tot_Bord_P=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'qtd_Bord_M'
              SummaryFormat = '>qtd_Bord_M=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Tot_Bord_M'
              SummaryFormat = '>Tot_Bord_M=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'qtd_Bord_G'
              SummaryFormat = '>qtd_Bord_G=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'qtd_BordP2'
              SummaryFormat = '>qtd_BordP2=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Tot_BordP2'
              SummaryFormat = '>Tot_BordP2=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'qtdBordM2'
              SummaryFormat = '>qtdBordM2=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Tot_BordM2'
              SummaryFormat = '>Tot_BordM2=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'qtdBordG2'
              SummaryFormat = '>qtdBordG2=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Tot_BordG2'
              SummaryFormat = '>Tot_BordG2=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'Tot_Bord_G'
              SummaryFormat = '>Tot_Bord_G=#,###,##0.00'
              SummaryType = cstSum
            end
            item
              SummaryField = 'qtd_Atacado'
              SummaryFormat = '>qtd_Atacado=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      TS_SummaryFields.Strings = (
        'Codigo; count'
        'SUBTOTALVENDAITEN;sum'
        'Tot_Atacado;sum'
        'qtd_Bord_P;sum'
        'Tot_Bord_P;sum'
        'qtd_Bord_M;sum'
        'Tot_Bord_M;sum'
        'qtd_Bord_G;sum'
        'qtd_BordP2;sum'
        'Tot_BordP2;sum'
        'qtdBordM2;sum'
        'Tot_BordM2;sum'
        'qtdBordG2;sum'
        'Tot_BordG2;sum'
        'Tot_Bord_G;sum'
        'qtd_Atacado;sum')
      object dbgConsultaCODIGO: TdxDBGridMaskColumn
        Caption = 'Codigo'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descricao'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object dbgConsultaITEM: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ITEM'
        SummaryFooterFormat = '###0'
      end
      object dbgConsultaTOTALVENDIDO: TdxDBGridMaskColumn
        Caption = 'Tot. Vendido'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOTALVENDIDO'
      end
      object dbgConsultaSUBTOTALVENDAITEN: TdxDBGridMaskColumn
        Caption = 'Sub Tot Vendido'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SUBTOTALVENDAITEN'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
      object dbgConsultaColumn21: TdxDBGridColumn
        Caption = 'Qtd Atac'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD_ATACADO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOT_ATACADO: TdxDBGridMaskColumn
        Caption = 'Tot. Atac'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOT_ATACADO'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
      object dbgConsultaColumn20: TdxDBGridColumn
        Caption = 'Qtd Bord P'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD_BORD_P'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOT_BORD_P: TdxDBGridMaskColumn
        Caption = 'Tot Bord P'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOT_BORD_P'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
      object dbgConsultaColumn22: TdxDBGridColumn
        Caption = 'Qtd Bord M'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD_BORD_M'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOT_BORD_M: TdxDBGridMaskColumn
        Caption = 'Tot Bord M'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOT_BORD_M'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
      object dbgConsultaColumn23: TdxDBGridColumn
        Caption = 'Qtd Bord G'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD_BORD_G'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOT_BORD_G: TdxDBGridMaskColumn
        Caption = 'Tot Bord G'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOT_BORD_G'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
      object dbgConsultaColumn25: TdxDBGridColumn
        Caption = 'Qtd Bord P2'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTD_BORDP2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOT_BORDP2: TdxDBGridMaskColumn
        Caption = 'Tot Bord P2'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOT_BORDP2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
      object dbgConsultaColumn24: TdxDBGridColumn
        Caption = 'Qtd Bord M2'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDBORDM2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOT_BORDM2: TdxDBGridMaskColumn
        Caption = 'Tot Bord M2'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOT_BORDM2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
      object dbgConsultaColumn26: TdxDBGridColumn
        Caption = 'Qtd Bord G2'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'QTDBORDG2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
      object dbgConsultaTOT_BORDG2: TdxDBGridMaskColumn
        Caption = 'Tot Bord G2'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TOT_BORDG2'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
        EditMask = '#,###,##0.00'
      end
    end
    inherited PainelFullSelect: TTS_Panel
      Width = 1098
      inherited cbFullSelect: TTS_CheckBox
        Style.ButtonStyle = btsSimple
        Height = 19
      end
    end
  end
  inherited TS_Panel1: TTS_Panel
    inherited btAtualizar: TTS_SpeedButton
      OnClick = btAtualizarClick
    end
  end
  object TS_PopupEdit1: TTS_PopupEdit [3]
    Left = 391
    Top = 39
    Width = 132
    TabOrder = 3
    AutoSelect = False
    StyleController = DMProjeto.esClientes
    HideEditCursor = True
    PopupControl = clbTipoOperacao
    PopupFormBorderStyle = pbsSysPanel
    OnCloseUp = TS_PopupEdit1CloseUp
    LookupKeyValue = 0
    Height = 19
  end
  object clbTipoOperacao: TTS_CheckListBox [4]
    Left = 713
    Top = 114
    Width = 174
    Height = 147
    BorderStyle = bsNone
    Ctl3D = False
    ItemHeight = 13
    ParentCtl3D = False
    TabOrder = 4
    Visible = False
    KeyField = 'TIPOMOVIMENTO'
    ListField = 'DESCRICAO'
    Transparent = False
  end
  inherited Q_Consulta: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'SELECT'
      'i.codigo, i.descricao,si.item,'
      
        'sum(cast(cast(si.quantidade as Numeric(15,3)) * si.fator  as Flo' +
        'at)) as TotalVendido,'
      'sum(si.subtotalitem) as SubtotalVendaIten,'
      
        'cast(SUM(CASE WHEN SI.tabelapreco = 8705 THEN SI.quantidade ELSE' +
        ' 0 END) as integer) AS qtd_Atacado,'
      
        'SUM((CASE WHEN SI.tabelapreco = 8705 THEN (SI.quantidade * (Case' +
        ' when si.promocao ='#39'S'#39' then (si.preco - si.precopromotabpadrao) ' +
        'Else (si.preco - si.precotabela ) end )) ELSE 0 END)) as Tot_Ata' +
        'cado,'
      
        'cast(SUM(CASE WHEN SI.tabelapreco = 1126354 THEN SI.quantidade E' +
        'LSE 0 END)  as integer ) AS qtd_Bord_P,'
      
        'SUM((CASE WHEN SI.tabelapreco = 1126354 THEN (SI.quantidade * (C' +
        'ase when si.promocao ='#39'S'#39' then (si.preco - si.precopromotabpadra' +
        'o) Else (si.preco - si.precotabela ) end )) ELSE 0 END)) as Tot_' +
        'Bord_P,'
      
        'cast(SUM(CASE WHEN SI.tabelapreco = 1127345 THEN SI.quantidade E' +
        'LSE 0 END)  as integer) AS qtd_Bord_M,'
      
        'SUM((CASE WHEN SI.tabelapreco = 1127345 THEN (SI.quantidade * (C' +
        'ase when si.promocao ='#39'S'#39' then (si.preco - si.precopromotabpadra' +
        'o) Else (si.preco - si.precotabela ) end )) ELSE 0 END)) as Tot_' +
        'Bord_M,'
      
        'cast(SUM(CASE WHEN SI.tabelapreco = 1127472 THEN SI.quantidade E' +
        'LSE 0 END) as integer) AS qtd_Bord_G,'
      
        'SUM((CASE WHEN SI.tabelapreco = 1127472 THEN (SI.quantidade * (C' +
        'ase when si.promocao ='#39'S'#39' then (si.preco - si.precopromotabpadra' +
        'o) Else (si.preco - si.precotabela ) end )) ELSE 0 END)) as Tot_' +
        'Bord_G,'
      
        'cast(SUM(CASE WHEN SI.tabelapreco = 1158366 THEN SI.quantidade E' +
        'LSE 0 END)  as integer) AS qtd_BordP2,'
      
        'SUM((CASE WHEN SI.tabelapreco = 1158366 THEN (SI.quantidade * (C' +
        'ase when si.promocao ='#39'S'#39' then (si.preco - si.precopromotabpadra' +
        'o) Else (si.preco - si.precotabela ) end )) ELSE 0 END)) as Tot_' +
        'BordP2,'
      
        'cast(SUM(CASE WHEN SI.tabelapreco = 1160084 THEN SI.quantidade E' +
        'LSE 0 END) as integer) AS qtdBordM2,'
      
        'SUM((CASE WHEN SI.tabelapreco = 1160084 THEN (SI.quantidade * (C' +
        'ase when si.promocao ='#39'S'#39' then (si.preco - si.precopromotabpadra' +
        'o) Else (si.preco - si.precotabela ) end )) ELSE 0 END)) as Tot_' +
        'BordM2,'
      
        'cast(SUM(CASE WHEN SI.tabelapreco = 1160135  THEN SI.quantidade ' +
        'ELSE 0 END)  as integer) AS qtdBordG2,'
      
        'SUM((CASE WHEN SI.tabelapreco = 1160135 THEN (SI.quantidade * (C' +
        'ase when si.promocao ='#39'S'#39' then (si.preco - si.precopromotabpadra' +
        'o) Else (si.preco - si.precotabela ) end )) ELSE 0 END)) as Tot_' +
        'BordG2'
      '        from  Saidas s'
      
        '             inner join SaidasItens si on s.empresa = si.empresa' +
        ' and s.saida = si.saida and s.pdv = si.pdv'
      
        '             inner join Itens i on si.empresa = i.empresa and si' +
        '.item = i.item'
      
        '             left join Favorecidos f on s.empresa = f.empresa an' +
        'd s.favorecido = f.favorecido'
      
        '             left join Favorecidos v on s.vendedor = v.favorecid' +
        'o'
      '             left join Grupos gi on i.grupo = gi.grupo'
      '        group by si.item, i.codigo, i.descricao')
  end
  inherited C_Consulta: TClientDataSet
    object C_ConsultaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 14
    end
    object C_ConsultaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ConsultaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'SAIDASITENS.ITEM'
    end
    object C_ConsultaTOTALVENDIDO: TFloatField
      FieldName = 'TOTALVENDIDO'
    end
    object C_ConsultaSUBTOTALVENDAITEN: TFloatField
      FieldName = 'SUBTOTALVENDAITEN'
    end
    object C_ConsultaTOT_ATACADO: TFloatField
      FieldName = 'TOT_ATACADO'
    end
    object C_ConsultaTOT_BORD_P: TFloatField
      FieldName = 'TOT_BORD_P'
    end
    object C_ConsultaTOT_BORD_M: TFloatField
      FieldName = 'TOT_BORD_M'
    end
    object C_ConsultaTOT_BORD_G: TFloatField
      FieldName = 'TOT_BORD_G'
    end
    object C_ConsultaTOT_BORDP2: TFloatField
      FieldName = 'TOT_BORDP2'
    end
    object C_ConsultaTOT_BORDM2: TFloatField
      FieldName = 'TOT_BORDM2'
    end
    object C_ConsultaTOT_BORDG2: TFloatField
      FieldName = 'TOT_BORDG2'
    end
    object C_ConsultaQTD_BORD_P: TIntegerField
      FieldName = 'QTD_BORD_P'
    end
    object C_ConsultaQTD_BORD_M: TIntegerField
      FieldName = 'QTD_BORD_M'
    end
    object C_ConsultaQTD_BORD_G: TIntegerField
      FieldName = 'QTD_BORD_G'
    end
    object C_ConsultaQTD_BORDP2: TIntegerField
      FieldName = 'QTD_BORDP2'
    end
    object C_ConsultaQTDBORDM2: TIntegerField
      FieldName = 'QTDBORDM2'
    end
    object C_ConsultaQTDBORDG2: TIntegerField
      FieldName = 'QTDBORDG2'
    end
    object C_ConsultaQTD_ATACADO: TIntegerField
      FieldName = 'QTD_ATACADO'
    end
  end
  inherited GridPrinter: TdxComponentPrinter
    PreviewOptions.PreviewBoundsRect = {00000000000000000000000000000000}
    inherited GridPrinterLink: TdxDBGridReportLink
      DateTime = 45842.4133110069
      PrinterPage._dxMeasurementUnits_ = 2
      PrinterPage._dxLastMU_ = 2
      BuiltInReportLink = True
    end
  end
  inherited ppmSelTemplate: TTS_PopupMenu
    Left = 776
    Top = 136
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msClientes
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Modulo = 'Clientes / Vendas'
    Caption = 'Apuracao Bordados'
  end
  object Q_TiposMovimentos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'Select TIPOMOVIMENTO, DESCRICAO from TIPOSMOVIMENTO where   TIPO' +
        'PADRAO in (1,2) order by DESCRICAO')
    Left = 895
    Top = 116
    object Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object Q_TiposMovimentosDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 50
    end
  end
  object P_TiposMovimentos: TDataSetProvider
    DataSet = Q_TiposMovimentos
    Constraints = True
    Left = 902
    Top = 172
  end
  object C_TiposMovimentos: TClientDataSet
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'TIPOMOVIMENTO'
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
    ProviderName = 'P_TiposMovimentos'
    StoreDefs = True
    Left = 894
    Top = 228
    object C_TiposMovimentosTIPOMOVIMENTO: TIntegerField
      FieldName = 'TIPOMOVIMENTO'
      Origin = 'TIPOSMOVIMENTO.TIPOMOVIMENTO'
      Required = True
    end
    object C_TiposMovimentosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSMOVIMENTO.DESCRICAO'
      Size = 50
    end
  end
  object C_TipoMovimentoDS: TDataSource
    DataSet = C_TiposMovimentos
    Left = 894
    Top = 284
  end
end
