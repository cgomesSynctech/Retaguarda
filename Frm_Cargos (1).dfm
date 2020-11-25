inherited FrmCargos: TFrmCargos
  Left = 477
  Top = 268
  Width = 469
  Height = 287
  Caption = 'Funcion'#225'rios'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 346
    Height = 217
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 183
    end
  end
  inherited pnDados: TTS_Panel
    Width = 346
    Height = 217
    inherited dxTreeListCampos: TdxTreeList [0]
      Width = 344
      Height = 215
      inherited dxTreeListCampo: TdxTreeListColumn
        Width = 148
      end
      inherited dxTreeListObrig: TdxTreeListCheckColumn
        Width = 72
      end
      inherited dxTreeListLeitura: TdxTreeListCheckColumn
        Width = 65
      end
      inherited dxTreeListInvisivel: TdxTreeListCheckColumn
        Width = 57
      end
    end
    inherited Grid: TTS_QDBGrid [1]
      Width = 344
      Height = 215
      KeyField = 'CARGO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridCARGO: TdxDBGridMaskColumn
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARGO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        Width = 296
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
    end
    inherited sbDados: TTS_Panel
      Width = 344
      Height = 215
      Color = 15396297
      object TS_Label1: TTS_Label
        Left = 0
        Top = 73
        Width = 89
        Caption = 'Nome do Cargo:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 1
        Top = 50
        Width = 89
        Caption = 'C'#243'digo:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 94
        Top = 70
        Width = 221
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMCargos.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit1: TTS_DBButtonEdit
        Left = 94
        Top = 47
        Width = 85
        TabOrder = 0
        OnKeyPress = TS_DBEdit1KeyPress
        DataField = 'CODIGO'
        DataSource = DMCargos.C_TabelaDS
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
        OnButtonClick = TS_DBEdit1ButtonClick
        Height = 19
        ExistButtons = True
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 344
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 461
    Gradient.ColorStart = 12240214
    inherited lbCaption: TdxfLabel
      Width = 66
      Caption = 'Cargos'
      Effect3D.ShadowedColor = 12240214
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msFuncionarios
    CamposObrigatorios.Strings = (
      'dfDescricao')
    BarEndColor = 12240214
    CaptionShadow = 12240214
    FormColor = 15396297
    Modulo = 'Funcion'#225'rios'
    Caption = 'Cargos'
  end
  inherited ppmHelp: TTS_PopupMenu
    inherited Ajuda1: TMenuItem
      HelpContext = 65
    end
  end
end
