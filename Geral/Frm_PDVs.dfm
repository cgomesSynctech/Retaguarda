inherited FrmPDVs: TFrmPDVs
  Left = 254
  Top = 158
  Width = 486
  Height = 404
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 363
    Height = 334
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 300
    end
  end
  inherited pnDados: TTS_Panel
    Width = 363
    Height = 334
    inherited Grid: TTS_QDBGrid
      Width = 361
      Height = 332
      KeyField = 'PDV'
      DataSource = DMPDVs.C_TabelaDS
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'DESCRICAO'
      object Grid_icSelecionado: TdxDBGridColumn
        Visible = False
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = '_icSelecionado'
      end
      object GridPDV: TdxDBGridMaskColumn
        HeaderAlignment = taCenter
        Visible = False
        Width = 68
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PDV'
      end
      object GridDESCRICAO: TdxDBGridMaskColumn
        Caption = 'Descri'#231#227'o'
        HeaderAlignment = taCenter
        Width = 124
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DESCRICAO'
      end
      object GridNUMEROECF: TdxDBGridMaskColumn
        Caption = 'N'#186' ECF'
        HeaderAlignment = taCenter
        Width = 44
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROECF'
      end
      object GridNUMEROSERIEECF: TdxDBGridMaskColumn
        Caption = 'N'#186' S'#233'rie ECF'
        HeaderAlignment = taCenter
        Width = 107
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROSERIEECF'
      end
      object GridMODELODOC: TdxDBGridMaskColumn
        Caption = 'N'#186' Modelo doc.'
        HeaderAlignment = taCenter
        Width = 79
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODELODOC'
      end
      object GridPORTA: TdxDBGridMaskColumn
        Caption = 'Porta'
        HeaderAlignment = taCenter
        Width = 32
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PORTA'
      end
      object GridATIVO: TdxDBGridCheckColumn
        Caption = 'ECF Ativo?'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'ATIVO'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object GridTEF: TdxDBGridCheckColumn
        Caption = 'Habilitar TEF Discado'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEF'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object GridTEFGP: TdxDBGridCheckColumn
        Caption = 'Ativar GP'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEFGP'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object GridTEFHIPER: TdxDBGridCheckColumn
        Caption = 'Ativar HiperCard'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEFHIPER'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object GridTEFTECBAN: TdxDBGridCheckColumn
        Caption = 'Ativar TecBan'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TEFTECBAN'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
      object GridCONSULTACHEQUE: TdxDBGridCheckColumn
        Caption = 'Consultar Cheques Online'
        HeaderAlignment = taCenter
        Visible = False
        Width = 100
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CONSULTACHEQUE'
        ValueChecked = 'True'
        ValueUnchecked = 'False'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 361
      Height = 332
    end
    inherited sbDados: TTS_Panel
      Width = 361
      Height = 332
      Color = 13359603
      object TS_Shape2: TTS_Shape
        Left = 93
        Top = 265
        Width = 260
        Height = 3
        Brush.Color = 9741530
        Pen.Style = psClear
        Transparent = False
      end
      object Shape1: TShape
        Left = 7
        Top = 176
        Width = 106
        Height = 17
        Brush.Color = 9741530
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object TS_Label1: TTS_Label
        Left = 36
        Top = 27
        Width = 65
        Caption = 'Descri'#231#227'o:'
        FocusControl = TS_DBEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label2: TTS_Label
        Left = 36
        Top = 48
        Width = 65
        Caption = 'N'#186' Terminal:'
        FocusControl = TS_DBEdit2
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label3: TTS_Label
        Left = 36
        Top = 68
        Width = 65
        Caption = 'N'#186' S'#233'rie ECF:'
        FocusControl = TS_DBEdit3
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 10
        Top = 87
        Width = 91
        Caption = 'N'#186' Modelo Doc.:'
        FocusControl = TS_DBEdit4
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 36
        Top = 154
        Width = 65
        Caption = 'N'#186' Porta:'
        FocusControl = TS_DBImageEdit1
        FormatoTabela = False
        LinkToResult = 0
      end
      object Shape3: TShape
        Left = 8
        Top = 112
        Width = 106
        Height = 17
        Brush.Color = 9741530
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object TS_Shape5: TTS_Shape
        Left = 93
        Top = 119
        Width = 260
        Height = 3
        Brush.Color = 9741530
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Label6: TTS_Label
        Left = 9
        Top = 135
        Width = 93
        Caption = 'Impressora Fiscal:'
        FocusControl = dfECF
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label7: TTS_Label
        Left = 9
        Top = 7
        Width = 93
        Caption = 'Nome Computador:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label81: TTS_Label
        Left = 8
        Top = 113
        Width = 104
        Height = 16
        Alignment = taCenter
        Caption = 'Configura'#231#227'o ECF'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Shape1: TTS_Shape
        Left = 92
        Top = 183
        Width = 260
        Height = 3
        Brush.Color = 9741530
        Pen.Style = psClear
        Transparent = False
      end
      object TS_Label8: TTS_Label
        Left = 7
        Top = 177
        Width = 105
        Height = 16
        Alignment = taCenter
        Caption = 'TEF Discado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object Shape2: TShape
        Left = 8
        Top = 258
        Width = 106
        Height = 17
        Brush.Color = 9741530
        Pen.Style = psClear
        Shape = stRoundRect
      end
      object TS_Label9: TTS_Label
        Left = 8
        Top = 259
        Width = 104
        Height = 16
        Alignment = taCenter
        Caption = 'TEF Dedicado'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label10: TTS_Label
        Left = 20
        Top = 302
        Width = 38
        Height = 13
        Caption = 'N'#186' PDV:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label11: TTS_Label
        Left = 119
        Top = 303
        Width = 40
        Height = 13
        Caption = 'Cupons:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBImageEdit1: TTS_DBImageEdit
        Left = 104
        Top = 152
        Width = 64
        TabOrder = 6
        DataField = 'PORTA'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Descriptions.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4')
        Values.Strings = (
          'COM1'
          'COM2'
          'COM3'
          'COM4'
          'COM5')
        Height = 19
      end
      object TS_DBEdit1: TTS_DBEdit
        Left = 104
        Top = 25
        Width = 163
        TabOrder = 1
        DataField = 'DESCRICAO'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit2: TTS_DBEdit
        Left = 104
        Top = 45
        Width = 33
        TabOrder = 2
        DataField = 'NUMEROECF'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit3: TTS_DBEdit
        Left = 104
        Top = 65
        Width = 121
        TabOrder = 3
        DataField = 'NUMEROSERIEECF'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit4: TTS_DBEdit
        Left = 104
        Top = 85
        Width = 29
        TabOrder = 4
        DataField = 'MODELODOC'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object dfECF: TTS_DBImageEdit
        Left = 105
        Top = 131
        Width = 118
        TabOrder = 5
        DataField = 'ECF'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Descriptions.Strings = (
          'Nenhuma'
          'Bematech'
          'Corisco'
          'Schalter'
          'Urano'
          'AFRAC - Schalter'
          'AFRAC - Sweda'
          'AFRAC - Dataregis'
          'Elgin'
          'Sweda'
          'Daruma')
        ImageIndexes.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        Values.Strings = (
          '0'
          '1'
          '2'
          '3'
          '4'
          '5'
          '6'
          '7'
          '8'
          '9'
          '10')
        Height = 19
      end
      object TS_DBButtonEdit1: TTS_DBButtonEdit
        Left = 104
        Top = 5
        Width = 184
        TabOrder = 0
        DataField = 'MAQUINA'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        Buttons = <
          item
            Default = True
            Glyph.Data = {
              36050000424D3605000000000000360400002800000010000000100000000100
              0800000000000001000000000000000000000001000000000000000000003300
              00006600000099000000CC000000FF0000000033000033330000663300009933
              0000CC330000FF33000000660000336600006666000099660000CC660000FF66
              000000990000339900006699000099990000CC990000FF99000000CC000033CC
              000066CC000099CC0000CCCC0000FFCC000000FF000033FF000066FF000099FF
              0000CCFF0000FFFF000000003300330033006600330099003300CC003300FF00
              330000333300333333006633330099333300CC333300FF333300006633003366
              33006666330099663300CC663300FF6633000099330033993300669933009999
              3300CC993300FF99330000CC330033CC330066CC330099CC3300CCCC3300FFCC
              330000FF330033FF330066FF330099FF3300CCFF3300FFFF3300000066003300
              66006600660099006600CC006600FF0066000033660033336600663366009933
              6600CC336600FF33660000666600336666006666660099666600CC666600FF66
              660000996600339966006699660099996600CC996600FF99660000CC660033CC
              660066CC660099CC6600CCCC6600FFCC660000FF660033FF660066FF660099FF
              6600CCFF6600FFFF660000009900330099006600990099009900CC009900FF00
              990000339900333399006633990099339900CC339900FF339900006699003366
              99006666990099669900CC669900FF6699000099990033999900669999009999
              9900CC999900FF99990000CC990033CC990066CC990099CC9900CCCC9900FFCC
              990000FF990033FF990066FF990099FF9900CCFF9900FFFF99000000CC003300
              CC006600CC009900CC00CC00CC00FF00CC000033CC003333CC006633CC009933
              CC00CC33CC00FF33CC000066CC003366CC006666CC009966CC00CC66CC00FF66
              CC000099CC003399CC006699CC009999CC00CC99CC00FF99CC0000CCCC0033CC
              CC0066CCCC0099CCCC00CCCCCC00FFCCCC0000FFCC0033FFCC0066FFCC0099FF
              CC00CCFFCC00FFFFCC000000FF003300FF006600FF009900FF00CC00FF00FF00
              FF000033FF003333FF006633FF009933FF00CC33FF00FF33FF000066FF003366
              FF006666FF009966FF00CC66FF00FF66FF000099FF003399FF006699FF009999
              FF00CC99FF00FF99FF0000CCFF0033CCFF0066CCFF0099CCFF00CCCCFF00FFCC
              FF0000FFFF0033FFFF0066FFFF0099FFFF00CCFFFF00FFFFFF00000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000000000000000
              0000000000000000000000000000000000000000000000000000ACACACACACAC
              ACACACACAC810000ACACACACACACACACACACACAC81AC818100AC000000000000
              0000000000D7D7D7810081D7D7D7D7D7D7D7D7D7D7818181AC00AC8100AC00AC
              00AC00AC00AC81D7AC81ACAC81008100818181008100008100ACACAC81ACACAC
              ACACACACAC81AC8100ACACACAC81000000000000000081AC00ACACACAC81D7AC
              ACACACACAC81008181ACACACAC81D70305050505AC818100ACACACACAC81D703
              05050505AC818100ACACACACAC81D70323050505AC818100ACACACACAC81D703
              03030303AC818100ACACACACAC81D7D7D7D7D7D7AC818100ACACACACACAC81AC
              ACACACACACAC8100ACACACACACACAC8181818181818181ACACAC}
            Kind = bkGlyph
          end>
        OnButtonClick = TS_DBButtonEdit1ButtonClick
        Height = 19
        ExistButtons = True
      end
      object cbECFAtivo: TTS_DBCheckBox
        Left = 176
        Top = 153
        Width = 49
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 7
        Caption = 'Ativo'
        DataField = 'ATIVO'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_DBCheckBox1: TTS_DBCheckBox
        Left = 16
        Top = 196
        Width = 89
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 8
        Caption = 'Habilitar TEF'
        DataField = 'TEF'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_DBCheckBox2: TTS_DBCheckBox
        Left = 136
        Top = 196
        Width = 177
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 9
        Caption = 'Ativar GP - Gerenciador Padr'#227'o'
        DataField = 'TEFGP'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_DBCheckBox3: TTS_DBCheckBox
        Left = 16
        Top = 214
        Width = 105
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 10
        Caption = 'Ativar HiperCard'
        DataField = 'TEFHIPER'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_DBCheckBox4: TTS_DBCheckBox
        Left = 136
        Top = 214
        Width = 105
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 11
        Caption = 'Ativar TecBan'
        DataField = 'TEFTECBAN'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_DBCheckBox5: TTS_DBCheckBox
        Left = 16
        Top = 233
        Width = 153
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 12
        Caption = 'Consultar Cheques Online'
        DataField = 'CONSULTACHEQUE'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_DBCheckBox6: TTS_DBCheckBox
        Left = 16
        Top = 278
        Width = 89
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 13
        Caption = 'Habilitar TEF'
        DataField = 'TEFDEDICADO'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_DBCheckBox7: TTS_DBCheckBox
        Left = 136
        Top = 278
        Width = 153
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = btsSimple
        Style.HotTrack = False
        TabOrder = 14
        Caption = 'Consultar Cheques Online'
        DataField = 'CHEQUEDEDICADO'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
        Height = 19
      end
      object TS_DBEdit5: TTS_DBEdit
        Left = 62
        Top = 300
        Width = 50
        TabOrder = 15
        DataField = 'PDVDEDICADO'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
      object TS_DBEdit6: TTS_DBEdit
        Left = 161
        Top = 302
        Width = 189
        TabOrder = 16
        DataField = 'DIRETORIOCUPONS'
        DataSource = DMPDVs.C_TabelaDS
        StyleController = DMProjeto.esGeral
        DistinctEditOn = False
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 361
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 478
    Gradient.ColorStart = 9741530
    inherited lbCaption: TdxfLabel
      Width = 49
      Caption = 'PDVs'
      Effect3D.ShadowedColor = 9741530
    end
    inherited btHelp: TTS_SpeedButton
      Left = 443
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 407
    Top = 228
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 436
    Top = 205
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 370
    Top = 259
  end
  inherited ImgPadrao: TImageList
    Left = 418
  end
  inherited FormComponent: TFormComponent
    BeforeLoadKey = FormComponentBeforeLoadKey
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 9741530
    CaptionShadow = 9741530
    FormColor = 13359603
    Modulo = 'Cadastros Gerais'
    Caption = 'PDVs'
    OnGravou = FormComponentGravou
    Left = 418
    Top = 157
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 451
    Top = 300
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 363
    Top = 149
  end
  inherited Beep: TBTBeeper
    Left = 400
    Top = 88
  end
  inherited FormStorage: TFormStorage
    Left = 344
    Top = 96
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 386
    Top = 308
  end
end
