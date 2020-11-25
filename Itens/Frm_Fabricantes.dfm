inherited FrmFabricantes: TFrmFabricantes
  Left = 84
  Top = 128
  Width = 513
  Height = 285
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 390
    Height = 208
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 174
    end
  end
  inherited pnDados: TTS_Panel
    Width = 390
    Height = 208
    inherited Grid: TTS_QDBGrid
      Width = 388
      Height = 206
      KeyField = 'FABRICANTE'
      Filter.Criteria = {00000000}
      OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoUseBitmap]
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridFABRICANTE: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FABRICANTE'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o do Fabricante'
        HeaderAlignment = taCenter
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 388
      Height = 206
    end
    inherited sbDados: TTS_Panel
      Width = 388
      Height = 206
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 15
        Top = 68
        Width = 77
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 16
        Top = 41
        Width = 77
        Caption = 'C'#243'digo:'
        FocusControl = TS_DBEdit2
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 97
        Top = 67
        Width = 230
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMFabricantes.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBButtonEdit
        Left = 97
        Top = 40
        Width = 95
        TabOrder = 0
        OnKeyPress = TS_DBEdit2KeyPress
        DataField = 'CODIGO'
        DataSource = DMFabricantes.C_TabelaDS
        StyleController = DMProjeto.esItens
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              E6000000424DE60000000000000076000000280000000F0000000E0000000100
              0400000000007000000000000000000000001000000000000000000000000000
              BF0000BF000000BFBF00BF000000BF00BF00BFBF0000C0C0C000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FFFFFFFFFFFF
              FFFFFFFFFFFFFFFFFFFFFF0087FFFFFFFFFFFF0B3087FFFFFFFFFFF0BB0087FF
              FFFFFFFF0BB3008FFFFFFFFFF0BBB008FFFFFFFFF00BBB007FFFFFFF00BBB007
              FFF0FFFFF00BBB007FF0FFFFFFF00BB007F0FFFFFFFFF00B0070FFFFFFFFFFF0
              00F0FFFFFFFFFFFFFFF0}
            Kind = bkGlyph
          end>
        OnButtonClick = TS_DBEdit2ButtonClick
        Height = 19
        ExistButtons = True
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 505
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 110
      Caption = 'Fabricantes'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 94
    Top = 183
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 195
    Top = 208
  end
  inherited ImgPadrao: TImageList
    Left = 141
    Top = 179
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    CamposObrigatorios.Strings = (
      'TS_DBEdit1')
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Fabricantes'
    Left = 47
    Top = 117
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 208
    end
  end
end
