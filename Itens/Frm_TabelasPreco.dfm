inherited FrmTabelasPreco: TFrmTabelasPreco
  Left = 365
  Top = 119
  Width = 538
  Height = 387
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 406
    Width = 116
    Height = 306
    inherited btGravar: TTS_SpeedButton
      Width = 114
      ActiveControlNil = False
    end
    inherited btPesquisar: TTS_SpeedButton
      Width = 114
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 114
    end
    inherited btComando1: TTS_SpeedButton
      Width = 114
      Caption = 'Perfis de Acesso'
      Glyph.Data = {
        36040000424D3604000000000000360000002800000010000000100000000100
        2000000000000004000000000000000000000000000000000000FF00FF00FF00
        FF00840000008400000084000000840000008400000084000000000000000000
        00008400000084000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000008400000084000000840000000000000000000000C6C6C6000000
        00008400000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6
        C60000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000FFFFFF00C6C6C600FFFFFF00C6C6C6000000
        0000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF000000000000000000FFFFFF00C6C6C600000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00000000000000000000000000C6C6C600FFFFFF00C6C6C600FFFF
        FF00C6C6C60000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000C6C6C600FFFFFF00C6C6
        C600FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000C6C6C600FFFFFF00C6C6C600FFFF
        FF00C6C6C60000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF0000000000000000000000000000000000FFFFFF00C6C6C600FFFFFF00C6C6
        C600FFFFFF00C6C6C60000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF000000000000000000000000000000000000000000FFFFFF00C6C6C600FFFF
        FF008400000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000FFFFFF00C6C6
        C600FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00000000000000000000000000000000000000000000000000000000000000
        0000C6C6C600FFFFFF0000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF0000000000000000000000000000000000000000000000
        000000000000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00}
      Visible = True
      OnClick = btComando1Click
    end
    inherited btComando2: TTS_SpeedButton
      Width = 114
    end
    inherited bv2: TTS_Bevel
      Width = 114
    end
    inherited bv3: TTS_Bevel
      Width = 114
    end
    inherited bv1: TTS_Bevel
      Width = 114
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 272
      Width = 114
    end
    inherited btIR_Para: TTS_SpeedButton
      Width = 114
    end
    inherited pnInicioFim: TTS_Panel
      Width = 114
    end
    inherited pnAvancaRecua: TTS_Panel
      Width = 114
    end
  end
  inherited pnDados: TTS_Panel
    Width = 406
    Height = 306
    inherited Grid: TTS_QDBGrid
      Width = 404
      Height = 304
      KeyField = 'TABELAPRECO'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridTABELAPRECO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 92
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TABELAPRECO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o da Tabela'
        HeaderAlignment = taCenter
        Width = 240
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridPERCENTUAL: TdxDBGridMaskColumn
        Caption = 'Percentual (%)'
        HeaderAlignment = taCenter
        Width = 87
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PERCENTUAL'
      end
      object GridDESATIVADO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 83
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESATIVADO'
      end
      object GridBASEADA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 61
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BASEADA'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 404
      Height = 304
    end
    inherited sbDados: TTS_Panel
      Width = 404
      Height = 304
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 13
        Top = 20
        Width = 156
        Caption = 'Nome da Tabela de Pre'#231'o:'
        FocusControl = TS_DBEdit2
        FormatoTabela = False
        LinkToResult = 0
      end
      object btAtualizaManuais: TTS_SpeedButton
        Left = 25
        Top = 264
        Width = 368
        Caption = 'For'#231'ar atualiza'#231#227'o dos Pre'#231'os manualmente definidos...'
        Glyph.Data = {
          76060000424D7606000000000000360400002800000018000000180000000100
          08000000000040020000130B0000130B00000001000000010000EF9C2100E7A5
          63006B6B6B008C8C8C00FFDEB500296BC600527BC600FFEFD600397BE700E7E7
          E700317BEF00FFF7EF000073F700F7F7F700FF00FF00007BFF00008CFF000094
          FF00009CFF0000A5FF0039A5FF0052A5FF005AA5FF0000ADFF0029ADFF0000B5
          FF0008BDFF0010BDFF0000C6FF0008C6FF0018CEFF0000D6FF0010D6FF0031D6
          FF0000DEFF0042DEFF0039E7FF0000EFFF0039EFFF004AEFFF0000F7FF0008F7
          FF0031F7FF0042F7FF0000FFFF0008FFFF0018FFFF0021FFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
          FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF000E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E030202020202020202020202020202020202020202
          020E0E0309030D0D0D0D0D0D030D0D0D0D0D030D0D0D0D0D020E0E0309033030
          3030300D03303030300D03303030300D020E0E03030603030303030303030303
          0303030303030303020E0E03090A06050D0D0D0D030D0D0D0D0D030D0D0D0D0D
          020E0E0309080F0C0630300D03303030300D03303030300D020E0E0303031210
          10060303030303030303030303030303020E0E0309030B1910110606030B0B0B
          0B0B030B0B0B0B0B020E0E0309030707191D1212060707070707030707070707
          020E0E030303030303191A17120603030303030303030303020E0E0309030606
          061C2D2A1B1706060707030707070707020E0E030903181C2528282C271E1306
          0707030707070707020E0E030303141C252825222C2C261D0603030303030303
          020E0E030903071D24272B2E2C2C2D2F0607030707070707020E0E0309030707
          0721292C281F19060707030707070707020E0E00000000000000002128251713
          0600000000000000000E0E000100010101010101002123201606000101010101
          000E0E000400040404040404000404211506000404040404000E0E0000000000
          00000000000000000000000000000000000E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E
          0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E0E}
        OnClick = btAtualizaManuaisClick
        RepeatedClick = False
        Border = False
      end
      object TS_Label2: TTS_Label
        Left = 13
        Top = 49
        Width = 156
        Caption = 'Comiss'#227'o Adicional:'
        FocusControl = TS_DBEdit2
        FormatoTabela = False
        LinkToResult = 0
      end
      object dbgBaseada: TTS_DBRadioGroup
        Left = 25
        Top = 90
        Width = 366
        Height = 138
        Caption = ' M'#233'todo de Forma'#231#227'o de Pre'#231'os '
        Ctl3D = True
        DataField = 'BASEADA'
        DataSource = DMTabelasPreco.C_TabelaDS
        Items.Strings = (
          'Pre'#231'os definidos manualmente'
          'Pre'#231'os gerados por percentual:')
        ParentCtl3D = False
        TabOrder = 3
        Values.Strings = (
          'N'
          'S')
        OnChange = dbgBaseadaChange
      end
      object dfPerc: TTS_DBEdit
        Left = 205
        Top = 183
        Width = 47
        TabOrder = 2
        DataField = 'PERCENTUAL'
        DataSource = DMTabelasPreco.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        NumericRange = nrAmbos
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 172
        Top = 18
        Width = 197
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMTabelasPreco.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
      object st1: TStaticText
        Left = 51
        Top = 141
        Width = 291
        Height = 25
        AutoSize = False
        Caption = 
          'Nesta op'#231#227'o voc'#234' ter'#225' que digitar manualmente os Pre'#231'os de Venda' +
          ' para cada Item cadastrado no sistema.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
      end
      object st2: TStaticText
        Left = 50
        Top = 201
        Width = 300
        Height = 24
        AutoSize = False
        Caption = 
          'Os Pre'#231'os de Venda ser'#227'o gerados automaticamente pela aplica'#231#227'o ' +
          'do Percentual definido sobre o pre'#231'o padr'#227'o.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -9
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
      end
      object dfComissao: TTS_DBMaskEdit
        Left = 173
        Top = 47
        Width = 52
        TabOrder = 1
        DataField = 'ADD_COMISSAO'
        DataSource = DMTabelasPreco.C_TabelaDS
        IgnoreMaskBlank = False
        StyleController = DMProjeto.esItens
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 404
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 522
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 161
      Caption = 'Tabelas de Pre'#231'o'
      Effect3D.ShadowedColor = 9027548
    end
    inherited btHelp: TTS_SpeedButton
      Left = 414
      Top = 10
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 108
    Top = 326
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 162
    Top = 326
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 354
    Top = 325
  end
  inherited ImgPadrao: TImageList
    Left = 21
    Top = 318
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'TS_DbEdit2')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Tabelas de Pre'#231'o'
    OnEstado_Inicial = FormComponentEstado_Inicial
    OnEstado_Navegacao = FormComponentEstado_Navegacao
    Left = 357
    Top = 5
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 274
    Top = 265
    inherited Ajuda1: TMenuItem
      HelpContext = 225
    end
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 353
    Top = 326
  end
  inherited FormStorage: TFormStorage
    Left = 243
    Top = 324
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 368
    Top = 326
  end
end
