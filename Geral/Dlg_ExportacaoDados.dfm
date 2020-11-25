inherited DlgExportacaoDados: TDlgExportacaoDados
  Left = 187
  Top = 219
  Height = 268
  Caption = 'Cadastros Gerais'
  PixelsPerInch = 96
  TextHeight = 13
  inherited pnNavigator: TTS_Panel
    Left = 350
    Width = 108
    Height = 198
    inherited btFecharCadastro: TTS_SpeedButton
      Top = 164
      Width = 106
    end
    inherited btComando2: TTS_SpeedButton
      Width = 106
    end
    inherited btComando1: TTS_SpeedButton
      Width = 106
    end
    inherited btLimpar: TTS_SpeedButton
      Width = 106
      Visible = False
    end
    inherited btGravar: TTS_SpeedButton
      Width = 106
    end
    inherited TS_Bevel1: TTS_Bevel
      Width = 106
    end
  end
  inherited pnTitulo: TTS_MaxPanel
    Gradient.ColorStart = 11911142
    inherited lbCaption: TdxfLabel
      Width = 201
      AutoSize = True
      Caption = 'Exporta'#231#227'o de Dados'
      Effect3D.ShadowedColor = 11911142
    end
  end
  inherited pnDados: TTS_Panel
    Width = 350
    Height = 198
    Color = 14542583
    object cbParametros: TTS_CheckBox
      Left = 11
      Top = 11
      Width = 170
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 0
      Caption = 'Par'#226'metros de Configura'#231#227'o'
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 21
    end
    object cbClientes: TTS_CheckBox
      Left = 11
      Top = 37
      Width = 93
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 1
      Caption = 'Clientes'
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 19
    end
    object cbFornecedores: TTS_CheckBox
      Left = 11
      Top = 62
      Width = 121
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 2
      Caption = 'Fornecedores'
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 19
    end
    object cbFuncionarios: TTS_CheckBox
      Left = 11
      Top = 88
      Width = 121
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 3
      Caption = 'Funcion'#225'rios'
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 19
    end
    object cbItens: TTS_CheckBox
      Left = 11
      Top = 113
      Width = 48
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 4
      Caption = 'Itens'
      StyleController = DMProjeto.esGeral
      OnChange = cbItensChange
      DisableEdit = False
      Height = 19
    end
    object rgTipoItem: TTS_RadioGroup
      Left = 16
      Top = 138
      Width = 252
      Height = 31
      Caption = 'Tipo de Item'
      Columns = 3
      ItemIndex = 0
      Items.Strings = (
        'Invent'#225'rio'
        'Sem Invent.'
        'Servi'#231'os')
      TabOrder = 5
      Visible = False
      Transparent = True
    end
    object cbEstoqueZero: TTS_CheckBox
      Left = 11
      Top = 174
      Width = 253
      Style.BorderStyle = xbsNone
      Style.ButtonStyle = btsSimple
      Style.HotTrack = False
      TabOrder = 6
      Visible = False
      Caption = 'Exportar com o Estoque = 0'
      StyleController = DMProjeto.esGeral
      DisableEdit = False
      Height = 19
    end
  end
  inherited ppmPadrao: TTS_PopupMenu
    Left = 165
    Top = 46
  end
  inherited Beep: TBTBeeper
    Left = 74
    Top = 113
  end
  inherited FormStorage: TFormStorage
    Left = 134
    Top = 92
  end
  inherited FormsComponent: TFormsComponent
    ModuloStyle = DMProjeto.msGeral
    BarEndColor = 11911142
    CaptionShadow = 11911142
    FormColor = 14542583
    Modulo = 'Cadastros Gerais'
    Caption = 'Exporta'#231#227'o de Dados'
  end
  inherited ppmHelp: TTS_PopupMenu
    Left = 286
    Top = 67
  end
  object SaveDialog: TSaveDialog
    Filter = 'Arquivo Texto|*.txt|Todos os Arquivos|*.*'
    Left = 233
    Top = 66
  end
  object Q_Parametros: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 287
    Top = 8
  end
  object Q_Custos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fatorescusto')
    Left = 199
    Top = 114
  end
  object Q_Favorecidos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from favorecidos where tipofavorecido = :nTipo')
    Left = 96
    Top = 2
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nTipo'
        ParamType = ptUnknown
      end>
  end
  object Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select 1 As Tipo,'
      '       i.Codigo,'
      '       i.Referencia,'
      '       i.descricao,'
      '       i.descricaocompra,'
      '       i.cst,'
      '       i.reducaocst,'
      '       i.customedio,'
      '       i.unidade,'
      '       i.Estoque,'
      '       i.precocompra,'
      '       p.preco,'
      '       g.codigo as Grupo,'
      '       f.codigo as Fabricante,'
      '       i.ipicompra,'
      '       i.pesobruto,'
      '       i.pesoliquido,'
      '       i.custocontabil,'
      '       i.ultimacompra,'
      '       i.ultimavenda,'
      '       i.comissao,'
      '       i.descontomaximo,'
      '       i.fatorlucro,'
      '       i.Foto,'
      '       i.unidadeentrada,'
      '       i.fatorundvenda,'
      '       i.ultimofornecedor,'
      '       i.unidadevarejo,'
      '       i.fatorundvenda,'
      '       i.datacadastro,'
      '       i.qtdeminimo,'
      '       i.qtdemaximo,'
      '       i.SITUACAOECF,'
      '       i.codigobarras'
      'From itens i'
      '  left join grupos g on i.grupo = g.grupo'
      '  left join fabricantes f on i.fabricante = f.fabricante'
      '  inner join produtospreco p on p.item = i.item '
      'where i.tipoitem = :nTipo and p.tabelapreco = 0')
    Left = 6
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'nTipo'
        ParamType = ptUnknown
      end>
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from grupos')
    Left = 43
    Top = 5
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fabricantes')
    Left = 317
    Top = 139
  end
end
