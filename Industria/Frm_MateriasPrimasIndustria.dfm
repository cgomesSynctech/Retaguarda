inherited FrmMateriasPrimasIndustria: TFrmMateriasPrimasIndustria
  Left = 306
  Top = 102
  Width = 692
  Height = 311
  Caption = 'M'#243'dulo de Ind'#250'stria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 561
    Height = 230
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 196
    end
  end
  inherited pnDados: TTS_Panel
    Width = 561
    Height = 230
    inherited Grid: TTS_QDBGrid
      Width = 559
      Height = 228
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 559
      Height = 228
    end
    inherited sbDados: TTS_Panel
      Width = 559
      Height = 228
      object TS_Label2: TTS_Label
        Left = 36
        Top = 18
        Width = 46
        Caption = 'C'#243'digo:'
        FocusControl = df_CODIGO
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 20
        Top = 42
        Width = 61
        Caption = 'Descri'#231#227'o:'
        FocusControl = df_Descricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 11
        Top = 66
        Width = 70
        Height = 23
        Caption = 'Observa'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object df_CODIGO: TTS_DBButtonEdit
        Left = 86
        Top = 15
        Width = 85
        TabOrder = 0
        DataField = 'CODIGO'
        DataSource = DMMateriasPrimasIndustria.C_TabelaDS
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
        Left = 86
        Top = 39
        Width = 427
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMMateriasPrimasIndustria.C_TabelaDS
        MaxLength = 30
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object df_Observacao: TTS_DBMemo
        Left = 86
        Top = 63
        Width = 427
        TabOrder = 2
        DataField = 'OBSERVACAO'
        DataSource = DMMateriasPrimasIndustria.C_TabelaDS
        MaxLength = 500
        StyleController = DMProjeto.esFuncionarios
        ScrollBars = ssVertical
        Height = 122
        StoredValues = 2
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 559
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 676
    inherited lbCaption: TdxfLabel
      Width = 244
      Caption = 'Cadastro Mat'#233'rias Primas'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 645
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 343
    Top = 10
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 522
    Top = 13
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 514
    Top = 155
  end
  inherited ImgPadrao: TImageList
    Left = 26
    Top = 163
  end
  inherited FormComponent: TFormComponent
    Modulo = 'M'#243'dulo de Ind'#250'stria'
    Caption = 'Cadastro Mat'#233'rias Primas'
    Left = 442
    Top = 10
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 395
    Top = 52
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 451
    Top = 53
  end
  inherited Beep: TBTBeeper
    Left = 248
    Top = 48
  end
  inherited FormStorage: TFormStorage
    Left = 296
    Top = 48
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 514
    Top = 100
  end
end
