inherited FrmTiposInsumos: TFrmTiposInsumos
  Width = 520
  Height = 382
  Caption = 'M'#243'dulo de Ind'#250'stria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 389
    Height = 301
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 267
    end
  end
  inherited pnDados: TTS_Panel
    Width = 389
    Height = 301
    inherited Grid: TTS_QDBGrid
      Width = 387
      Height = 299
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 387
      Height = 299
    end
    inherited sbDados: TTS_Panel
      Width = 387
      Height = 299
      object TS_Label2: TTS_Label
        Left = 19
        Top = 42
        Width = 50
        Caption = 'C'#243'digo:'
        FocusControl = df_CODIGO
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 11
        Top = 65
        Width = 57
        Caption = 'Descri'#231#227'o:'
        FocusControl = df_Descricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 5
        Top = 89
        Width = 63
        Height = 32
        Caption = 'Observa'#231#227'o:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object df_CODIGO: TTS_DBButtonEdit
        Left = 73
        Top = 39
        Width = 85
        TabOrder = 0
        DataField = 'CODIGO'
        DataSource = DMTiposInsumos.C_TabelaDS
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
        Left = 73
        Top = 62
        Width = 298
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMTiposInsumos.C_TabelaDS
        MaxLength = 150
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object df_Observacao: TTS_DBMemo
        Left = 73
        Top = 85
        Width = 298
        TabOrder = 2
        DataField = 'OBSERVACAO'
        DataSource = DMTiposInsumos.C_TabelaDS
        MaxLength = 500
        StyleController = DMProjeto.esFuncionarios
        ScrollBars = ssVertical
        Height = 111
        StoredValues = 2
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 387
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 504
    inherited lbCaption: TdxfLabel
      Width = 280
      Caption = 'Cadastro de Tipos de Insumo'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 473
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 7
    Top = 276
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 44
    Top = 277
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 274
    Top = 283
  end
  inherited ImgPadrao: TImageList
    Left = 186
    Top = 285
  end
  inherited FormComponent: TFormComponent
    Modulo = 'M'#243'dulo de Ind'#250'stria'
    Caption = 'Cadastro de Tipos de Insumo'
    Left = 30
    Top = 238
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 315
    Top = 284
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 347
    Top = 285
  end
  inherited Beep: TBTBeeper
    Left = 296
    Top = 64
  end
  inherited FormStorage: TFormStorage
    Left = 336
    Top = 64
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 234
    Top = 284
  end
end
