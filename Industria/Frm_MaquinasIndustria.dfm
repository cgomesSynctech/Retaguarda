inherited FrmMaquinasIndustria: TFrmMaquinasIndustria
  Left = 414
  Top = 103
  Width = 564
  Height = 428
  Caption = 'M'#243'dulo de Ind'#250'stria'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label5: TTS_Label [0]
    Left = 4
    Top = 73
    Width = 105
    Caption = 'Descri'#231#227'o:'
    FormatoTabela = False
    LinkToResult = 0
  end
  inherited pnNavigator: TTS_Panel
    Left = 433
    Height = 347
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 313
    end
  end
  inherited pnDados: TTS_Panel
    Width = 433
    Height = 347
    inherited Grid: TTS_QDBGrid
      Width = 431
      Height = 345
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 431
      Height = 345
    end
    inherited sbDados: TTS_Panel
      Width = 431
      Height = 345
      object TS_Label2: TTS_Label
        Left = 57
        Top = 20
        Width = 46
        Caption = 'C'#243'digo:'
        FocusControl = df_CODIGO
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 41
        Top = 43
        Width = 61
        Caption = 'Descri'#231#227'o:'
        FocusControl = df_Descricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 17
        Top = 112
        Width = 85
        Cursor = crHandPoint
        Caption = 'Tipo de M'#225'quina:'
        FocusControl = df_Descricao
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmTiposMaquinas'
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 25
        Top = 90
        Width = 77
        Caption = 'Custo Unit'#225'rio:'
        FocusControl = df_Descricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 9
        Top = 66
        Width = 93
        Caption = 'Unidade Consumo:'
        FocusControl = df_Descricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 39
        Top = 138
        Width = 63
        Height = 26
        Caption = 'Observa'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object df_CODIGO: TTS_DBButtonEdit
        Left = 107
        Top = 17
        Width = 85
        TabOrder = 0
        DataField = 'CODIGO'
        DataSource = DMMaquinasIndustria.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000F0000000E0000000100
              0400000000007000000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFF1FFFFFFFFFFFFFFF0FF0087FFFFFFFFF1FF0B3087FFFFFFF0FFF0BB0087FF
              FFF2FFFF0BB3008FFFF1FFFFF0BBB008FFF0FFFFF00BBB007FF0FFFF00BBB007
              FFF3FFFFF00BBB007FF1FFFFFFF00BB007F1FFFFFFFFF00B0070FFFFFFFFFFF0
              00F2FFFFFFFFFFFFFFF1}
            Kind = bkGlyph
          end>
        OnButtonClick = df_CODIGOButtonClick
        Height = 19
        ExistButtons = True
      end
      object df_Descricao: TTS_DBEdit
        Left = 107
        Top = 40
        Width = 291
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMMaquinasIndustria.C_TabelaDS
        MaxLength = 255
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object cmbTipodeMaquina: TTS_DBLookupComboBox
        Left = 107
        Top = 110
        Width = 219
        Style.BorderColor = 14859922
        TabOrder = 4
        DataField = 'lkTiposMaquina'
        DataSource = DMMaquinasIndustria.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object df_CustoUnitario: TTS_DBEditNumber
        Left = 107
        Top = 88
        Width = 81
        Style.BorderColor = 14859922
        TabOrder = 3
        DataField = 'CUSTOUNITARIO'
        DataSource = DMMaquinasIndustria.C_TabelaDS
        StyleController = DMProjeto.esGeral
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
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FD0000000000
          000000FD000006060404040404040400000006FF0606060606060400000006FE
          0600FF00FF000400000006FF0606060606060400000006FE0007070707070400
          000006FF00FFFFFFFF070400000006FE0000000000000400000006FFFEFFFEFF
          FEFF06000000FD0606060606060606FD0000}
        BeepOnError = False
        Height = 19
        StoredValues = 1
      end
      object cmbUnidadeConsumo: TTS_DBLookupComboBox
        Left = 107
        Top = 64
        Width = 173
        Style.BorderColor = 14859922
        TabOrder = 2
        DataField = 'lkUnidade'
        DataSource = DMMaquinasIndustria.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object df_Observacao: TTS_DBMemo
        Left = 107
        Top = 135
        Width = 291
        TabOrder = 5
        DataField = 'OBSERVACAO'
        DataSource = DMMaquinasIndustria.C_TabelaDS
        MaxLength = 500
        StyleController = DMProjeto.esFuncionarios
        ScrollBars = ssBoth
        Height = 140
        StoredValues = 2
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 431
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 548
    inherited lbCaption: TdxfLabel
      Width = 334
      Caption = 'Cadastro de M'#225'quinas p/ Ind'#250'stria'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 517
    end
  end
  inherited FormComponent: TFormComponent
    Modulo = 'M'#243'dulo de Ind'#250'stria'
    Caption = 'Cadastro de M'#225'quinas p/ Ind'#250'stria'
  end
  inherited FormStorage: TFormStorage
    Left = 328
    Top = 136
  end
end
