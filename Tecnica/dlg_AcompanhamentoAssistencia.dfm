inherited dlgAcompanhamentoAssistencia: TdlgAcompanhamentoAssistencia
  Left = 19
  Top = 25
  Width = 1296
  Height = 714
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 1165
    Width = 123
    Height = 640
    Color = 15456728
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 606
      Width = 121
    end
    inherited btComando2: TTS_SpeedButton
      Top = 140
      Width = 121
      Caption = 'A&lterar OS'
      Visible = True
      OnClick = btComando2Click
    end
    inherited btComando1: TTS_SpeedButton
      Top = 551
      Width = 121
      Caption = 'Exportar XML'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 121
      Caption = '&Finalizar'
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 121
      Caption = '&Atualizar'
      Glyph.Data = {
        C2080000424DB60C000000000000360800002800000018000000180000000100
        1000030000008004000000000000000000000001000000000000007C0000E003
        00001F000000009C0000089C0800109C0800109C100031A5210039A5210039A5
        290031AD290039AD290039AD3100EFA5390039AD390039B539006BB542006BB5
        4A00EFA55200FFB5520084845A0094BD5A0073C66300E7AD6B00F7BD6B0073C6
        6B00AD7B7300AD847300B5847300A5C67300AD7B7B009C847B00A5847B00AD84
        7B00B58C7B00C6C67B007BCE7B00B5848400BD848400B58C8400BD8C8400BD94
        8400C6948400C69C8400DEA58400E7B58400CE9C8C00CEA58C00D6A58C00DEAD
        8C00EFC68C00F7C68C00BDCE8C00C6CE8C00B5AD9400E7CE9400EFCE9400B5AD
        9C00EFCE9C00F7CE9C00CED69C00F7D69C009CDE9C00BDB5A500DEC6A500EFCE
        A500ADD6A500E7D6A500F7D6A500CEBDAD00D6C6AD00C6D6AD00E7D6AD00EFD6
        AD00F7D6AD00F7D6B500CEDEB500EFDEB500F7DEB500CEDEBD00EFDEBD00F7DE
        BD00E7CEC600E7DEC600EFDEC600F7DEC600EFE7C600F7E7C600FFE7C600E7D6
        CE00F7DECE00EFE7CE00F7E7CE00FFE7CE00CEEFCE00D6EFCE00E7D6D600F7E7
        D600FFE7D600EFEFD600FFEFD600EFDEDE00F7E7DE00EFEFDE00F7EFDE00FFEF
        DE00F7EFE700FFEFE700FFF7E700F7EFEF00FFF7EF00FFF7F700F7FFF700FFFF
        F700FF00FF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFFFF00FFFF
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
        FF00FFFFFF001F7C1F7C1F7CF53D164216421642164216421642164216421642
        1642164216421642164216421642164216421F7C1F7C1F7C1F7C1F7CF53D7D63
        9E637E5F7E5B5E5B5D575E533D4F3D4F3D4B3D4B3D4B3D4B3D4B3D4B3D4B3D4B
        363E1F7C1F7C1F7C1F7C1F7CF53D7D639E637E637E5F37475C535C533D533D4F
        3D4F3D4B3D4B3D4B3D4B3D4B3D4B3D4B363E1F7C1F7C1F7C1F7C1F7CF53D7E67
        9E677E637E63594F60025C53CD2687168716CD26183F3C4B3D4B3D4B3D4B3D4B
        363E1F7C1F7C1F7C1F7C1F7CF53D9D679E6B9E677E637D5B6002620A60026002
        600260026002F22E3C4B3D4B3D4B3D4B363E1F7C1F7C1F7C1F7C1F7CF53D9E6B
        BE6F9E6B9E677D5F60026002600260026002600260026002183F3D4B3D4B3D4B
        363E1F7C1F7C1F7C1F7C1F7C153E9E6FBE6F9E6B9E677C63600260026002A71A
        38473847CD26600287163D4B3D4B3D4B363E1F7C1F7C1F7C1F7C1F7C153EBE73
        BE73BE6F9E6B9D6360026002600286125C575C535C53143B62063D4F3D4B3D4B
        363E1F7C1F7C1F7C1F7C1F7C363EBE73DF77BE73BE6F9D676002600260026002
        60025C575D575D573D532F3F3D4F3D4B363E1F7C1F7C1F7C1F7C1F7C3642BE77
        DF77BE73BE739D679D677C637C637D5F7D5B5C575E5B5D575D572F3F3D4F3D4B
        363E1F7C1F7C1F7C1F7C1F7C3742DF7BFF7BDF772F3FBE73BE6F9E6B9D637C63
        7D5F7D5B5C575C575C535D573D533D4F363E1F7C1F7C1F7C1F7C1F7C5742DF7B
        FF7FDF7B2F3FBE73BE73BE6F9D67600260026002600260025C575D575D573D53
        363E1F7C1F7C1F7C1F7C1F7C5842DF7BFF7FFF7FDF7B620A5553BD6B9D679D67
        A6166002600260025C575E5B5D573D53363E1F7C1F7C1F7C1F7C1F7C7842DF7B
        FF7FFF7FFF7FA71E60020E37795B795BA71E6002600260027D5B7E5F5E5B5D57
        363E1F7C1F7C1F7C1F7C1F7C7842DF7BFF7FFF7FFF7FB9676002600260026002
        60026002600260027D5F7E5F7D5F1B53133E1F7C1F7C1F7C1F7C1F7C7946DF7B
        FF7FFF7FFF7FFE7B734F60026002600260026002620A60027C637D5FF956B64A
        133E1F7C1F7C1F7C1F7C1F7C9946DF7BFF7FFF7FFF7FFF7FFE7BB9670E37A71E
        A71E0E339D6760025857F956D752B64E133E1F7C1F7C1F7C1F7C1F7C9A46DF7B
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FDF7BDF77DF737C63153A102EF539F539F539
        153A1F7C1F7C1F7C1F7C1F7CBB46DF7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7B
        DF7BDF773C63163ADC42BC369D2A9D1E16421F7C1F7C1F7C1F7C1F7CBB46DF7B
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7B3C63163A1D47FE36DF2A1642
        1F7C1F7C1F7C1F7C1F7C1F7CBB46DF7BFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F
        FF7FFF7F5C67163A1D47FE3616421F7C1F7C1F7C1F7C1F7C1F7C1F7CBB46FF7F
        FF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7FFF7F5C6B163A1D4716421F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C9B429B429B429B429B429B429B429B429B429B42
        9B429B429B42163A16421F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C1F7C
        1F7C1F7C1F7C}
      NumGlyphs = 1
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 121
    end
    object btIniciar: TTS_SpeedButton
      Left = 1
      Top = 73
      Width = 121
      Caption = '&Iniciar Servi'#231'o'
      Glyph.Data = {
        16020000424D160200000000000076000000280000001A0000001A0000000100
        040000000000A001000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDD000000DDDD000000000000000DDDDDDD000000DDDD08888888
        FFFFFF0DDDDDDD000000DDDD0888888888FFF00DDDDDDD000000DDDD08800000
        000FF070DDDDDD000000DDD08888888888888070DDDDDD000000DDD078888888
        888800000DDDDD000000DDD077888888888809900DDDDD000000DD0770000000
        388809900DDDDD000000DD07777777888880099070DDDD000000DD0777777788
        8880999070DDDD000000D0337777000000009990770DDD000000D03377709999
        99999990000DDD000000D0000009099099099090DDDDDD000000DDDD09990990
        99099090DDDDDD000000DDDD0999999999999990DDDDDD000000DDDDD0900090
        00000000DDDDDD000000DDDDD090D090DDDDDDDDDDDDDD000000DDDDD090D090
        DDDDDDDDDDDDDD000000DDDDD090D090DDDDDDDDDDDDDD000000DDDDD090D090
        DDDDDDDDDDDDDD000000DDDDD090D090DDDDDDDDDDDDDD000000DDDDD090D090
        DDD0000000000D000000DDDDD090DD00000000000DDDDD000000DDDDD000DD00
        00DDDDDDDDDDDD000000DDDDDDDDDDDDDDDDDDDDDDDDDD000000}
      OnClick = btIniciarClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton1: TTS_SpeedButton
      Left = 1
      Top = 371
      Width = 121
      Height = 38
      Hint = 
        'Para Or'#231'amentos Avisados:'#13#10'- Or'#231'amento Aceito (SIM ou N'#195'O)'#13#10'- Or' +
        #231'amento Comunicado (SIM)'#13#10'- Servi'#231'o Pronto (N'#195'O)'#13#10'- Produto Entr' +
        'egue (N'#195'O)'#13#10#13#10'Para Or'#231'amentos N'#227'o Avisados:'#13#10'- Or'#231'amento Aceito ' +
        '(SIM ou N'#195'O)'#13#10'- Or'#231'amento Comunicado (N'#195'O)'#13#10'- Servi'#231'o Pronto (N'#195 +
        'O)'#13#10'- Produto Entregue (N'#195'O)'
      Caption = 'Avisados / N'#227'o avisados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = TS_SpeedButton1Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton2: TTS_SpeedButton
      Left = 1
      Top = 338
      Width = 121
      Caption = 'Pe'#231'as Pendente'
      OnClick = TS_SpeedButton2Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton4: TTS_SpeedButton
      Left = 1
      Top = 173
      Width = 121
      Caption = 'Alterar Localiza'#231#227'o'
      OnClick = TS_SpeedButton4Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton5: TTS_SpeedButton
      Left = 1
      Top = 447
      Width = 121
      Height = 38
      Hint = 
        'Para Or'#231'amentos Prontos e N'#227'o Avisados:'#13#10'- Or'#231'amento Aceito (SIM' +
        ' ou N'#195'O)'#13#10'- Or'#231'amento Comunicado (SIM ou N'#195'O)'#13#10'- Servi'#231'o Pronto ' +
        '(SIM)'#13#10'- Produto Entregue (N'#195'O)'
      Caption = 'Prontos e n'#227'o avisados'
      OnClick = TS_SpeedButton5Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton6: TTS_SpeedButton
      Left = 1
      Top = 409
      Width = 121
      Height = 38
      Hint = 
        'Para Or'#231'amentos Aceitos:'#13#10'- Or'#231'amento Aceito (SIM)'#13#10'- Or'#231'amento ' +
        'Comunicado (SIM)'#13#10'- Servi'#231'o Pronto (N'#195'O)'#13#10'- Produto Entregue (N'#195 +
        'O)'#13#10#13#10'Para Or'#231'amentos N'#227'o Aceitos:'#13#10'- Or'#231'amento Aceito (N'#195'O)'#13#10'- ' +
        'Or'#231'amento Comunicado (SIM)'#13#10'- Servi'#231'o Pronto (N'#195'O)'#13#10'- Produto En' +
        'tregue (N'#195'O)'
      Caption = 'Aceitos / N'#227'o aceitos'
      OnClick = TS_SpeedButton6Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton7: TTS_SpeedButton
      Left = 1
      Top = 206
      Width = 121
      Caption = 'Os para laboratorio'
      Visible = False
      OnClick = TS_SpeedButton7Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton3: TTS_SpeedButton
      Left = 1
      Top = 305
      Width = 121
      Caption = 'Pe'#231'as Pendente por OS'
      OnClick = TS_SpeedButton3Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton8: TTS_SpeedButton
      Left = 1
      Top = 485
      Width = 121
      Hint = 
        'Para Aparelhos n'#227'o Retirados:'#13#10'- Or'#231'amento Aceito (SIM ou N'#195'O)'#13#10 +
        '- Or'#231'amento Comunicado (SIM ou N'#195'O)'#13#10'- Servi'#231'o Pronto (SIM)'#13#10'- P' +
        'roduto Entregue (N'#195'O)'
      Caption = 'Aparelhos n'#227'o retirados'
      OnClick = TS_SpeedButton8Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object btImprimir: TTS_SpeedButton
      Left = 1
      Top = 106
      Width = 121
      Height = 34
      Caption = '&Imprimir'
      Glyph.Data = {
        4E030000424D4E030000000000007600000028000000340000001A0000000100
        040000000000D802000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDDDDDDDD88
        8888888888888888888888880000DDD00000000000000000DDDDDD8887777777
        77777777778888880000DDD0FF88887777777000DDDDDD8887FFFFFFFF888887
        778888880000DDD0FF888877777770700DDDDD8887FFFFFFFF88888787788888
        0000DDD0FF8888777777707700DDDD8887FFFFFFFF888887887788880000DD00
        0000000000000007700DDD887777777777777777788778880000DD0FF8888877
        77777700770DDD887FFFFFFFFF888888778878880000DD0FF888887777777707
        070DDD887FFFFFFFFF8888887F7878880000DD0FF888887777799907700DDD88
        7FFFFFFFFF8888887FF778880000DD0000000000000000077700DD8877777777
        777777777FFF77880000DD00FF888877777777700770DD8877FFFFFFFF888888
        877FF7880000DDD000000000000000077070DD8887777777777777777FF7F788
        0000DDD000FFFFFFFFFFF3007700DD888777FFFFFFFFFFF877FF77880000DDDD
        D0FFAAAAAAAAFF070700DD888887FF88888888FF7F7F77880000DDDDD01FFFFF
        FFFFFF00700DDD8888877FFFFFFFFFFF77F778880000DDDDDD0FFCCCCCCCCCF0
        000DDD8888887FF888888888F77778880000DDDDDD00FFFFFFFFFFF00DDDDD88
        888877FFFFFFFFFFF77888880000DDDDDDD00F999999999F0DDDDD888888877F
        888888888F7888880000DDDDDDDD0FFFFFFFFFFF00DDDD888888887FFFFFFFFF
        FF7788880000DDDDDDDD00FBBBBBBBBBF00DDD8888888877F888888888F77888
        0000DDDDDDDDD00555555555500DDD888888888777777777777778880000DDDD
        DDDDDDDDDDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000}
      NumGlyphs = 2
      OnClick = btImprimirClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton9: TTS_SpeedButton
      Left = 1
      Top = 518
      Width = 121
      Caption = 'Excluir O.S.'
      OnClick = TS_SpeedButton9Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton10: TTS_SpeedButton
      Left = 1
      Top = 272
      Width = 121
      Caption = 'O.S. por Marcas'
      Visible = False
      OnClick = TS_SpeedButton10Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    object TS_SpeedButton11: TTS_SpeedButton
      Left = 1
      Top = 239
      Width = 121
      Caption = 'OS por Status/Marcas'
      OnClick = TS_SpeedButton11Click
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 1288
    Gradient.ColorStart = 14003626
    inherited btHelp: TTS_SpeedButton
      Left = 1276
    end
    inherited lbCaption: TdxfLabel
      Width = 185
      AutoSize = True
      Caption = 'Assist'#234'ncia T'#233'cnica'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited pnDados: TTS_Panel
    Width = 1165
    Height = 640
    Color = 15456728
    object qdbServicos: TTS_QDBGrid
      Left = 1
      Top = 73
      Width = 1163
      Height = 566
      Bands = <
        item
        end>
      DefaultLayout = True
      HeaderPanelRowCount = 1
      KeyField = 'SERVICO'
      ShowSummaryFooter = True
      SummaryGroups = <
        item
          DefaultGroup = True
          SummaryItems = <
            item
              SummaryField = 'OSNUMERO'
              SummaryFormat = '>OSNUMERO=###0'
              SummaryType = cstCount
            end
            item
              SummaryField = 'VALOR'
              SummaryFormat = '>VALOR=#,###,##0.00'
              SummaryType = cstSum
            end>
          Name = 'Default'
        end>
      SummarySeparator = '|'
      Align = alClient
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      PopupMenu = ppmPadrao
      TabOrder = 0
      OnDblClick = qdbServicosDblClick
      AutoSearchColor = clYellow
      AutoSearchTextColor = clNavy
      BandFont.Charset = DEFAULT_CHARSET
      BandFont.Color = clWindowText
      BandFont.Height = -11
      BandFont.Name = 'MS Sans Serif'
      BandFont.Style = []
      DataSource = C_AssistenciaDs
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
      OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
      OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
      OptionsView = [edgoBandHeaderWidth, edgoHotTrack, edgoRowSelect, edgoShowButtonAlways, edgoUseBitmap]
      PreviewFont.Charset = DEFAULT_CHARSET
      PreviewFont.Color = clBlue
      PreviewFont.Height = -11
      PreviewFont.Name = 'MS Sans Serif'
      PreviewFont.Style = []
      OnCustomDrawCell = qdbServicosCustomDrawCell
      TS_PermitirQuantidade = False
      TS_DescriptionCanChange = False
      TS_AppendOnEnter = False
      RowFooterNodeFont.Charset = DEFAULT_CHARSET
      RowFooterNodeFont.Color = clWindowText
      RowFooterNodeFont.Height = -11
      RowFooterNodeFont.Name = 'Tahoma'
      RowFooterNodeFont.Style = [fsBold]
      TS_AccountFooterStyle = False
      TS_HideGroupHeader = False
      TS_AnotherColor = clWindow
      TS_ReportHeaderStyle = False
      GroupNodeFont.Charset = DEFAULT_CHARSET
      GroupNodeFont.Color = clWindowText
      GroupNodeFont.Height = -11
      GroupNodeFont.Name = 'Tahoma'
      GroupNodeFont.Style = [fsBold]
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
      TS_SelectedColumn = 'OSNUMERO'
      TS_ID = 0
      TS_TipoDescricao = tdVenda
      TS_SummaryFields.Strings = (
        'OSNUMERO;COUNT'
        'VALOR;SUM')
      TS_SummaryFooterQtdText = 'Qtd. Geral:'
      TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
      object qdbServicosOSNUMERO: TdxDBGridMaskColumn
        Caption = 'OS N'#186
        Sorted = csUp
        Width = 86
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OSNUMERO'
        SummaryFooterType = cstCount
        SummaryFooterFormat = '###0'
      end
      object qdbServicosDATAENTRADA: TdxDBGridDateColumn
        Caption = 'Data Entrada'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAENTRADA'
        ShowButtonStyle = sbNone
      end
      object qdbServicosDATAORCAMENTO: TdxDBGridDateColumn
        Caption = 'Data Or'#231'amento'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAORCAMENTO'
        ShowButtonStyle = sbNone
      end
      object qdbServicosDATASERVICO: TdxDBGridDateColumn
        Caption = 'Data Servi'#231'o'
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATASERVICO'
        ShowButtonStyle = sbNone
      end
      object qdbServicosNUMEROSERIE: TdxDBGridMaskColumn
        Caption = 'N'#186' S'#233'rie'
        Width = 150
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROSERIE'
      end
      object qdbServicosDESCEQUIPAMENTO: TdxDBGridMaskColumn
        Caption = 'Equipamento'
        Width = 200
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_EQUIPAMENTO'
      end
      object qdbServicosDESCMODELO: TdxDBGridMaskColumn
        Caption = 'Modelo'
        Width = 180
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_MODELO'
      end
      object qdbServicosDESCMARCA: TdxDBGridMaskColumn
        Caption = 'Marca'
        Width = 160
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESC_MARCA'
      end
      object qdbServicosTECNICO: TdxDBGridMaskColumn
        Caption = 'T'#233'cnico Servi'#231'o'
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TECNICO'
      end
      object qdbServicosSTATUSSERVICO: TdxDBGridMaskColumn
        DisableCustomizing = True
        Visible = False
        Width = 80
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUSSERVICO'
      end
      object qdbServicosTECNICOORCAMENTO: TdxDBGridMaskColumn
        Caption = 'T'#233'cnico Or'#231'amento'
        Width = 172
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TECNICOORCAMENTO'
      end
      object qdbServicosDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Status'
        Width = 174
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUS'
      end
      object qdbServicosLOCAL: TdxDBGridColumn
        Caption = 'Localiza'#231#227'o'
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCAL'
      end
      object qdbServicosValor: TdxDBGridColumn
        Caption = 'Valor'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'VALOR'
        SummaryFooterType = cstSum
        SummaryFooterFormat = '#,###,##0.00'
      end
    end
    object TS_PanelCorner1: TTS_PanelCorner
      Left = 1
      Top = 1
      Width = 1163
      Height = 72
      Align = alTop
      Color = 15456728
      TabOrder = 1
      BoxWithShadow = False
      object TS_Label5: TTS_Label
        Left = 417
        Top = 9
        Width = 42
        Height = 13
        Caption = 'Status:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTecnicoServico: TTS_Label
        Left = 549
        Top = 33
        Width = 84
        Height = 13
        Caption = 'T'#233'cnico Servi'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object Label1: TLabel
        Left = 4
        Top = 10
        Width = 51
        Height = 13
        Caption = 'Periodo de'
      end
      object Label2: TLabel
        Left = 145
        Top = 10
        Width = 16
        Height = 13
        Caption = 'at'#233
      end
      object TS_Label2: TTS_Label
        Left = 257
        Top = 9
        Width = 28
        Height = 13
        Caption = 'O.S.'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 4
        Top = 32
        Width = 66
        Height = 13
        Caption = 'Tipo servi'#231'o:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 651
        Top = 9
        Width = 42
        Height = 13
        Caption = 'Marcas:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTecnicoOrcamento: TTS_Label
        Left = 250
        Top = 32
        Width = 99
        Height = 13
        Caption = 'T'#233'cnico Or'#231'amento:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object cmbTecnicos: TTS_LookupComboBox
        Left = 639
        Top = 30
        Width = 179
        TabOrder = 0
        StyleController = DMProjeto.esRemessa
        OnChange = cmbStatusChange
        ClearKey = 32
        ListFieldName = 'NOME'
        KeyFieldName = 'FAVORECIDO'
        ListSource = C_TecnicoDs
        LookupKeyValue = Null
        Height = 19
      end
      object cbFinalizados: TTS_CheckBox
        Left = 1156
        Top = -2
        Width = 75
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 1
        Visible = False
        Caption = 'Finalizados'
        StyleController = DMProjeto.esRemessa
        OnChange = cbFinalizadosChange
        DisableEdit = False
        Height = 19
      end
      object edDataF: TTS_DateTimePicker
        Left = 1152
        Top = 14
        Width = 76
        TabOrder = 2
        Visible = False
        AutoSize = False
        StyleController = DMProjeto.esRemessa
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
        DateButtons = [btnToday]
        UseEditMask = True
        OnDateChange = edDataFDateChange
        Height = 19
        StoredValues = 4
      end
      object ppeStatus: TTS_PopupEdit
        Left = 459
        Top = 7
        Width = 183
        TabOrder = 3
        AutoSelect = False
        StyleController = DMProjeto.esRemessa
        OnChange = ppeStatusChange
        HideEditCursor = True
        PopupControl = clbStatus
        PopupFormBorderStyle = pbsSysPanel
        PopupFlatBorder = False
        OnCloseUp = ppeStatusCloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object dtDataInicial: TTS_DateTimePicker
        Left = 56
        Top = 7
        Width = 86
        TabOrder = 4
        AutoSize = False
        StyleController = DMProjeto.esRemessa
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
        DateButtons = [btnToday]
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
      object dtDataFinal: TTS_DateTimePicker
        Left = 166
        Top = 7
        Width = 86
        TabOrder = 5
        AutoSize = False
        StyleController = DMProjeto.esRemessa
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
        DateButtons = [btnToday]
        UseEditMask = True
        Height = 19
        StoredValues = 4
      end
      object numOS: TTS_Edit
        Left = 287
        Top = 7
        Width = 121
        TabOrder = 6
        StyleController = DMProjeto.esRemessa
        Height = 19
      end
      object cmbStatusGarantia: TTS_ComboBox
        Left = 71
        Top = 30
        Width = 162
        TabOrder = 7
        StyleController = DMProjeto.esRemessa
        OnChange = cmbStatusGarantiaChange
        Items.Strings = (
          'Todos'
          'Garantia'
          'Fora de Garantia'
          'Retorno')
        Height = 19
      end
      object ppeMarcas: TTS_PopupEdit
        Left = 697
        Top = 7
        Width = 183
        TabOrder = 8
        AutoSelect = False
        StyleController = DMProjeto.esRemessa
        OnChange = ppeStatusChange
        HideEditCursor = True
        PopupControl = clbMarcas
        PopupFormBorderStyle = pbsSysPanel
        PopupFlatBorder = False
        OnCloseUp = ppeStatusCloseUp
        LookupKeyValue = 0
        Height = 19
      end
      object cmbTecnicoOrcamento: TTS_LookupComboBox
        Left = 355
        Top = 30
        Width = 179
        TabOrder = 9
        StyleController = DMProjeto.esRemessa
        OnChange = cmbStatusChange
        ClearKey = 32
        ListFieldName = 'NOME'
        KeyFieldName = 'FAVORECIDO'
        ListSource = C_TecnicoDs
        LookupKeyValue = Null
        Height = 19
      end
    end
    object clbStatus: TTS_CheckListBox
      Left = 795
      Top = 95
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 2
      Visible = False
      DataSet = C_StatusServico
      KeyField = 'STATUSSERVICO'
      ListField = 'DESCRICAO'
      Transparent = False
    end
    object clbMarcas: TTS_CheckListBox
      Left = 435
      Top = 95
      Width = 174
      Height = 147
      BorderStyle = bsNone
      Ctl3D = False
      ItemHeight = 13
      ParentCtl3D = False
      TabOrder = 3
      Visible = False
      DataSet = C_Marcas
      KeyField = 'MARCA'
      ListField = 'DESCRICAO'
      Transparent = False
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 704
    Top = 448
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 604
    Top = 455
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 662
    Top = 198
  end
  inherited Beep: TBTBeeper
    Left = 660
    Top = 450
  end
  inherited FormStorage: TFormStorage
    Left = 612
    Top = 154
  end
  inherited FormsComponent: TFormsComponent
    BeforeClearParams = FormsComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Assist'#234'ncia T'#233'cnica'
    Left = 612
    Top = 208
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 523
    Top = 452
  end
  object Q_Assistencia: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      
        'select  s.servico,s.osnumero,s.dataentrada, s.dataorcamento, s.d' +
        'ataservico, ss.descricao as Status, fa.nome as Tecnico, fav.nome' +
        ' as TecnicoOrcamento, s.localizacao,'
      
        ' c.numeroserie, c.equipamento, S.STATUSSERVICO , l.descricao as ' +
        'Local'
      
        ', (select coalesce( sum(quantidade * valor) , 0) from servicosde' +
        't sd where sd.servico = s.servico) as Valor,'
      ' te.descricao as desc_equipamento, ma.descricao as desc_marca,'
      ' m.descricao as desc_modelo'
      'from servicos s'
      
        '  Left Join localizacaoequipamento l on l.localizacaoequipamento' +
        ' = s.localizacao'
      
        '  left join statusservicos ss on ss.statusservico = s.statusserv' +
        'ico  '
      '  left join favorecidos fa on s.tecnicodaos = fa.favorecido'
      '  left join favorecidos fav on s.tecnico = fav.favorecido'
      
        '  Left Join clientesequipamentos c on c.equipamento = s.equipame' +
        'nto'
      '  Left Join modelos m on m.modelo = c.modelo'
      '  left join marcas ma on ma.marca = m.marca'
      
        '  left join tipoequipamentos te on te.tipoequipamento = m.tipoeq' +
        'uipamento'
      'where SS.statusservico <> 60'
      'Order by  s.osnumero desc')
    Left = 34
    Top = 175
  end
  object P_Assistencia: TDataSetProvider
    DataSet = Q_Assistencia
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 34
    Top = 231
  end
  object C_Assistencia: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Assistencia'
    Left = 37
    Top = 278
    object IntegerField5: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_AssistenciaSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Required = True
    end
    object C_AssistenciaOSNUMERO: TStringField
      FieldName = 'OSNUMERO'
      Size = 8
    end
    object C_AssistenciaDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
    end
    object C_AssistenciaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 30
    end
    object C_AssistenciaTECNICO: TStringField
      FieldName = 'TECNICO'
      Size = 50
    end
    object C_AssistenciaNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Size = 30
    end
    object C_AssistenciaSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
    end
    object C_AssistenciaLOCAL: TStringField
      FieldName = 'LOCAL'
      Size = 30
    end
    object C_AssistenciaVALOR: TFloatField
      FieldName = 'VALOR'
    end
    object C_AssistenciaLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
    end
    object C_AssistenciaEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
    end
    object C_AssistenciaTECNICOORCAMENTO: TStringField
      FieldName = 'TECNICOORCAMENTO'
      Size = 50
    end
    object C_AssistenciaDATAORCAMENTO: TDateField
      FieldName = 'DATAORCAMENTO'
    end
    object C_AssistenciaDATASERVICO: TDateField
      FieldName = 'DATASERVICO'
    end
    object C_AssistenciaDESC_EQUIPAMENTO: TStringField
      FieldName = 'DESC_EQUIPAMENTO'
      Size = 30
    end
    object C_AssistenciaDESC_MARCA: TStringField
      FieldName = 'DESC_MARCA'
      Size = 30
    end
    object C_AssistenciaDESC_MODELO: TStringField
      FieldName = 'DESC_MODELO'
      Size = 60
    end
  end
  object C_AssistenciaDs: TDataSource
    Tag = 100
    DataSet = C_Assistencia
    Left = 36
    Top = 326
  end
  object Q_StatusServico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT STATUSSERVICO, DESCRICAO'
      'FROM  STATUSSERVICOS'
      'ORDER BY  ORDEM')
    Left = 188
    Top = 177
  end
  object P_StatusServico: TDataSetProvider
    DataSet = Q_StatusServico
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 186
    Top = 231
  end
  object C_StatusServico: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_StatusServico'
    Left = 183
    Top = 280
    object IntegerField4: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_StatusServicoSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'STATUSSERVICOS.STATUSSERVICO'
      Required = True
    end
    object C_StatusServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSSERVICOS.DESCRICAO'
      Size = 30
    end
  end
  object C_StatusServicoDs: TDataSource
    Tag = 100
    DataSet = C_StatusServico
    Left = 180
    Top = 327
  end
  object Q_Tecnico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select favorecido, nome'
      'from favorecidos '
      'where tipofavorecido = 3'
      'order by nome')
    Left = 328
    Top = 169
  end
  object P_Tecnico: TDataSetProvider
    DataSet = Q_Tecnico
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 324
    Top = 231
  end
  object C_Tecnico: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tecnico'
    Left = 325
    Top = 278
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TecnicoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Required = True
    end
    object C_TecnicoNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
  end
  object C_TecnicoDs: TDataSource
    Tag = 100
    DataSet = C_Tecnico
    Left = 324
    Top = 327
  end
  object Q_ExportarXML: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    Left = 676
    Top = 281
  end
  object C_MarcasDS: TDataSource
    Tag = 100
    DataSet = C_Marcas
    Left = 436
    Top = 327
  end
  object C_Marcas: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Marcas'
    Left = 439
    Top = 272
    object IntegerField2: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_MarcasMARCA: TIntegerField
      FieldName = 'MARCA'
      Required = True
    end
    object C_MarcasDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_Marcas: TDataSetProvider
    DataSet = Q_Marcas
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 434
    Top = 223
  end
  object Q_Marcas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'select m.marca,m.descricao from marcas m'
      'order by m.descricao')
    Left = 436
    Top = 169
  end
end
