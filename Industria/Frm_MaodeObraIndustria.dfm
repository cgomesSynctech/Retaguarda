inherited FrmMaodeObraIndustria: TFrmMaodeObraIndustria
  Left = 212
  Width = 522
  Caption = 'M'#243'dulo de Ind'#250'stria'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 391
  end
  inherited pnDados: TTS_Panel
    Width = 391
    inherited Grid: TTS_QDBGrid
      Width = 389
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 389
    end
    inherited sbDados: TTS_Panel
      Width = 389
      object TS_Label2: TTS_Label
        Left = 23
        Top = 49
        Width = 47
        Caption = 'C'#243'digo:'
        FocusControl = df_CODIGO
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 7
        Top = 75
        Width = 61
        Caption = 'Descri'#231#227'o:'
        FocusControl = df_Descricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 15
        Top = 220
        Width = 52
        Caption = 'Unidade:'
        FocusControl = df_Descricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = -1
        Top = 105
        Width = 69
        Height = 32
        Caption = 'Descri'#231#227'o Detalhada:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object df_CODIGO: TTS_DBButtonEdit
        Left = 72
        Top = 46
        Width = 86
        TabOrder = 0
        DataField = 'CODIGO'
        DataSource = DMMaodeObraIndustria.C_TabelaDS
        MaxLength = 6
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
        Height = 20
        StoredValues = 2
        ExistButtons = True
      end
      object df_Descricao: TTS_DBEdit
        Left = 72
        Top = 72
        Width = 298
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMMaodeObraIndustria.C_TabelaDS
        MaxLength = 100
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object cmbUnidade: TTS_DBLookupComboBox
        Left = 72
        Top = 218
        Width = 173
        Style.BorderColor = 14859922
        TabOrder = 3
        DataField = 'lkUnidade'
        DataSource = DMMaodeObraIndustria.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object df_DescricaoDetalhada: TTS_DBMemo
        Left = 72
        Top = 98
        Width = 298
        TabOrder = 2
        DataField = 'DESCRICAODETALHADA'
        DataSource = DMMaodeObraIndustria.C_TabelaDS
        MaxLength = 1000
        StyleController = DMProjeto.esFuncionarios
        ScrollBars = ssVertical
        Height = 111
        StoredValues = 2
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 389
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 506
    inherited lbCaption: TdxfLabel
      Width = 241
      Caption = 'Cadastro de M'#227'o de Obra'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 475
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 135
    Top = 284
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 234
    Top = 287
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 306
    Top = 223
  end
  inherited ImgPadrao: TImageList
    Left = 186
    Top = 285
  end
  inherited FormComponent: TFormComponent
    Modulo = 'M'#243'dulo de Ind'#250'stria'
    Caption = 'Cadastro de M'#227'o de Obra'
    Left = 74
    Top = 284
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 363
    Top = 292
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 363
    Top = 221
  end
  inherited Beep: TBTBeeper
    Left = 304
    Top = 168
  end
  inherited FormStorage: TFormStorage
    Left = 360
    Top = 168
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 306
    Top = 292
  end
end
