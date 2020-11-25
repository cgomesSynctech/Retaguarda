inherited DlgConfirmacaopgcartaoempresa: TDlgConfirmacaopgcartaoempresa
  Left = 208
  Top = 110
  Width = 605
  Height = 402
  Caption = 'Pagamento Cart'#227'o'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 479
    Height = 332
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 298
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 597
  end
  inherited pnDados: TTS_Panel
    Width = 479
    Height = 332
    object TS_Panel1: TTS_Panel
      Left = 1
      Top = 1
      Width = 477
      Height = 369
      Align = alTop
      TabOrder = 0
      object TS_Panel2: TTS_Panel
        Left = 1
        Top = 1
        Width = 475
        Height = 94
        Align = alTop
        BevelOuter = bvLowered
        Color = 14538689
        TabOrder = 0
        object TS_Label1: TTS_Label
          Left = 7
          Top = 8
          Width = 87
          Height = 16
          Cursor = crHandPoint
          Caption = 'Nome do Cart'#227'o :'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = [fsUnderline]
          ParentFont = False
          OnClick = TS_Label1Click
          FormatoTabela = False
          LinkTo = 'FrmCadastroCartaoEmpresa'
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label2: TTS_Label
          Left = -20
          Top = 28
          Width = 114
          Height = 17
          Caption = 'Juros/Encargos:'
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label3: TTS_Label
          Left = 29
          Top = 48
          Width = 65
          Height = 17
          Caption = 'Vencimento:'
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label4: TTS_Label
          Left = 29
          Top = 71
          Width = 65
          Height = 17
          Caption = '# Fatura:'
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object lcbFormasPg: TTS_DBLookupComboBox
          Left = 96
          Top = 5
          Width = 239
          TabOrder = 0
          OnClick = lcbFormasPgClick
          DropDownRows = 15
          ClearKey = 32
          ListSource = Q_FormasPgDS
          LookupKeyValue = Null
          Height = 19
        end
        object EdtOutros: TTS_Edit
          Left = 96
          Top = 26
          Width = 83
          TabOrder = 1
          Text = '0'
          OnExit = EdtOutrosExit
          OnKeyPress = EdtOutrosKeyPress
          Height = 17
        end
        object DataI: TTS_DateTimePicker
          Left = 96
          Top = 46
          Width = 238
          TabOrder = 2
          AutoSize = False
          OnChange = lcbFormasPgClick
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
          Date = 36859
          UseEditMask = True
          Height = 20
          StoredValues = 4
        end
        object EdtNotaFiscal: TTS_Edit
          Left = 95
          Top = 70
          Width = 121
          TabOrder = 3
          Height = 19
        end
      end
      object TS_Panel3: TTS_Panel
        Left = 1
        Top = 333
        Width = 475
        Height = 35
        Align = alBottom
        Caption = 'TS_Panel3'
        TabOrder = 1
        object TS_Shape1: TTS_Shape
          Left = 1
          Top = 1
          Width = 473
          Height = 33
          Align = alClient
          Brush.Color = 15658734
          Transparent = False
        end
        object TS_Label6: TTS_Label
          Left = 324
          Top = 3
          Width = 65
          Height = 17
          Caption = 'Total:'
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label7: TTS_Label
          Left = 15
          Top = 3
          Width = 82
          Height = 17
          Caption = 'N'#186' Pagamentos:'
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object lblQtde: TTS_Label
          Left = 121
          Top = 3
          Width = 40
          Height = 17
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label5: TTS_Label
          Left = 15
          Top = 18
          Width = 82
          Height = 17
          Caption = 'Selecionados:'
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object lblQtdeSel: TTS_Label
          Left = 121
          Top = 18
          Width = 40
          Height = 17
          Caption = '0'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object TS_Label8: TTS_Label
          Left = 293
          Top = 18
          Width = 96
          Height = 17
          Caption = 'Total Selecionado:'
          FormatoTabela = False
          LinkToResult = 0
          LinkTime = ltAfterClick
          LinkStyle = lsChild
        end
        object dbtTotal: TTS_DBText
          Left = 399
          Top = 3
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Transparent = True
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
          EditOffSet.x = 0
          EditOffSet.y = 0
        end
        object dbtTotalSel: TTS_DBText
          Left = 399
          Top = 18
          Width = 65
          Height = 13
          Alignment = taRightJustify
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clRed
          Font.Height = -11
          Font.Name = 'MS Sans Serif'
          Font.Style = []
          ParentFont = False
          Transparent = True
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
          EditOffSet.x = 0
          EditOffSet.y = 0
        end
      end
      object pnlFaturasAtraso: TTS_Panel
        Left = 1
        Top = 113
        Width = 475
        Height = 80
        Align = alTop
        BevelOuter = bvNone
        TabOrder = 2
        Visible = False
      end
      object pnlCaptionAtraso: TTS_Panel
        Left = 1
        Top = 95
        Width = 475
        Height = 18
        Align = alTop
        Alignment = taLeftJustify
        BevelOuter = bvNone
        Caption = ' Duplicatas em Atraso:'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 3
        Visible = False
      end
      object TS_Panel4: TTS_Panel
        Left = 1
        Top = 193
        Width = 475
        Height = 140
        Align = alClient
        TabOrder = 4
      end
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 518
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 529
    Top = 173
  end
  object TS_PopupMenu1: TTS_PopupMenu
    Left = 519
    Top = 161
    object MenuItem1: TMenuItem
      Caption = 'Modo de Tradu'#231#227'o'
      ShortCut = 16496
      OnClick = ModoTraducaoClick
    end
  end
  object DlgMsg1: TDlgMsg
    Left = 517
    Top = 266
  end
  object Q_Cartoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'SELECT r.Retirada, rd.FavorecidoDoc, rd.FormaPagamento, fp.Descr' +
        'icao, f.Nome, rd.Valor, iddoc, rd.Vencimento'
      'FROM ((Retiradas  r '
      
        '                          INNER JOIN RetiradasDoc rd ON r.Retira' +
        'da = rd.Retirada) '
      
        '                          INNER JOIN Favorecidos f ON rd.Favorec' +
        'idoDoc = f.Favorecido) '
      
        '                          INNER JOIN FormasPagamento fp ON rd.Fo' +
        'rmaPagamento = fp.FormaPagamento'
      'WHERE  rd.Vencimento <= :Data and  '
      '               rd.FormaPagamento =  :FormaPg and'
      '               rd.Status < 50 and'
      '               fp.Especie = 50'
      'Order By  rd.Vencimento'
      '')
    Left = 52
    Top = 112
    ParamData = <
      item
        DataType = ftInteger
        Name = 'FormaPg'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptUnknown
      end>
  end
  object Q_CartoesDs: TDataSource
    DataSet = C_Cartoes
    Left = 50
    Top = 206
  end
  object Q_FormasPg: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * From FormasPagamento'
      'Where especie = 50'
      'Order by Descricao ')
    Left = 258
    Top = 124
    object Q_FormasPgFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object Q_FormasPgDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object Q_FormasPgREFCREDITO: TIBStringField
      FieldName = 'REFCREDITO'
      Size = 1
    end
    object Q_FormasPgCARENCIACREDITO: TIntegerField
      FieldName = 'CARENCIACREDITO'
    end
    object Q_FormasPgCONTALIBERACAO: TIntegerField
      FieldName = 'CONTALIBERACAO'
    end
    object Q_FormasPgDESATIVADO: TIBStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object Q_FormasPgMENORPARCELA: TFloatField
      FieldName = 'MENORPARCELA'
    end
    object Q_FormasPgQUITAR: TIBStringField
      FieldName = 'QUITAR'
      Size = 1
    end
    object Q_FormasPgCREDITO: TIBStringField
      FieldName = 'CREDITO'
      Size = 1
    end
    object Q_FormasPgVENCFUTURO: TIBStringField
      FieldName = 'VENCFUTURO'
      Size = 1
    end
    object Q_FormasPgENCARGOS: TFloatField
      FieldName = 'ENCARGOS'
    end
    object Q_FormasPgESPECIE: TIntegerField
      FieldName = 'ESPECIE'
    end
    object Q_FormasPgSIGLA: TIBStringField
      FieldName = 'SIGLA'
      Size = 5
    end
    object Q_FormasPgCODIGOECF: TIBStringField
      FieldName = 'CODIGOECF'
      Size = 3
    end
    object Q_FormasPgCONTACARTEIRA: TIntegerField
      FieldName = 'CONTACARTEIRA'
    end
    object Q_FormasPgFOTO: TIBStringField
      FieldName = 'FOTO'
      Size = 50
    end
    object Q_FormasPgMELHORDIACOMPRA: TIntegerField
      FieldName = 'MELHORDIACOMPRA'
    end
    object Q_FormasPgFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
  end
  object Q_FormasPgDS: TDataSource
    DataSet = Q_FormasPg
    Left = 146
    Top = 134
  end
  object Q_QuitarCartao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 258
    Top = 188
  end
  object Q_FaturasAtraso: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select d.ID, d.Titulo, d.Parcela, d.Valor, d.Vencimento, n.Descr' +
        'icao '
      
        'from DuplicatasAPagar d LEFT JOIN Naturezas n on d.natureza = n.' +
        'Natureza'
      'where d.status = 3 and d.Fornecedor = :Fornecedor'
      'order by d.vencimento')
    Left = 393
    Top = 17
    ParamData = <
      item
        DataType = ftInteger
        Name = 'Fornecedor'
        ParamType = ptUnknown
      end>
  end
  object Q_FaturasAtrasoDS: TDataSource
    DataSet = C_FaturasAtraso
    Left = 393
    Top = 71
  end
  object C_Cartoes: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'FormaPg'
        ParamType = ptUnknown
      end
      item
        DataType = ftDateTime
        Name = 'Data'
        ParamType = ptUnknown
      end>
    ProviderName = 'Q_CartoesProvider'
    Left = 52
    Top = 156
    object C_CartoesRETIRADA: TIntegerField
      FieldName = 'RETIRADA'
      Required = True
    end
    object C_CartoesFAVORECIDODOC: TIntegerField
      FieldName = 'FAVORECIDODOC'
    end
    object C_CartoesFORMAPAGAMENTO: TIntegerField
      FieldName = 'FORMAPAGAMENTO'
      Required = True
    end
    object C_CartoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Required = True
      Size = 50
    end
    object C_CartoesNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_CartoesIDDOC: TIntegerField
      FieldName = 'IDDOC'
      Required = True
    end
    object C_CartoesVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_CartoesVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object Q_CartoesProvider: TDataSetProvider
    DataSet = Q_Cartoes
    Constraints = True
    Left = 52
    Top = 268
  end
  object C_FaturasAtraso: TClientDataSet
    Aggregates = <>
    Params = <
      item
        DataType = ftInteger
        Name = 'Fornecedor'
        ParamType = ptUnknown
      end>
    ProviderName = 'Q_FaturasAtrasoProvider'
    Left = 396
    Top = 132
    object C_FaturasAtrasoID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_FaturasAtrasoTITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object C_FaturasAtrasoPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_FaturasAtrasoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 50
    end
    object C_FaturasAtrasoVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_FaturasAtrasoVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '###,###,##0.00'
      Precision = 18
      Size = 2
    end
  end
  object Q_FaturasAtrasoProvider: TDataSetProvider
    DataSet = Q_FaturasAtraso
    Constraints = True
    Left = 396
    Top = 252
  end
end
