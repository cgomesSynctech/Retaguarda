inherited FrmMensagens: TFrmMensagens
  Height = 372
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Height = 302
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 268
    end
  end
  inherited pnDados: TTS_Panel
    Height = 302
    inherited Grid: TTS_QDBGrid
      Height = 300
      KeyField = 'MENSAGEM'
      Filter.Criteria = {00000000}
      object Grid_icSelecionado: TdxDBGridColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridMENSAGEM: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MENSAGEM'
      end
      object GridIDIOMA: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IDIOMA'
      end
      object GridTITULO: TdxDBGridMaskColumn
        Caption = 'Título'
        HeaderAlignment = taCenter
        Width = 109
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TITULO'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descrição'
        HeaderAlignment = taCenter
        Width = 278
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridMODULO: TdxDBGridMaskColumn
        Caption = 'Módulo'
        HeaderAlignment = taCenter
        Width = 146
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODULO'
      end
      object GridBOTOES: TdxDBGridMaskColumn
        Caption = 'Botões'
        HeaderAlignment = taCenter
        Width = 105
        BandIndex = 0
        RowIndex = 0
        FieldName = 'BOTOES'
      end
      object GridTIPOMSG: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 20
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOMSG'
      end
      object GridIMPORTACAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 21
        BandIndex = 0
        RowIndex = 0
        FieldName = 'IMPORTACAO'
      end
      object GridSOLUCAO: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 428
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SOLUCAO'
      end
      object GridPORQUE: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 428
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PORQUE'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Height = 300
    end
    inherited sbDados: TTS_Panel
      Height = 300
      Color = 13359603
      object TS_Label1: TTS_Label
        Left = -4
        Top = 13
        Width = 83
        Height = 17
        Caption = 'Nº Mensagem:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 14
        Top = 40
        Width = 65
        Height = 17
        Caption = 'Título:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 14
        Top = 63
        Width = 65
        Height = 17
        Caption = 'Descrição:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 14
        Top = 117
        Width = 65
        Height = 17
        Caption = 'Módulo:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 14
        Top = 145
        Width = 65
        Height = 17
        Caption = 'Botões:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 7
        Top = 166
        Width = 65
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Por quê:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 7
        Top = 233
        Width = 65
        Height = 17
        Alignment = taLeftJustify
        Caption = 'Solução:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 85
        Top = 12
        Width = 56
        TabOrder = 0
        DataField = 'MENSAGEM'
        DataSource = DMMensagens.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 85
        Top = 38
        Width = 309
        TabOrder = 1
        DataField = 'TITULO'
        DataSource = DMMensagens.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 19
      end
      object TS_DBEdit4: TTS_DBEdit
        Left = 85
        Top = 117
        Width = 236
        TabOrder = 3
        DataField = 'MODULO'
        DataSource = DMMensagens.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 19
      end
      object TS_DBMemo1: TTS_DBMemo
        Left = 85
        Top = 64
        Width = 308
        TabOrder = 2
        DataField = 'DESCRICAO'
        DataSource = DMMensagens.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 44
      end
      object TS_DBEdit3: TTS_DBEdit
        Left = 85
        Top = 144
        Width = 236
        TabOrder = 4
        DataField = 'BOTOES'
        DataSource = DMMensagens.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 19
      end
      object TS_DBRadioGroup1: TTS_DBRadioGroup
        Left = 315
        Top = 175
        Width = 113
        Height = 100
        Caption = 'Tipo de Mensagem'
        DataField = 'TIPOMSG'
        DataSource = DMMensagens.C_TabelaDS
        Items.Strings = (
          'Question'
          'Information'
          'Exclamation'
          'Handle')
        TabOrder = 5
        Values.Strings = (
          'Q'
          'I'
          'E'
          'H')
      end
      object TS_DBMemo2: TTS_DBMemo
        Left = 6
        Top = 180
        Width = 299
        TabOrder = 6
        DataField = 'PORQUE'
        DataSource = DMMensagens.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 45
      end
      object TS_DBMemo3: TTS_DBMemo
        Left = 6
        Top = 247
        Width = 299
        TabOrder = 7
        DataField = 'SOLUCAO'
        DataSource = DMMensagens.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Height = 45
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 106
      Caption = 'Mensagens'
      Effect3D.ShadowedColor = 9741530
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'Mensagens'
  end
end
