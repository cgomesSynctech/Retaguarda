inherited FrmEstimates: TFrmEstimates
  Left = 252
  Top = 127
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    inherited btComando1: TTS_SpeedButton
      Visible = False
    end
  end
  inherited pnDados: TTS_Panel
    inherited Grid: TTS_QDBGrid
      Filter.Criteria = {00000000}
    end
    inherited sbDados: TTS_Panel
      inherited cmbTipoMovimento: TTS_DBLookupComboBox
        DataSource = DMEstimates.C_TabelaDS
        ClearKey = 32
        ListSource = DMEstimates.C_TiposMovimentoDS
        Height = 19
      end
      inherited cmbTipoFav: TTS_DBLookupTipoFav
        Left = 4
        Height = 19
      end
      inherited dfFavorecido: TTS_DBEditFavorecido
        Hint = 
          'Para cadastrar um novo, pressione a tecla F7.'#13'# -> No in'#237'cio do ' +
          'Texto for'#231'a a pesquisa pelo c'#243'digo. Ex: #100, #DAP'#13'CPF:N'#250'mero do' +
          ' CPF => Pesquisa pelo CPF. Ex: CPF:123366642'#13'CNPJ:N'#250'mero do CNPJ' +
          ' => Pesquisa pelo CNPJ. Ex: CNPJ:6719034663'#13'R: Pesquisa Pela Raz' +
          #227'o'
        DataSource = DMEstimates.C_TabelaDS
        Height = 19
        ExistButtons = True
      end
      inherited DBEdit1: TDBEdit
        DataSource = DMEstimates.C_TabelaDS
      end
      inherited DBEdit2: TDBEdit
        DataSource = DMEstimates.C_ItensDS
      end
      inherited DBEdit3: TDBEdit
        Left = 338
        DataSource = DMEstimates.C_TabelaDS
      end
      inherited DBEdit4: TDBEdit
        DataSource = DMEstimates.C_TabelaDS
      end
      inherited pgCabecalho: TTS_PageControl
        Height = 157
        Style = tsTabs
        TabIndex = 0
        inherited tsCabecalho: TTS_TabSheet
          Caption = 'Dados'
          TabVisible = True
          inherited cbClienteTaxavel: TTS_DBCheckBox
            DataSource = DMEstimates.C_TabelaDS
            Height = 17
          end
          inherited pnNumero: TTS_Panel
            inherited dbtNumero: TTS_DBTextEffect
              DataSource = DMEstimates.C_TabelaDS
            end
          end
          inherited pnData: TTS_Panel
            inherited dbtData: TTS_DBTextEffect
              DataSource = DMEstimates.C_TabelaDS
            end
            inherited cbLockDate: TTS_CheckBox
              Height = 19
            end
          end
          inherited pnAdicionais: TTS_Panel
            inherited pnCampo01: TTS_Panel
              inherited dfAdd1: TTS_DBEdit
                DataSource = DMEstimates.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo02: TTS_Panel
              inherited dfAdd2: TTS_DBEdit
                Left = 3
                DataSource = DMEstimates.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo04: TTS_Panel
              inherited dfAdd4: TTS_DBEdit
                DataSource = DMEstimates.C_TabelaDS
                Height = 19
              end
            end
            inherited pnCampo03: TTS_Panel
              inherited dfAdd3: TTS_DBEdit
                DataSource = DMEstimates.C_TabelaDS
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
            Height = 93
            inherited dbtCliente: TTS_DBTextEffect
              DataSource = DMEstimates.C_TabelaDS
            end
            inherited dbtObs: TTS_DBTextEffect
              Top = 77
              DataSource = DMEstimates.C_TabelaDS
            end
            inherited TS_DBEdit1: TTS_DBEdit
              DataSource = DMEstimates.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit2: TTS_DBEdit
              Top = 47
              DataSource = DMEstimates.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit3: TTS_DBEdit
              Top = 47
              DataSource = DMEstimates.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit4: TTS_DBEdit
              Top = 47
              DataSource = DMEstimates.C_TabelaDS
              Height = 17
            end
            inherited dfBairro: TTS_DBEdit
              DataSource = DMEstimates.C_TabelaDS
              Height = 17
            end
            inherited TS_DBEdit6: TTS_DBEdit
              DataSource = DMEstimates.C_TabelaDS
              Height = 17
            end
            inherited dfCPF_CNPJ: TTS_DBEdit
              Top = 62
              DataSource = DMEstimates.C_TabelaDS
              Height = 17
            end
            inherited dfInscricaoEst: TTS_DBEdit
              Top = 62
              DataSource = DMEstimates.C_TabelaDS
              Height = 17
            end
          end
          inherited pnFotoCliente: TTS_Panel
            Height = 93
          end
          inherited pnHorizontal: TTS_Panel
            Left = -5
            Top = 95
            Height = 36
            inherited pnVendedor: TTS_Panel
              Height = 36
              inherited TS_Shape2: TTS_Shape
                Height = 34
              end
              inherited cmbVendedor: TTS_DBLookupComboBox
                DataSource = DMEstimates.C_TabelaDS
                Height = 15
              end
            end
            inherited pnDataEntrega: TTS_Panel
              Height = 36
              inherited TS_Shape6: TTS_Shape
                Height = 34
              end
              inherited dfDataEntrega: TTS_DBEditDate
                Top = 15
                DataSource = DMEstimates.C_TabelaDS
                Height = 17
              end
            end
            inherited pnPedido: TTS_Panel
              Height = 36
              inherited TS_Shape4: TTS_Shape
                Height = 34
              end
              inherited dfPOCliente: TTS_DBEdit
                DataSource = DMEstimates.C_TabelaDS
                Height = 15
              end
            end
            inherited pnTipoEntrega: TTS_Panel
              Height = 36
              inherited TS_Shape5: TTS_Shape
                Height = 34
              end
              inherited cmbTipoEntrega: TTS_DBLookupComboBox
                DataSource = DMEstimates.C_TabelaDS
                Height = 17
              end
            end
            inherited pnComissao: TTS_Panel
              Height = 36
              inherited TS_Shape3: TTS_Shape
                Height = 34
              end
              inherited dfComissao: TTS_DBEdit
                DataSource = DMEstimates.C_TabelaDS
                Height = 15
              end
            end
            inherited pnValidade: TTS_Panel
              Height = 36
              inherited TS_Shape14: TTS_Shape
                Height = 34
              end
              inherited TS_DBEditDate1: TTS_DBEditDate
                DataSource = DMEstimates.C_TabelaDS
                Height = 17
              end
            end
          end
        end
        object tsOrcamento: TTS_TabSheet
          Caption = 'Or'#231'amento'
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label5: TTS_Label
            Left = -6
            Top = 75
            Width = 84
            Caption = 'Prazo Entrega:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label6: TTS_Label
            Left = 14
            Top = 93
            Width = 65
            Height = 26
            Caption = 'Condi'#231#245'es de Pagto.:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label7: TTS_Label
            Left = 343
            Top = 1
            Width = 65
            Caption = 'Garantia:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label8: TTS_Label
            Left = 357
            Top = 42
            Width = 65
            Caption = 'Explica'#231#245'es:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label9: TTS_Label
            Left = -5
            Top = 2
            Width = 84
            Caption = 'A Tratar:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label10: TTS_Label
            Left = -6
            Top = 42
            Width = 84
            Caption = 'Introdu'#231#227'o:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label16: TTS_Label
            Left = 343
            Top = 21
            Width = 65
            Caption = 'Validade:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_DBMemo2: TTS_DBMemo
            Left = 80
            Top = 0
            Width = 277
            TabOrder = 0
            DataField = 'ATRATAR'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            Height = 42
          end
          object TS_DBMemo3: TTS_DBMemo
            Left = 80
            Top = 42
            Width = 277
            TabOrder = 1
            DataField = 'INTRODUCAO'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            Height = 32
          end
          object TS_DBMemo4: TTS_DBMemo
            Left = 80
            Top = 93
            Width = 277
            TabOrder = 3
            DataField = 'CONDICOESPAGTO'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            Height = 32
          end
          object TS_DBEdit7: TTS_DBEdit
            Left = 409
            Top = 0
            Width = 205
            TabOrder = 4
            DataField = 'GARANTIA'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBMemo5: TTS_DBMemo
            Left = 361
            Top = 55
            Width = 252
            TabOrder = 7
            DataField = 'EXPLICACOES'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            Height = 70
          end
          object TS_DBEdit8: TTS_DBEdit
            Left = 80
            Top = 74
            Width = 277
            Style.BorderColor = 14859922
            TabOrder = 2
            DataField = 'PRAZOENTREGA'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBCheckBox1: TTS_DBCheckBox
            Left = 490
            Top = 16
            Width = 127
            TabOrder = 6
            Caption = 'ou enquanto durar o estoque'
            DataField = 'SEESTOQUE'
            DataSource = DMEstimates.C_TabelaDS
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            MultiLine = True
            DisableEdit = False
            Height = 34
          end
          object TS_DBEditDate2: TTS_DBEditDate
            Left = 409
            Top = 19
            Width = 75
            TabOrder = 5
            DataField = 'VALIDADE'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
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
            Height = 19
          end
        end
        object tsLicitacao: TTS_TabSheet
          Caption = 'Licita'#231#227'o'
          TabVisible = False
          TabColor = clBtnFace
          TabFontColor = clBlack
          BevelInner = bvRaised
          BevelOuter = bvLowered
          object TS_Label11: TTS_Label
            Left = 34
            Top = 5
            Width = 65
            Caption = 'Processo:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label12: TTS_Label
            Left = 5
            Top = 30
            Width = 94
            Caption = 'Carta Convite:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label13: TTS_Label
            Left = 5
            Top = 56
            Width = 94
            Caption = 'Tomada de Pre'#231'os:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label14: TTS_Label
            Left = 5
            Top = 82
            Width = 94
            Caption = 'Data Abertura:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_Label15: TTS_Label
            Left = 34
            Top = 108
            Width = 65
            Caption = '% ICMS:'
            FormatoTabela = False
            LinkToResult = 0
          end
          object TS_DBEdit9: TTS_DBEdit
            Left = 102
            Top = 3
            Width = 277
            TabOrder = 0
            DataField = 'PROCESSO'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBEdit10: TTS_DBEdit
            Left = 102
            Top = 29
            Width = 277
            TabOrder = 1
            DataField = 'CARTACONVITE'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBEdit11: TTS_DBEdit
            Left = 102
            Top = 55
            Width = 277
            TabOrder = 2
            DataField = 'TOMADAPRECOS'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
          object TS_DBEdit12: TTS_DBEdit
            Left = 102
            Top = 81
            Width = 277
            TabOrder = 3
            DataField = 'DATAABERTURA'
            DataSource = DMEstimates.C_TabelaDS
            StyleController = DMProjeto.esClientes
            DistinctEditOn = False
            Height = 19
          end
        end
      end
      inherited DBEdit5: TDBEdit
        DataSource = DMEstimates.C_TabelaDS
      end
      inherited pgItens: TTS_PageControl
        Left = 1
        Top = 186
        Width = 638
        Height = 224
        inherited tsItens: TTS_TabSheet
          BevelInner = bvRaised
          BevelOuter = bvLowered
          inherited TS_Shape15: TTS_Shape
            Left = 527
          end
          inherited dfFoto: TTS_Image
            Left = 528
          end
          inherited pnTotItens: TTS_Panel
            Left = 527
            Top = 155
            inherited TS_DBText1: TTS_DBText
              DataSource = DMEstimates.C_TabelaDS
            end
          end
          inherited dbgItens: TTS_QDBGrid
            Width = 522
            Height = 194
            DataSource = DMEstimates.C_ItensDS
            Filter.Criteria = {00000000}
            TS_ShowSelectionColumn = True
            TS_SelectedColumn = 'SEQUENCIA'
            inherited dbgItensSEQUENCIA: TdxDBGridMaskColumn [0]
              Visible = True
            end
            inherited dbgItensFuncProducao: TdxDBGridLookupColumn [1]
              Width = 88
            end
            inherited dbgItensI_CODIGO: TdxDBGridButtonColumn [2]
              Visible = True
              Width = 70
            end
            inherited dbgItensDESCRICAO: TdxDBGridButtonColumn [3]
              Visible = True
              Width = 86
            end
            inherited dbgItensReferencia: TdxDBGridButtonColumn [4]
              Visible = True
              Width = 65
            end
            inherited dbgItensNumeroLote: TdxDBGridPopupColumn [5]
              Width = 67
            end
            inherited dbgItensColuna1: TdxDBGridColumn [6]
              Width = 150
            end
            inherited dbgItensColuna2: TdxDBGridColumn [7]
              Width = 150
            end
            inherited dbgItensColuna3: TdxDBGridColumn [8]
              Width = 150
            end
            inherited dbgItensColuna4: TdxDBGridColumn [9]
              Width = 150
            end
            inherited dbgItensUltrapassouMesclagem: TdxDBGridColumn [10]
              Width = 116
            end
            inherited dbgItensColumn19: TdxDBGridColumn [11]
              Width = 78
            end
            inherited dbgItensSubTotal: TdxDBGridColumn [12]
              Visible = True
              Width = 56
            end
            inherited dbgItensTipoItem: TdxDBGridColumn [13]
              Width = 62
            end
            inherited dbgItensQUANTIDADE: TdxDBGridMaskColumn [14]
              Visible = True
            end
            inherited dbgItensStatus: TdxDBGridImageColumn [15]
              Caption = 'Status'
              MinWidth = 25
              Width = 40
              Descriptions.Strings = (
                'Pendente'
                'Faturado Parcial'
                'Faturado'
                'Fechado')
              Images = imgStatus
              ImageIndexes.Strings = (
                '0'
                '1'
                '2'
                '3')
              Values.Strings = (
                'P'
                'L'
                'F'
                'H')
            end
            inherited dbgItensPRECO: TdxDBGridPopupColumn [16]
              Visible = True
              Width = 45
            end
            inherited dbgItensMesclado: TdxDBGridColumn [17]
              Width = 62
            end
            inherited dbgItensI_UNIDADE: TdxDBGridLookupColumn [18]
              Visible = True
            end
            inherited dbgItensUsoTipoItem: TdxDBGridColumn [19]
              Width = 98
            end
            inherited dbgItensI_CLASFISCAL: TdxDBGridColumn [20]
            end
            inherited dbgItensI_Percentual: TdxDBGridColumn [21]
              Width = 144
            end
            inherited dbgItensBaixoEstoque: TdxDBGridColumn [22]
              Width = 97
            end
            inherited dbgItensColumn20: TdxDBGridColumn [23]
              Width = 150
            end
            object dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn
              Caption = 'Qtd. Volume'
              HeaderAlignment = taCenter
              Visible = False
              BandIndex = 0
              RowIndex = 0
              FieldName = 'QUANTIDADEVOLUME'
              SummaryFooterType = cstSum
            end
          end
          inherited pnVolumes: TTS_Panel
            Left = 527
            Top = 112
            inherited dfVolumes: TTS_DBEditNumber
              Height = 21
              StoredValues = 1
            end
          end
        end
        inherited tsTermos: TTS_TabSheet
          inherited TS_Shape12: TTS_Shape
            Width = 528
          end
          inherited lbTipoCobranca: TTS_Label
            Left = 499
          end
          inherited lbCarteira: TTS_Label
            Left = 501
          end
          inherited pnTermos: TTS_Panel
            Width = 207
            inherited lbTermos: TTS_Label
              Width = 203
            end
            inherited cmbTermos: TTS_DBLookupComboBox
              Left = 2
              Width = 204
              DataSource = DMEstimates.C_TabelaDS
              Height = 19
            end
          end
          inherited pnTotalFinal: TTS_Panel
            Left = 531
            inherited dbtTotalFinal: TTS_DBTextEffect
              DataSource = DMEstimates.C_TabelaDS
            end
          end
          inherited pnSomaTotal: TTS_Panel
            Width = 533
            inherited pnFrete: TTS_Panel
              inherited dfFrete: TTS_DBEditNumber
                DataSource = DMEstimates.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnDescontos: TTS_Panel
              inherited dfDesconto: TTS_DBEditNumber
                DataSource = DMEstimates.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnTotalItens: TTS_Panel
              inherited TS_DBText5: TTS_DBText
                DataSource = DMEstimates.C_TabelaDS
              end
            end
            inherited pnDespesas: TTS_Panel
              inherited dfDespesas: TTS_DBEditNumber
                DataSource = DMEstimates.C_TabelaDS
                Height = 19
                StoredValues = 1
              end
            end
            inherited pnJuros: TTS_Panel
              inherited TS_DBText7: TTS_DBText
                DataSource = DMEstimates.C_TabelaDS
              end
            end
          end
          inherited cbReceber: TTS_CheckBox
            Left = 499
            Top = 158
            State = cbsUnchecked
          end
          inherited dbgMensagens: TTS_QDBGrid
            DataSource = DMEstimates.C_MensagensOperacoesDS
            Filter.Criteria = {00000000}
          end
          inherited cmbTipoCobranca: TTS_DBLookupComboBox
            Left = 550
            Width = 81
            ListSource = DMEstimates.C_TiposCobrancaDS
            Height = 19
          end
          inherited cmbCarteira: TTS_DBLookupComboBox
            Left = 550
            Width = 81
            ListSource = DMEstimates.C_CarteirasDS
            Height = 19
          end
          inherited dbgParcelas: TTS_QDBGrid
            Width = 280
            Height = 145
            DataSource = DMEstimates.C_ParcelasDS
            Filter.Criteria = {00000000}
          end
          inherited pnMensagem: TTS_Panel
            Width = 207
            Height = 101
            inherited dfMensagem: TTS_PopupEdit
              Width = 209
              Height = 21
              StoredValues = 65
            end
            inherited dfObs: TTS_DBMemo
              Width = 194
              DataSource = DMEstimates.C_TabelaDS
              MaxLength = 500
              OnValidate = dfObsValidate
              Height = 78
              StoredValues = 2
            end
          end
        end
        inherited tsContrato: TTS_TabSheet
          inherited TS_Panel1: TTS_Panel
            Width = 619
            Height = 184
            inherited TS_DBMemo1: TTS_DBMemo
              Top = 20
              Width = 615
              DataSource = DMEstimates.C_TabelaDS
              Height = 161
            end
            inherited dfContrato: TTS_PopupEdit
              Width = 621
              Height = 21
              StoredValues = 65
            end
          end
          inherited dbgContratos: TTS_QDBGrid
            Left = 17
            Width = 583
            DataSource = DMEstimates.C_TermosContratoDS
            Filter.Criteria = {00000000}
          end
        end
      end
      inherited pnSetas: TTS_Panel
        Left = 605
        Top = 188
      end
      inherited cbImprimir: TTS_CheckBox
        Top = 185
      end
      inherited pnStatus: TTS_Panel
        Top = 185
        inherited TS_Label1: TTS_Label
          Left = 5
        end
        inherited dfStatus: TTS_DBLookupComboBox
          DataSource = DMEstimates.C_TabelaDS
          OnValidate = dfStatusValidate
          DropDownRows = 20
          ClearKey = 0
          Height = 19
        end
      end
      inherited pnLotes: TTS_Panel
        inherited dbgLotes: TTS_QDBGrid
          DataSource = DMEstimates.C_LotesDS
          Filter.Criteria = {00000000}
        end
      end
      inherited pnPreco: TPanel
        inherited pnOutros: TPanel
          inherited dbgTabelasPreco: TTS_QDBGrid
            Filter.Criteria = {00000000}
          end
        end
      end
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    inherited lbCaption: TdxfLabel
      Width = 94
      Caption = 'Estimates'
    end
    inherited lbCancelado: TdxfLabel
      Visible = False
    end
  end
  inherited FormComponent: TFormComponent
    Caption = 'Estimates'
    Left = 166
    Top = 283
  end
  inherited ppmUltimo: TTS_PopupMenu
    Top = 366
    inherited UltimoGravado: TMenuItem
      Visible = False
    end
    inherited ltimoparaOperao1: TMenuItem [2]
      Caption = #218'ltimo Gravado'
    end
    object EstimatesqueVencem1: TMenuItem [3]
      Caption = 'Or'#231'amentos que:'
      object Amanha: TMenuItem
        Caption = 'Vencem Amanh'#227
        OnClick = AmanhaClick
      end
      object VencemHoje1: TMenuItem
        Caption = 'Vencem Hoje'
        OnClick = VencemHoje1Click
      end
      object VencidasOntem1: TMenuItem
        Caption = 'Venceram Ontem'
        OnClick = VencidasOntem1Click
      end
      object odasasVencidas1: TMenuItem
        Caption = 'Todas as Vencidas'
        OnClick = odasasVencidas1Click
      end
    end
    inherited N6: TMenuItem [4]
    end
    inherited ltimoparaoCliente1: TMenuItem [5]
    end
    inherited ltimoparaaData1: TMenuItem [6]
    end
    inherited InvoicescomProduesExcludas1: TMenuItem
      Visible = False
    end
  end
  inherited ppmOutros: TTS_PopupMenu
    Left = 526
    inherited VerPagamentos1: TMenuItem
      Visible = False
    end
  end
  object imgStatus: TImageList
    Height = 18
    Width = 18
    Left = 276
    Top = 316
    Bitmap = {
      494C010104000900040012001200FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
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
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      FFFFFFFFFFFFFFFFFF000000FFFFF1FFFC7FFF1FFF000000FFFFE0FFF83FFE0F
      FF000000FFFFC07FB01FFC07FF000000FFFFC03E300FFC03FF000000FFFFC01C
      7007FC01FF0000008000400CF003FC00FF00000080004000F001FC007F000000
      80004201F080FC203F00000080004301F0C07C301F00000080004380F0E03C38
      0F0000008000638078F01E3C07000000FFFFFF003FF80FFE03000000FFFFFE10
      1FFC07FF01000000FFFFFC381FFE07FF81000000FFFFFFFC1FFF07FFC1000000
      FFFFFFFE1FFF87FFE1000000FFFFFFFF3FFFCFFFF30000000000000000000000
      0000000000000000000000000000}
  end
end
