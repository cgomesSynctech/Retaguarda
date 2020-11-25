inherited FrmAcertoConsigEnt: TFrmAcertoConsigEnt
  Left = 160
  Top = 72
  Caption = 'Fornecedores / Compras'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    inherited btComando1: TTS_SpeedButton
      Top = 234
      Height = 31
      Visible = False
    end
    inherited btComando2: TTS_SpeedButton
      Height = 31
    end
    inherited btContabilidade: TTS_SpeedButton
      Top = 203
      Height = 31
    end
    inherited btOutros: TTS_SpeedButton
      Top = 296
      Height = 31
      Visible = False
    end
    object btConsig: TTS_SpeedButton [12]
      Left = 1
      Top = 265
      Width = 113
      Height = 31
      Caption = 'Consigna'#231#245'es'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      Glyph.Data = {
        7E030000424D7E030000000000003600000028000000130000000E0000000100
        1800000000004803000000000000000000000000000000000000BFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFFFFF00BF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF
        00BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00
        BF003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF
        003FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBF
        BFBFBFBFBFBFFFFF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF00
        3FBF003FBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFFF
        FF00FFFF00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF7F00BF003F
        BF003FBFBFBFBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFFFFF00FFFF00BF00
        3FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF003FBF
        003FBFBFBFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBF000000BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF
        BFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBFBF00
        0000}
      Layout = blGlyphRight
      ParentFont = False
      OnMouseUp = btConsigMouseUp
      RepeatedClick = False
      Border = True
      Align = alTop
    end
    inherited pnInicioFim: TTS_Panel
      Top = 327
    end
  end
  inherited pnDados: TTS_Panel
    inherited Grid: TTS_QDBGrid
      Filter.Criteria = {00000000}
    end
    inherited sbDados: TTS_Panel
      Color = 15196656
      inherited TS_Shape1: TTS_Shape
        Brush.Color = 11775972
      end
      inherited cmbTipoMovimento: TTS_DBLookupComboBox
        Top = 2
        Style.BorderColor = clMaroon
        DataSource = DMAcertoConsigEnt.C_TabelaDS
        StyleController = DMProjeto.esFornecedores
        ClearKey = 32
        ListSource = DMAcertoConsigEnt.C_TiposMovimentoDS
        Height = 19
      end
      inherited cmbTipoFav: TTS_DBLookupTipoFav
        Left = 3
        Top = 4
        Style.BorderColor = clMaroon
        StyleController = DMProjeto.esFornecedores
        TipoFavorecido = 2
        Height = 19
      end
      inherited dfFavorecido: TTS_DBEditFavorecido
        Left = 112
        Width = 217
        Hint = 
          'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
          'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
          ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
          ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
          #227'o'
        Style.BorderColor = clMaroon
        DataSource = DMAcertoConsigEnt.C_TabelaDS
        StyleController = DMProjeto.esFornecedores
        TipoFavorecido = 2
        Height = 19
        ExistButtons = True
      end
      inherited DBEdit1: TDBEdit
        DataSource = DMAcertoConsigEnt.C_TabelaDS
      end
      inherited DBEdit2: TDBEdit
        TabOrder = 13
      end
      inherited DBEdit3: TDBEdit
        DataSource = DMAcertoConsigEnt.C_TabelaDS
      end
      inherited DBEdit4: TDBEdit
        DataSource = DMAcertoConsigEnt.C_TabelaDS
      end
      inherited pgCabecalho: TTS_PageControl
        inherited tsCabecalho: TTS_TabSheet
          inherited cbClienteTaxavel: TTS_DBCheckBox
            Height = 17
          end
          inherited pnNumero: TTS_Panel
            inherited dbtNumero: TTS_DBTextEffect
              DataSource = DMAcertoConsigEnt.C_TabelaDS
            end
          end
          inherited pnData: TTS_Panel
            inherited dbtData: TTS_DBTextEffect
              DataSource = DMAcertoConsigEnt.C_TabelaDS
            end
            inherited cbLockDate: TTS_CheckBox
              Height = 19
            end
          end
          inherited pnAdicionais: TTS_Panel
            Color = 15196656
            inherited pnCampo01: TTS_Panel
              inherited dfAdd1: TTS_DBEdit
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo02: TTS_Panel
              inherited dfAdd2: TTS_DBEdit
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo04: TTS_Panel
              inherited dfAdd4: TTS_DBEdit
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo03: TTS_Panel
              inherited dfAdd3: TTS_DBEdit
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
              end
            end
          end
          inherited pnLocalEntrega: TTS_Panel
            inherited lcbLocaisEntrega: TTS_LookupComboBox
              Height = 19
            end
          end
          inherited pnCliente: TTS_Panel
            inherited dbtCliente: TTS_DBTextEffect
              Color = 11775972
            end
            inherited dbtObs: TTS_DBTextEffect
              DataSource = DMAcertoConsigEnt.C_TabelaDS
            end
            inherited TS_DBEdit1: TTS_DBEdit
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit2: TTS_DBEdit
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit3: TTS_DBEdit
              Height = 17
            end
            inherited TS_DBEdit4: TTS_DBEdit
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 17
            end
            inherited dfBairro: TTS_DBEdit
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit6: TTS_DBEdit
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 17
            end
            inherited dfCPF_CNPJ: TTS_DBEdit
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 17
            end
            inherited dfInscricaoEst: TTS_DBEdit
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 17
            end
          end
          inherited pnFotoCliente: TTS_Panel
            BackgroundOptions.GlassColor = 11775972
          end
          inherited pnHorizontal: TTS_Panel
            Color = 15196656
            inherited pnVendedor: TTS_Panel
              Color = 15196656
              inherited cmbVendedor: TTS_DBLookupComboBox
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
              end
            end
            inherited pnDataEntrega: TTS_Panel
              Color = 15196656
              inherited dfDataEntrega: TTS_DBEditDate
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 21
              end
            end
            inherited pnPedido: TTS_Panel
              Color = 15196656
              inherited dfPOCliente: TTS_DBEdit
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
              end
            end
            inherited pnTipoEntrega: TTS_Panel
              Color = 15196656
              inherited cmbTipoEntrega: TTS_DBLookupComboBox
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 21
              end
            end
            inherited pnComissao: TTS_Panel
              Color = 15196656
              inherited dfComissao: TTS_DBEdit
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
              end
            end
            inherited pnValidade: TTS_Panel
              Color = 15196656
              inherited TS_DBEditDate1: TTS_DBEditDate
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 21
              end
            end
          end
        end
      end
      inherited DBEdit5: TDBEdit
        DataSource = DMAcertoConsigEnt.C_TabelaDS
      end
      inherited pgItens: TTS_PageControl
        Left = 6
        Top = 175
        TabColor = 15196656
        TabColorActive = 11775972
        inherited tsItens: TTS_TabSheet
          BevelInner = bvRaised
          BevelOuter = bvLowered
          inherited TS_Shape15: TTS_Shape
            Left = 510
            Top = 2
            Pen.Color = 11775972
          end
          inherited dfFoto: TTS_Image
            Left = 511
            Top = 3
          end
          inherited pnTotItens: TTS_Panel
            Color = 15196656
            inherited lbTotItens: TTS_Label
              Height = 17
              Color = 11775972
            end
            inherited TS_DBText1: TTS_DBText
              Color = 15196656
              Font.Color = clBlack
            end
          end
          inherited dbgItens: TTS_QDBGrid
            DataSource = DMAcertoConsigEnt.C_ItensDS
            Filter.Criteria = {00000000}
            HeaderColor = 11775972
            OptionsDB = [edgoCancelOnExit, edgoCanDelete, edgoCanNavigation, edgoConfirmDelete, edgoLoadAllRecords, edgoUseBookmarks]
            TS_ShowSelectionColumn = True
            TS_SelectedColumn = 'SEQUENCIA'
            inherited dbgItensSEQUENCIA: TdxDBGridMaskColumn [0]
              DisableEditor = True
              Visible = True
            end
            inherited dbgItensFuncProducao: TdxDBGridLookupColumn [1]
              DisableEditor = True
              Width = 67
            end
            inherited dbgItensI_CODIGO: TdxDBGridButtonColumn [2]
              DisableEditor = True
              Visible = True
              Width = 65
            end
            inherited dbgItensDESCRICAO: TdxDBGridButtonColumn [3]
              DisableEditor = True
              Visible = True
              Width = 87
            end
            inherited dbgItensReferencia: TdxDBGridButtonColumn [4]
              DisableEditor = True
              Visible = True
              Width = 62
            end
            inherited dbgItensColuna1: TdxDBGridColumn [5]
              DisableEditor = True
              Width = 114
            end
            inherited dbgItensColuna2: TdxDBGridColumn [6]
              DisableEditor = True
              Width = 114
            end
            inherited dbgItensColuna3: TdxDBGridColumn [7]
              DisableEditor = True
              Width = 114
            end
            inherited dbgItensColuna4: TdxDBGridColumn [8]
              DisableEditor = True
              Width = 114
            end
            inherited dbgItensNumeroLote: TdxDBGridPopupColumn [9]
              DisableEditor = True
              Width = 51
            end
            inherited dbgItensMesclado: TdxDBGridColumn [10]
              Width = 47
            end
            inherited dbgItensColumn19: TdxDBGridColumn [11]
              Width = 60
            end
            inherited dbgItensColumn20: TdxDBGridColumn [12]
              Width = 114
            end
            inherited dbgItensI_Descricao: TdxDBGridColumn [13]
              DisableEditor = True
            end
            inherited dbgItensI_Percentual: TdxDBGridColumn [14]
              Width = 109
            end
            inherited dbgItensUsoTipoItem: TdxDBGridColumn [15]
              Width = 74
            end
            inherited dbgItensStatus: TdxDBGridImageColumn [16]
              Caption = 'Status'
              DisableEditor = True
              HeaderAlignment = taCenter
              MinWidth = 25
              Width = 49
              Descriptions.Strings = (
                'Pendente'
                'Faturado Parcial'
                'Faturado'
                'Fechado'
                'Montagem')
              Images = imgStatus
              ImageIndexes.Strings = (
                '0'
                '1'
                '2'
                '3'
                '4')
              Values.Strings = (
                'P'
                'L'
                'F'
                'H'
                'M')
            end
            inherited dbgItensTipoItem: TdxDBGridColumn [17]
              Width = 47
            end
            inherited dbgItensUltrapassouMesclagem: TdxDBGridColumn [18]
              Width = 89
            end
            inherited dbgItensSubTotal: TdxDBGridColumn [19]
              DisableEditor = True
              Visible = True
              Width = 58
            end
            inherited dbgItensPRECO: TdxDBGridPopupColumn [20]
              DisableEditor = True
              Visible = True
              Width = 45
            end
            inherited dbgItensBaixoEstoque: TdxDBGridColumn [21]
              Width = 74
            end
            inherited dbgItensI_UNIDADE: TdxDBGridLookupColumn [22]
              DisableEditor = True
              Visible = True
              Width = 36
            end
            inherited dbgItensQUANTIDADE: TdxDBGridMaskColumn [23]
              Visible = True
              Width = 38
            end
            inherited dbgItensAliqICMS: TdxDBGridMaskColumn
              DisableEditor = True
            end
            inherited dbgItensIPI: TdxDBGridMaskColumn
              DisableEditor = True
            end
            inherited dbgItensTVA: TdxDBGridMaskColumn
              DisableEditor = True
            end
            inherited dbgItensNumeroItem: TdxDBGridColumn
              DisableEditor = True
            end
            inherited dbgItensRegistro: TdxDBGridColumn
              DisableEditor = True
            end
            inherited dbgItensCFOP: TdxDBGridPopupColumn
              DisableEditor = True
            end
          end
          inherited pnVolumes: TTS_Panel
            Color = 15196656
            inherited TS_Label2: TTS_Label
              Color = 11775972
            end
            inherited dfVolumes: TTS_DBEditNumber
              Height = 21
              StoredValues = 1
            end
          end
        end
        inherited tsTermos: TTS_TabSheet
          inherited TS_Shape12: TTS_Shape
            Brush.Color = 11775972
          end
          inherited pnMensagem: TTS_Panel
            inherited dfMensagem: TTS_PopupEdit
              Left = -3
              Color = 11775972
              Height = 21
              StoredValues = 65
            end
            inherited dfObs: TTS_DBMemo
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 48
            end
          end
          inherited pnTermos: TTS_Panel
            inherited lbTermos: TTS_Label
              Color = 11775972
            end
            inherited cmbTermos: TTS_DBLookupComboBox
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Height = 19
            end
          end
          inherited pnTotalFinal: TTS_Panel
            inherited lbTotalFinal: TTS_Label
              Color = 11775972
              Font.Color = clMaroon
            end
            inherited dbtTotalFinal: TTS_DBTextEffect
              DataSource = DMAcertoConsigEnt.C_TabelaDS
              Font.Color = clMaroon
            end
          end
          inherited pnSomaTotal: TTS_Panel
            Color = 15196656
            inherited TS_Label4: TTS_Label
              Color = 15196656
              ParentColor = False
            end
            inherited pnFrete: TTS_Panel
              Color = 15196656
              inherited lbFrete: TTS_Label
                Color = 11775972
              end
              inherited dfFrete: TTS_DBEditNumber
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnDescontos: TTS_Panel
              Color = 15196656
              inherited lbDescontos: TTS_Label
                Color = 11775972
              end
              inherited dfDesconto: TTS_DBEditNumber
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnTotalItens: TTS_Panel
              Color = 15196656
              inherited TS_Shape10: TTS_Shape
                Left = 5
                Brush.Color = 11775972
              end
              inherited lbTotalItens: TTS_Label
                Left = 6
                Top = 3
                Color = 11775972
              end
              inherited TS_DBText5: TTS_DBText
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Font.Color = clMaroon
              end
            end
            inherited pnDespesas: TTS_Panel
              Color = 15196656
              inherited lbDespesas: TTS_Label
                Color = 11775972
              end
              inherited dfDespesas: TTS_DBEditNumber
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnJuros: TTS_Panel
              Color = 15196656
              inherited TS_Shape13: TTS_Shape
                Left = 12
                Brush.Color = 15196656
              end
              inherited lbJuros: TTS_Label
                Left = 13
                Color = 11775972
              end
              inherited TS_DBText7: TTS_DBText
                Left = 15
                Top = 18
                DataSource = DMAcertoConsigEnt.C_TabelaDS
                Font.Color = clMaroon
              end
            end
          end
          inherited cbReceber: TTS_CheckBox
            State = cbsUnchecked
          end
          inherited dbgMensagens: TTS_QDBGrid
            Filter.Criteria = {00000000}
          end
          inherited cmbTipoCobranca: TTS_DBLookupComboBox
            DataSource = DMAcertoConsigEnt.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 19
          end
          inherited cmbCarteira: TTS_DBLookupComboBox
            DataSource = DMAcertoConsigEnt.C_TabelaDS
            StyleController = DMProjeto.esFornecedores
            Height = 19
          end
          inherited dbgParcelas: TTS_QDBGrid
            BandColor = 11775972
            DataSource = DMAcertoConsigEnt.C_ParcelasDS
            Filter.Criteria = {00000000}
            HeaderColor = 11775972
            HideSelectionColor = 11775972
            HighlightColor = 11775972
          end
        end
        inherited tsContrato: TTS_TabSheet
          inherited TS_Panel1: TTS_Panel
            inherited TS_DBMemo1: TTS_DBMemo
              Top = 24
              Height = 128
            end
            inherited dfContrato: TTS_PopupEdit
              Height = 21
              StoredValues = 65
            end
          end
          inherited dbgContratos: TTS_QDBGrid
            Top = 92
            Filter.Criteria = {00000000}
          end
        end
      end
      inherited pnSetas: TTS_Panel
        Left = 603
        Color = 15196656
      end
      inherited cbImprimir: TTS_CheckBox
        TabOrder = 10
      end
      inherited pnStatus: TTS_Panel
        Color = 15196656
        inherited TS_Label1: TTS_Label
          Color = 15196656
        end
        inherited dfStatus: TTS_DBLookupComboBox
          Top = -1
          DataSource = DMAcertoConsigEnt.C_TabelaDS
          DropDownRows = 15
          Height = 19
        end
      end
      inherited pnLotes: TTS_Panel
        TabOrder = 11
        inherited dbgLotes: TTS_QDBGrid
          DataSource = DMAcertoConsigEnt.C_LotesDS
          Filter.Criteria = {00000000}
          inherited dxDBGridMaskColumn1: TdxDBGridMaskColumn
            SortedOrder = 0
          end
          inherited dxDBGridMaskColumn4: TdxDBGridMaskColumn
            Sorted = csUp
            SortedOrder = 1
          end
        end
      end
      inherited pnPreco: TPanel
        TabOrder = 6
        inherited pnOutros: TPanel
          inherited dbgTabelasPreco: TTS_QDBGrid
            Filter.Criteria = {00000000}
          end
        end
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11775972
    inherited lbCaption: TdxfLabel
      Width = 364
      Caption = 'Devolu'#231#227'o de Consigna'#231#227'o de Entrada'
      Effect3D.ShadowedColor = 11775972
    end
    inherited lbCancelado: TdxfLabel
      Visible = False
    end
  end
  inherited DlgMsg: TDlgMsg
    Top = 338
  end
  inherited LastDataObject: TTS_LastDataObject
    Left = 107
    Top = 368
  end
  inherited ppmPadrao: TTS_PopupMenu
    inherited ApagarDados: TMenuItem
      Visible = False
    end
  end
  inherited FormComponent: TFormComponent
    ModuloStyle = DMProjeto.msFornecedores
    BarEndColor = 11775972
    CaptionShadow = 11775972
    FormColor = 15196656
    Modulo = 'Fornecedores / Compras'
    Caption = 'Devolu'#231#227'o de Consigna'#231#227'o de Entrada'
    Left = 162
  end
  inherited esEndereco: TdxEditStyleController
    Left = 545
    Top = 2
  end
  inherited ppmUltimo: TTS_PopupMenu
    Left = 454
    inherited UltimoGravado: TMenuItem
      Visible = False
    end
    inherited ltimoparaOperao1: TMenuItem [2]
      Caption = #218'ltimo Gravado'
    end
    inherited N6: TMenuItem [3]
    end
    inherited ltimoparaoCliente1: TMenuItem [4]
    end
    inherited ltimoparaaData1: TMenuItem [5]
    end
  end
  inherited ppmOutros: TTS_PopupMenu
    Left = 646
    Top = 365
  end
  inherited tmInvoice: TTimer
    Left = 703
    Top = 364
  end
  inherited ppmGrid: TTS_PopupMenu
    Left = 456
    Top = 304
  end
  inherited ppmParcelas: TTS_PopupMenu
    Left = 494
    Top = 256
  end
  object imgStatus: TImageList
    Height = 18
    Width = 18
    Left = 284
    Top = 308
    Bitmap = {
      494C010105000900040012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      000000000000360000002800000048000000360000000100200000000000C03C
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000FFFF
      FF007B7B7B00949C9C000000000000000000001010005A9CA500000000004A84
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000C6C6
      C600000000000000000063A5AD0039636300182118006BB5BD00000000005AB5
      B500424A4A00ADB5B50000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000FFFFFF00A5ADAD00BDC6
      C60000000000000000004A7B84006BADB500315252006BBDC6004A737300639C
      A5000000000039848C00EFF7F700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000008C9C9C00000000000000
      00006BA5AD00395252001821290084CED6006BBDC60063A5AD0063ADB5005AA5
      A500528C8C0073A5A500EFE7E700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000212929000000
      000073A5AD0084D6DE006BADB5007BB5BD006BB5BD0063ADB50063A5AD005AA5
      A50063ADB5002131390018393900CEE7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000EFFFFF008C9494000000
      00000000000073BDC6007BC6D60073BDC60063ADB50063A5AD0063ADB5005AA5
      A5005AA5A500529494005A9C9C00E7EFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000009C9CA500000000001010100073BD
      C60042636B007BC6CE007BC6CE0063B5B500ADCED600184239004263630063A5
      AD005A9CA5004A949400CEDEE700000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000F7F7F7005A5A5A001018210094DE
      DE0094E7EF007BC6CE006BBDC600BDDEDE00000000002952520031525200527B
      7B0063A5AD00529C9C004A737300639494000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000ADB5B500000000000000
      00006BA5AD007BC6CE006BBDC600EFFFFF000000000029525A0031525200527B
      7B0063A5AD005294940063A5A500A5C6C6000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000949C9C000000000010212100426B
      6B0084CED6007BC6CE0073BDC60000000000F7F7F70018424200294A4A00426B
      730063A5AD00428C8C00FFFFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000214A4A0073ADAD00A5F7
      FF0084D6DE007BC6CE006BBDC600000000006B8484001839390021424200528C
      8C0063A5AD004A9494005A949400DEEFEF000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000063737300000808000810
      18005A8C940084CED60073BDC6006BA5A5000000080018292100314A520063AD
      B500529C9C0084B5B5006BA5AD00D6E7E7000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000B5CED6000000000073A5A5002939
      39008CD6DE007BC6CE007BC6CE0073BDC6005A94940052848C006BB5BD005AA5
      A50052949C00C6DEE70000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000EFEFEF00D6DEDE009CEFEF0094EF
      F7006BA5AD006BB5B5007BC6CE006BB5BD006BB5BD006BB5BD0063A5AD005AA5
      A5004A8484004A949400E7FFFF00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000181800294A
      4A00000000006BADB5007BCED6006BB5BD006BB5BD0063ADB50063A5B5005AA5
      AD0084737300638C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000E7F7FF00637373006BA5
      A50039636B008CDEE7002131310073C6CE0063A5AD006BB5BD00214A42004A9C
      9C00EFFFFF000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000000000B5DE
      DE00396B7300213939001018180073BDC600080000006BBDC600212121004273
      7300EFF7F7000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000BDC6C600635A5A00426B73006BA5AD00000000005AADAD00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000848484008421290084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000084848400842129008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000008484840084212900848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000008484
      840008630000394A000094000000848484000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000008484840008630000394A00009400000084848400000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000848484000042840000428400940000008484
      8400000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF000000FF
      0000008400000094000031520000940000008484840000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000FF000000840000009400003152000094000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF000000FF000000840000008400004284009400
      0000848484000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF00000073
      0000008400000084000000940000424A00009400000084848C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF000000730000008400000084000000940000424A0000940000008484
      8C00000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000084000000840000008400000084000042
      84009400000084848C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF0000007B
      000000840000008400000084000000940000315200008C000000848484000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000007B000000840000008400000084000000940000315200008C00
      0000848484000000000000000000000000000000000000000000000000000000
      000000000000000000000000FF00000084000000840000008400000084000000
      8400004284008C00000084848400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000FF0000007B
      00000084000000840000007B0000007B0000009400003952000094000800847B
      7B00000000000000000000000000000000000000000000000000000000000000
      000000FF0000007B00000084000000840000007B0000007B0000009400003952
      000094000800847B7B0000000000000000000000000000000000000000000000
      000000000000000000000000FF00000084000000840000008400000084000000
      8400000084000042840094000800847B7B000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000000000000000000000FF0000007B
      000000840000007B000000D6000000E70000007B0000008C0000394A00009400
      0000848C8C000000000000000000000000000000000000000000000000000000
      000000FF0000007B000000840000007B000000D6000000E70000007B0000008C
      0000394A000094000000848C8C00000000000000000000000000000000000000
      000000000000000000000000FF000000840000008400000084000000FF000000
      FF0000008400000084000042840094000000848C8C0000000000000000000000
      000000000000000000000000000000000000000000000000000084000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000084000000000000000000000000FF0000007B
      0000008C0000394200000000000000FF000000E7000000840000009400003152
      0000000000000000000000000000000000000000000000000000000000000000
      000000FF0000007B0000008C0000394200000000000000FF000000E700000084
      0000009400003152000094000000847B7B000000000000000000000000000000
      000000000000000000000000FF00000084000000840039420000000000000000
      FF000000FF0000008400000084000042840094000000847B7B00000000000000
      000000000000000000000000000000000000000000000000000084000000FF00
      0000FF000000FF000000FF000000FF000000FF000000FF000000FF000000FF00
      0000FF000000FF000000FF00000084000000000000000000000000FF00000073
      0000008C0000314A0000000000000000000039FF390000E70000007300000000
      00000000000000000000847B7B00000000000000000000000000000000000000
      000000FF000000730000008C0000314A0000000000000000000039FF390000E7
      00000073000000940000394A000094000800847B7B0000000000000000000000
      000000000000000000000000FF000000840000008400314A0000000000000000
      00000000FF000000FF0000008400000084000042840094000800847B7B000000
      0000000000000000000000000000000000000000000000000000840000008400
      0000840000008400000084000000840000008400000084000000840000008400
      000084000000840000008400000084000000000000000000000018FF180000FF
      0000007B00003942000000000000000000000000000031FF3100000000000000
      000000000000423900008C526300848C8C000000000000000000000000000000
      000018FF180000FF0000007B00003942000000000000000000000000000031FF
      310000E70000007B000000940000423900008C526300848C8C00000000000000
      000000000000000000000000FF000000FF000000840039420000000000000000
      0000000000000000FF000000FF000000840000008400004284008C526300848C
      8C00000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000000000FF
      000000FF0000008C000000000000000000000000000000000000000000000000
      0000007B0000186B00008C0000008C636300848C8C0000000000000000000000
      00000000000000FF000000FF0000008C00000000000000000000000000000000
      000031FF310000E70000007B0000186B00008C0000008C636300848C8C000000
      00000000000000000000000000000000FF000000FF0000008400000000000000
      000000000000000000000000FF000000FF000000840000008400004284008C63
      6300848C8C000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000DE0000007B0000087B00009C0000008C636300848C8C00000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000029FF290000DE0000007B0000087B00009C0000008C636300848C
      8C00000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000FF000000FF0000008400000084000042
      84008C636300848C8C0000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000031FF310000E700000084000008730000840000008C636300849494000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031FF310000E700000084000008730000840000008C63
      6300849494000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FF000000FF00000084000000
      8400004284008C63630084949400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000031FF310000E70000007B00001073000094000000845A5A000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000031FF310000E70000007B0000107300009400
      0000845A5A000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000FF000000FF000000
      84000000840000428400845A5A00000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000031FF310000E7000000840000106B0000942939000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000031FF310000E7000000840000106B
      0000942939000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000FF000000
      FF00000084000000840000428400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000029FF290000E70000086B0000942139000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000029FF290000E70000086B
      0000942139000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FF000000FF000042840000428400000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000039FF390000DE0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000039FF390000DE
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FF000000FF000000000000000000424D3E000000000000003E000000
      2800000048000000360000000100010000000000880200000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000E00FC0000000000000000000E003C0000000000000000000
      8001C00000000000000000008001C0000000000000000000C000C00000000000
      000000008000C00000000000000000000001C00000000000000000000080C000
      00000000000000008080C00000000000000000000101C0000000000000000000
      8100C00000000000000000008000C00000000000000000000003C00000000000
      000000000001C0000000000000000000C003C00000000000000000008007C000
      0000000000000000E007C0000000000000000000F03FC0000000000000000000
      FFFFFFFFFFFFFFFFFF000000FFFFF1FFFC7FFF1FFF000000FFFFE0FFF83FFE0F
      FF000000FFFFC07FB01FFC07FF000000FFFFC03E300FFC03FF000000FFFFC01C
      7007FC01FF0000008000400CF003FC00FF00000080004000F001FC007F000000
      80004201F080FC203F00000080004301F0C07C301F00000080004380F0E03C38
      0F0000008000638078F01E3C07000000FFFFFF003FF80FFE03000000FFFFFE10
      1FFC07FF01000000FFFFFC381FFE07FF81000000FFFFFFFC1FFF07FFC1000000
      FFFFFFFE1FFF87FFE1000000FFFFFFFF3FFFCFFFF30000000000000000000000
      0000000000000000000000000000}
  end
  object ppmConsig: TTS_PopupMenu
    Left = 542
    Top = 228
    object Itens1: TMenuItem
      Caption = 'Itens'
      OnClick = Itens1Click
    end
    object Movimentos1: TMenuItem
      Caption = 'Movimentos'
      OnClick = Movimentos1Click
    end
  end
end
