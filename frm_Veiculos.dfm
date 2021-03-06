inherited FrmVeiculos: TFrmVeiculos
  Left = 262
  Top = 137
  Height = 283
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 213
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 179
    end
  end
  inherited pnDados: TTS_Panel
    Height = 213
    inherited Grid: TTS_QDBGrid
      Height = 211
      DataSource = DMVeiculos.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridVEICULO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 49
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VEICULO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Ve'#237'culo'
        HeaderAlignment = taCenter
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridPLACA: TdxDBGridMaskColumn
        Caption = 'Placa'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PLACA'
      end
      object GridCHASSI: TdxDBGridMaskColumn
        Caption = 'Chassi'
        HeaderAlignment = taCenter
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHASSI'
      end
      object GridCAPACIDADE: TdxDBGridCurrencyColumn
        Caption = 'Capacidade'
        HeaderAlignment = taCenter
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CAPACIDADE'
        DisplayFormat = '0.00'
        Nullable = False
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 211
    end
    inherited sbDados: TTS_Panel
      Height = 211
      Color = 14542583
      object Label2: TTS_Label
        Left = 30
        Top = 25
        Width = 66
        Height = 13
        Caption = 'Ve'#237'culo:'
        FocusControl = dfNomeVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 30
        Top = 49
        Width = 66
        Height = 13
        Caption = 'Placa:'
        FocusControl = dfNomeVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 30
        Top = 73
        Width = 66
        Height = 13
        Caption = 'Chassi:'
        FocusControl = dfNomeVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 6
        Top = 99
        Width = 90
        Height = 13
        Caption = 'Capacidade (kg):'
        FocusControl = dfNomeVeiculo
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfNomeVeiculo: TTS_DBEdit
        Left = 100
        Top = 23
        Width = 212
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMVeiculos.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 100
        Top = 47
        Width = 93
        TabOrder = 1
        DataField = 'PLACA'
        DataSource = DMVeiculos.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 100
        Top = 71
        Width = 212
        TabOrder = 2
        DataField = 'CHASSI'
        DataSource = DMVeiculos.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEditNumber1: TTS_DBEditNumber
        Left = 100
        Top = 96
        Width = 121
        TabOrder = 3
        DataField = 'CAPACIDADE'
        DataSource = DMVeiculos.C_TabelaDS
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
        Height = 19
        StoredValues = 1
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 200
      Caption = 'Cadastro de Ve'#237'culos'
      Effect3D.ShadowedColor = 11911142
    end
    inherited imgModulo: TTS_Image
      Top = -1
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    CamposObrigatorios.Strings = (
      'dfNomeVeiculo')
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Cadastro de Ve'#237'culos'
    FirstEditField = dfNomeVeiculo
    Left = 56
    Top = 182
  end
  inherited Beep: TBTBeeper
    Left = 194
    Top = 90
  end
end
