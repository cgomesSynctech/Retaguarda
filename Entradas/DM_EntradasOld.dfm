inherited DMEntradas: TDMEntradas
  Left = 138
  Top = 41
  Height = 450
  Width = 508
  inherited OpenDialog: TOpenDialog
    Left = 24
    Top = 321
  end
  inherited SaveDialog: TSaveDialog
    Left = 24
    Top = 322
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select '#9't.Entrada'#9#9'as IDMESTRE,'
      #9't.Favorecido'#9'as Favorecido,'
      #9't.Numero'#9#9'as Numero,'
      '       '#9't.Data'#9#9'as Data,'
      #9't.Total          '#9'as Total,'
      #9't.Situacao       '#9'as Situacao,'
      #9't.OBS'#9#9'as OBS,'
      #9't.TipoMovimento'#9'as TipoMovimento,'
      #9't.BaixaEstoque'#9'as BaixaEstoque,'
      #9't.TIPOPADRAO'#9'as TIPOPADRAO,'
      #9't.Desconto'#9'as Desconto,'
      #9't.PlanoPagamento'#9'as PlanoPagamento,'
      #9't.Frete'#9#9'as Frete,'
      #9't.TipoEntrega'#9'as TipoEntrega,'
      #9't.DataEntrega'#9'as DataEntrega,'
      #9't.OutrasDespesas'#9'as OutrasDespesas,'
      #9't.Juros'#9#9'as Juros,'
      #9't.Campo01'#9'as Campo01,'
      #9't.Campo02'#9'as Campo02,'
      #9't.Campo03 '#9'as Campo03,'
      #9't.Campo04'#9'as Campo04,'
      #9't.Imposto'#9#9'as Imposto,'
      #9't.PJuros'#9#9'as PJuros,'
      #9't.TotalItens'#9'as TotalItens,'
      #9't.Status'#9#9'as Status,'
      #9't.PrevisaoEntrega'#9'as PrevisaoEntrega,'
      #9't.PossuiTax'#9'as PossuiTax,'
      #9't.CalcComissao'#9'as CalcComissao,'
      #9't.PossuiEntrega'#9'as PossuiEntrega,'
      #9't.Tax'#9#9'as Tax,'
      #9't.PercentualTax'#9'as PercentualTax,'
      ''
      #9'f.CODIGO            '#9'as F_CODIGO,'
      #9'f.NOME              '#9'as F_NOME,'
      #9'f.RAZAO             '#9'as F_RAZAO,'
      #9'f.ENDERECO       '#9'as F_ENDERECO,'
      #9'f.CIDADE            '#9'as F_CIDADE,'
      #9'f.UF                '#9'as F_UF,'
      #9'f.CEP               '#9'as F_CEP,'
      #9'f.CAIXAPOSTAL    '#9'as F_CAIXAPOSTAL,'
      #9'f.PAIS              '#9'as F_PAIS,'
      #9'f.FONE1             '#9'as F_FONE1,'
      #9'f.FONE2             '#9'as F_FONE2,'
      #9'f.FAX               '#9'as F_FAX,'
      #9'f.CELULAR           '#9'as F_CELULAR,'
      #9'f.CONTATO           '#9'as F_CONTATO,'
      #9'f.EMAIL             '#9'as F_EMAIL,'
      #9'f.TIPOFAVORECIDO    '#9'as F_TIPOFAVORECIDO,'
      #9'f.TIPOATIVIDADE     '#9'as F_TIPOATIVIDADE,'
      #9'f.PLANOPAGAMENTO    '#9'as F_PLANOPAGAMENTO,'
      #9'f.VENDEDOR          '#9'as F_VENDEDOR,'
      #9'f.LIMITECREDITO     '#9'as F_LIMITECREDITO,'
      #9'f.TAXAVEL           '#9'as F_TAXAVEL,'
      #9'f.TAX               '#9'as F_TAX,'
      #9'f.EIN               '#9'as F_EIN,'
      #9'f.SSN               '#9'as F_SSN,'
      #9'f.TABELAPRECO  '#9'as F_TABELAPRECO,'
      #9'f.DESATIVADO     '#9'as F_DESATIVADO,'
      #9'f.EXIGIVEL1099   '#9'as F_EXIGIVEL1099,'
      #9'f.TIPOENTREGA    '#9'as F_TIPOENTREGA,'
      #9'f.DATACADASTRO'#9'as F_DATACADASTRO,'
      #9'f.SITE              '#9'as F_SITE,'
      #9'f.OBS               '#9'as F_OBS,'
      #9'f.IMPORTACAO   '#9'as F_IMPORTACAO,'
      #9'f.SITUACAO      '#9'as F_SITUACAO,'
      #9'f.CARGO           '#9'as F_CARGO,'
      #9'f.LOGOTIPO     '#9'as F_LOGOTIPO,'
      #9'f.JUROSFACTORY'#9'as F_JUROSFACTORY,'
      #9'f.TAXASFACTORY'#9'as F_TAXASFACTORY,'
      #9'f.FLOATINGFACTORY   as F_FLOATINGFACTORY,'
      #9'f.MEMO_CHECK  '#9'as F_MEMO_CHECK,'
      #9'f.CREDITO           '#9'as F_CREDITO,'
      #9'f.CONTA             '#9'as F_CONTA,'
      #9'f.NUMERO_REVENDA    as F_NUMERO_REVENDA,'
      #9'f.TIPO_FUNC         '#9'as F_TIPO_FUNC,'
      #9'f.DATANASC     '#9'as F_DATANASC,'
      #9'f.COMISSAO '#9'as F_COMISSAO,'
      #9'f.AgruparPorItem'#9'as F_AgruparPorItem,'
      ''
      #9'tm.DESCRICAO'#9'as TM_Descricao,'
      #9'tm.TIPO'#9#9'as TM_TIPO,'
      #9'tm.POSSUITAX'#9'as TM_PossuiTax,'
      #9'tm.BAIXAESTOQUE as TM_BaixaEstoque,'
      #9'tm.CALCCOMISSAO as TM_CalcComissao,'
      #9'tm.POSSUIENTREGA as TM_PossuiEntrega,'
      #9'tm.BLOQUEARSEATRASADO as TM_BloquearSeAtrasado,'
      #9'tm.BLOQUEARPORSITUACAO as TM_BloquearPorSituacao,'
      #9'tm.BLOQUEARPORESTOQUE as TM_BloquearPorEstoque,'
      #9'tm.LIMITEFAVORECIDO as TM_LimiteFavorecido,'
      #9'tm.SIGLAINICIAL '#9'as TM_SiglaInicial,'
      ''
      
        #9'(Select Sum( ValorPago + CreditoUtilizado + Descontos - JurosPa' +
        'gos)'
      #9' From DuplicatasAPagar where Status > 0 and Compra = t.Entrada)'
      #9'as PagoInvoice'
      ''
      
        'from '#9'(ENTRADAS t  left join FAVORECIDOS f on t.FAVORECIDO = f.F' +
        'AVORECIDO)'
      
        #9'left join TIPOSMOVIMENTO tm on tm.TIPOMOVIMENTO = T.TIPOMOVIMEN' +
        'TO'
      ''
      '')
    Left = 24
    Top = 7
  end
  inherited Q_MasterDS: TDataSource
    Left = 88
    Top = 7
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SAIDA,'
      '  NUMERO,'
      '  DATA,'
      '  FAVORECIDO,'
      '  OBS,'
      '  TAX,'
      '  PERCENTUALTAX,'
      '  DESCONTO,'
      '  PLANOPAGAMENTO,'
      '  VENDEDOR,'
      '  FRETE,'
      '  TOTAL,'
      '  TIPOENTREGA,'
      '  DATAENTREGA,'
      '  IMPORTACAO,'
      '  SITUACAO,'
      '  TIPOMOVIMENTO,'
      '  PEDIDO_CLIENTE,'
      '  OUTRASDESPESAS,'
      '  JUROS,'
      '  POSSUITAX,'
      '  BAIXAESTOQUE,'
      '  CALCCOMISSAO,'
      '  POSSUIENTREGA,'
      '  POSSUIFATURAS,'
      '  CAMPO01,'
      '  CAMPO02,'
      '  CAMPO03,'
      '  CAMPO04,'
      '  IMPRESSO'
      'from SAIDAS '
      'where'
      '  SAIDA = :SAIDA')
    ModifySQL.Strings = (
      'update ENTRADAS'
      'set'
      '  NUMERO = :NUMERO,'
      '  DATA = :DATA,'
      '  FAVORECIDO = :FAVORECIDO,'
      '  OBS = :OBS,'
      '  TAX = :TAX,'
      '  PERCENTUALTAX = :PERCENTUALTAX,'
      '  DESCONTO = :DESCONTO,'
      '  PLANOPAGAMENTO = :PLANOPAGAMENTO,'
      '  FRETE = :FRETE,'
      '  TOTAL = :TOTAL,'
      '  TIPOENTREGA = :TIPOENTREGA,'
      '  DATAENTREGA = :DATAENTREGA,'
      '  SITUACAO = :SITUACAO,'
      '  TIPOMOVIMENTO = :TIPOMOVIMENTO,'
      '  OUTRASDESPESAS = :OUTRASDESPESAS,'
      '  JUROS = :JUROS,'
      '  PJUROS = :PJUROS,'
      '  POSSUITAX = :POSSUITAX,'
      '  BAIXAESTOQUE = :BAIXAESTOQUE,'
      '  CALCCOMISSAO = :CALCCOMISSAO,'
      '  POSSUIENTREGA = :POSSUIENTREGA,'
      '  TIPOPADRAO = :TIPOPADRAO,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  IMPOSTO = :IMPOSTO,'
      '  TOTALITENS = :TOTALITENS,'
      '  STATUS = :STATUS'
      'where'
      '  ENTRADA = :OLD_IDMESTRE'
      ' '
      ' '
      ' '
      ' '
      ' ')
    InsertSQL.Strings = (
      'insert into ENTRADAS'
      
        '  (ENTRADA, NUMERO, DATA, FAVORECIDO, OBS, TAX, PERCENTUALTAX, D' +
        'ESCONTO,'
      
        '   PLANOPAGAMENTO, FRETE, TOTAL, TIPOENTREGA, DATAENTREGA, SITUA' +
        'CAO,'
      
        '   TIPOMOVIMENTO, OUTRASDESPESAS, JUROS, POSSUITAX, BAIXAESTOQUE' +
        ','
      
        '   CALCCOMISSAO, POSSUIENTREGA, TIPOPADRAO, CAMPO01, CAMPO02, CA' +
        'MPO03,'
      '   CAMPO04, IMPOSTO, PJUROS, TOTALITENS, STATUS )'
      'values'
      
        '  (:IDMESTRE, :NUMERO, :DATA, :FAVORECIDO, :OBS, :TAX, :PERCENTU' +
        'ALTAX, :DESCONTO,'
      
        '   :PLANOPAGAMENTO, :FRETE, :TOTAL, :TIPOENTREGA, :DATAENTREGA, ' +
        ':SITUACAO,'
      
        '   :TIPOMOVIMENTO, :OUTRASDESPESAS, :JUROS, :POSSUITAX, :BAIXAES' +
        'TOQUE,'
      
        '   :CALCCOMISSAO, :POSSUIENTREGA, :TIPOPADRAO, :CAMPO01, :CAMPO0' +
        '2,'
      '   :CAMPO03, :CAMPO04, :IMPOSTO, :PJUROS, :TOTALITENS, :STATUS )'
      ''
      ' '
      ' '
      ' '
      ' ')
    DeleteSQL.Strings = (
      'delete from ENTRADAS'
      'where'
      '  ENTRADA = :OLD_IDMESTRE')
    Left = 24
    Top = 52
  end
  inherited DMComponent: TDMComponent
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    Gravar3_AposApply = DMComponentGravar3_AposApply
    Gravar5_Terminar = DMComponentGravar5_Terminar
    KeyForIDs = 'Entradas'
    Tabela_Nome = 'Entradas'
    Tabela_Chave = 'Entrada'
    ChavesDetalhes.Strings = ()
    GenerateIDFor.Strings = (
      'C_Itens=IDITEM'
      'C_Parcelas=ID')
    Left = 25
    Top = 270
  end
  inherited DlgMsg: TDlgMsg
    Left = 24
    Top = 326
  end
  inherited P_Tabela: TDataSetProvider
    Left = 24
  end
  inherited C_Tabela: TClientDataSet
    Left = 25
    Top = 152
    inherited C_TabelaNUMERO: TStringField
      OnChange = C_TabelaNUMEROChange
    end
    inherited C_TabelaTOTAL: TBCDField
      DisplayFormat = '##,##0.00'
    end
    inherited C_TabelaF_LIMITECREDITO: TBCDField
      DisplayFormat = '##,##0.00'
    end
    object C_TabelaPERCENTUALTAX: TBCDField [71]
      FieldName = 'PERCENTUALTAX'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESCONTO: TBCDField [72]
      FieldName = 'DESCONTO'
      OnChange = C_TabelaDESCONTOChange
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaPLANOPAGAMENTO: TIntegerField [73]
      FieldName = 'PLANOPAGAMENTO'
      OnChange = C_TabelaPLANOPAGAMENTOChange
    end
    object C_TabelaFRETE: TBCDField [74]
      FieldName = 'FRETE'
      OnChange = C_TabelaFRETEChange
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaTIPOENTREGA: TIntegerField [75]
      FieldName = 'TIPOENTREGA'
    end
    object C_TabelaDATAENTREGA: TDateField [76]
      FieldName = 'DATAENTREGA'
    end
    object C_TabelaOUTRASDESPESAS: TBCDField [77]
      FieldName = 'OUTRASDESPESAS'
      OnChange = C_TabelaFRETEChange
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaJUROS: TBCDField [78]
      FieldName = 'JUROS'
      OnChange = C_TabelaFRETEChange
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaCAMPO01: TStringField [79]
      FieldName = 'CAMPO01'
      Size = 50
    end
    object C_TabelaCAMPO02: TStringField [80]
      FieldName = 'CAMPO02'
      Size = 50
    end
    object C_TabelaCAMPO03: TStringField [81]
      FieldName = 'CAMPO03'
      Size = 50
    end
    object C_TabelaCAMPO04: TStringField [82]
      FieldName = 'CAMPO04'
      Size = 50
    end
    object C_TabelalkPlanoPagamento: TStringField [83]
      FieldKind = fkLookup
      FieldName = 'lkPlanoPagamento'
      LookupDataSet = C_PlanosPagamento
      LookupKeyFields = 'PLANOPAGAMENTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PLANOPAGAMENTO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkTipoEntrega: TStringField [84]
      FieldKind = fkLookup
      FieldName = 'lkTipoEntrega'
      LookupDataSet = C_TiposEntrega
      LookupKeyFields = 'TIPOENTREGA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOENTREGA'
      Size = 25
      Lookup = True
    end
    object C_TabelacfEnderecoParaEntrega: TStringField [87]
      FieldKind = fkInternalCalc
      FieldName = 'cfEnderecoParaEntrega'
      Size = 120
    end
    object C_TabelaIMPOSTO: TBCDField [88]
      FieldName = 'IMPOSTO'
      OnChange = C_TabelaFRETEChange
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaPJUROS: TBCDField
      FieldName = 'PJUROS'
      OnChange = C_TabelaPJUROSChange
      Precision = 18
      Size = 2
    end
    object C_TabelaQ_Parcelas: TDataSetField
      FieldName = 'Q_Parcelas'
      IncludeObjectField = False
    end
    object C_TabelacfLastIDMov: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'cfLastIDMov'
      Size = 15
    end
    object C_TabelaTOTALITENS: TBCDField
      FieldName = 'TOTALITENS'
      OnChange = C_TabelaFRETEChange
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_TabelaPAGOINVOICE: TBCDField
      FieldName = 'PAGOINVOICE'
      Precision = 18
      Size = 2
    end
    object C_TabelaSTATUS: TStringField
      FieldName = 'STATUS'
      Size = 1
    end
    object C_TabelaF_AGRUPARPORITEM: TStringField
      FieldName = 'F_AGRUPARPORITEM'
      Size = 1
    end
    object C_TabelaPREVISAOENTREGA: TDateField
      FieldName = 'PREVISAOENTREGA'
    end
    object C_TabelaTAX: TIntegerField
      FieldName = 'TAX'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 24
  end
  inherited ResultSet: TClientDataSet
    Left = 87
    Top = 52
  end
  inherited Q_Itens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select '#9't.EntradaItem'#9'as IDITEM,'
      #9't.Entrada'#9#9'as IDMestre,'
      '       '#9't.Sequencia'#9'as Sequencia,'
      #9't.Descricao          '#9'as Descricao,'
      #9't.Quantidade       '#9'as Quantidade,'
      #9't.Preco'#9#9'as Preco,'
      #9't.Item'#9#9'as Item,'
      #9't.USOTIPOITEM'#9'as UsoTipoItem,'
      #9't.SubTotalItem'#9'as SubTotalItem,'
      #9't.SubTotalItem'#9'as SubTotal,'
      #9't.Ordem'#9#9'as Ordem,'
      #9't.HasChildren'#9'as HasChildren,'
      #9't.CustoMedio'#9'as CustoMedio,'
      '                t.Taxavel                 as Taxavel,'
      #9't.Coluna1'#9#9'as Coluna1,'
      #9't.Coluna2'#9#9'as Coluna2,'
      #9't.Coluna3'#9#9'as Coluna3,'
      #9't.Coluna4'#9#9'as Coluna4,'
      #9't.ClienteRef'#9'as ClienteRef,'
      #9't.QtdRecebida'#9'as QtdRecebida,'
      #9't.Situacao'#9'as Situacao,'
      #9't.Referencia'#9'as Referencia,'
      ''
      #9'i.TIPOITEM          '#9'as  I_TIPOITEM,'
      #9'i.CODIGO            '#9'as  I_CODIGO,'
      #9'i.DESCRICAOCOMPRA   as  I_DESCRICAOCOMPRA,'
      #9'i.GRUPO             '#9'as  I_GRUPO,'
      #9'i.DESCRICAO         '#9'as  I_DESCRICAO,'
      #9'i.TAXAVEL           '#9'as  I_TAXAVEL,'
      #9'i.CUSTOMEDIO      as  I_CUSTOMEDIO,'
      #9'i.ULTIMOFORNECEDOR  as  I_ULTIMOFORNECEDOR,'
      #9'i.QTDEMINIMO       as  I_QTDEMINIMO,'
      #9'i.QTDEMAXIMO   '#9'as  I_QTDEMAXIMO,'
      #9'i.PONTOPEDIDO  '#9'as  I_PONTOPEDIDO,'
      #9'i.PERCENTUAL      as  I_PERCENTUAL,'
      #9'i.APLICARANTESTAX   as  I_APLICARANTESTAX,'
      #9'i.UNIDADE           '#9'as  I_UNIDADE,'
      #9'i.LOCALIZACAO      as  I_LOCALIZACAO,'
      #9'i.ESTOQUE'#9'as  I_ESTOQUE,'
      #9'i.COMISSAO          '#9'as  I_COMISSAO,'
      #9'i.DESCONTOMAXIMO    as  I_DESCONTOMAXIMO,'
      #9'i.TAXINCLUSO        as  I_TAXINCLUSO,'
      #9'i.CONTA_VENDA    as  I_CONTA_VENDA,'
      #9'i.CONTA_CUSTO    as  I_CONTA_CUSTO,'
      #9'i.CONTA_INVENT   as  I_CONTA_INVENT,'
      #9'i.BALANCO'#9'as  I_BALANCO,'
      #9'i.FOTO'#9#9'as  I_FOTO, '
      #9'i.PROMOCAO'#9'as  I_PROMOCAO,'
      '                i.FATORLUCRO      as  I_FATORLUCRO,'
      '                i.CUSTODESPESAS  as  I_CUSTODESPESAS,'
      #9'u.Descricao'#9'as  DescricaoUnidade,'
      #9'u.Inteira'#9#9'as  UnidadeInteira,'
      #9'fa.Nome'#9#9'as  Nome '
      #9
      'from'#9'((ENTRADASITENS t  LEFT JOIN  ITENS I on I.ITEM = t.ITEM)'
      #9'left join UNIDADES u on I.Unidade = u.Unidade)'
      #9'left join FAVORECIDOS fa on fa.FAVORECIDO = t.CLIENTEREF'
      ''
      'where t.ENTRADA = :IDMESTRE')
    Left = 151
    Top = 7
  end
  inherited U_Itens: TIBUpdateSQL
    ModifySQL.Strings = (
      'update ENTRADASITENS'
      'set'
      '  SEQUENCIA = :SEQUENCIA,'
      '  DESCRICAO = :DESCRICAO,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  PRECO = :PRECO,'
      '  ITEM = :ITEM,'
      '  USOTIPOITEM = :USOTIPOITEM,'
      '  SUBTOTALITEM = :SUBTOTALITEM,'
      '  ORDEM = :ORDEM,'
      '  HASCHILDREN = :HASCHILDREN,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  TAXAVEL = :TAXAVEL,'
      '  COLUNA1 = :COLUNA1,'
      '  COLUNA2 = :COLUNA2,'
      '  COLUNA3 = :COLUNA3,'
      '  COLUNA4 = :COLUNA4,'
      '  CLIENTEREF = :CLIENTEREF,'
      '  QTDRECEBIDA = :QTDRECEBIDA,'
      '  SITUACAO = :SITUACAO,  '
      '  REFERENCIA = :REFERENCIA'
      'where'
      '  ENTRADAITEM = :OLD_IDITEM'
      ' ')
    InsertSQL.Strings = (
      'insert into ENTRADASITENS'
      '  (ENTRADAITEM, ENTRADA, SEQUENCIA, DESCRICAO, QUANTIDADE,'
      '   PRECO, ITEM, USOTIPOITEM, SUBTOTALITEM, ORDEM,'
      '   HASCHILDREN, CUSTOMEDIO, TAXAVEL,'
      '   COLUNA1, COLUNA2, COLUNA3, COLUNA4, CLIENTEREF, '
      '   QTDRECEBIDA, SITUACAO, REFERENCIA )'
      'values'
      '  (:IDITEM, :IDMESTRE, :SEQUENCIA, :DESCRICAO, :QUANTIDADE,'
      '   :PRECO, :ITEM, :USOTIPOITEM, :SUBTOTALITEM, :ORDEM,'
      '   :HASCHILDREN, :CUSTOMEDIO, :TAXAVEL,'
      '   :COLUNA1, :COLUNA2, :COLUNA3, :COLUNA4, :CLIENTEREF, '
      '   :QTDRECEBIDA, :SITUACAO, :REFERENCIA )'
      ' ')
    DeleteSQL.Strings = (
      'delete from ENTRADASITENS'
      'where'
      '  ENTRADAITEM = :OLD_IDITEM')
    Left = 151
  end
  inherited C_Itens: TClientDataSet
    Left = 150
    Top = 107
    inherited C_Itens_icSelecionado: TIntegerField [0]
    end
    inherited C_ItensIDITEM: TIntegerField [1]
    end
    inherited C_ItensIDMESTRE: TIntegerField [2]
    end
    inherited C_ItensSEQUENCIA: TIntegerField [3]
    end
    inherited C_ItensDESCRICAO: TStringField [4]
    end
    inherited C_ItensQUANTIDADE: TBCDField [5]
    end
    inherited C_ItensPRECO: TFloatField [6]
    end
    inherited C_ItensITEM: TIntegerField [7]
    end
    inherited C_ItensUSOTIPOITEM: TStringField [8]
    end
    inherited C_ItensI_TIPOITEM: TIntegerField [9]
    end
    inherited C_ItensI_CODIGO: TStringField [10]
    end
    inherited C_ItensI_DESCRICAOCOMPRA: TStringField [11]
    end
    inherited C_ItensI_GRUPO: TIntegerField [12]
    end
    inherited C_ItensI_DESCRICAO: TStringField [13]
    end
    inherited C_ItensI_QTDEMINIMO: TBCDField [14]
    end
    inherited C_ItensI_QTDEMAXIMO: TBCDField [15]
    end
    inherited C_ItensI_TAXAVEL: TStringField [16]
    end
    inherited C_ItensI_CUSTOMEDIO: TBCDField [17]
    end
    inherited C_ItensI_ULTIMOFORNECEDOR: TIntegerField [18]
    end
    inherited C_ItensI_PERCENTUAL: TBCDField [19]
    end
    inherited C_ItensI_APLICARANTESTAX: TStringField [20]
    end
    inherited C_ItensI_UNIDADE: TStringField [21]
    end
    inherited C_ItensI_ESTOQUE: TBCDField [22]
    end
    inherited C_ItensI_BALANCO: TStringField [23]
    end
    inherited C_ItensI_LOCALIZACAO: TStringField [24]
    end
    inherited C_ItensI_COMISSAO: TBCDField [25]
    end
    inherited C_ItensI_DESCONTOMAXIMO: TBCDField [26]
    end
    inherited C_ItensI_TAXINCLUSO: TStringField [27]
    end
    inherited C_ItensI_CONTA_VENDA: TIntegerField [28]
    end
    inherited C_ItensI_CONTA_CUSTO: TIntegerField [29]
    end
    inherited C_ItensI_CONTA_INVENT: TIntegerField [30]
    end
    inherited C_ItensI_FOTO: TStringField [31]
    end
    inherited C_ItensI_PROMOCAO: TStringField [32]
    end
    inherited C_ItensDESCRICAOUNIDADE: TStringField [33]
    end
    object C_ItenscfMaxDesconto: TFloatField [34]
      FieldKind = fkInternalCalc
      FieldName = 'cfMaxDesconto'
    end
    object C_ItenscfValorMaxDesconto: TFloatField [35]
      FieldKind = fkInternalCalc
      FieldName = 'cfValorMaxDesconto'
    end
    object C_ItensSUBTOTALITEM: TBCDField [36]
      FieldName = 'SUBTOTALITEM'
      Precision = 18
      Size = 2
    end
    object C_ItensORDEM: TIntegerField [37]
      FieldName = 'ORDEM'
    end
    inherited C_ItensUNIDADEINTEIRA: TStringField [38]
    end
    inherited C_ItensSubTotal: TBCDField [39]
    end
    object C_ItenscfBaixoEstoque: TFloatField [41]
      FieldKind = fkInternalCalc
      FieldName = 'cfBaixoEstoque'
    end
    object C_ItensCUSTOMEDIO: TBCDField
      FieldName = 'CUSTOMEDIO'
      Precision = 18
      Size = 2
    end
    object C_ItensTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Size = 1
    end
    object C_ItensI_FATORLUCRO: TBCDField
      FieldName = 'I_FATORLUCRO'
      Precision = 18
      Size = 2
    end
    object C_ItensI_CUSTODESPESAS: TBCDField
      FieldName = 'I_CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object C_ItensCOLUNA1: TStringField
      FieldName = 'COLUNA1'
    end
    object C_ItensCOLUNA2: TStringField
      FieldName = 'COLUNA2'
    end
    object C_ItensCOLUNA3: TStringField
      FieldName = 'COLUNA3'
    end
    object C_ItensCOLUNA4: TStringField
      FieldName = 'COLUNA4'
    end
    object C_ItensCLIENTEREF: TIntegerField
      FieldName = 'CLIENTEREF'
    end
    object C_ItensQTDRECEBIDA: TBCDField
      FieldName = 'QTDRECEBIDA'
      Precision = 18
      Size = 3
    end
    object C_ItensNOME: TStringField
      FieldName = 'NOME'
      Size = 50
    end
    object C_ItensSITUACAO: TStringField
      FieldName = 'SITUACAO'
      Size = 1
    end
    object C_ItensREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
    end
  end
  inherited C_ItensDS: TDataSource
    Left = 151
    Top = 152
  end
  inherited Q_TiposMovimento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'Select  t.*, tp.Descricao as DescTipoPadrao'
      'From TiposMovimento t, TiposPadrao tp'
      'Where t.TipoPadrao = tp.TipoPadrao and Tipo = '#39'E'#39' '
      'Order by TipoPadrao, Descricao')
    Left = 313
    Top = 7
  end
  inherited P_TiposMovimento: TDataSetProvider
    Options = [poAllowMultiRecordUpdates, poDisableInserts, poDisableDeletes]
    Left = 313
    Top = 52
  end
  inherited C_TiposMovimento: TClientDataSet
    Left = 313
    Top = 101
    inherited C_TiposMovimentoDESCRICAO: TStringField
      DisplayWidth = 18
    end
    inherited C_TiposMovimentoDESCTIPOPADRAO: TStringField
      DisplayWidth = 15
    end
    object C_TiposMovimentoTIT1_DATA: TStringField
      FieldName = 'TIT1_DATA'
      Size = 15
    end
    object C_TiposMovimentoTIT2_DATA: TStringField
      FieldName = 'TIT2_DATA'
      Size = 15
    end
    object C_TiposMovimentoTIT3_DATA: TStringField
      FieldName = 'TIT3_DATA'
      Size = 15
    end
    object C_TiposMovimentoTIT1_NUMERO: TStringField
      FieldName = 'TIT1_NUMERO'
      Size = 15
    end
    object C_TiposMovimentoTIT2_NUMERO: TStringField
      FieldName = 'TIT2_NUMERO'
      Size = 15
    end
    object C_TiposMovimentoTIT3_NUMERO: TStringField
      FieldName = 'TIT3_NUMERO'
      Size = 15
    end
    object C_TiposMovimentoCB_INFOENTREGA: TStringField
      FieldName = 'CB_INFOENTREGA'
      Size = 1
    end
    object C_TiposMovimentoTIT1_LOCALENTREGA: TStringField
      FieldName = 'TIT1_LOCALENTREGA'
    end
    object C_TiposMovimentoTIT1_DATAENTREGA: TStringField
      FieldName = 'TIT1_DATAENTREGA'
    end
    object C_TiposMovimentoTIT1_TIPOENTREGA: TStringField
      FieldName = 'TIT1_TIPOENTREGA'
    end
    object C_TiposMovimentoTIT2_LOCALENTREGA: TStringField
      FieldName = 'TIT2_LOCALENTREGA'
    end
    object C_TiposMovimentoTIT2_DATAENTREGA: TStringField
      FieldName = 'TIT2_DATAENTREGA'
    end
    object C_TiposMovimentoTIT2_TIPOENTREGA: TStringField
      FieldName = 'TIT2_TIPOENTREGA'
    end
    object C_TiposMovimentoTIT3_LOCALENTREGA: TStringField
      FieldName = 'TIT3_LOCALENTREGA'
    end
    object C_TiposMovimentoTIT3_DATAENTREGA: TStringField
      FieldName = 'TIT3_DATAENTREGA'
    end
    object C_TiposMovimentoTIT3_TIPOENTREGA: TStringField
      FieldName = 'TIT3_TIPOENTREGA'
    end
    object C_TiposMovimentoCB_VENDEDOR: TStringField
      FieldName = 'CB_VENDEDOR'
      Size = 1
    end
    object C_TiposMovimentoTIT1_VENDEDOR: TStringField
      FieldName = 'TIT1_VENDEDOR'
    end
    object C_TiposMovimentoTIT2_VENDEDOR: TStringField
      FieldName = 'TIT2_VENDEDOR'
    end
    object C_TiposMovimentoTIT3_VENDEDOR: TStringField
      FieldName = 'TIT3_VENDEDOR'
    end
    object C_TiposMovimentoCB_PEDIDO: TStringField
      FieldName = 'CB_PEDIDO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_PEDIDO: TStringField
      FieldName = 'TIT1_PEDIDO'
    end
    object C_TiposMovimentoTIT2_PEDIDO: TStringField
      FieldName = 'TIT2_PEDIDO'
    end
    object C_TiposMovimentoTIT3_PEDIDO: TStringField
      FieldName = 'TIT3_PEDIDO'
    end
    object C_TiposMovimentoCB_COMISSAO: TStringField
      FieldName = 'CB_COMISSAO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_COMISSAO: TStringField
      FieldName = 'TIT1_COMISSAO'
    end
    object C_TiposMovimentoTIT2_COMISSAO: TStringField
      FieldName = 'TIT2_COMISSAO'
    end
    object C_TiposMovimentoTIT3_COMISSAO: TStringField
      FieldName = 'TIT3_COMISSAO'
    end
    object C_TiposMovimentoCB_TERMOS: TStringField
      FieldName = 'CB_TERMOS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_TERMOS: TStringField
      FieldName = 'TIT1_TERMOS'
    end
    object C_TiposMovimentoTIT2_TERMOS: TStringField
      FieldName = 'TIT2_TERMOS'
    end
    object C_TiposMovimentoTIT3_TERMOS: TStringField
      FieldName = 'TIT3_TERMOS'
    end
    object C_TiposMovimentoCB_MENSAGEM: TStringField
      FieldName = 'CB_MENSAGEM'
      Size = 1
    end
    object C_TiposMovimentoTIT1_MENSAGEM: TStringField
      FieldName = 'TIT1_MENSAGEM'
    end
    object C_TiposMovimentoTIT2_MENSAGEM: TStringField
      FieldName = 'TIT2_MENSAGEM'
    end
    object C_TiposMovimentoTIT3_MENSAGEM: TStringField
      FieldName = 'TIT3_MENSAGEM'
    end
    object C_TiposMovimentoCB_DESCONTOS: TStringField
      FieldName = 'CB_DESCONTOS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_DESCONTOS: TStringField
      FieldName = 'TIT1_DESCONTOS'
    end
    object C_TiposMovimentoTIT2_DESCONTOS: TStringField
      FieldName = 'TIT2_DESCONTOS'
    end
    object C_TiposMovimentoTIT3_DESCONTOS: TStringField
      FieldName = 'TIT3_DESCONTOS'
    end
    object C_TiposMovimentoCB_FRETE: TStringField
      FieldName = 'CB_FRETE'
      Size = 1
    end
    object C_TiposMovimentoTIT1_FRETE: TStringField
      FieldName = 'TIT1_FRETE'
    end
    object C_TiposMovimentoTIT2_FRETE: TStringField
      FieldName = 'TIT2_FRETE'
    end
    object C_TiposMovimentoTIT3_FRETE: TStringField
      FieldName = 'TIT3_FRETE'
    end
    object C_TiposMovimentoCB_TOTALITENS: TStringField
      FieldName = 'CB_TOTALITENS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_TOTALITENS: TStringField
      FieldName = 'TIT1_TOTALITENS'
    end
    object C_TiposMovimentoTIT2_TOTALITENS: TStringField
      FieldName = 'TIT2_TOTALITENS'
    end
    object C_TiposMovimentoTIT3_TOTALITENS: TStringField
      FieldName = 'TIT3_TOTALITENS'
    end
    object C_TiposMovimentoCB_TOTALFINAL: TStringField
      FieldName = 'CB_TOTALFINAL'
      Size = 1
    end
    object C_TiposMovimentoTIT1_TOTALFINAL: TStringField
      FieldName = 'TIT1_TOTALFINAL'
    end
    object C_TiposMovimentoTIT2_TOTALFINAL: TStringField
      FieldName = 'TIT2_TOTALFINAL'
    end
    object C_TiposMovimentoTIT3_TOTALFINAL: TStringField
      FieldName = 'TIT3_TOTALFINAL'
    end
    object C_TiposMovimentoTIT1_DESCRICAO: TStringField
      FieldName = 'TIT1_DESCRICAO'
    end
    object C_TiposMovimentoTIT1_QUANTIDADE: TStringField
      FieldName = 'TIT1_QUANTIDADE'
    end
    object C_TiposMovimentoTIT1_PRECO: TStringField
      FieldName = 'TIT1_PRECO'
    end
    object C_TiposMovimentoTIT1_SUBTOTAL: TStringField
      FieldName = 'TIT1_SUBTOTAL'
    end
    object C_TiposMovimentoTIT2_DESCRICAO: TStringField
      FieldName = 'TIT2_DESCRICAO'
    end
    object C_TiposMovimentoTIT2_QUANTIDADE: TStringField
      FieldName = 'TIT2_QUANTIDADE'
    end
    object C_TiposMovimentoTIT2_PRECO: TStringField
      FieldName = 'TIT2_PRECO'
    end
    object C_TiposMovimentoTIT2_SUBTOTAL: TStringField
      FieldName = 'TIT2_SUBTOTAL'
    end
    object C_TiposMovimentoTIT3_DESCRICAO: TStringField
      FieldName = 'TIT3_DESCRICAO'
    end
    object C_TiposMovimentoTIT3_QUANTIDADE: TStringField
      FieldName = 'TIT3_QUANTIDADE'
    end
    object C_TiposMovimentoTIT3_PRECO: TStringField
      FieldName = 'TIT3_PRECO'
    end
    object C_TiposMovimentoTIT3_SUBTOTAL: TStringField
      FieldName = 'TIT3_SUBTOTAL'
    end
    object C_TiposMovimentoCB_VALORTAX: TStringField
      FieldName = 'CB_VALORTAX'
      Size = 1
    end
    object C_TiposMovimentoTIT1_VALORTAX: TStringField
      FieldName = 'TIT1_VALORTAX'
    end
    object C_TiposMovimentoTIT2_VALORTAX: TStringField
      FieldName = 'TIT2_VALORTAX'
    end
    object C_TiposMovimentoTIT3_VALORTAX: TStringField
      FieldName = 'TIT3_VALORTAX'
    end
    object C_TiposMovimentoCB_JUROS: TStringField
      FieldName = 'CB_JUROS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_JUROS: TStringField
      FieldName = 'TIT1_JUROS'
    end
    object C_TiposMovimentoTIT2_JUROS: TStringField
      FieldName = 'TIT2_JUROS'
    end
    object C_TiposMovimentoTIT3_JUROS: TStringField
      FieldName = 'TIT3_JUROS'
    end
    object C_TiposMovimentoCB_DESPESAS: TStringField
      FieldName = 'CB_DESPESAS'
      Size = 1
    end
    object C_TiposMovimentoTIT1_DESPESAS: TStringField
      FieldName = 'TIT1_DESPESAS'
    end
    object C_TiposMovimentoTIT2_DESPESAS: TStringField
      FieldName = 'TIT2_DESPESAS'
    end
    object C_TiposMovimentoTIT3_DESPESAS: TStringField
      FieldName = 'TIT3_DESPESAS'
    end
    object C_TiposMovimentoCB_CAMPO01: TStringField
      FieldName = 'CB_CAMPO01'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CAMPO1: TStringField
      FieldName = 'TIT1_CAMPO1'
    end
    object C_TiposMovimentoTIT2_CAMPO1: TStringField
      FieldName = 'TIT2_CAMPO1'
    end
    object C_TiposMovimentoTIT3_CAMPO1: TStringField
      FieldName = 'TIT3_CAMPO1'
    end
    object C_TiposMovimentoCB_CAMPO02: TStringField
      FieldName = 'CB_CAMPO02'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CAMPO2: TStringField
      FieldName = 'TIT1_CAMPO2'
    end
    object C_TiposMovimentoTIT2_CAMPO2: TStringField
      FieldName = 'TIT2_CAMPO2'
    end
    object C_TiposMovimentoTIT3_CAMPO2: TStringField
      FieldName = 'TIT3_CAMPO2'
    end
    object C_TiposMovimentoCB_CAMPO03: TStringField
      FieldName = 'CB_CAMPO03'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CAMPO3: TStringField
      FieldName = 'TIT1_CAMPO3'
    end
    object C_TiposMovimentoTIT2_CAMPO3: TStringField
      FieldName = 'TIT2_CAMPO3'
    end
    object C_TiposMovimentoTIT3_CAMPO3: TStringField
      FieldName = 'TIT3_CAMPO3'
    end
    object C_TiposMovimentoCB_CAMPO04: TStringField
      FieldName = 'CB_CAMPO04'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CAMPO4: TStringField
      FieldName = 'TIT1_CAMPO4'
    end
    object C_TiposMovimentoTIT2_CAMPO4: TStringField
      FieldName = 'TIT2_CAMPO4'
    end
    object C_TiposMovimentoTIT3_CAMPO4: TStringField
      FieldName = 'TIT3_CAMPO4'
    end
    object C_TiposMovimentoCB_CODIGO: TStringField
      FieldName = 'CB_CODIGO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_CODIGO: TStringField
      FieldName = 'TIT1_CODIGO'
    end
    object C_TiposMovimentoTIT2_CODIGO: TStringField
      FieldName = 'TIT2_CODIGO'
    end
    object C_TiposMovimentoTIT3_CODIGO: TStringField
      FieldName = 'TIT3_CODIGO'
    end
    object C_TiposMovimentoCB_FUNCIONARIO: TStringField
      FieldName = 'CB_FUNCIONARIO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_FUNCIONARIO: TStringField
      FieldName = 'TIT1_FUNCIONARIO'
    end
    object C_TiposMovimentoTIT2_FUNCIONARIO: TStringField
      FieldName = 'TIT2_FUNCIONARIO'
    end
    object C_TiposMovimentoTIT3_FUNCIONARIO: TStringField
      FieldName = 'TIT3_FUNCIONARIO'
    end
    object C_TiposMovimentoCB_TAX: TStringField
      FieldName = 'CB_TAX'
      Size = 1
    end
    object C_TiposMovimentoTIT1_TAX: TStringField
      FieldName = 'TIT1_TAX'
    end
    object C_TiposMovimentoTIT2_TAX: TStringField
      FieldName = 'TIT2_TAX'
    end
    object C_TiposMovimentoTIT3_TAX: TStringField
      FieldName = 'TIT3_TAX'
    end
    object C_TiposMovimentoTIT1_COLUNA1: TStringField
      FieldName = 'TIT1_COLUNA1'
    end
    object C_TiposMovimentoTIT1_COLUNA2: TStringField
      FieldName = 'TIT1_COLUNA2'
    end
    object C_TiposMovimentoTIT1_COLUNA3: TStringField
      FieldName = 'TIT1_COLUNA3'
    end
    object C_TiposMovimentoTIT1_COLUNA4: TStringField
      FieldName = 'TIT1_COLUNA4'
    end
    object C_TiposMovimentoTIT2_COLUNA1: TStringField
      FieldName = 'TIT2_COLUNA1'
    end
    object C_TiposMovimentoTIT2_COLUNA2: TStringField
      FieldName = 'TIT2_COLUNA2'
    end
    object C_TiposMovimentoTIT2_COLUNA3: TStringField
      FieldName = 'TIT2_COLUNA3'
    end
    object C_TiposMovimentoTIT2_COLUNA4: TStringField
      FieldName = 'TIT2_COLUNA4'
    end
    object C_TiposMovimentoTIT3_COLUNA1: TStringField
      FieldName = 'TIT3_COLUNA1'
    end
    object C_TiposMovimentoTIT3_COLUNA2: TStringField
      FieldName = 'TIT3_COLUNA2'
    end
    object C_TiposMovimentoTIT3_COLUNA3: TStringField
      FieldName = 'TIT3_COLUNA3'
    end
    object C_TiposMovimentoTIT3_COLUNA4: TStringField
      FieldName = 'TIT3_COLUNA4'
    end
    object C_TiposMovimentoCORTITULOS: TIntegerField
      FieldName = 'CORTITULOS'
    end
    object C_TiposMovimentoTIPOFAVPADRAO: TIntegerField
      FieldName = 'TIPOFAVPADRAO'
    end
    object C_TiposMovimentoCB_COLUNA1: TStringField
      FieldName = 'CB_COLUNA1'
      Size = 1
    end
    object C_TiposMovimentoCB_COLUNA2: TStringField
      FieldName = 'CB_COLUNA2'
      Size = 1
    end
    object C_TiposMovimentoCB_COLUNA3: TStringField
      FieldName = 'CB_COLUNA3'
      Size = 1
    end
    object C_TiposMovimentoCB_COLUNA4: TStringField
      FieldName = 'CB_COLUNA4'
      Size = 1
    end
    object C_TiposMovimentoTIT1_UNIDADE: TStringField
      FieldName = 'TIT1_UNIDADE'
    end
    object C_TiposMovimentoTIT2_UNIDADE: TStringField
      FieldName = 'TIT2_UNIDADE'
    end
    object C_TiposMovimentoTIT3_UNIDADE: TStringField
      FieldName = 'TIT3_UNIDADE'
    end
    object C_TiposMovimentoFOTO: TStringField
      FieldName = 'FOTO'
      Size = 1
    end
    object C_TiposMovimentoTIT1_VALIDADE: TStringField
      FieldName = 'TIT1_VALIDADE'
    end
    object C_TiposMovimentoTIT2_VALIDADE: TStringField
      FieldName = 'TIT2_VALIDADE'
    end
    object C_TiposMovimentoTIT3_VALIDADE: TStringField
      FieldName = 'TIT3_VALIDADE'
    end
    object C_TiposMovimentoCB_REFERENCIA: TStringField
      FieldName = 'CB_REFERENCIA'
      Size = 1
    end
    object C_TiposMovimentoTIT1_REFERENCIA: TStringField
      FieldName = 'TIT1_REFERENCIA'
    end
    object C_TiposMovimentoTIT2_REFERENCIA: TStringField
      FieldName = 'TIT2_REFERENCIA'
    end
    object C_TiposMovimentoTIT3_REFERENCIA: TStringField
      FieldName = 'TIT3_REFERENCIA'
    end
    object C_TiposMovimentoTIT1_QTDRECEBIDA: TStringField
      FieldName = 'TIT1_QTDRECEBIDA'
    end
    object C_TiposMovimentoTIT2_QTDRECEBIDA: TStringField
      FieldName = 'TIT2_QTDRECEBIDA'
    end
    object C_TiposMovimentoTIT3_QTDRECEBIDA: TStringField
      FieldName = 'TIT3_QTDRECEBIDA'
    end
    object C_TiposMovimentoTIT1_SITUACAO: TStringField
      FieldName = 'TIT1_SITUACAO'
    end
    object C_TiposMovimentoTIT2_SITUACAO: TStringField
      FieldName = 'TIT2_SITUACAO'
    end
    object C_TiposMovimentoTIT3_SITUACAO: TStringField
      FieldName = 'TIT3_SITUACAO'
    end
  end
  inherited C_TiposMovimentoDS: TDataSource
    Left = 313
    Top = 152
  end
  object Q_PlanosPagamento: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From PlanosPagamento where Tipo = '#39'E'#39)
    UniDirectional = True
    Left = 263
    Top = 216
  end
  object P_PlanosPagamento: TDataSetProvider
    DataSet = Q_PlanosPagamento
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 263
    Top = 263
  end
  object C_PlanosPagamento: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PlanosPagamento'
    Left = 263
    Top = 312
    object C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField
      FieldName = 'PLANOPAGAMENTO'
      Required = True
    end
    object C_PlanosPagamentoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_PlanosPagamentoJUROS: TBCDField
      FieldName = 'JUROS'
      Precision = 18
      Size = 2
    end
    object C_PlanosPagamentoQTDPARCELAS: TIntegerField
      FieldName = 'QTDPARCELAS'
    end
    object C_PlanosPagamentoINTERVALOS: TStringField
      FieldName = 'INTERVALOS'
      Size = 255
    end
    object C_PlanosPagamentoPDESCONTO: TBCDField
      FieldName = 'PDESCONTO'
      Precision = 18
      Size = 2
    end
    object C_PlanosPagamentoDIAS_ANTECIPACAO: TIntegerField
      FieldName = 'DIAS_ANTECIPACAO'
    end
    object C_PlanosPagamentoJUROSNEGOCIAVEIS: TStringField
      FieldName = 'JUROSNEGOCIAVEIS'
      Size = 1
    end
  end
  object Q_TiposEntrega: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From TiposEntrega'
      'order by Descricao')
    UniDirectional = True
    Left = 151
    Top = 215
  end
  object P_TiposEntrega: TDataSetProvider
    DataSet = Q_TiposEntrega
    Constraints = True
    Options = [poDisableInserts, poDisableEdits, poDisableDeletes]
    Left = 151
    Top = 263
  end
  object C_TiposEntrega: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposEntrega'
    Left = 151
    Top = 312
    object C_TiposEntregaTIPOENTREGA: TIntegerField
      FieldName = 'TIPOENTREGA'
      Required = True
    end
    object C_TiposEntregaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From PlanosPagamento where Tipo = '#39'S'#39)
    UniDirectional = True
    Left = 87
    Top = 121
  end
  object Q_Parcelas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'Select '#9'ID, Titulo, Parcela, Vencimento, Competencia, Valor, '
      #9'(Valor - ValorPago - Descontos - CreditoUtilizado) as Saldo,'
      #9'Compra as IDMestre, '
      #9'ValorPago, Fornecedor, NotaFiscal, Status, '
      #9'DataAntecipacao, ValorDescAntecipado,'
      #9'JurosPlano, Usuario, Descontos, JurosPagos,'
      #9'DataAtrasado, ValorJurosMora, ValorMulta, '
      #9'CreditoUtilizado, CreditoGerado, '
      #9'Multa, JurosMora'
      #9
      'from DuplicatasAPagar'
      ''
      'Where Compra = :IDMestre '
      '')
    UpdateObject = U_Parcelas
    Left = 218
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = 'IDMESTRE'
        ParamType = ptUnknown
      end>
  end
  object U_Parcelas: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from TitulosAReceber '
      'where'
      '  ID = :ID')
    ModifySQL.Strings = (
      'update DUPLICATASAPAGAR'
      'set'
      '  TITULO = :TITULO,'
      '  PARCELA = :PARCELA,'
      '  VENCIMENTO = :VENCIMENTO,'
      '  COMPETENCIA = :COMPETENCIA,'
      '  VALOR = :VALOR,'
      '  VALORPAGO = :VALORPAGO,'
      '  FORNECEDOR = :FORNECEDOR,'
      '  NOTAFISCAL = :NOTAFISCAL,'
      '  STATUS = :STATUS,'
      '  DATAANTECIPACAO = :DATAANTECIPACAO,'
      '  VALORDESCANTECIPADO = :VALORDESCANTECIPADO,'
      '  JUROSPLANO = :JUROSPLANO,'
      '  USUARIO = :USUARIO,'
      '  DESCONTOS = :DESCONTOS,'
      '  JUROSPAGOS = :JUROSPAGOS,'
      '  DATAATRASADO = :DATAATRASADO,'
      '  VALORJUROSMORA = :VALORJUROSMORA,'
      '  VALORMULTA = :VALORMULTA,'
      '  CREDITOUTILIZADO = :CREDITOUTILIZADO,'
      '  CREDITOGERADO = :CREDITOGERADO,'
      '  MULTA = :MULTA,'
      '  JUROSMORA = :JUROSMORA'
      'where'
      '  ID = :OLD_ID')
    InsertSQL.Strings = (
      'insert into DUPLICATASAPAGAR'
      '  (ID, TITULO, PARCELA, VENCIMENTO, COMPETENCIA, VALOR, COMPRA,'
      
        '   VALORPAGO, FORNECEDOR, NOTAFISCAL, STATUS, DATAANTECIPACAO, V' +
        'ALORDESCANTECIPADO,'
      
        '   JUROSPLANO, USUARIO, DESCONTOS, JUROSPAGOS, DATAATRASADO, VAL' +
        'ORJUROSMORA,'
      
        '   VALORMULTA, CREDITOUTILIZADO, CREDITOGERADO, MULTA, JUROSMORA' +
        ')'
      'values'
      
        '  (:ID, :TITULO, :PARCELA, :VENCIMENTO, :COMPETENCIA, :VALOR, :I' +
        'DMESTRE,'
      
        '   :VALORPAGO, :FORNECEDOR, :NOTAFISCAL, :STATUS, :DATAANTECIPAC' +
        'AO,'
      
        '   :VALORDESCANTECIPADO, :JUROSPLANO, :USUARIO, :DESCONTOS, :JUR' +
        'OSPAGOS,'
      
        '   :DATAATRASADO, :VALORJUROSMORA, :VALORMULTA, :CREDITOUTILIZAD' +
        'O, :CREDITOGERADO,'
      '   :MULTA, :JUROSMORA)'
      ' '
      ' ')
    DeleteSQL.Strings = (
      'delete from DUPLICATASAPAGAR'
      'where'
      '  ID = :OLD_ID')
    Left = 218
    Top = 52
  end
  object C_Parcelas: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_Parcelas
    Params = <>
    BeforePost = C_ParcelasBeforePost
    OnNewRecord = C_ParcelasNewRecord
    Left = 218
    Top = 100
    object C_ParcelasID: TIntegerField
      FieldName = 'ID'
      Required = True
    end
    object C_ParcelasTITULO: TStringField
      FieldName = 'TITULO'
      Size = 10
    end
    object C_ParcelasPARCELA: TIntegerField
      FieldName = 'PARCELA'
    end
    object C_ParcelasVENCIMENTO: TDateField
      FieldName = 'VENCIMENTO'
    end
    object C_ParcelasCOMPETENCIA: TDateField
      FieldName = 'COMPETENCIA'
    end
    object C_ParcelasVALOR: TBCDField
      FieldName = 'VALOR'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ParcelasSALDO: TBCDField
      FieldName = 'SALDO'
      DisplayFormat = '##,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ParcelasIDMESTRE: TIntegerField
      FieldName = 'IDMESTRE'
    end
    object C_ParcelasVALORPAGO: TBCDField
      FieldName = 'VALORPAGO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasNOTAFISCAL: TStringField
      FieldName = 'NOTAFISCAL'
      Size = 15
    end
    object C_ParcelasSTATUS: TIntegerField
      FieldName = 'STATUS'
    end
    object C_ParcelasDATAANTECIPACAO: TDateField
      FieldName = 'DATAANTECIPACAO'
    end
    object C_ParcelasVALORDESCANTECIPADO: TBCDField
      FieldName = 'VALORDESCANTECIPADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSPLANO: TBCDField
      FieldName = 'JUROSPLANO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasUSUARIO: TIntegerField
      FieldName = 'USUARIO'
    end
    object C_ParcelasDESCONTOS: TBCDField
      FieldName = 'DESCONTOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasDATAATRASADO: TDateField
      FieldName = 'DATAATRASADO'
    end
    object C_ParcelasVALORJUROSMORA: TBCDField
      FieldName = 'VALORJUROSMORA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasVALORMULTA: TBCDField
      FieldName = 'VALORMULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCREDITOUTILIZADO: TBCDField
      FieldName = 'CREDITOUTILIZADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasCREDITOGERADO: TBCDField
      FieldName = 'CREDITOGERADO'
      Precision = 18
      Size = 2
    end
    object C_ParcelasFORNECEDOR: TIntegerField
      FieldName = 'FORNECEDOR'
    end
    object C_ParcelasJUROSPAGOS: TBCDField
      FieldName = 'JUROSPAGOS'
      Precision = 18
      Size = 2
    end
    object C_ParcelasMULTA: TBCDField
      FieldName = 'MULTA'
      Precision = 18
      Size = 2
    end
    object C_ParcelasJUROSMORA: TBCDField
      FieldName = 'JUROSMORA'
      Precision = 18
      Size = 2
    end
  end
  object C_ParcelasDS: TDataSource
    DataSet = C_Parcelas
    Left = 218
    Top = 152
  end
  object Q_SQLi: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select  *  From PlanosPagamento where Tipo = '#39'S'#39)
    UniDirectional = True
    Left = 87
    Top = 171
  end
end
