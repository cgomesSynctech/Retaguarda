inherited FrmAssistenciaLaboratorio: TFrmAssistenciaLaboratorio
  Left = 418
  Top = 57
  Width = 734
  Height = 643
  Caption = 'M'#243'dulo de Remessa'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label19: TTS_Label [0]
    Left = 8
    Top = 62
    Width = 43
    Caption = 'Cliente:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  object TS_DBTextEffect1: TTS_DBTextEffect [1]
    Left = 60
    Top = 62
    Width = 417
    Height = 14
    DataField = 'NOME'
    DataSource = DMAssistenciaLaboratorio.C_TabelaDS
    EditOffSet.x = 0
    EditOffSet.y = 0
    AllowEditOnClick = False
    EditFont.Charset = DEFAULT_CHARSET
    EditFont.Color = clWindowText
    EditFont.Height = -11
    EditFont.Name = 'MS Sans Serif'
    EditFont.Style = []
  end
  inherited pnNavigator: TTS_Panel
    Left = 611
    Height = 569
    inherited btLimpar: TTS_SpeedButton
      Visible = False
    end
    inherited btComando1: TTS_SpeedButton
      Caption = '&Status'
      OnClick = btComando1Click
    end
    inherited btComando2: TTS_SpeedButton
      Top = 239
      Caption = '&Or'#231'amento'
      Glyph.Data = {
        C60A0000424DC60A00000000000036000000280000001A0000001A0000000100
        200000000000900A000000000000000000000000000000000000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00100010001000
        10001000100010001000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF001000100000F7FF0000F7FF0010001000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        000000000000100010001000100042F7FF0000F7FF0010001000000000000000
        000000000000000000000000000000000000FF00FF00FF00FF00FF00FF00FF00
        FF00000000006B6B73006B6B73006B6B73006B6B73006B6B73006B6B73008484
        8400848484008484840000000000C6FFFF00FFFFFF0084FFFF0000F7FF0000F7
        FF0000F7FF000000000084848400848484008484840010001000FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00000000006B6B73006B6B73006B6B73006B6B
        73006B6B7300848484008484840000000000FFFFFF004AF7FF0000F7FF0000F7
        FF0000F7FF0000F7FF0000F7FF0000F7FF00848484008484840010001000FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00000000006B6B
        73006B6B73006B6B73006B6B7300848484000000000052C6CE0073FFFF0000F7
        FF0000F7FF000000000000F7FF0000F7FF0000F7FF0000F7FF00848484001000
        1000FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00100010001000
        10001000100000000000000000000000000000000000000000000000000000B5
        BD0000F7FF0000F7FF0000F7FF000000000000F7FF0000F7FF0000F7FF0000F7
        FF0000000000100010001000100010001000FF00FF00FF00FF00FF00FF00FF00
        FF0010001000DEDEE700DEDEDE00DEDEDE00D6D6D600CECECE00C6C6C600BDBD
        BD0042311000000000000000000000000000000000000000000000F7FF0000F7
        FF0018F7FF0039F7FF0000000000737373007373730010001000FF00FF00FF00
        FF00FF00FF00FF00FF0010001000DEDEE700DEDEDE00DEDEDE00D6D6D600CECE
        CE00C6C6C600BDBDBD00B5B5B5004A39100021212100088C940000F7FF0000F7
        FF0000F7FF0000F7FF006BFFFF00FFFFFF000000000073737300737373001000
        1000FF00FF00FF00FF00FF00FF00FF00FF0010001000DEDEE700DEDEDE000000
        000000000000000000000000000000000000000000006B4A100000BDCE0000F7
        FF0000F7FF0000F7FF0000F7FF00FFFFFF00FFFFFF0010181800737373007373
        73007373730010001000FF00FF00FF00FF00FF00FF00FF00FF0010001000DEDE
        E700DEDEDE0000000000DE940000DE940000DE940000DE940000C6840000086B
        730000F7FF0000F7FF0000F7FF0000F7FF00FFFFFF0084FFFF0010181800DE94
        000000000000737373007373730010001000FF00FF00FF00FF00FF00FF00FF00
        FF0010001000DEDEE700DEDEDE0000000000DE940000DE940000DE940000DE94
        00008C630800089CA50000F7FF0000F7FF0000F7FF0000F7FF00000000000000
        0000000000000000000000000000737373007373730010001000FF00FF00FF00
        FF00FF00FF00FF00FF0010001000DEDEE700DEDEDE0000000000DE940000DE94
        0000DE940000DE9400005A42100000BDC60000F7FF0000F7FF0000F7FF000000
        000000F7FF0000F7FF0039F7FF008CFFFF001031390073737300737373001000
        1000FF00FF00FF00FF00FF00FF00FF00FF0010001000DEDEE700DEDEDE000000
        0000E7A50000E7A50000E7A50000E7A50000735A100000B5BD0000F7FF0000F7
        FF0000F7FF000000000000F7FF0000F7FF0073FFFF008CFFFF00293942007373
        73007373730010001000FF00FF00FF00FF00FF00FF00FF00FF0010001000DEDE
        E700DEDEDE0000000000EFB53100EFB53100EFB53100EFB53100AD7B00001018
        210000F7FF0000F7FF0000F7FF0000F7FF0000F7FF0031F7FF00FFFFFF0000B5
        BD0010313900737373007373730010001000FF00FF00FF00FF00FF00FF00FF00
        FF0010001000DEDEE700DEDEDE0000000000F7C67300F7C67300F7C67300EFB5
        3100E7A5000021423900086B730000F7FF0000F7FF0000F7FF00BDFFFF00FFFF
        FF00297B84000000000000000000737373007373730010001000FF00FF00FF00
        FF00FF00FF00FF00FF0010001000DEDEE700DEDEDE0000000000F7C67300F7C6
        7300FFFFFF00FFFFFF00E7A50000DE940000AD730000393921000000000000F7
        FF0008F7FF00087B840000000000DE9400000000000073737300737373001000
        1000FF00FF00FF00FF00FF00FF00FF00FF0010001000DEDEE700DEDEDE000000
        0000F7C67300F7C67300FFFFFF00FFFFFF00E7A50000DE940000DE940000B57B
        0000104A520000F7FF0000F7FF0000000000DE940000DE940000000000007373
        73007373730010001000FF00FF00FF00FF00FF00FF00FF00FF0010001000DEDE
        E700DEDEDE0000000000F7C67300F7C67300F7C67300EFB53100E7A50000DE94
        0000DE940000DE94000000000000000000000000000000000000DE940000DE94
        000000000000737373007373730010001000FF00FF00FF00FF00FF00FF00FF00
        FF0010001000DEDEE700DEDEDE00000000000000000000000000000000000000
        0000000000000000000000000000000000000000000000000000000000000000
        0000000000000000000000000000737373007373730010001000FF00FF00FF00
        FF00FF00FF00FF00FF0010001000DEDEE700DEDEDE00D6D6D600CECECE00C6C6
        C600BDBDBD00B5B5B500ADADAD00A5A5A5009C9C9C00949494008C8C8C008484
        84007B7B7B0073737B0073737300737373007373730073737300737373001000
        1000FF00FF00FF00FF00FF00FF00FF00FF0010001000DEDEE700DEDEDE00D6D6
        D600CECECE00C6C6C600BDBDBD00B5B5B500ADADAD00A5A5A5009C9C9C009494
        94008C8C8C00848484007B7B7B00737B73007373730073737300737373007373
        73007373730010001000FF00FF00FF00FF00FF00FF00FF00FF00100010001000
        1000100010001000100010001000100010001000100010001000100010001000
        1000100010001000100010001000100010001000100010001000100010001000
        100010001000100010001000100010001000FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00FF00
        FF00FF00FF00FF00FF00}
      Visible = True
      OnClick = btComando2Click
    end
    inherited bv2: TTS_Bevel
      Visible = False
    end
    inherited bv3: TTS_Bevel
      Visible = False
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 535
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
    object btImprimir: TTS_SpeedButton [10]
      Left = 1
      Top = 205
      Width = 113
      Height = 34
      Caption = '&Imprimir'
      Glyph.Data = {
        4E030000424D4E030000000000007600000028000000340000001A0000000100
        040000000000D802000000000000000000001000000000000000000000000000
        8000008000000080800080000000800080008080000080808000C0C0C0000000
        FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDDDDDDDD88
        8888888888888888888888880000DDD00000000000000000DDDDDD8887777777
        77777777778888880000DDD0FF88887777777000DDDDDD8887FFFFFFFF888887
        778888880000DDD0FF888877777770700DDDDD8887FFFFFFFF88888787788888
        0000DDD0FF8888777777707700DDDD8887FFFFFFFF888887887788880000DD00
        0000000000000007700DDD887777777777777777788778880000DD0FF8888877
        77777700770DDD887FFFFFFFFF888888778878880000DD0FF888887777777707
        070DDD887FFFFFFFFF8888887F7878880000DD0FF888887777799907700DDD88
        7FFFFFFFFF8888887FF778880000DD0000000000000000077700DD8877777777
        777777777FFF77880000DD00FF888877777777700770DD8877FFFFFFFF888888
        877FF7880000DDD000000000000000077070DD8887777777777777777FF7F788
        0000DDD000FFFFFFFFFFF3007700DD888777FFFFFFFFFFF877FF77880000DDDD
        D0FFAAAAAAAAFF070700DD888887FF88888888FF7F7F77880000DDDDD01FFFFF
        FFFFFF00700DDD8888877FFFFFFFFFFF77F778880000DDDDDD0FFCCCCCCCCCF0
        000DDD8888887FF888888888F77778880000DDDDDD00FFFFFFFFFFF00DDDDD88
        888877FFFFFFFFFFF77888880000DDDDDDD00F999999999F0DDDDD888888877F
        888888888F7888880000DDDDDDDD0FFFFFFFFFFF00DDDD888888887FFFFFFFFF
        FF7788880000DDDDDDDD00FBBBBBBBBBF00DDD8888888877F888888888F77888
        0000DDDDDDDDD00555555555500DDD888888888777777777777778880000DDDD
        DDDDDDDDDDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDD
        DDDDDDDDDDDDDD888888888888888888888888880000DDDDDDDDDDDDDDDDDDDD
        DDDDDD888888888888888888888888880000}
      NumGlyphs = 2
      OnClick = btImprimirClick
      Versoes = 'S,P,E'
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    inherited pnInicioFim: TTS_Panel
      Top = 272
    end
  end
  inherited pnDados: TTS_Panel
    Width = 611
    Height = 569
    inherited Grid: TTS_QDBGrid
      Width = 609
      Height = 567
      Filter.Criteria = {00000000}
      TS_SelectedColumn = 'OSNUMERO'
      object GridOSNUMERO: TdxDBGridMaskColumn
        Caption = 'OS'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OSNUMERO'
      end
      object GridNOME: TdxDBGridMaskColumn
        Caption = 'Cliente'
        Sorted = csUp
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NOME'
      end
      object GridDATAENTRADA: TdxDBGridDateColumn
        Caption = 'Data'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATAENTRADA'
      end
      object GridHORAENTRADA: TdxDBGridTimeColumn
        Caption = 'Hora'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HORAENTRADA'
      end
      object GridlkpStatus: TdxDBGridLookupColumn
        Caption = 'Status'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkpStatus'
      end
      object GridlkpMarca: TdxDBGridLookupColumn
        Caption = 'Marca'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkpMarca'
      end
      object GridlpkModelo: TdxDBGridLookupColumn
        Caption = 'Modelo'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lpkModelo'
      end
      object GridlkpTipoEquipamento: TdxDBGridLookupColumn
        Caption = 'Equipamento'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkpTipoEquipamento'
      end
      object GridlkpFabricante: TdxDBGridLookupColumn
        Caption = 'Fabricante'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkpFabricante'
      end
      object GridCARACTERISTICA: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CARACTERISTICA'
      end
      object GridlkpTipoServico: TdxDBGridLookupColumn
        Caption = 'Tipo Servi'#231'o'
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkpTipoServico'
      end
      object GridSERVICO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'SERVICO'
      end
      object GridCLIENTE: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'CLIENTE'
      end
      object GridEQUIPAMENTO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'EQUIPAMENTO'
      end
      object GridPARTESAGRAGADAS: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'PARTESAGRAGADAS'
      end
      object GridDEFEITOALEGADO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEFEITOALEGADO'
      end
      object GridDEFEITOENCONTRADO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DEFEITOENCONTRADO'
      end
      object GridOBSERVACAO: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'OBSERVACAO'
      end
      object GridDATASAIDA: TdxDBGridDateColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'DATASAIDA'
      end
      object GridHORASAIDA: TdxDBGridTimeColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'HORASAIDA'
      end
      object GridFUNCENTRADA: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCENTRADA'
      end
      object GridTECNICO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TECNICO'
      end
      object GridFUNCSAIDA: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'FUNCSAIDA'
      end
      object GridSTATUSSERVICO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'STATUSSERVICO'
      end
      object GridLOCALIZACAO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'LOCALIZACAO'
      end
      object GridNUMEROSERIE: TdxDBGridMaskColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'NUMEROSERIE'
      end
      object GridTIPOEQUIPAMENTO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'TIPOEQUIPAMENTO'
      end
      object GridMODELO: TdxDBGridMaskColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'MODELO'
      end
      object GridQ_ServicosDet: TdxDBGridColumn
        Visible = False
        BandIndex = 0
        RowIndex = 0
        FieldName = 'Q_ServicosDet'
      end
      object GridlkpLocalizacao: TdxDBGridLookupColumn
        BandIndex = 0
        RowIndex = 0
        FieldName = 'lkpLocalizacao'
      end
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 609
      Height = 567
    end
    inherited sbDados: TTS_Panel
      Width = 609
      Height = 567
      Color = 15456728
      object lbDtEntrada: TTS_Label
        Left = 166
        Top = 5
        Width = 89
        Height = 13
        Caption = 'Data Entrada:'
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 166
        Top = 24
        Width = 89
        Height = 13
        Cursor = crHandPoint
        Caption = 'Status:'
        FocusControl = cmbTipo
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FRMStatusServicos'
        LinkToResult = 0
      end
      object TS_Label6: TTS_Label
        Left = 166
        Top = 43
        Width = 89
        Height = 13
        Cursor = crHandPoint
        Caption = 'Tipo Servi'#231'o:'
        FocusControl = cmbStatus
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsUnderline]
        ParentFont = False
        FormatoTabela = False
        LinkTo = 'FrmTiposServicos'
        LinkToResult = 0
      end
      object lbDataEntrada: TTS_DBTextEffect
        Left = 260
        Top = 5
        Width = 196
        Height = 14
        DataField = 'DATAENTRADA'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'MS Sans Serif'
        EditFont.Style = []
      end
      object TS_Label14: TTS_Label
        Left = 8
        Top = 62
        Width = 43
        Caption = 'Cliente:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbNomeCliente: TTS_DBTextEffect
        Left = 81
        Top = 62
        Width = 417
        Height = 14
        DataField = 'NOME'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'MS Sans Serif'
        EditFont.Style = []
      end
      object TS_Label13: TTS_Label
        Left = 7
        Top = 117
        Width = 50
        Height = 13
        Align = alCustom
        Alignment = taLeftJustify
        Caption = 'T'#233'cnico:'
        Color = 15456728
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentColor = False
        ParentFont = False
        Transparent = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lbTecnico: TTS_DBTextEffect
        Left = 81
        Top = 117
        Width = 373
        Height = 14
        DataField = 'lkTecnico'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'MS Sans Serif'
        EditFont.Style = []
      end
      object TS_Label3: TTS_Label
        Left = 9
        Top = 417
        Width = 186
        Height = 13
        Caption = 'Pe'#231'as/Itens/Servi'#231'os Adquiridos'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label21: TTS_Label
        Left = 7
        Top = 80
        Width = 43
        Caption = 'Cidade:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBTextEffect3: TTS_DBTextEffect
        Left = 80
        Top = 80
        Width = 217
        Height = 14
        DataField = 'CIDADE'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'MS Sans Serif'
        EditFont.Style = []
      end
      object TS_Label22: TTS_Label
        Left = 3
        Top = 98
        Width = 66
        Caption = 'Telefone 2:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBTextEffect4: TTS_DBTextEffect
        Left = 80
        Top = 98
        Width = 89
        Height = 14
        DataField = 'FONE2'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'MS Sans Serif'
        EditFont.Style = []
      end
      object TS_Label24: TTS_Label
        Left = 323
        Top = 98
        Width = 51
        Caption = 'Contato:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBTextEffect6: TTS_DBTextEffect
        Left = 377
        Top = 98
        Width = 93
        Height = 14
        DataField = 'CONTATO'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'MS Sans Serif'
        EditFont.Style = []
      end
      object TS_Label23: TTS_Label
        Left = 303
        Top = 82
        Width = 66
        Caption = 'Telefone 1:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBTextEffect2: TTS_DBTextEffect
        Left = 380
        Top = 82
        Width = 105
        Height = 14
        DataField = 'FONE1'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'MS Sans Serif'
        EditFont.Style = []
      end
      object TS_Label25: TTS_Label
        Left = 178
        Top = 98
        Width = 45
        Caption = 'Celular:'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = [fsBold]
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_DBTextEffect5: TTS_DBTextEffect
        Left = 226
        Top = 98
        Width = 89
        Height = 14
        DataField = 'CELULAR'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        EditOffSet.x = 0
        EditOffSet.y = 0
        AllowEditOnClick = False
        EditFont.Charset = DEFAULT_CHARSET
        EditFont.Color = clWindowText
        EditFont.Height = -11
        EditFont.Name = 'MS Sans Serif'
        EditFont.Style = []
      end
      object pnEquipamento: TTS_Panel
        Tag = -1
        Left = 8
        Top = 138
        Width = 479
        Height = 76
        HelpContext = -1
        BevelOuter = bvNone
        BorderStyle = bsSingle
        Color = 15456728
        Ctl3D = False
        ParentCtl3D = False
        TabOrder = 3
        TabStop = True
        object TS_Label7: TTS_Label
          Left = 10
          Top = 16
          Width = 65
          Caption = '&N'#186' S'#233'rie:'
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label12: TTS_Label
          Left = 0
          Top = 0
          Width = 477
          Height = 17
          Align = alTop
          Alignment = taLeftJustify
          Caption = 'Equipamento:'
          Color = 15456728
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label1: TTS_Label
          Left = 10
          Top = 30
          Width = 65
          Caption = 'Modelo:'
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object imgAcessorios: TTS_Image
          Left = 462
          Top = 91
          Width = 13
          Height = 13
          Cursor = crHandPoint
          Hint = 'Incluir acess'#243'rios cadastrados'
          ParentShowHint = False
          Picture.Data = {
            07544269746D6170DE000000424DDE0000000000000076000000280000000D00
            00000D0000000100040000000000680000000000000000000000100000000000
            0000000000000000800000800000008080008000000080008000808000008080
            8000C0C0C0000000FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFF
            FF00888888888888800088888888888880008888800088888000888880C08888
            8000888880C088888000880000C000088000880CCCCCCC088000880000C00008
            8000888880C088888000888880C0888880008888800088888000888888888888
            80008888888888888000}
          ShowHint = True
          Transparent = True
          OnClick = dfAcessoriosDblClick
        end
        object lbNumeroSerie: TTS_DBTextEffect
          Left = 80
          Top = 16
          Width = 329
          Height = 14
          EditOffSet.x = 0
          EditOffSet.y = 0
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
        end
        object lbNomeModelo: TTS_DBTextEffect
          Left = 80
          Top = 30
          Width = 377
          Height = 14
          EditOffSet.x = 0
          EditOffSet.y = 0
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
        end
        object TS_DBTextEffect7: TTS_DBTextEffect
          Left = 80
          Top = 2
          Width = 329
          Height = 14
          DataField = 'DESCEQUIPAMENTO'
          DataSource = DMAssistenciaLaboratorio.C_TabelaDS
          EditOffSet.x = 0
          EditOffSet.y = 0
          AllowEditOnClick = False
          EditFont.Charset = DEFAULT_CHARSET
          EditFont.Color = clWindowText
          EditFont.Height = -11
          EditFont.Name = 'MS Sans Serif'
          EditFont.Style = []
        end
      end
      object cmbStatus: TTS_DBLookupComboBox
        Left = 256
        Top = 21
        Width = 229
        TabOrder = 1
        DataField = 'lkpStatus'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object cmbTipo: TTS_DBLookupComboBox
        Left = 257
        Top = 40
        Width = 229
        TabOrder = 2
        DataField = 'lkpTipoServico'
        DataSource = DMAssistenciaLaboratorio.C_TabelaDS
        StyleController = DMProjeto.esRemessa
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object pnOSNumero: TTS_Panel
        Tag = -1
        Left = 8
        Top = 4
        Width = 134
        Height = 55
        HelpContext = -1
        BevelOuter = bvNone
        BorderWidth = 1
        BorderStyle = bsSingle
        Color = clWhite
        TabOrder = 0
        object lbOSNum: TTS_Label
          Left = 1
          Top = 1
          Width = 130
          Align = alTop
          Alignment = taLeftJustify
          Caption = 'OS N'#250'mero:'
          Color = 15456728
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -11
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          Transparent = False
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_DBEdit2: TTS_DBEdit
          Tag = -2
          Left = 96
          Top = 49
          Width = 32
          Hint = 'Estado'
          HelpContext = -2
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -9
          Font.Name = 'Tahoma'
          Font.Style = []
          ParentFont = False
          Style.BorderStyle = xbsNone
          TabOrder = 0
          TabStop = False
          DistinctEditOn = False
          Height = 17
        end
        object dfOSNumero: TTS_DBEdit
          Left = -1
          Top = 14
          Width = 134
          Font.Charset = ANSI_CHARSET
          Font.Color = clWindowText
          Font.Height = -19
          Font.Name = 'Tahoma'
          Font.Style = [fsBold]
          ParentFont = False
          TabOrder = 1
          Alignment = taCenter
          DataField = 'OSNUMERO'
          DataSource = DMAssistenciaLaboratorio.C_TabelaDS
          StyleController = DMProjeto.esRemessa
          DistinctEditOn = False
          Height = 40
          StoredValues = 1
        end
      end
      object pcEquip: TTS_PageControl
        Left = 8
        Top = 216
        Width = 480
        Height = 194
        ActivePage = pgCaracteristicas
        OwnerDraw = True
        TabIndex = 0
        TabOrder = 4
        ActivePageIndex = 0
        Transparent = False
        TabColor = clWhite
        TabColorActive = 15456728
        TabFont.Charset = DEFAULT_CHARSET
        TabFont.Color = clWindowText
        TabFont.Height = -11
        TabFont.Name = 'MS Sans Serif'
        TabFont.Style = []
        TabFontActive.Charset = DEFAULT_CHARSET
        TabFontActive.Color = clWindowText
        TabFontActive.Height = -11
        TabFontActive.Name = 'MS Sans Serif'
        TabFontActive.Style = []
        object pgCaracteristicas: TTS_TabSheet
          Caption = 'Caracter'#237'sticas'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          DesignSize = (
            472
            166)
          object TS_Label10: TTS_Label
            Left = 335
            Top = 20
            Width = 76
            Caption = '&Caracteristica:'
            FocusControl = dfDescricaoComp
            Visible = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object dfDescricaoComp: TTS_DBMemo
            Left = 424
            Top = 4
            Width = 39
            Color = 15456728
            TabOrder = 0
            Visible = False
            Anchors = [akLeft, akTop, akRight]
            DataField = 'CARACTERISTICA'
            DataSource = DMAssistenciaLaboratorio.C_TabelaDS
            StyleController = DMProjeto.esRemessa
            Height = 45
          end
          object GroupBox1: TGroupBox
            Left = 0
            Top = 0
            Width = 330
            Height = 32
            Caption = 'Com Embalagem:'
            Enabled = False
            TabOrder = 1
            object rb_caixapapelao: TRadioButton
              Left = 9
              Top = 13
              Width = 113
              Height = 17
              Caption = 'Caixa de Papel'#227'o'
              TabOrder = 0
            end
            object rb_sacoplastico: TRadioButton
              Left = 117
              Top = 13
              Width = 113
              Height = 17
              Caption = 'Saco P'#225'stico'
              TabOrder = 1
            end
            object rb_semembalagem: TRadioButton
              Left = 210
              Top = 13
              Width = 113
              Height = 17
              Caption = 'Sem Embalagem'
              TabOrder = 2
            end
          end
          object GroupBox2: TGroupBox
            Left = 335
            Top = 0
            Width = 129
            Height = 32
            Caption = 'Com Avaria'
            Enabled = False
            TabOrder = 2
            object rb_ava_sim: TRadioButton
              Left = 9
              Top = 14
              Width = 49
              Height = 15
              Caption = 'Sim'
              TabOrder = 0
            end
            object rb_ava_nao: TRadioButton
              Left = 73
              Top = 13
              Width = 49
              Height = 17
              Caption = 'N'#227'o'
              TabOrder = 1
            end
          end
          object GroupBox3: TGroupBox
            Left = 0
            Top = 33
            Width = 464
            Height = 64
            Caption = 'Estado do Produto'
            Enabled = False
            TabOrder = 3
            DesignSize = (
              464
              64)
            object TS_Label8: TTS_Label
              Left = 4
              Top = 44
              Width = 37
              Height = 13
              Caption = 'Obs :'
              FocusControl = cmbStatus
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object cb_arranhadoriscado: TCheckBox
              Left = 8
              Top = 15
              Width = 120
              Height = 17
              Caption = 'Arranhado / Riscado '
              TabOrder = 0
            end
            object cb_manchado: TCheckBox
              Left = 130
              Top = 15
              Width = 72
              Height = 17
              Caption = 'Manchado'
              TabOrder = 1
            end
            object cb_sujo: TCheckBox
              Left = 202
              Top = 15
              Width = 47
              Height = 17
              Caption = 'Sujo'
              TabOrder = 2
            end
            object cb_caboeletrico: TCheckBox
              Left = 251
              Top = 15
              Width = 88
              Height = 17
              Caption = 'Cabo El'#233'trico'
              TabOrder = 3
            end
            object cb_quebrado: TCheckBox
              Left = 342
              Top = 15
              Width = 88
              Height = 17
              Caption = 'Quebrado'
              TabOrder = 4
            end
            object TS_DBMemo1: TTS_DBMemo
              Left = 44
              Top = 34
              Width = 416
              Color = 15456728
              TabOrder = 5
              OnDblClick = dfAcessoriosDblClick
              Anchors = [akLeft, akTop, akRight]
              DataField = 'OBSAVARIA'
              DataSource = DMAssistenciaLaboratorio.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 27
            end
          end
          object GroupBox4: TGroupBox
            Left = 0
            Top = 97
            Width = 465
            Height = 49
            Caption = 'Acess'#243'rios'
            Enabled = False
            TabOrder = 4
            DesignSize = (
              465
              49)
            object TS_Label15: TTS_Label
              Left = 100
              Top = 28
              Width = 37
              Height = 13
              Caption = 'Obs :'
              FocusControl = cmbStatus
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object dfAcessorios: TTS_DBMemo
              Left = 140
              Top = 9
              Width = 321
              Color = 15456728
              TabOrder = 0
              OnDblClick = dfAcessoriosDblClick
              Anchors = [akLeft, akTop, akRight]
              DataField = 'COMACESSORIOOBS'
              DataSource = DMAssistenciaLaboratorio.C_TabelaDS
              StyleController = DMProjeto.esRemessa
              Height = 38
            end
            object rb_ace_sim: TRadioButton
              Left = 8
              Top = 27
              Width = 48
              Height = 17
              Caption = 'Sim'
              TabOrder = 1
            end
            object rb_ace_nao: TRadioButton
              Left = 56
              Top = 27
              Width = 52
              Height = 17
              Caption = 'N'#227'o'
              TabOrder = 2
            end
          end
        end
        object pgAlegado: TTS_TabSheet
          Caption = 'Defeito Alegado'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label4: TTS_Label
            Left = 0
            Top = 0
            Width = 472
            Align = alTop
            Alignment = taLeftJustify
            Caption = 'Defeito Alegado:'
            Color = 15456728
            FocusControl = memoDefeito
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object memoDefeito: TTS_DBMemo
            Left = 0
            Top = 14
            Width = 472
            Align = alClient
            Color = 15456728
            TabOrder = 0
            DataField = 'DEFEITOALEGADO'
            DataSource = DMAssistenciaLaboratorio.C_TabelaDS
            StyleController = DMProjeto.esRemessa
            Height = 152
          end
        end
        object pcEncontrado: TTS_TabSheet
          Caption = 'Defeito Encontrado'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label2: TTS_Label
            Left = 4
            Top = 2
            Width = 477
            Align = alCustom
            Alignment = taLeftJustify
            Caption = 'Defeito Encontrado:'
            Color = 15456728
            FocusControl = memoDefEncontr
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
            Transparent = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label9: TTS_Label
            Left = 4
            Top = 63
            Width = 454
            Align = alCustom
            Alignment = taLeftJustify
            Caption = 'Observa'#231#245'es:'
            Color = 15456728
            FocusControl = memoOBS
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentColor = False
            ParentFont = False
            Transparent = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object memoDefEncontr: TTS_DBMemo
            Left = 1
            Top = 15
            Width = 470
            TabOrder = 0
            CharCase = ecUpperCase
            DataField = 'DEFEITOENCONTRADO'
            DataSource = DMAssistenciaLaboratorio.C_TabelaDS
            MaxLength = 255
            StyleController = DMProjeto.esRemessa
            ScrollBars = ssVertical
            Height = 48
            StoredValues = 2
          end
          object memoOBS: TTS_DBMemo
            Left = 1
            Top = 78
            Width = 470
            TabOrder = 1
            CharCase = ecUpperCase
            DataField = 'OBSERVACAO'
            DataSource = DMAssistenciaLaboratorio.C_TabelaDS
            MaxLength = 255
            StyleController = DMProjeto.esRemessa
            ScrollBars = ssVertical
            Height = 48
            StoredValues = 2
          end
        end
        object tsPagina5: TTS_TabSheet
          Caption = 'Inf. Adicionais'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label26: TTS_Label
            Left = 48
            Top = 135
            Width = 89
            Height = 13
            Caption = 'Data Or'#231'amento :'
            FocusControl = dfDataOrcamento
            FormatoTabela = False
            LinkToResult = 0
          end
          object GroupBox5: TGroupBox
            Left = 0
            Top = 11
            Width = 465
            Height = 49
            Caption = 'Or'#231'amento comunicado'
            TabOrder = 0
            object TS_Label11: TTS_Label
              Left = 100
              Top = 28
              Width = 37
              Height = 13
              Caption = 'Obs :'
              FocusControl = cmbStatus
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object rb_orc_comunicado_sim: TRadioButton
              Left = 8
              Top = 27
              Width = 48
              Height = 17
              Caption = 'Sim'
              TabOrder = 0
            end
            object rb_orc_comunicado_nao: TRadioButton
              Left = 56
              Top = 27
              Width = 52
              Height = 17
              Caption = 'N'#227'o'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object TS_DBMemo2: TTS_DBMemo
              Left = 140
              Top = 9
              Width = 322
              TabOrder = 2
              CharCase = ecUpperCase
              DataField = 'OBSORCCOMUNICADO'
              DataSource = DMAssistenciaLaboratorio.C_TabelaDS
              MaxLength = 100
              StyleController = DMProjeto.esRemessa
              ScrollBars = ssVertical
              Height = 38
              StoredValues = 2
            end
          end
          object GroupBox6: TGroupBox
            Left = 0
            Top = 73
            Width = 465
            Height = 49
            Caption = 'Or'#231'amento aceito'
            TabOrder = 1
            object TS_Label16: TTS_Label
              Left = 100
              Top = 28
              Width = 37
              Height = 13
              Caption = 'Obs :'
              FocusControl = cmbStatus
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object rb_orc_aceito_sim: TRadioButton
              Left = 8
              Top = 27
              Width = 48
              Height = 17
              Caption = 'Sim'
              TabOrder = 0
            end
            object rb_orc_aceito_nao: TRadioButton
              Left = 56
              Top = 27
              Width = 52
              Height = 17
              Caption = 'N'#227'o'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object TS_DBMemo3: TTS_DBMemo
              Left = 140
              Top = 9
              Width = 322
              TabOrder = 2
              CharCase = ecUpperCase
              DataField = 'OBSORCACEITO'
              DataSource = DMAssistenciaLaboratorio.C_TabelaDS
              MaxLength = 100
              StyleController = DMProjeto.esRemessa
              ScrollBars = ssVertical
              Height = 38
              StoredValues = 2
            end
          end
          object dfDataOrcamento: TTS_DBEditDate
            Left = 141
            Top = 133
            Width = 121
            TabOrder = 2
            DataField = 'DATAORCAMENTO'
            DataSource = DMAssistenciaLaboratorio.C_TabelaDS
            StyleController = DMProjeto.esRemessa
            ButtonGlyph.Data = {
              AE040000424DAE0400000000000036040000280000000A0000000A0000000100
              0800000000007800000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
              A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
              FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
              0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
              FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
            DateButtons = [btnToday]
            Height = 19
          end
        end
        object tsimpFiscal: TTS_TabSheet
          Caption = 'Inf.Servi'#231'os'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label20: TTS_Label
            Left = 18
            Top = 149
            Width = 119
            Height = 13
            Caption = 'T'#233'cnico Respons'#225'vel :'
            Font.Charset = ANSI_CHARSET
            Font.Color = clWindowText
            Font.Height = -11
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentFont = False
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label27: TTS_Label
            Left = 48
            Top = 129
            Width = 89
            Height = 13
            Caption = 'Data Servi'#231'o :'
            FocusControl = dfDataServico
            FormatoTabela = False
            LinkToResult = 0
          end
          object GroupBox7: TGroupBox
            Left = 0
            Top = 11
            Width = 465
            Height = 49
            Caption = 'Servi'#231'o pronto'
            TabOrder = 0
            object TS_Label17: TTS_Label
              Left = 100
              Top = 28
              Width = 37
              Height = 13
              Caption = 'Obs :'
              FocusControl = cmbStatus
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object rb_sev_pronto_sim: TRadioButton
              Left = 8
              Top = 27
              Width = 48
              Height = 17
              Caption = 'Sim'
              TabOrder = 0
            end
            object rb_sev_pronto_nao: TRadioButton
              Left = 56
              Top = 27
              Width = 52
              Height = 17
              Caption = 'N'#227'o'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object TS_DBMemo6: TTS_DBMemo
              Left = 140
              Top = 9
              Width = 322
              TabOrder = 2
              CharCase = ecUpperCase
              DataField = 'OBSSERVICOPRONTO'
              DataSource = DMAssistenciaLaboratorio.C_TabelaDS
              MaxLength = 100
              StyleController = DMProjeto.esRemessa
              ScrollBars = ssVertical
              Height = 38
              StoredValues = 2
            end
          end
          object GroupBox8: TGroupBox
            Left = 0
            Top = 73
            Width = 465
            Height = 49
            Caption = 'Servi'#231'o Avisado'
            TabOrder = 1
            object TS_Label18: TTS_Label
              Left = 100
              Top = 28
              Width = 37
              Height = 13
              Caption = 'Obs :'
              FocusControl = cmbStatus
              Font.Charset = ANSI_CHARSET
              Font.Color = clWindowText
              Font.Height = -11
              Font.Name = 'Tahoma'
              Font.Style = []
              ParentFont = False
              FormatoTabela = False
              LinkToResult = 0
            end
            object rb_serv_avisado_sim: TRadioButton
              Left = 8
              Top = 27
              Width = 48
              Height = 17
              Caption = 'Sim'
              TabOrder = 0
            end
            object rb_serv_avisado_nao: TRadioButton
              Left = 56
              Top = 27
              Width = 52
              Height = 17
              Caption = 'N'#227'o'
              Checked = True
              TabOrder = 1
              TabStop = True
            end
            object TS_DBMemo4: TTS_DBMemo
              Left = 140
              Top = 9
              Width = 322
              TabOrder = 2
              CharCase = ecUpperCase
              DataField = 'OBSSERVICOENTREGUE'
              DataSource = DMAssistenciaLaboratorio.C_TabelaDS
              MaxLength = 100
              StyleController = DMProjeto.esRemessa
              ScrollBars = ssVertical
              Height = 38
              StoredValues = 2
            end
          end
          object cmbTecnicos: TTS_LookupComboBox
            Left = 140
            Top = 146
            Width = 253
            TabOrder = 2
            StyleController = DMProjeto.esRemessa
            ClearKey = 32
            ListFieldName = 'NOME'
            KeyFieldName = 'FAVORECIDO'
            ListSource = DMAssistenciaLaboratorio.C_TecnicoDs
            LookupKeyValue = 0
            Height = 19
          end
          object dfDataServico: TTS_DBEditDate
            Left = 140
            Top = 126
            Width = 121
            TabOrder = 3
            DataField = 'DATASERVICO'
            DataSource = DMAssistenciaLaboratorio.C_TabelaDS
            StyleController = DMProjeto.esRemessa
            ButtonGlyph.Data = {
              AE040000424DAE0400000000000036040000280000000A0000000A0000000100
              0800000000007800000000000000000000000001000000000000000000000000
              80000080000000808000800000008000800080800000C0C0C000C0DCC000F0CA
              A6000020400000206000002080000020A0000020C0000020E000004000000040
              20000040400000406000004080000040A0000040C0000040E000006000000060
              20000060400000606000006080000060A0000060C0000060E000008000000080
              20000080400000806000008080000080A0000080C0000080E00000A0000000A0
              200000A0400000A0600000A0800000A0A00000A0C00000A0E00000C0000000C0
              200000C0400000C0600000C0800000C0A00000C0C00000C0E00000E0000000E0
              200000E0400000E0600000E0800000E0A00000E0C00000E0E000400000004000
              20004000400040006000400080004000A0004000C0004000E000402000004020
              20004020400040206000402080004020A0004020C0004020E000404000004040
              20004040400040406000404080004040A0004040C0004040E000406000004060
              20004060400040606000406080004060A0004060C0004060E000408000004080
              20004080400040806000408080004080A0004080C0004080E00040A0000040A0
              200040A0400040A0600040A0800040A0A00040A0C00040A0E00040C0000040C0
              200040C0400040C0600040C0800040C0A00040C0C00040C0E00040E0000040E0
              200040E0400040E0600040E0800040E0A00040E0C00040E0E000800000008000
              20008000400080006000800080008000A0008000C0008000E000802000008020
              20008020400080206000802080008020A0008020C0008020E000804000008040
              20008040400080406000804080008040A0008040C0008040E000806000008060
              20008060400080606000806080008060A0008060C0008060E000808000008080
              20008080400080806000808080008080A0008080C0008080E00080A0000080A0
              200080A0400080A0600080A0800080A0A00080A0C00080A0E00080C0000080C0
              200080C0400080C0600080C0800080C0A00080C0C00080C0E00080E0000080E0
              200080E0400080E0600080E0800080E0A00080E0C00080E0E000C0000000C000
              2000C0004000C0006000C0008000C000A000C000C000C000E000C0200000C020
              2000C0204000C0206000C0208000C020A000C020C000C020E000C0400000C040
              2000C0404000C0406000C0408000C040A000C040C000C040E000C0600000C060
              2000C0604000C0606000C0608000C060A000C060C000C060E000C0800000C080
              2000C0804000C0806000C0808000C080A000C080C000C080E000C0A00000C0A0
              2000C0A04000C0A06000C0A08000C0A0A000C0A0C000C0A0E000C0C00000C0C0
              2000C0C04000C0C06000C0C08000C0C0A000F0FBFF00A4A0A000808080000000
              FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00FDA4A4A4A4A4
              A4A4A4FD0000A4FFFFFFFFFFFFFFFFA40000A4FFFF01FF070107FFA40000A4FF
              FF01FF01FF01FFA40000A4FFFF01FFFFFF01FFA40000A4FFFF01FF010107FFA4
              0000A4FF0101FF01FFFFFFA40000A4FFFF01FF010101FFA40000A4FFFFFFFFFF
              FFFFFFA40000FDA4A4A4A4A4A4A4A4FD0000}
            DateButtons = [btnToday]
            Height = 19
          end
        end
      end
      object dbgPecas: TTS_QDBGrid
        Left = 10
        Top = 435
        Width = 583
        Height = 102
        Bands = <
          item
          end>
        DefaultLayout = True
        HeaderPanelRowCount = 1
        KeyField = 'SERVICODET'
        ShowSummaryFooter = True
        SummaryGroups = <
          item
            DefaultGroup = True
            SummaryItems = <
              item
                SummaryField = 'icSubTotal'
                SummaryFormat = '>icSubTotal=#,###,##0.00'
                SummaryType = cstSum
              end>
            Name = 'Default'
          end>
        SummarySeparator = '|'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        PopupMenu = ppmGrid
        TabOrder = 5
        AutoSearchColor = clYellow
        AutoSearchTextColor = clNavy
        BandFont.Charset = DEFAULT_CHARSET
        BandFont.Color = clWindowText
        BandFont.Height = -11
        BandFont.Name = 'MS Sans Serif'
        BandFont.Style = []
        DataSource = DMAssistenciaLaboratorio.C_ServicosDetDs
        Filter.Criteria = {00000000}
        GroupPanelColor = 15461355
        HeaderColor = 15461355
        HeaderFont.Charset = DEFAULT_CHARSET
        HeaderFont.Color = clWindowText
        HeaderFont.Height = -11
        HeaderFont.Name = 'Tahoma'
        HeaderFont.Style = []
        HideFocusRect = True
        HideSelection = True
        OptionsBehavior = [edgoAutoSort, edgoCaseInsensitive, edgoDragScroll, edgoEditing, edgoEnterShowEditor, edgoImmediateEditor, edgoMultiSort, edgoTabs, edgoTabThrough, edgoVertThrough]
        OptionsDB = [edgoCanAppend, edgoCancelOnExit, edgoCanDelete, edgoCanInsert, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
        OptionsView = [edgoAutoWidth, edgoBandHeaderWidth, edgoHotTrack, edgoShowButtonAlways, edgoUseBitmap]
        PreviewFont.Charset = DEFAULT_CHARSET
        PreviewFont.Color = clBlue
        PreviewFont.Height = -11
        PreviewFont.Name = 'MS Sans Serif'
        PreviewFont.Style = []
        OnCustomDrawCell = dbgPecasCustomDrawCell
        TS_PermitirQuantidade = True
        TS_DescriptionCanChange = True
        TS_AppendOnEnter = True
        RowFooterNodeFont.Charset = DEFAULT_CHARSET
        RowFooterNodeFont.Color = clWindowText
        RowFooterNodeFont.Height = -11
        RowFooterNodeFont.Name = 'Tahoma'
        RowFooterNodeFont.Style = [fsBold]
        TS_AccountFooterStyle = False
        TS_HideGroupHeader = False
        TS_AnotherColor = clWindow
        TS_ReportHeaderStyle = False
        GroupNodeFont.Charset = DEFAULT_CHARSET
        GroupNodeFont.Color = clWindowText
        GroupNodeFont.Height = -11
        GroupNodeFont.Name = 'Tahoma'
        GroupNodeFont.Style = [fsBold]
        TS_SummaryFooterFont.Charset = DEFAULT_CHARSET
        TS_SummaryFooterFont.Color = clWindowText
        TS_SummaryFooterFont.Height = -11
        TS_SummaryFooterFont.Name = 'Tahoma'
        TS_SummaryFooterFont.Style = [fsBold]
        TS_SummaryFooterSelFont.Charset = DEFAULT_CHARSET
        TS_SummaryFooterSelFont.Color = clWindowText
        TS_SummaryFooterSelFont.Height = -11
        TS_SummaryFooterSelFont.Name = 'Tahoma'
        TS_SummaryFooterSelFont.Style = [fsBold]
        TS_LikeString = False
        TS_SelectionColor = 12054783
        TS_SelectionFont.Charset = DEFAULT_CHARSET
        TS_SelectionFont.Color = clWindowText
        TS_SelectionFont.Height = -11
        TS_SelectionFont.Name = 'Tahoma'
        TS_SelectionFont.Style = []
        TS_SelectedColumn = 'CODIGO'
        TS_ID = 0
        TS_ChaveEstrangeira = 'ITEM'
        TS_TipoItem = '1,2,3'
        TS_C_Localizar = DMProjeto.C_LocalizarItens
        TS_ItemColumns = 'CODIGO;REFERENCIA;DESCRICAOITEM=DESCRICAO'
        TS_TipoDescricao = tdVenda
        TS_SummaryFields.Strings = (
          'icSubTotal;SUM')
        TS_SummaryFooterQtdText = 'Qtd. Geral:'
        TS_SummaryFooterQtdSelectedText = 'Qtd. Selecionada:'
        object dbgPecasCODIGO: TdxDBGridButtonColumn
          Caption = 'C'#243'digo'
          HeaderAlignment = taCenter
          Sorted = csUp
          Width = 52
          BandIndex = 0
          RowIndex = 0
          FieldName = 'CODIGO'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgPecasReferencia: TdxDBGridButtonColumn
          Caption = 'Refer'#234'ncia'
          HeaderAlignment = taCenter
          Width = 91
          BandIndex = 0
          RowIndex = 0
          FieldName = 'REFERENCIA'
          Buttons = <
            item
              Default = True
            end>
        end
        object dbgPecasDESCRICAOITEM: TdxDBGridButtonColumn
          Caption = 'Pe'#231'a/Item/Servi'#231'o'
          HeaderAlignment = taCenter
          Width = 202
          BandIndex = 0
          RowIndex = 0
          FieldName = 'DESCRICAOITEM'
          Buttons = <
            item
              Default = True
            end
            item
              Default = False
              Glyph.Data = {
                22020000424D2202000000000000B6000000280000000D0000000D0000000100
                1000030000006C01000000000000000000001000000000000000007C0000E003
                00001F000000000000000000BF0000BF000000BFBF00BF000000BF00BF00BFBF
                0000C0C0C000808080000000FF0000FF000000FFFF00FF000000FF00FF00FFFF
                0000FFFFFF001863186318631863186318631863186318631863186318631863
                0000186318631863186318631863186318631863186318631863186300001863
                1863186318631863000000000000186318631863186318630000186318631863
                1863186300001F00000018631863186318631863000018631863186318631863
                00001F0000001863186318631863186300001863186300000000000000001F00
                00000000000000001863186300001863186300001F001F001F001F001F001F00
                1F0000001863186300001863186300000000000000001F000000000000000000
                1863186300001863186318631863186300001F00000018631863186318631863
                00001863186318631863186300001F0000001863186318631863186300001863
                1863186318631863000000000000186318631863186318630000186318631863
                1863186318631863186318631863186318631863000018631863186318631863
                186318631863186318631863186318630000}
              Kind = bkGlyph
            end>
          OnButtonClick = dbgPecasDESCRICAOITEMButtonClick
        end
        object dbgPecasITEM: TdxDBGridMaskColumn
          HeaderAlignment = taCenter
          Visible = False
          Width = 150
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ITEM'
        end
        object dbgPecaslkUnidade: TdxDBGridLookupColumn
          Caption = 'Und.'
          HeaderAlignment = taCenter
          Width = 41
          BandIndex = 0
          RowIndex = 0
          FieldName = 'lkUnidade'
        end
        object dbgPecasQUANTIDADE: TdxDBGridCurrencyColumn
          Caption = 'Qtd.'
          HeaderAlignment = taCenter
          Width = 45
          BandIndex = 0
          RowIndex = 0
          FieldName = 'QUANTIDADE'
          DisplayFormat = ',0.00;-,0.00'
          Nullable = False
        end
        object dbgPecasVALOR: TdxDBGridCurrencyColumn
          Caption = 'Valor'
          HeaderAlignment = taCenter
          Width = 78
          BandIndex = 0
          RowIndex = 0
          FieldName = 'VALOR'
          DisplayFormat = ',0.00;-,0.00'
          Nullable = False
        end
        object dbgPecasicSubTotal: TdxDBGridColumn
          Caption = 'SubTotal'
          DisableEditor = True
          HeaderAlignment = taCenter
          Width = 72
          BandIndex = 0
          RowIndex = 0
          FieldName = 'icSubTotal'
          SummaryFooterType = cstSum
          SummaryFooterFormat = '#,###,##0.00'
        end
        object dbgPecasUNIDADE: TdxDBGridMaskColumn
          DisableCustomizing = True
          Visible = False
          Width = 77
          BandIndex = 0
          RowIndex = 0
          FieldName = 'UNIDADE'
        end
        object dbgPecasEstoque: TdxDBGridMaskColumn
          Caption = 'Estoque'
          Visible = False
          Width = 133
          BandIndex = 0
          RowIndex = 0
          FieldName = 'ESTOQUE'
        end
      end
      object cmbTecnico: TTS_LookupComboBox
        Left = 78
        Top = 114
        Width = 222
        TabOrder = 6
        StyleController = DMProjeto.esRemessa
        ClearKey = 32
        ListFieldName = 'NOME'
        KeyFieldName = 'FAVORECIDO'
        ListSource = DMAssistenciaLaboratorio.C_TecnicoDs
        LookupKeyValue = 0
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 609
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 726
    Gradient.ColorStart = 14003626
    inherited lbCaption: TdxfLabel
      Width = 169
      Caption = 'Ordem de Servi'#231'o'
      Effect3D.ShadowedColor = 14003626
    end
    inherited btHelp: TTS_SpeedButton
      Left = 687
    end
    object lbFaturado: TdxfLabel
      Left = 434
      Top = 19
      Width = 156
      Height = 23
      Cursor = crHandPoint
      Anchors = [akTop, akRight]
      AutoSize = False
      Caption = 'Faturado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clBlue
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      ParentShowHint = False
      ShowHint = False
      Transparent = True
      Visible = False
      Style = dxfNormal
      Angle = 0
      Effect3D.Style = dxfFun
      Effect3D.Orientation = dxfLeftTop
      Effect3D.Depth = 3
      Effect3D.ShadowedColor = 14859922
      PenWidth = 1
    end
    object edFaturado: TDBEdit
      Left = 312
      Top = 16
      Width = 9
      Height = 21
      DataField = 'FATURADO'
      DataSource = DMEntradasAssistencia.C_TabelaDS
      TabOrder = 0
      Visible = False
      OnChange = edFaturadoChange
    end
    object edStatus: TDBEdit
      Left = 300
      Top = 16
      Width = 9
      Height = 21
      DataField = 'STATUSSERVICO'
      DataSource = DMEntradasAssistencia.C_TabelaDS
      TabOrder = 1
      Visible = False
      OnChange = edStatusChange
    end
    object edOrcamento: TDBEdit
      Left = 324
      Top = 16
      Width = 9
      Height = 21
      DataField = 'ORCAMENTO'
      DataSource = DMEntradasAssistencia.C_TabelaDS
      TabOrder = 2
      Visible = False
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 499
    Top = 474
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 564
    Top = 401
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 560
    Top = 465
    inherited IrPara1: TMenuItem
      Visible = False
    end
    inherited LimparDados: TMenuItem
      Visible = False
    end
  end
  inherited ImgPadrao: TImageList
    Left = 132
    Top = 497
  end
  inherited FormComponent: TFormComponent
    BeforeClearParams = FormComponentBeforeClearParams
    ModuloStyle = DMProjeto.msRemessa
    BarEndColor = 14003626
    CaptionShadow = 14003626
    FormColor = 15456728
    Modulo = 'M'#243'dulo de Remessa'
    Caption = 'Ordem de Servi'#231'o'
    OnEstado_Inicial = FormComponentEstado_Inicial
    OnEstado_Navegacao = FormComponentEstado_Navegacao
    Pesquisar = False
    Incluir = False
    FirstEditField = memoDefEncontr
    Left = 432
    Top = 474
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 351
    Top = 482
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 71
    Top = 497
  end
  inherited Beep: TBTBeeper
    Left = 556
    Top = 340
  end
  inherited FormStorage: TFormStorage
    Left = 258
    Top = 480
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 198
    Top = 496
  end
  object Transition: TTransitionList
    Left = 506
    Top = 341
    object T_Status: TDripTransition
      Milliseconds = 300
    end
  end
  object ppmGrid: TTS_PopupMenu
    Left = 16
    Top = 496
  end
end
