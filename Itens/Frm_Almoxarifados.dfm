inherited FrmAlmoxarifados: TFrmAlmoxarifados
  Left = 230
  Top = 204
  Height = 284
  Caption = 'M'#243'dulo de Itens'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 203
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 169
    end
  end
  inherited pnDados: TTS_Panel
    Height = 203
    inherited Grid: TTS_QDBGrid
      Height = 201
      KeyField = 'ALMOXARIFADO'
      DataSource = DMAlmoxarifados.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object GridALMOXARIFADO: TdxDBGridMaskColumn
        Visible = False
        Width = 155
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ALMOXARIFADO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 306
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridORDERRETIRADA: TdxDBGridCheckColumn
        Caption = 'Ord. Retirada'
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ORDENARRETIRADA'
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'N'
        DisplayChecked = 'S'
        DisplayUnChecked = 'N'
        DisplayNull = 'N'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 201
    end
    inherited sbDados: TTS_Panel
      Height = 201
      Color = 14019327
      object TS_Label1: TTS_Label
        Left = 4
        Top = 34
        Width = 126
        Caption = 'Nome do Almoxarifado:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 133
        Top = 32
        Width = 290
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMAlmoxarifados.C_TabelaDS
        StyleController = DMProjeto.esItens
        DistinctEditOn = False
        Height = 19
      end
      object dbcbOrdenarRetirada: TTS_DBCheckBox
        Left = 134
        Top = 62
        Width = 287
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 1
        AutoSize = True
        Caption = 
          'Imprimir Ordem de Retirada De Itens Quando Vendido Deste Almoxar' +
          'ifado'
        DataField = 'ORDENARRETIRADA'
        DataSource = DMAlmoxarifados.C_TabelaDS
        StyleController = DMProjeto.esItens
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'False'
        MultiLine = True
        NullStyle = nsUnchecked
        DisableEdit = False
      end
      object dfControleGondola: TTS_DBCheckBox
        Left = 134
        Top = 96
        Width = 287
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 2
        AutoSize = True
        Caption = 
          'Este Almoxarifado Controla o Resuprimento de Estoque das Gondola' +
          's'
        DataField = 'CONTROLEGONDOLA'
        DataSource = DMAlmoxarifados.C_TabelaDS
        StyleController = DMProjeto.esItens
        ValueChecked = 'S'
        ValueGrayed = 'N'
        ValueUnchecked = 'False'
        MultiLine = True
        NullStyle = nsUnchecked
        DisableEdit = False
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9027548
    inherited lbCaption: TdxfLabel
      Width = 137
      Caption = 'Almoxarifados'
      Effect3D.ShadowedColor = 9027548
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msItens
    BarEndColor = 9027548
    CaptionShadow = 9027548
    FormColor = 14019327
    Modulo = 'M'#243'dulo de Itens'
    Caption = 'Almoxarifados'
    Left = 317
    Top = 8
  end
  inherited FormStorage: TFormStorage
    Left = 313
    Top = 234
  end
end
