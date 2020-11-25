inherited FRMModelos: TFRMModelos
  Left = 309
  Top = 261
  Height = 287
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 206
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 172
    end
  end
  inherited pnDados: TTS_Panel
    Height = 206
    inherited Grid: TTS_QDBGrid
      Height = 204
      KeyField = 'MODELO'
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CODIGO'
      object GridMODELO: TdxDBGridMaskColumn
        DisableCustomizing = True
        HeaderAlignment = taCenter
        Visible = False
        Width = 70
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODELO'
      end
      object GridCODIGO: TdxDBGridMaskColumn
        Caption = 'C'#243'digo'
        HeaderAlignment = taCenter
        Width = 50
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CODIGO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 202
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridlkTipoEquipamento: TdxDBGridLookupColumn
        Caption = 'Tipo de Equipamento'
        HeaderAlignment = taCenter
        Width = 184
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkTipoEquipamento'
      end
      object GridlkFabricante: TdxDBGridLookupColumn
        Caption = 'Fabricante'
        HeaderAlignment = taCenter
        Visible = False
        Width = 198
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkFabricante'
      end
      object GridlkMarcas: TdxDBGridLookupColumn
        Caption = 'Marca'
        HeaderAlignment = taCenter
        Visible = False
        Width = 198
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkMarcas'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 204
    end
    inherited sbDados: TTS_Panel
      Height = 204
      Color = 15456728
      object TS_Label1: TTS_Label
        Left = 54
        Top = 40
        Width = 55
        Caption = 'Descri'#231#227'o:'
        FocusControl = dfDescricao
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 38
        Top = 15
        Width = 71
        Height = 17
        Caption = 'C'#243'digo:'
        FocusControl = dfCodigo
        Versoes = 'S,P,E'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 5
        Top = 66
        Width = 104
        Height = 13
        Cursor = crHandPoint
        Caption = 'Tipo de Equipamento:'
        FocusControl = cmbTipoEquip
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmTipoEquipamentos'
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 5
        Top = 91
        Width = 104
        Height = 13
        Cursor = crHandPoint
        Caption = 'Fabricante:'
        FocusControl = cmbFabricante
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmFabricantes'
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 5
        Top = 114
        Width = 104
        Height = 13
        Cursor = crHandPoint
        Caption = 'Marca:'
        FocusControl = cmbMarca
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmMarcas'
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 55
        Top = 139
        Width = 55
        Caption = 'Cor :'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object dfDescricao: TTS_DBEdit
        Left = 114
        Top = 37
        Width = 309
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMModelos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
      object dfCodigo: TTS_DBButtonEdit
        Left = 114
        Top = 13
        Width = 124
        Hint = 'gera um novo c'#243'digo automaticamente para o item'
        TabOrder = 0
        DataField = 'CODIGO'
        DataSource = DMModelos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
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
        ClickKey = 13
        OnButtonClick = dfCodigoButtonClick
        Versoes = 'S,P,E'
        Height = 19
        ExistButtons = True
      end
      object cmbTipoEquip: TTS_DBLookupComboBox
        Left = 114
        Top = 62
        Width = 257
        TabOrder = 2
        DataField = 'lkTipoEquipamento'
        DataSource = DMModelos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object cmbFabricante: TTS_DBLookupComboBox
        Left = 114
        Top = 87
        Width = 257
        TabOrder = 3
        DataField = 'lkFabricante'
        DataSource = DMModelos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object cmbMarca: TTS_DBLookupComboBox
        Left = 114
        Top = 112
        Width = 257
        TabOrder = 4
        DataField = 'lkMarcas'
        DataSource = DMModelos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 114
        Top = 136
        Width = 255
        TabOrder = 5
        DataField = 'COR'
        DataSource = DMModelos.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        DistinctEditOn = False
        Height = 19
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 251
      Caption = 'Modelos de Equipamentos'
      Effect3D.ShadowedColor = 14003626
    end
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 402
    Top = 135
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    CamposObrigatorios.Strings = (
      'dfCodigo'
      'dfDescricao'
      'TS_DBEdit1')
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Modelos de Equipamentos'
    FirstEditField = dfDescricao
    Left = 306
    Top = 44
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 403
    Top = 172
  end
  inherited Beep: TBTBeeper
    Left = 400
    Top = 40
  end
  inherited FormStorage: TFormStorage
    Left = 400
    Top = 96
  end
end
