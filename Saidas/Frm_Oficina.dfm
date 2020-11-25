inherited FrmOficina: TFrmOficina
  Left = 442
  Top = 138
  Width = 661
  Height = 546
  Caption = 'Cadastro de Oficina'
  PixelsPerInch = 96
  TextHeight = 13
  object TS_Label3: TTS_Label [0]
    Left = 32
    Top = 126
    Width = 62
    Height = 19
    Anchors = []
    Caption = 'Descri'#231#227'o:'
    FocusControl = edDataEntrada
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    FormatoTabela = False
    LinkToResult = 0
  end
  inherited pnNavigator: TTS_Panel
    Left = 530
    Height = 465
    inherited btPesquisar: TTS_SpeedButton
      Visible = False
    end
    inherited btComando1: TTS_SpeedButton
      Caption = 'Finalizar'
      Visible = True
      OnClick = btComando1Click
    end
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 431
    end
    inherited btIR_Para: TTS_SpeedButton
      Visible = False
    end
    inherited pnAvancaRecua: TTS_Panel
      inherited btPrevReg: TTS_SpeedButton
        Visible = False
      end
      inherited btProxReg: TTS_SpeedButton
        Visible = False
      end
      inherited btPrimeiroReg: TTS_SpeedButton
        Visible = False
      end
      inherited btUltimoReg: TTS_SpeedButton
        Visible = False
      end
    end
  end
  inherited pnDados: TTS_Panel
    Width = 530
    Height = 465
    inherited Grid: TTS_QDBGrid
      Width = 528
      Height = 463
      TabOrder = 2
      Filter.Criteria = {00000000}
    end
    inherited dxTreeListCampos: TdxTreeList
      Width = 528
      Height = 463
    end
    inherited sbDados: TTS_Panel
      Width = 528
      Height = 463
      Color = 16116702
      TabOrder = 1
      object lblDescricao: TTS_Label
        Left = 87
        Top = 22
        Width = 68
        Height = 19
        Caption = 'Descri'#231#227'o:'
        FocusControl = edDataEntrada
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label4: TTS_Label
        Left = 29
        Top = 73
        Width = 126
        Height = 23
        Caption = 'Estado Equipamento:'
        FocusControl = edDataEntrada
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object TS_Label5: TTS_Label
        Left = 29
        Top = 277
        Width = 67
        Height = 23
        Caption = 'Mec'#226'nico:'
        FocusControl = edDataEntrada
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object lblVendedor: TTS_Label
        Left = 29
        Top = 312
        Width = 67
        Height = 23
        Caption = 'Vendedor:'
        FocusControl = edDataEntrada
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        FormatoTabela = False
        LinkToResult = 0
      end
      object gbDadosEntrada: TGroupBox
        Left = 29
        Top = 134
        Width = 464
        Height = 52
        Caption = ' Dados Entrada '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 2
        DesignSize = (
          464
          52)
        object lblDataEntrada: TTS_Label
          Left = 8
          Top = 22
          Width = 46
          Anchors = []
          Caption = 'Data:'
          FocusControl = edDataEntrada
          FormatoTabela = False
          LinkToResult = 0
        end
        object lblHora: TTS_Label
          Left = 208
          Top = 22
          Width = 46
          Anchors = []
          Caption = 'Hora:'
          FocusControl = edDataEntrada
          FormatoTabela = False
          LinkToResult = 0
        end
        object edDataEntrada: TTS_DBEditDate
          Left = 65
          Top = 21
          Width = 111
          TabOrder = 0
          Anchors = []
          DataField = 'DATAENTRADA'
          DataSource = DMOficina.C_TabelaDS
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
          Height = 20
        end
        object teHoraEntrada: TTS_DBTimeEdit
          Left = 264
          Top = 21
          Width = 111
          TabOrder = 1
          Anchors = []
          DataField = 'HORAENTRADA'
          DataSource = DMOficina.C_TabelaDS
          StyleController = DMProjeto.esRemessa
          FormatoAMPM = False
          Height = 20
          StoredValues = 4
        end
      end
      object memoDescricao: TTS_DBMemo
        Left = 168
        Top = 22
        Width = 325
        TabOrder = 0
        DataField = 'DESCRICAO'
        DataSource = DMOficina.C_TabelaDS
        MaxLength = 50
        StyleController = DMProjeto.esRemessa
        ScrollBars = ssVertical
        Height = 41
        StoredValues = 2
      end
      object gbDadosSaida: TGroupBox
        Left = 29
        Top = 202
        Width = 464
        Height = 52
        Caption = ' Dados Sa'#237'da '
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        TabOrder = 3
        DesignSize = (
          464
          52)
        object TS_Label1: TTS_Label
          Left = 8
          Top = 22
          Width = 46
          Anchors = []
          Caption = 'Data:'
          FocusControl = edDataSaida
          FormatoTabela = False
          LinkToResult = 0
        end
        object TS_Label2: TTS_Label
          Left = 208
          Top = 22
          Width = 46
          Anchors = []
          Caption = 'Hora:'
          FocusControl = edDataSaida
          FormatoTabela = False
          LinkToResult = 0
        end
        object edDataSaida: TTS_DBEditDate
          Left = 65
          Top = 21
          Width = 111
          TabOrder = 0
          Anchors = []
          DataField = 'DATAENTREGA'
          DataSource = DMOficina.C_TabelaDS
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
          Height = 20
        end
        object teHoraSaida: TTS_DBTimeEdit
          Left = 264
          Top = 21
          Width = 111
          TabOrder = 1
          Anchors = []
          DataField = 'HORAENTREGA'
          DataSource = DMOficina.C_TabelaDS
          StyleController = DMProjeto.esRemessa
          FormatoAMPM = False
          Height = 20
          StoredValues = 4
        end
      end
      object chkEmOficina: TTS_DBCheckBox
        Left = 29
        Top = 357
        Width = 137
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = bts3D
        Style.HotTrack = False
        TabOrder = 6
        AutoSize = True
        Caption = 'Produto em Oficina'
        DataField = 'EMOFICINA'
        DataSource = DMOficina.C_TabelaDS
        StyleController = DMProjeto.esClientes
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
      end
      object chkServicoPronto: TTS_DBCheckBox
        Left = 29
        Top = 394
        Width = 137
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Tahoma'
        Font.Style = []
        ParentFont = False
        Style.BorderStyle = xbsNone
        Style.ButtonStyle = bts3D
        Style.HotTrack = False
        TabOrder = 7
        AutoSize = True
        Caption = 'Servi'#231'o Pronto'
        DataField = 'SERVICOPRONTO'
        DataSource = DMOficina.C_TabelaDS
        StyleController = DMProjeto.esClientes
        ValueChecked = 'S'
        ValueUnchecked = 'N'
        NullStyle = nsUnchecked
        DisableEdit = False
      end
      object cmbMecanico: TTS_DBLookupComboBox
        Left = 112
        Top = 276
        Width = 293
        Hint = 'Informe o m'#234'canico respons'#225'vel pela servi'#231'o.'
        Style.BorderColor = 14859922
        TabOrder = 4
        DataField = 'lkMecanico'
        DataSource = DMOficina.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
      object memoEquipamento: TTS_DBMemo
        Left = 168
        Top = 74
        Width = 325
        TabOrder = 1
        DataField = 'ESTADOEQUIPAMENTO'
        DataSource = DMOficina.C_TabelaDS
        MaxLength = 50
        StyleController = DMProjeto.esRemessa
        ScrollBars = ssVertical
        Height = 41
        StoredValues = 2
      end
      object cmbVendedor: TTS_DBLookupComboBox
        Left = 112
        Top = 312
        Width = 293
        Hint = 'Informe o vendedor respons'#225'vel pela opera'#231#227'o.'
        Style.BorderColor = 14859922
        TabOrder = 5
        DataField = 'lkVendedor'
        DataSource = DMOficina.C_TabelaDS
        StyleController = DMProjeto.esFuncionarios
        DropDownRows = 15
        ClearKey = 32
        LookupKeyValue = Null
        Height = 19
      end
    end
    inherited dxF9Bar: TdxfProgressBar
      Width = 528
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Width = 645
    Gradient.ColorStart = 14859922
    inherited lbCaption: TdxfLabel
      Width = 67
      Caption = 'Oficina'
      Effect3D.ShadowedColor = 14859922
    end
    inherited btHelp: TTS_SpeedButton
      Left = 614
    end
    object lblFinalizado: TdxfLabel
      Left = 350
      Top = 11
      Width = 120
      Height = 23
      Cursor = crHandPoint
      Hint = 'Indica que a Oficina j'#225' est'#225' finalizada'
      AutoSize = False
      Caption = 'Finalizado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clRed
      Font.Height = -19
      Font.Name = 'Verdana'
      Font.Style = [fsBold, fsItalic]
      ParentFont = False
      Transparent = True
      Visible = False
      OnDblClick = lblFinalizadoDblClick
      Style = dxfNormal
      Angle = 0
      Effect3D.Style = dxfFun
      Effect3D.Orientation = dxfLeftTop
      Effect3D.Depth = 3
      Effect3D.ShadowedColor = 8421631
      PenWidth = 1
    end
  end
  inherited DlgMsg: TDlgMsg
    Left = 103
    Top = 463
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 162
    Top = 458
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 274
    Top = 427
  end
  inherited ImgPadrao: TImageList
    Left = 514
    Top = 397
  end
  inherited FormComponent: TFormComponent
    BarEndColor = 14859922
    CaptionShadow = 14859922
    FormColor = 16116702
    Caption = 'Oficina'
    Left = 42
    Top = 463
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 483
    Top = 428
  end
  inherited ppmGridPadrao: TTS_PopupMenu
    Left = 427
    Top = 429
  end
  inherited Beep: TBTBeeper
    Left = 576
    Top = 304
  end
  inherited FormStorage: TFormStorage
    Left = 576
    Top = 360
  end
  inherited ppmIR_Para: TTS_PopupMenu
    Left = 354
    Top = 428
  end
end
