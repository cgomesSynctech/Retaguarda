inherited FrmEntradasReferenciadas: TFrmEntradasReferenciadas
  Left = 263
  Top = 239
  Width = 753
  Height = 284
  Caption = 'FrmEntradasReferenciadas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 622
    Height = 203
    Color = 16116702
    inherited btPesquisar: TTS_SpeedButton
      Visible = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 169
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnDados: TTS_Panel
    Width = 622
    Height = 203
    inherited Grid: TTS_QDBGrid
      Width = 620
      Height = 201
      KeyField = 'ENTRADAREFERENCIADA'
      DataSource = DMEntradasReferenciadas.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CHAVEACESSO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 90
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridENTRADAREFERENCIADA: TdxDBGridMaskColumn
        Visible = False
        Width = 153
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADAREFERENCIADA'
      end
      object GridEMPRESA: TdxDBGridMaskColumn
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESA'
      end
      object GridENTRADA: TdxDBGridMaskColumn
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ENTRADA'
      end
      object GridPDV: TdxDBGridMaskColumn
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PDV'
      end
      object GridTIPODOCUMENTO: TdxDBGridMaskColumn
        Caption = 'Tipo'
        Visible = False
        Width = 75
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPODOCUMENTO'
      end
      object GridCHAVEACESSO: TdxDBGridMaskColumn
        Caption = 'Chave NFe'
        Width = 268
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHAVEACESSO'
      end
      object GridCOO: TdxDBGridMaskColumn
        Width = 55
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COO'
      end
      object GridMODELO: TdxDBGridMaskColumn
        Caption = 'Modelo'
        Width = 59
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODELO'
      end
      object GridECF: TdxDBGridMaskColumn
        Width = 60
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ECF'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 620
      Height = 201
    end
    inherited sbDados: TTS_Panel
      Width = 620
      Height = 201
      Color = 16116702
      object lb_ChaveAcesso: TTS_Label
        Left = 32
        Top = 65
        Width = 89
        Height = 16
        Caption = 'Chave Acesso:'
        FocusControl = df_ChaveAcesso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lb_Modelo: TTS_Label
        Left = 64
        Top = 97
        Width = 57
        Height = 16
        Caption = 'Modelo:'
        FocusControl = df_ChaveAcesso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lb_ECF: TTS_Label
        Left = 184
        Top = 97
        Width = 81
        Height = 16
        Caption = 'N'#250'mero ECF:'
        FocusControl = df_ChaveAcesso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label1: TTS_Label
        Left = 352
        Top = 96
        Width = 81
        Height = 16
        Caption = 'N'#250'mero COO:'
        FocusControl = df_ChaveAcesso
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object df_ChaveAcesso: TTS_DBEdit
        Left = 127
        Top = 64
        Width = 442
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        OnKeyPress = df_ChaveAcessoKeyPress
        DataField = 'CHAVEACESSO'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        MaxLength = 44
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object df_Modelo: TTS_DBEdit
        Left = 127
        Top = 95
        Width = 50
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        DataField = 'MODELO'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object df_ECF: TTS_DBEdit
        Left = 274
        Top = 94
        Width = 71
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        OnKeyPress = df_ECFKeyPress
        DataField = 'ECF'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object df_COO: TTS_DBEdit
        Left = 439
        Top = 94
        Width = 129
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = df_COOKeyPress
        DataField = 'COO'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object rdGroupTipoDoc: TTS_DBRadioGroup
        Left = 37
        Top = 15
        Width = 204
        Height = 36
        Caption = ' Tipo Documento '
        Columns = 2
        Ctl3D = True
        DataField = 'TIPODOCUMENTO'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Cupom'
          'Nota Fiscal')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 4
        TabStop = True
        Values.Strings = (
          '1'
          '2')
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 620
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 737
    inherited lbCaption: TdxfLabel
      Width = 171
      Caption = 'Referenciar Notas'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 706
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 615
    Top = 4
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 482
    Top = 65535
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 258
    Top = 3
  end
  inherited ImgPadrao: TImageList
    Left = 10
    Top = 5
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    Caption = 'Referenciar Notas'
    Left = 562
    Top = 4
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 379
    Top = 65532
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Top = 5
  end
  inherited Beep: TBTBeeper
    Left = 584
    Top = 56
  end
  inherited FormStorage: TFormStorage
    Left = 184
    Top = 8
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 538
    Top = 60
  end
end
