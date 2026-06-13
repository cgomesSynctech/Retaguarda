inherited FrmEntradasReferenciadas: TFrmEntradasReferenciadas
  Left = 263
  Top = 239
  Width = 636
  Height = 284
  Caption = 'FrmEntradasReferenciadas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 513
    Height = 213
    Color = 16116702
    inherited btPesquisar: TTS_SpeedButton
      Visible = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 179
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnDados: TTS_Panel
    Width = 513
    Height = 213
    inherited Grid: TTS_QDBGrid
      Width = 511
      Height = 211
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
      Width = 511
      Height = 211
    end
    inherited sbDados: TTS_Panel
      Width = 511
      Height = 211
      Color = 16116702
      object lb_ChaveAcesso: TTS_Label
        Left = 14
        Top = 51
        Width = 167
        Height = 16
        Caption = 'Informe a Chave de Acesso:'
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
      object TS_Label2: TTS_Label
        Left = 32
        Top = 105
        Width = 57
        Height = 16
        Caption = 'Numero :'
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
      object TS_Label3: TTS_Label
        Left = 176
        Top = 105
        Width = 41
        Height = 16
        Caption = 'Serie :'
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
      object TS_Label4: TTS_Label
        Left = 272
        Top = 104
        Width = 41
        Height = 16
        Caption = 'Data :'
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
      object TS_Label5: TTS_Label
        Left = 32
        Top = 129
        Width = 74
        Height = 16
        Caption = 'Participante :'
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
        Left = 27
        Top = 68
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
      object TS_DBRadioGroup1: TTS_DBRadioGroup
        Left = 21
        Top = 7
        Width = 204
        Height = 36
        Caption = 'Tipo Emiss'#227'o '
        Columns = 2
        Ctl3D = True
        DataField = 'IND_EMIT'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        Items.Strings = (
          'Propria'
          'Terceiros')
        ParentCtl3D = False
        ParentFont = False
        TabOrder = 1
        TabStop = True
        Values.Strings = (
          '0'
          '1')
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 95
        Top = 103
        Width = 74
        Color = 14869218
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        DataField = 'NUMERO'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 223
        Top = 103
        Width = 34
        Color = 14869218
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        OnKeyPress = df_COOKeyPress
        DataField = 'SER'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object TS_DBEdit3: TTS_DBEdit
        Left = 322
        Top = 102
        Width = 95
        Color = 14869218
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 4
        OnKeyPress = df_ECFKeyPress
        DataField = 'DT_DOC'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object TS_DBEdit4: TTS_DBEdit
        Left = 112
        Top = 128
        Width = 375
        Color = 14869218
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnKeyPress = df_ChaveAcessoKeyPress
        DataField = 'NOMEPART'
        DataSource = DMEntradasReferenciadas.C_TabelaDS
        MaxLength = 44
        ReadOnly = True
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 66
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 511
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 628
    inherited lbCaption: TdxfLabel
      Width = 171
      Caption = 'Referenciar Notas'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 589
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
