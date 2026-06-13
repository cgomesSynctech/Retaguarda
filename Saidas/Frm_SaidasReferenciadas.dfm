inherited FrmSaidasReferenciadas: TFrmSaidasReferenciadas
  Left = 320
  Top = 180
  Width = 722
  Height = 286
  Caption = 'Referenciar Notas'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 599
    Height = 215
    Color = 15196656
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 181
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnDados: TTS_Panel
    Width = 599
    Height = 215
    inherited Grid: TTS_QDBGrid
      Width = 597
      Height = 213
      KeyField = 'SAIDAREFERENCIADA'
      DataSource = DMSaidasReferenciadas.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'CHAVEACESSO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 121
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridSAIDAREFERENCIADA: TdxDBGridMaskColumn
        Visible = False
        Width = 178
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDAREFERENCIADA'
      end
      object GridEMPRESA: TdxDBGridMaskColumn
        Visible = False
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EMPRESA'
      end
      object GridSAIDA: TdxDBGridMaskColumn
        Visible = False
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SAIDA'
      end
      object GridPDV: TdxDBGridMaskColumn
        Visible = False
        Width = 101
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PDV'
      end
      object GridTIPODOCUMENTO: TdxDBGridMaskColumn
        Visible = False
        Width = 147
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPODOCUMENTO'
      end
      object GridCHAVEACESSO: TdxDBGridMaskColumn
        Caption = 'Chave NFe'
        HeaderAlignment = taCenter
        Width = 356
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CHAVEACESSO'
      end
      object GridMODELO: TdxDBGridMaskColumn
        Caption = 'Modelo'
        HeaderAlignment = taCenter
        Width = 65
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODELO'
      end
      object GridECF: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 74
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ECF'
      end
      object GridCOO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Width = 91
        BandIndex = 0
        RowIndex = 0
        FieldName = 'COO'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 597
      Height = 213
    end
    inherited sbDados: TTS_Panel
      Width = 597
      Height = 213
      Color = 15196656
      object lb_ChaveAcesso: TTS_Label
        Left = 40
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
        Left = 72
        Top = 97
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
      object lb_ECF: TTS_Label
        Left = 216
        Top = 97
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
      object TS_Label1: TTS_Label
        Left = 312
        Top = 96
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
      object TS_Label2: TTS_Label
        Left = 56
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
      object rdGroupTipoDoc: TTS_DBRadioGroup
        Left = 45
        Top = 15
        Width = 204
        Height = 36
        Caption = 'Tipo Emiss'#227'o '
        Columns = 2
        Ctl3D = True
        DataField = 'IND_EMIT'
        DataSource = DMSaidasReferenciadas.C_TabelaDS
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
        TabOrder = 0
        TabStop = True
        Values.Strings = (
          '0'
          '1')
      end
      object df_ChaveAcesso: TTS_DBEdit
        Left = 135
        Top = 64
        Width = 442
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 1
        OnExit = df_ChaveAcessoExit
        OnKeyPress = df_ChaveAcessoKeyPress
        DataField = 'CHAVEACESSO'
        DataSource = DMSaidasReferenciadas.C_TabelaDS
        MaxLength = 44
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object df_Modelo: TTS_DBEdit
        Left = 135
        Top = 95
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
        DataSource = DMSaidasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object df_COO: TTS_DBEdit
        Left = 263
        Top = 95
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
        DataSource = DMSaidasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 362
        Top = 94
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
        DataSource = DMSaidasReferenciadas.C_TabelaDS
        MaxLength = 250
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 2
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 135
        Top = 128
        Width = 442
        Color = 14869218
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 5
        OnExit = df_ChaveAcessoExit
        OnKeyPress = df_ChaveAcessoKeyPress
        DataField = 'NOMEPART'
        DataSource = DMSaidasReferenciadas.C_TabelaDS
        MaxLength = 44
        ReadOnly = True
        StyleController = DMProjeto.esFuncionarios
        DistinctEditOn = False
        Height = 19
        StoredValues = 66
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 597
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 714
    inherited lbCaption: TdxfLabel
      Width = 171
      Caption = 'Referenciar Notas'
    end
    inherited btHelp: TTS_SpeedButton
      Left = 675
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 143
    Top = 340
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 314
    Top = 351
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 498
    Top = 363
  end
  inherited ImgPadrao: TImageList
    Left = 42
    Top = 333
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    Modulo = 'Referenciar Notas'
    Caption = 'Referenciar Notas'
    Left = 218
    Top = 348
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 627
    Top = 356
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 443
    Top = 357
  end
  inherited Beep: TBTBeeper
    Left = 96
    Top = 328
  end
  inherited FormStorage: TFormStorage
    Left = 8
    Top = 272
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 562
    Top = 356
  end
end
