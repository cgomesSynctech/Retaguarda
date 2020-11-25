inherited DMItens: TDMItens
  Left = 175
  Top = 13
  Height = 572
  Width = 780
  inherited OpenDialog: TOpenDialog
    Left = 24
    Top = 321
  end
  inherited SaveDialog: TSaveDialog
    Left = 24
    Top = 320
  end
  inherited Q_Tabela: TIBQuery
    BufferChunks = 5000
    SQL.Strings = (
      'Select i.*, pp.Preco, '
      '           '#9'uf.Nome as NomeUltimoFornecedor, '
      #9'fp.Nome as NomeFornecPreferencia, '
      #9'i.descricao as descricaoold,'
      #9'i.Estoque as EstoqueOld,'
      #9'i.CustoMedio as CustoMedioOld'
      'from (((Itens I '
      
        '        INNER JOIN ProdutosPreco pp ON i.item = pp.item and pp.u' +
        'nidade = i.unidade)'
      
        '        LEFT JOIN Favorecidos uf ON uf.Favorecido = i.ULTIMOFORN' +
        'ECEDOR)'
      
        '        LEFT JOIN Favorecidos fp ON fp.Favorecido = i.FORNECPREF' +
        'ERENCIA)  where pp.tabelapreco = 0')
    Left = 25
    Top = 4
  end
  inherited Q_MasterDS: TDataSource
    Left = 95
    Top = 4
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ITEM,'
      '  TIPOITEM,'
      '  CODIGO,'
      '  DESCRICAOCOMPRA,'
      '  GRUPO,'
      '  DESCRICAO,'
      '  TAXAVEL,'
      '  CUSTOMEDIO,'
      '  ULTIMOFORNECEDOR,'
      '  QTDEMINIMO,'
      '  QTDEMAXIMO,'
      '  PONTOPEDIDO,'
      '  PERCENTUAL,'
      '  APLICARANTESTAX,'
      '  UNIDADE,'
      '  LOCALIZACAO,'
      '  DESATIVADO,'
      '  ESTOQUE,'
      '  IMPORTACAO,'
      '  COMISSAO,'
      '  DESCONTOMAXIMO,'
      '  TAXINCLUSO,'
      '  CONTA_VENDA,'
      '  CONTA_CUSTO,'
      '  CONTA_INVENT,'
      '  FABRICANTE,'
      '  BALANCO,'
      '  CAMPO01,'
      '  CAMPO02,'
      '  CAMPO03,'
      '  CAMPO04,'
      '  CAMPO05,'
      '  PRECOCOMPRA,'
      '  CAMPO06,'
      '  CUSTOCONTABIL,'
      '  ISITEMCOMPRA,'
      '  CAMPO07,'
      '  CAMPO08,'
      '  PTAXINCLUSO,'
      '  CAMPO09,'
      '  CUSTODESPESAS,'
      '  CAMPO10,'
      '  FOTO,'
      '  PROMOCAO,'
      '  FATORLUCRO,'
      '  HASCHILDREN,'
      '  REFERENCIA,'
      '  SEMLUCRO,'
      '  PRI_CUSTOMEDIO,'
      '  PRI_CUSTOCONTABIL,'
      '  PRI_PRECOCOMPRA,'
      '  DATACADASTRO,'
      '  CUSTOPRODUTO,'
      '  CONTROLEVALIDADE,'
      '  TEMPOMEDIOVALIDADE,'
      '  FORNECPREFERENCIA,'
      '  REVENDA,'
      '  ULTIMACOMPRA,'
      '  COMPENSACUSTO,'
      '  FLAG_COMISSAO,'
      '  FLAG_PTAXINCLUSO,'
      '  FLAG_FATORLUCRO,'
      '  FLAG_CUSTODESPESAS,'
      '  COMLUCRO,'
      '  UNIDADEENTRADA,'
      '  UNIDADECARGA,'
      '  UNIDADEVAREJO,'
      '  UNIDADEMINIMA,'
      '  ABC'
      'from ITENS '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update ITENS'
      'set'
      '  TIPOITEM = :TIPOITEM,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA,'
      '  GRUPO = :GRUPO,'
      '  DESCRICAO = :DESCRICAO,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  QTDEMINIMO = :QTDEMINIMO,'
      '  QTDEMAXIMO = :QTDEMAXIMO,'
      '  PONTOPEDIDO = :PONTOPEDIDO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  UNIDADE = :UNIDADE,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  IMPORTACAO = :IMPORTACAO,'
      '  COMISSAO = :COMISSAO,'
      '  DESCONTOMAXIMO = :DESCONTOMAXIMO,'
      '  CONTA_VENDA = :CONTA_VENDA,'
      '  CONTA_CUSTO = :CONTA_CUSTO,'
      '  CONTA_INVENT = :CONTA_INVENT,'
      '  FABRICANTE = :FABRICANTE,'
      '  BALANCO = :BALANCO,'
      '  CAMPO01 = :CAMPO01,'
      '  CAMPO02 = :CAMPO02,'
      '  CAMPO03 = :CAMPO03,'
      '  CAMPO04 = :CAMPO04,'
      '  CAMPO05 = :CAMPO05,'
      '  PRECOCOMPRA = :PRECOCOMPRA,'
      '  CAMPO06 = :CAMPO06,'
      '  CUSTOCONTABIL = :CUSTOCONTABIL,'
      '  ISITEMCOMPRA = :ISITEMCOMPRA,'
      '  CAMPO07 = :CAMPO07,'
      '  CAMPO08 = :CAMPO08,'
      '  CAMPO09 = :CAMPO09,'
      '  CUSTODESPESAS = :CUSTODESPESAS,'
      '  CAMPO10 = :CAMPO10,'
      '  FOTO = :FOTO,'
      '  PROMOCAO = :PROMOCAO,'
      '  FATORLUCRO = :FATORLUCRO,'
      '  HASCHILDREN = :HASCHILDREN,'
      '  REFERENCIA = :REFERENCIA,'
      '  CONTROLEVALIDADE = :CONTROLEVALIDADE,'
      '  TEMPOMEDIOVALIDADE = :TEMPOMEDIOVALIDADE,'
      '  FORNECPREFERENCIA = :FORNECPREFERENCIA,'
      '  REVENDA = :REVENDA,'
      '  ULTIMACOMPRA = :ULTIMACOMPRA,'
      '  COMPENSACUSTO = :COMPENSACUSTO,'
      '  UNIDADEENTRADA = :UNIDADEENTRADA,'
      '  UNIDADECARGA = :UNIDADECARGA,'
      '  UNIDADEVAREJO = :UNIDADEVAREJO,'
      '  UNIDADEMINIMA = :UNIDADEMINIMA,'
      '  ABC = :ABC,'
      '  DESCRICAOTECNICA = :DESCRICAOTECNICA,'
      '  DESCRICAOCOMPLEMENTAR = :DESCRICAOCOMPLEMENTAR,'
      '  SITUACAOECF = :SITUACAOECF,'
      '  ALIQICMS = :ALIQICMS,'
      '  CST = :CST,'
      '  REDUCAOCST = :REDUCAOCST,'
      '  LEITURAATUAL = :LEITURAATUAL,'
      '  LEITURAMAXIMA = :LEITURAMAXIMA,'
      '  IPICOMPRA = :IPICOMPRA,'
      '  IPIVENDA = :IPIVENDA,'
      '  PESOBRUTO = :PESOBRUTO,'
      '  PESOLIQUIDO = :PESOLIQUIDO,'
      '  TVA = :TVA,'
      '  TVAFONTE = :TVAFONTE,'
      '  CLASFISCAL = :CLASFISCAL,'
      '  IDENTIFICACAO = :IDENTIFICACAO,'
      '  CODIGOBARRAS = :CODIGOBARRAS,'
      '  ENCERRANTE = :ENCERRANTE,'
      '  AGENDARCONTATO = :AGENDARCONTATO,'
      '  PISCOFINS = :PISCOFINS,'
      '  REDUCAOCSTENTRADA = :REDUCAOCSTENTRADA'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into ITENS'
      '  (ITEM, TIPOITEM, CODIGO, DESCRICAOCOMPRA, GRUPO, DESCRICAO, '
      '   CUSTOMEDIO, QTDEMINIMO, QTDEMAXIMO, PONTOPEDIDO, PERCENTUAL,'
      '   UNIDADE, LOCALIZACAO, DESATIVADO, IMPORTACAO, COMISSAO, '
      'DESCONTOMAXIMO,'
      '   CONTA_VENDA, CONTA_CUSTO, CONTA_INVENT, FABRICANTE, BALANCO,'
      '   CAMPO01, CAMPO02, CAMPO03, CAMPO04, CAMPO05, '
      'PRECOCOMPRA,CAMPO06, CUSTOCONTABIL,'
      '   ISITEMCOMPRA, CAMPO07, CAMPO08, CAMPO09, CUSTODESPESAS,'
      '   CAMPO10, FOTO, PROMOCAO, FATORLUCRO, HASCHILDREN, REFERENCIA,'
      '   CONTROLEVALIDADE, TEMPOMEDIOVALIDADE, ULTIMOFORNECEDOR, '
      'FORNECPREFERENCIA,'
      '   REVENDA, ULTIMACOMPRA, COMPENSACUSTO, UNIDADEENTRADA,'
      '   UNIDADECARGA, UNIDADEVAREJO, UNIDADEMINIMA, ABC,'
      '   DESCRICAOCOMPLEMENTAR, DESCRICAOTECNICA,'
      '   SITUACAOECF, ALIQICMS,  CST,  REDUCAOCST, LEITURAATUAL,'
      
        '   LEITURAMAXIMA, IPICOMPRA,  IPIVENDA,  PESOBRUTO,  PESOLIQUIDO' +
        ','
      '   TVA,  TVAFONTE,  CLASFISCAL, IDENTIFICACAO, CODIGOBARRAS,   '
      'ENCERRANTE, AGENDARCONTATO,   PISCOFINS,   REDUCAOCSTENTRADA)'
      'values'
      
        '  (:ITEM, :TIPOITEM, :CODIGO, :DESCRICAOCOMPRA, :GRUPO, :DESCRIC' +
        'AO,'
      '   :CUSTOMEDIO, :QTDEMINIMO, :QTDEMAXIMO, :PONTOPEDIDO, '
      ':PERCENTUAL,'
      '   :UNIDADE, :LOCALIZACAO, :DESATIVADO, :IMPORTACAO, :COMISSAO,'
      '   :DESCONTOMAXIMO, :CONTA_VENDA, :CONTA_CUSTO, :CONTA_INVENT,'
      
        '   :FABRICANTE, :BALANCO, :CAMPO01, :CAMPO02, :CAMPO03, :CAMPO04' +
        ', '
      ':CAMPO05,'
      
        '   :PRECOCOMPRA, :CAMPO06, :CUSTOCONTABIL, :ISITEMCOMPRA, :CAMPO' +
        '07, '
      ':CAMPO08,'
      '   :CAMPO09, :CUSTODESPESAS, :CAMPO10, :FOTO, :PROMOCAO,'
      '   :FATORLUCRO, :HASCHILDREN, :REFERENCIA, :CONTROLEVALIDADE, '
      ':TEMPOMEDIOVALIDADE,'
      '   :ULTIMOFORNECEDOR, :FORNECPREFERENCIA, :REVENDA, '
      ':ULTIMACOMPRA, :COMPENSACUSTO,'
      
        '   :UNIDADEENTRADA, :UNIDADECARGA,:UNIDADEVAREJO, :UNIDADEMINIMA' +
        ', '
      ':ABC,'
      '   :DESCRICAOCOMPLEMENTAR, :DESCRICAOTECNICA,'
      '   :SITUACAOECF, :ALIQICMS,  :CST,  :REDUCAOCST, :LEITURAATUAL,'
      
        '   :LEITURAMAXIMA, :IPICOMPRA,  :IPIVENDA,  :PESOBRUTO,  :PESOLI' +
        'QUIDO,'
      
        '   :TVA,  :TVAFONTE,  :CLASFISCAL, :IDENTIFICACAO, :CODIGOBARRAS' +
        ', '
      ':ENCERRANTE, :AGENDARCONTATO, :PISCOFINS,  :REDUCAOCSTENTRADA)')
    DeleteSQL.Strings = (
      'delete from ITENS'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 25
    Top = 50
  end
  inherited DMComponent: TDMComponent
    EnableFastSearch = True
    AntesDeApagar = DMComponentAntesDeApagar
    AntesDeDesativar = DMComponentAntesDeDesativar
    AntesDeIniciar = DMComponentAntesDeIniciar
    AposIniciar = DMComponentAposIniciar
    ModoInclusao1_Iniciar = DMComponentModoInclusao1_Iniciar
    ModoInclusao2_Terminar = DMComponentModoInclusao2_Terminar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    Gravar1_Iniciar = DMComponentGravar1_Iniciar
    Gravar3_AposApply = DMComponentGravar3_AposApply
    Gravar4_AposCommit = DMComponentGravar4_AposCommit
    Gravar5_Terminar = DMComponentGravar5_Terminar
    Apagar_AntesApply = DMComponentApagar_AntesApply
    KeyForIDs = 'Itens'
    Tabela_Nome = 'Itens'
    Tabela_Chave = 'i.Item'
    Tabela_ChaveAlias = 'Item'
    MestreDetalhe = True
    GenerateIDFor.Strings = (
      'C_ItensFilhos=idfilho'
      'C_ItensUnidades=ItemUnidade'
      'C_ItensAlmox=ItemAlmox')
    DeleteValidate.Strings = (
      'SaidasItens=item'
      'BalancoFichasItens=item'
      'EntradasItens=item'
      'SaidasItensFilhos=item'
      'Montagens=Item')
    Left = 24
    Top = 269
  end
  inherited DlgMsg: TDlgMsg
    Left = 32
    Top = 370
  end
  inherited P_Tabela: TDataSetProvider
    Left = 25
  end
  inherited C_Tabela: TClientDataSet
    BeforePost = C_TabelaBeforePost
    AfterScroll = C_TabelaAfterScroll
    OnCalcFields = C_TabelaCalcFields
    Left = 27
    Top = 152
    object C_TabelacmbUnidade: TStringField
      DisplayWidth = 30
      FieldKind = fkLookup
      FieldName = 'cmbUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_TabelaITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object C_TabelaTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Origin = 'ITENS.TIPOITEM'
      OnChange = C_TabelaTIPOITEMChange
    end
    object C_TabelaCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      OnValidate = C_TabelaCODIGOValidate
      Size = 13
    end
    object C_TabelaDESCRICAOCOMPRA: TStringField
      FieldName = 'DESCRICAOCOMPRA'
      Origin = 'ITENS.DESCRICAOCOMPRA'
      OnChange = C_TabelaDESCRICAOCOMPRAChange
      Size = 50
    end
    object C_TabelaGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'ITENS.GRUPO'
      OnChange = C_TabelaGRUPOChange
    end
    object C_TabelaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      OnChange = C_TabelaDESCRICAOChange
      Size = 50
    end
    object C_TabelaULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
      LookupDataSet = C_Contas
      Origin = 'ITENS.ULTIMOFORNECEDOR'
      OnChange = C_TabelaULTIMOFORNECEDORChange
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'ITENS.DESATIVADO'
      Size = 1
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'ITENS.IMPORTACAO'
    end
    object C_TabelaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENS.UNIDADE'
      OnChange = C_TabelaUNIDADEChange
      OnValidate = C_TabelaUNIDADEValidate
      Size = 6
    end
    object C_TabelaLOCALIZACAO: TStringField
      FieldName = 'LOCALIZACAO'
      Origin = 'ITENS.LOCALIZACAO'
      Size = 10
    end
    object C_TabelaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'ITENS.PERCENTUAL'
      OnChange = C_TabelaPERCENTUALChange
      DisplayFormat = '###,##0.0#%'
      Precision = 18
      Size = 2
    end
    object C_TabelaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITENS.COMISSAO'
      DisplayFormat = '##0.0#%'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'ITENS.DESCONTOMAXIMO'
      DisplayFormat = '##0.0#%'
      Precision = 18
      Size = 2
    end
    object C_TabelaCONTA_VENDA: TIntegerField
      FieldName = 'CONTA_VENDA'
      Origin = 'ITENS.CONTA_VENDA'
    end
    object C_TabelaCONTA_CUSTO: TIntegerField
      FieldName = 'CONTA_CUSTO'
      Origin = 'ITENS.CONTA_CUSTO'
    end
    object C_TabelaCONTA_INVENT: TIntegerField
      FieldName = 'CONTA_INVENT'
      Origin = 'ITENS.CONTA_INVENT'
    end
    object C_TabelacmbTipoItem: TStringField
      FieldKind = fkLookup
      FieldName = 'cmbTipoItem'
      LookupDataSet = C_TiposItens
      LookupKeyFields = 'TIPOITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOITEM'
      Size = 30
      Lookup = True
    end
    object C_TabelalkContaVenda: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaVenda'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_VENDA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkContaCusto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaCusto'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_CUSTO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkContaInvent: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaInvent'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_INVENT'
      Size = 30
      Lookup = True
    end
    object C_TabelacfValorEstoqueTotal: TFloatField
      FieldKind = fkCalculated
      FieldName = 'cfValorEstoqueTotal'
      DisplayFormat = '###,##0.00'
      Calculated = True
    end
    object C_TabelacmbGrupoItem: TStringField
      FieldKind = fkLookup
      FieldName = 'cmbGrupoItem'
      LookupDataSet = C_Grupos
      LookupKeyFields = 'GRUPO'
      LookupResultField = 'DESCRICAOGRUPO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
    end
    object C_TabelaQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Origin = 'ITENS.QTDEMINIMO'
      DisplayFormat = '###,##0.0##'
      Precision = 18
      Size = 3
    end
    object C_TabelaQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Origin = 'ITENS.QTDEMAXIMO'
      DisplayFormat = '###,##0.0##'
      Precision = 18
      Size = 3
    end
    object C_TabelaFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Origin = 'ITENS.FABRICANTE'
    end
    object C_TabelalkFabricante: TStringField
      FieldKind = fkLookup
      FieldName = 'lkFabricante'
      LookupDataSet = C_Fabricantes
      LookupKeyFields = 'FABRICANTE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'FABRICANTE'
      Size = 30
      Lookup = True
    end
    object C_TabelaBALANCO: TStringField
      FieldName = 'BALANCO'
      Origin = 'ITENS.BALANCO'
      Size = 1
    end
    object C_TabelaCAMPO01: TStringField
      FieldName = 'CAMPO01'
      Origin = 'ITENS.CAMPO01'
      Size = 255
    end
    object C_TabelaCAMPO02: TStringField
      FieldName = 'CAMPO02'
      Origin = 'ITENS.CAMPO02'
      Size = 255
    end
    object C_TabelaCAMPO03: TStringField
      FieldName = 'CAMPO03'
      Origin = 'ITENS.CAMPO03'
      Size = 255
    end
    object C_TabelaCAMPO04: TStringField
      FieldName = 'CAMPO04'
      Origin = 'ITENS.CAMPO04'
      Size = 255
    end
    object C_TabelaCAMPO05: TStringField
      FieldName = 'CAMPO05'
      Origin = 'ITENS.CAMPO05'
      Size = 255
    end
    object C_TabelaCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Origin = 'ITENS.CAMPO06'
      Size = 255
    end
    object C_TabelaCAMPO07: TStringField
      FieldName = 'CAMPO07'
      Origin = 'ITENS.CAMPO07'
      Size = 255
    end
    object C_TabelaCAMPO08: TStringField
      FieldName = 'CAMPO08'
      Origin = 'ITENS.CAMPO08'
      Size = 255
    end
    object C_TabelaCAMPO09: TStringField
      FieldName = 'CAMPO09'
      Origin = 'ITENS.CAMPO09'
      Size = 255
    end
    object C_TabelaCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Origin = 'ITENS.CAMPO10'
      Size = 255
    end
    object C_TabelaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      DisplayFormat = '###,##0.0##'
      Precision = 18
      Size = 3
    end
    object C_TabelaFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'ITENS.FOTO'
      Size = 255
    end
    object C_TabelaPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Origin = 'ITENS.PONTOPEDIDO'
      DisplayFormat = '###,##0.0##'
      Precision = 18
      Size = 3
    end
    object C_TabelaPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Origin = 'ITENS.PROMOCAO'
      Size = 1
    end
    object C_TabelaHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Origin = 'ITENS.HASCHILDREN'
      Size = 1
    end
    object C_TabelaREFERENCIA: TStringField
      DisplayWidth = 25
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_TabelaCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Origin = 'ITENS.CUSTODESPESAS'
      DisplayFormat = '##0.0#%'
      Precision = 18
      Size = 2
    end
    object C_TabelaPrecoCalc: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'PrecoCalc'
      DisplayFormat = '###,##0.00'
    end
    object C_TabelaISITEMCOMPRA: TStringField
      FieldName = 'ISITEMCOMPRA'
      Origin = 'ITENS.ISITEMCOMPRA'
      Size = 1
    end
    object C_TabelaFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
      Origin = 'ITENS.FATORLUCRO'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'ITENS.DATACADASTRO'
    end
    object C_TabelaPrecoCalcDescMax: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'PrecoCalcDescMax'
    end
    object C_TabelaMenorPrecoVenda: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'MenorPrecoVenda'
    end
    object C_TabelaicDespesaFixa: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDespesaFixa'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicImpostosFederais: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icImpostosFederais'
    end
    object C_TabelaicFator: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icFator'
    end
    object C_TabelaicEncargosCartoes: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icEncargosCartoes'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicCustoDespesas: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icCustoDespesas'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicComissaoAplic: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icComissaoAplic'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicComissao: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icComissao'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicDescontoMaximo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icDescontoMaximo'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicFatorLucro: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icFatorLucro'
      OnValidate = C_TabelaicFatorLucroValidate
    end
    object C_TabelaicFatorMult: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icFatorMult'
    end
    object C_TabelaCONTROLEVALIDADE: TStringField
      FieldName = 'CONTROLEVALIDADE'
      Origin = 'ITENS.CONTROLEVALIDADE'
      Size = 1
    end
    object C_TabelaTEMPOMEDIOVALIDADE: TIntegerField
      FieldName = 'TEMPOMEDIOVALIDADE'
      Origin = 'ITENS.TEMPOMEDIOVALIDADE'
    end
    object C_TabelaFORNECPREFERENCIA: TIntegerField
      FieldName = 'FORNECPREFERENCIA'
      Origin = 'ITENS.FORNECPREFERENCIA'
      OnChange = C_TabelaFORNECPREFERENCIAChange
    end
    object C_TabelaREVENDA: TStringField
      FieldName = 'REVENDA'
      Origin = 'ITENS.REVENDA'
      Size = 1
    end
    object C_TabelaULTIMACOMPRA: TDateField
      FieldName = 'ULTIMACOMPRA'
      Origin = 'ITENS.ULTIMACOMPRA'
    end
    object C_TabelaCOMPENSACUSTO: TFloatField
      FieldName = 'COMPENSACUSTO'
      Origin = 'ITENS.COMPENSACUSTO'
      DisplayFormat = '#,##0.0##### %'
    end
    object C_TabelaSEMLUCRO: TFloatField
      FieldName = 'SEMLUCRO'
      Origin = 'ITENS.SEMLUCRO'
    end
    object C_TabelaCOMLUCRO: TFloatField
      FieldName = 'COMLUCRO'
      Origin = 'ITENS.COMLUCRO'
    end
    object C_TabelaUNIDADEENTRADA: TStringField
      FieldName = 'UNIDADEENTRADA'
      Origin = 'ITENS.UNIDADEENTRADA'
      OnChange = C_TabelaUNIDADEENTRADAChange
      Size = 6
    end
    object C_TabelaUNIDADECARGA: TStringField
      FieldName = 'UNIDADECARGA'
      Origin = 'ITENS.UNIDADECARGA'
      OnChange = C_TabelaUNIDADECARGAChange
      Size = 6
    end
    object C_TabelaUNIDADEVAREJO: TStringField
      FieldName = 'UNIDADEVAREJO'
      Origin = 'ITENS.UNIDADEVAREJO'
      OnChange = C_TabelaUNIDADEVAREJOChange
      Size = 6
    end
    object C_TabelaUNIDADEMINIMA: TIntegerField
      FieldName = 'UNIDADEMINIMA'
      Origin = 'ITENS.UNIDADEMINIMA'
    end
    object C_TabelalkUnidadeVarejo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidadeVarejo'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADEVAREJO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkUnidadeCompra: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidadeCompra'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADEENTRADA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkUnidadeCarga: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidadeCarga'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADECARGA'
      Size = 30
      Lookup = True
    end
    object C_TabelaULTQTDECOMPRA: TBCDField
      FieldName = 'ULTQTDECOMPRA'
      Origin = 'ITENS.ULTQTDECOMPRA'
      Precision = 18
      Size = 3
    end
    object C_TabelaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'ITENS.CUSTOMEDIO'
    end
    object C_TabelaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      Origin = 'ITENS.PRECOCOMPRA'
      OnChange = C_TabelaPRECOCOMPRAChange
    end
    object C_TabelaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      Origin = 'ITENS.CUSTOCONTABIL'
    end
    object C_TabelaPRI_CUSTOMEDIO: TFloatField
      FieldName = 'PRI_CUSTOMEDIO'
      Origin = 'ITENS.PRI_CUSTOMEDIO'
    end
    object C_TabelaPRI_CUSTOCONTABIL: TFloatField
      FieldName = 'PRI_CUSTOCONTABIL'
      Origin = 'ITENS.PRI_CUSTOCONTABIL'
    end
    object C_TabelaPRI_PRECOCOMPRA: TFloatField
      FieldName = 'PRI_PRECOCOMPRA'
      Origin = 'ITENS.PRI_PRECOCOMPRA'
    end
    object C_TabelaCUSTOPRODUTO: TFloatField
      FieldName = 'CUSTOPRODUTO'
      Origin = 'ITENS.CUSTOPRODUTO'
    end
    object C_TabelaPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      OnChange = C_TabelaPRECOChange
      Precision = 18
      Size = 3
    end
    object C_TabelaicEstoque: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoque'
      OnChange = C_TabelaicEstoqueChange
      DisplayFormat = '0.00'
    end
    object C_TabelaicQtdeMinimo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icQtdeMinimo'
      OnChange = C_TabelaicQtdeMinimoChange
      DisplayFormat = '0.00'
    end
    object C_TabelaicQtdeMaximo: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icQtdeMaximo'
      OnChange = C_TabelaicQtdeMaximoChange
      DisplayFormat = '0.00'
    end
    object C_TabelaicPontoPedido: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icPontoPedido'
      OnChange = C_TabelaicPontoPedidoChange
      DisplayFormat = '0.00'
    end
    object C_TabelaicUltQtdeCompra: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icUltQtdeCompra'
      DisplayFormat = '###,##0.0##'
    end
    object C_TabelaFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
      Origin = 'ITENSUNIDADES.FATORUNDVENDA'
    end
    object C_TabelaFATORUNDCOMPRA: TFloatField
      FieldName = 'FATORUNDCOMPRA'
      Origin = 'ITENSUNIDADES.FATORUNDCOMPRA'
    end
    object C_TabelaNOMEULTIMOFORNECEDOR: TStringField
      FieldName = 'NOMEULTIMOFORNECEDOR'
      Origin = 'FAVORECIDOS.NOMEULTIMOFORNECEDOR'
      Size = 50
    end
    object C_TabelaNOMEFORNECPREFERENCIA: TStringField
      FieldName = 'NOMEFORNECPREFERENCIA'
      Origin = 'FAVORECIDOS.NOMEFORNECPREFERENCIA'
      Size = 50
    end
    object C_TabelaicPrecoCompra: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoCompra'
      OnChange = C_TabelaicPrecoCompraChange
    end
    object C_TabelaicCustoMedio: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icCustoMedio'
      OnChange = C_TabelaicCustoMedioChange
    end
    object C_TabelaicCustoContabil: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icCustoContabil'
      OnChange = C_TabelaicCustoContabilChange
    end
    object C_TabelaABC: TStringField
      FieldName = 'ABC'
      Size = 1
    end
    object C_TabelaDESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'DESCRICAOCOMPLEMENTAR'
      Size = 255
    end
    object C_TabelaDESCRICAOTECNICA: TStringField
      FieldName = 'DESCRICAOTECNICA'
      Size = 255
    end
    object C_TabelaDESCRICAOOLD: TStringField
      FieldName = 'DESCRICAOOLD'
      Size = 50
    end
    object C_TabelaCST: TStringField
      FieldName = 'CST'
      OnChange = C_TabelaCSTChange
      Size = 2
    end
    object C_TabelaREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaIPIVENDA: TBCDField
      FieldName = 'IPIVENDA'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object C_TabelaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object C_TabelaALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      OnChange = C_TabelaSITUACAOECFChange
      Size = 1
    end
    object C_TabelaTVA: TBCDField
      FieldName = 'TVA'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaTVAFONTE: TBCDField
      FieldName = 'TVAFONTE'
      DisplayFormat = '#0.0# %'
      Precision = 18
      Size = 2
    end
    object C_TabelaCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Size = 15
    end
    object C_TabelaLEITURAATUAL: TBCDField
      FieldName = 'LEITURAATUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelaLEITURAMAXIMA: TBCDField
      FieldName = 'LEITURAMAXIMA'
      Precision = 18
      Size = 2
    end
    object C_TabelalkSitECF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkSitECF'
      LookupDataSet = C_SitECF
      LookupKeyFields = 'SITUACAOECF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'icSituacaoECF'
      Size = 25
      Lookup = True
    end
    object C_TabelalkCST: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCST'
      LookupDataSet = C_CSTs
      LookupKeyFields = 'CST'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'icCST'
      Size = 30
      Lookup = True
    end
    object C_TabelaicICMSAPLICADO: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icICMSAPLICADO'
      DisplayFormat = '#0.0# %'
      Size = 2
    end
    object C_TabelaicSituacaoECF: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icSituacaoECF'
      Size = 1
    end
    object C_TabelaicCST: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icCST'
      Size = 2
    end
    object C_TabelaicTVA: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icTVA'
      DisplayFormat = '#0.0# %'
      Size = 2
    end
    object C_TabelaicTVAFonte: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icTVAFonte'
      DisplayFormat = '#0.0# %'
      Size = 2
    end
    object C_TabelaicAliqICMS: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icAliqICMS'
      DisplayFormat = '#0.0# %'
      Size = 2
    end
    object C_TabelaicReducaoCST: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icReducaoCST'
      DisplayFormat = '#0.0# %'
      Size = 2
    end
    object C_TabelaULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
    end
    object C_TabelaESTOQUEOLD: TBCDField
      FieldName = 'ESTOQUEOLD'
      Size = 3
    end
    object C_TabelaIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Size = 1
    end
    object C_TabelaCUSTOMEDIOOLD: TFloatField
      FieldName = 'CUSTOMEDIOOLD'
    end
    object C_TabelaCODIGOBARRAS: TStringField
      FieldName = 'CODIGOBARRAS'
      Size = 13
    end
    object C_TabelaENCERRANTE: TStringField
      FieldName = 'ENCERRANTE'
      Size = 1
    end
    object C_TabelaAGENDARCONTATO: TStringField
      FieldName = 'AGENDARCONTATO'
      Size = 1
    end
    object C_TabelaPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_TabelaREDUCAOCSTENTRADA: TBCDField
      FieldName = 'REDUCAOCSTENTRADA'
      Precision = 18
      Size = 2
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 25
    Top = 213
  end
  inherited ResultSet: TClientDataSet
    Left = 95
    Top = 50
  end
  object Q_TiposItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from TiposItens'
      'Where not (TipoItem in (5,6))')
    UniDirectional = True
    Left = 360
    Top = 4
    object Q_TiposItensTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
    end
    object Q_TiposItensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_Master2DS
    SQL.Strings = (
      'select * from GRUPOS '
      'where tipoitem = :TIPOITEM'
      'order by descricaogrupo')
    UniDirectional = True
    Left = 436
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TIPOITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADES order by descricao')
    UniDirectional = True
    Left = 408
    Top = 283
  end
  object C_Grupos: TClientDataSet
    Aggregates = <>
    DataSetField = C_TiposItensQ_Grupos
    Params = <>
    Left = 438
    Top = 155
    object C_GruposGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPOS.GRUPO'
      Required = True
    end
    object C_GruposCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'GRUPOS.CODIGO'
      Size = 10
    end
    object C_GruposDESCRICAOGRUPO: TStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object C_GruposTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Origin = 'GRUPOS.TIPOITEM'
      Required = True
    end
    object C_GruposDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'GRUPOS.DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object C_GruposCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'GRUPOS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_GruposCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Origin = 'GRUPOS.CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object C_GruposFATORLUCRO: TBCDField
      FieldName = 'FATORLUCRO'
      Origin = 'GRUPOS.FATORLUCRO'
      Precision = 18
      Size = 2
    end
    object C_GruposCST: TStringField
      FieldName = 'CST'
      Origin = 'GRUPOS.CST'
      Size = 2
    end
    object C_GruposREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      Origin = 'GRUPOS.REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object C_GruposALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'GRUPOS.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object C_GruposSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'GRUPOS.SITUACAOECF'
      Size = 1
    end
    object C_GruposTVA: TBCDField
      FieldName = 'TVA'
      Origin = 'GRUPOS.TVA'
      Precision = 18
      Size = 2
    end
    object C_GruposTVAFONTE: TBCDField
      FieldName = 'TVAFONTE'
      Origin = 'GRUPOS.TVAFONTE'
      Precision = 18
      Size = 2
    end
  end
  object P_TiposItens: TDataSetProvider
    DataSet = Q_TiposItens
    Constraints = True
    Left = 360
    Top = 99
  end
  object C_TiposItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposItens'
    Left = 360
    Top = 154
    object C_TiposItensTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Required = True
    end
    object C_TiposItensDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_TiposItensQ_Grupos: TDataSetField
      FieldName = 'Q_Grupos'
    end
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 408
    Top = 379
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
    object C_UnidadesCOMQTD: TStringField
      FieldName = 'COMQTD'
      Size = 1
    end
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 408
    Top = 331
  end
  object C_GruposDS: TDataSource
    DataSet = C_Grupos
    Left = 436
    Top = 207
  end
  object C_TiposItensDS: TDataSource
    DataSet = C_TiposItens
    Left = 95
    Top = 183
  end
  object C_UnidadesDS: TDataSource
    DataSet = C_Unidades
    Left = 408
    Top = 428
  end
  object Q_Contas: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.conta,c.descricao, t.descricao as DescTipo, c.saldo, c.' +
        'contapai,'
      'c.tipoconta, c.codigoreduzido'
      'from contas c, tiposcontas t'
      'where desativado = '#39'N'#39' and c.tipoconta = t.tipoconta'
      'order by c.tipoconta, c.descricao')
    UniDirectional = True
    Left = 335
    Top = 283
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 327
    Top = 331
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 327
    Top = 379
    object C_ContasCONTA: TIntegerField
      FieldName = 'CONTA'
      Origin = 'CONTAS.CONTA'
    end
    object C_ContasDESCRICAO: TStringField
      DisplayWidth = 25
      FieldName = 'DESCRICAO'
      Origin = 'CONTAS.DESCRICAO'
      Size = 50
    end
    object C_ContasDESCTIPO: TStringField
      DisplayWidth = 20
      FieldName = 'DESCTIPO'
      Origin = 'TIPOSCONTAS.DESCTIPO'
      Size = 25
    end
    object C_ContasSALDO: TBCDField
      FieldName = 'SALDO'
      Origin = 'CONTAS.SALDO'
      DisplayFormat = '###,##0.00'
      Precision = 18
      Size = 2
    end
    object C_ContasCONTAPAI: TIntegerField
      FieldName = 'CONTAPAI'
      Origin = 'CONTAS.CONTAPAI'
    end
    object C_ContasTIPOCONTA: TIntegerField
      FieldName = 'TIPOCONTA'
      Origin = 'CONTAS.TIPOCONTA'
    end
    object C_ContasCODIGOREDUZIDO: TStringField
      FieldName = 'CODIGOREDUZIDO'
      Origin = 'CONTAS.CODIGOREDUZIDO'
      Size = 12
    end
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 327
    Top = 428
  end
  object Q_ProdutosPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 5000
    CachedUpdates = False
    SQL.Strings = (
      'select pp.*, t.Percentual, t.Baseada '
      
        'from produtospreco pp INNER JOIN TabelasPreco t ON t.TabelaPreco' +
        ' = pp.TabelaPreco'
      'where pp.item = :ITEM ')
    UpdateObject = U_ProdutosPreco
    Left = 182
    Top = 3
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ProdutosPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ProdutosPreco'
    BeforeOpen = C_ProdutosPrecoBeforeOpen
    BeforePost = C_ProdutosPrecoBeforePost
    OnCalcFields = C_ProdutosPrecoCalcFields
    OnNewRecord = C_ProdutosPrecoNewRecord
    Left = 182
    Top = 157
    object C_ProdutosPreco_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ProdutosPrecoPRODUTOPRECO: TIntegerField
      FieldName = 'PRODUTOPRECO'
      Required = True
    end
    object C_ProdutosPrecoITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PRODUTOSPRECO.ITEM'
    end
    object C_ProdutosPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'PRODUTOSPRECO.TABELAPRECO'
    end
    object C_ProdutosPrecoPRECOMANUAL: TStringField
      FieldName = 'PRECOMANUAL'
      Origin = 'PRODUTOSPRECO.PRECOMANUAL'
      Size = 1
    end
    object C_ProdutosPrecoPrecoMinimo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'PrecoMinimo'
    end
    object C_ProdutosPrecoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOSPRECO.UNIDADE'
      Size = 6
    end
    object C_ProdutosPrecoPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      OnChange = C_ProdutosPrecoPRECOChange
      Precision = 18
      Size = 3
    end
    object C_ProdutosPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_ProdutosPrecoBASEADA: TStringField
      FieldName = 'BASEADA'
      Size = 1
    end
    object C_ProdutosPrecolkTabela: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTabela'
      LookupDataSet = C_TabelasPreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPRECO'
      Size = 25
      Lookup = True
    end
  end
  object C_ProdutosPrecoDS: TDataSource
    DataSet = C_ProdutosPreco
    Left = 184
    Top = 202
  end
  object Q_TabelasPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from tabelaspreco where desativado = '#39'N'#39
      'order by Percentual, TabelaPreco')
    UniDirectional = True
    Left = 574
    Top = 283
    object Q_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object Q_TabelasPrecoDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object Q_TabelasPrecoPERCENTUAL: TIBBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object Q_TabelasPrecoDESATIVADO: TIBStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object Q_TabelasPrecoBASEADA: TIBStringField
      FieldName = 'BASEADA'
      Size = 1
    end
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasPreco'
    Left = 571
    Top = 380
    object C_TabelasPrecoTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
    end
    object C_TabelasPrecoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 25
    end
    object C_TabelasPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelasPrecoDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Size = 1
    end
    object C_TabelasPrecoBASEADA: TStringField
      FieldName = 'BASEADA'
      Size = 1
    end
  end
  object P_TabelasPreco: TDataSetProvider
    DataSet = Q_TabelasPreco
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 574
    Top = 331
  end
  object U_ProdutosPreco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from produtospreco '
      'where'
      '  ITEM = :ITEM and'
      '  TABELAPRECO = :TABELAPRECO and'
      '  UNIDADE = :UNIDADE')
    ModifySQL.Strings = (
      'update produtospreco'
      'set'
      '  ITEM = :ITEM,'
      '  TABELAPRECO = :TABELAPRECO,'
      '  PRECO = :PRECO,'
      '  PRECOMANUAL = :PRECOMANUAL,'
      '  UNIDADE = :UNIDADE,'
      '  ID_ALTPRECO = '#39'CAD. ITENS - Update'#39
      'where'
      '  PRODUTOPRECO = :OLD_PRODUTOPRECO')
    InsertSQL.Strings = (
      'insert into produtospreco'
      '  (ITEM, TABELAPRECO, PRECO, PRECOMANUAL, UNIDADE, ID_ALTPRECO)'
      'values'
      
        '  (:ITEM, :TABELAPRECO, :PRECO, :PRECOMANUAL, :UNIDADE, '#39'CAD. IT' +
        'ENS - '
      'Insert'#39')')
    DeleteSQL.Strings = (
      'delete from produtospreco'
      'where'
      '  PRODUTOPRECO = :OLD_PRODUTOPRECO ')
    Left = 183
    Top = 49
  end
  object Q_Master2DS: TDataSource
    DataSet = Q_TiposItens
    Left = 95
    Top = 120
  end
  object Q_Fabricantes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from fabricantes'
      'order by descricao')
    UniDirectional = True
    Left = 483
    Top = 283
  end
  object P_Fabricantes: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 484
    Top = 331
  end
  object C_Fabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Fabricantes'
    Left = 484
    Top = 380
    object C_FabricantesFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Origin = 'FABRICANTES.FABRICANTE'
    end
    object C_FabricantesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'FABRICANTES.DESCRICAO'
      Size = 30
    end
  end
  object Q_ItensFilhos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select ii.*, i.codigo, i.descricao, i.customedio, i.FatorUndVend' +
        'a as FatorUndPrecoVenda, pp.Preco, ii.Fator as OldFator, ii.Unid' +
        'ade as UnidadeOld'
      'from itensfilhos ii '
      '            inner join itens i ON ii.subitem = i.item '
      
        '            inner join produtospreco pp ON ii.Subitem = pp.Item ' +
        'and pp.Unidade = i.Unidade'
      'where ii.item = :ITEM and pp.tabelapreco = 0')
    UniDirectional = True
    UpdateObject = U_ItensFilhos
    Left = 279
    Top = 5
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ItensFilhos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ItensFilhos'
    BeforeOpen = C_ItensFilhosBeforeOpen
    AfterOpen = C_ItensFilhosAfterOpen
    OnCalcFields = C_ItensFilhosCalcFields
    OnNewRecord = C_ItensFilhosNewRecord
    Left = 280
    Top = 156
    object C_ItensFilhosIDFILHO: TIntegerField
      FieldName = 'IDFILHO'
      Origin = 'ITENSFILHOS.IDFILHO'
      Required = True
    end
    object C_ItensFilhosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENSFILHOS.ITEM'
    end
    object C_ItensFilhosSUBITEM: TIntegerField
      FieldName = 'SUBITEM'
      Origin = 'ITENSFILHOS.SUBITEM'
      OnChange = C_ItensFilhosSUBITEMChange
    end
    object C_ItensFilhosQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'ITENSFILHOS.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      OnChange = C_ItensFilhosUNIDADEChange
      Size = 6
    end
    object C_ItensFilhosFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object C_ItensFilhosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ItensFilhosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ItensFilhosCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'ITENS.CUSTOMEDIO'
    end
    object C_ItensFilhosPRECO: TBCDField
      FieldName = 'PRECO'
      Size = 3
    end
    object C_ItensFilhosFatorUndPrecoVenda: TFloatField
      FieldName = 'FatorUndPrecoVenda'
    end
    object C_ItensFilhoslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_ItensFilhosicSubTotalPreco: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalPreco'
      Size = 3
    end
    object C_ItensFilhosicSubTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotal'
    end
    object C_ItensFilhosicPreco: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icPreco'
      Size = 3
    end
    object C_ItensFilhosicCustoMedio: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icCustoMedio'
      Size = 2
    end
    object C_ItensFilhosOldFator: TFloatField
      FieldName = 'OldFator'
    end
    object C_ItensFilhosUnidadeOld: TStringField
      FieldName = 'UnidadeOld'
      Size = 6
    end
  end
  object C_ItensFilhosDS: TDataSource
    DataSet = C_ItensFilhos
    Left = 279
    Top = 204
  end
  object U_ItensFilhos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itensfilhos '
      'where'
      '  IDFILHO = :IDFILHO')
    ModifySQL.Strings = (
      'update itensfilhos'
      'set'
      '  SUBITEM = :SUBITEM,'
      '  ITEM = :ITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR'
      'where'
      '  IDFILHO = :OLD_IDFILHO')
    InsertSQL.Strings = (
      'insert into itensfilhos'
      '  (IDFILHO, SUBITEM, ITEM, QUANTIDADE, UNIDADE, FATOR)'
      'values'
      '  (:IDFILHO, :SUBITEM, :ITEM, :QUANTIDADE, :UNIDADE, :FATOR)')
    DeleteSQL.Strings = (
      'delete from itensfilhos'
      'where'
      '  IDFILHO = :OLD_IDFILHO')
    Left = 279
    Top = 51
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 95
    Top = 247
  end
  object IBEventos_Itens: TIBEvents
    AutoRegister = True
    Database = DMProjeto.DB_Projeto
    Events.Strings = (
      'EVENTO_CONTAS'
      'EVENTO_FABRICANTES'
      'EVENTO_GRUPOS'
      'EVENTO_TABELASPRECO'
      'EVENTO_UNIDADES')
    Registered = False
    OnEventAlert = IBEventos_ItensEventAlert
    Left = 93
    Top = 315
  end
  object C_ItensUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ItensUnidades'
    BeforeOpen = C_ItensUnidadesBeforeOpen
    AfterOpen = C_ItensUnidadesAfterOpen
    BeforeDelete = C_ItensUnidadesBeforeDelete
    OnNewRecord = C_ItensUnidadesNewRecord
    Left = 529
    Top = 157
    object C_ItensUnidadesITEMUNIDADE: TIntegerField
      FieldName = 'ITEMUNIDADE'
      Origin = 'ITENSUNIDADES.ITEMUNIDADE'
      Required = True
    end
    object C_ItensUnidadesITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENSUNIDADES.ITEM'
    end
    object C_ItensUnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENSUNIDADES.UNIDADE'
      Size = 6
    end
    object C_ItensUnidadesFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'ITENSUNIDADES.FATOR'
      OnChange = C_ItensUnidadesFATORChange
      DisplayFormat = '###,##0.0##'
    end
    object C_ItensUnidadeslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_ItensUnidadesPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 3
    end
    object C_ItensUnidadesPRECOMANUAL: TBCDField
      FieldName = 'PRECOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_ItensUnidadesHERDADO: TStringField
      FieldName = 'HERDADO'
      FixedChar = True
      Size = 1
    end
    object C_ItensUnidadesPERCENTUALMINIMO: TBCDField
      FieldName = 'PERCENTUALMINIMO'
      Precision = 18
      Size = 3
    end
  end
  object C_ItensUnidadesDS: TDataSource
    DataSet = C_ItensUnidades
    Left = 526
    Top = 207
  end
  object Q_ItensUnidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 5000
    CachedUpdates = True
    SQL.Strings = (
      'select * from ItensUnidades'
      'where item = :item')
    UniDirectional = True
    UpdateObject = U_UnidadesItens
    Left = 526
    Top = 4
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_UnidadesItens: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  ITEMUNIDADE,'
      '  ITEM,'
      '  UNIDADE,'
      '  FATOR,'
      '  EXPORTACAO,'
      '  PERCENTUAL,'
      '  PRECOMANUAL,'
      '  HERDADO,'
      '  PERCENTUALMINIMO'
      'from ITENSUNIDADES '
      'where'
      '  ITEMUNIDADE = :ITEMUNIDADE')
    ModifySQL.Strings = (
      'update ITENSUNIDADES'
      'set'
      '  ITEM = :ITEM,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  PRECOMANUAL = :PRECOMANUAL,'
      '  HERDADO = :HERDADO,'
      '  PERCENTUALMINIMO = :PERCENTUALMINIMO'
      'where'
      '  ITEMUNIDADE = :OLD_ITEMUNIDADE')
    InsertSQL.Strings = (
      'insert into ITENSUNIDADES'
      '  (ITEM, UNIDADE, FATOR, PERCENTUAL, PRECOMANUAL, '
      'HERDADO,PERCENTUALMINIMO)'
      'values'
      '  (:ITEM, :UNIDADE, :FATOR, :PERCENTUAL, :PRECOMANUAL, '
      ':HERDADO,:PERCENTUALMINIMO)')
    DeleteSQL.Strings = (
      'delete from ITENSUNIDADES'
      'where'
      '  ITEMUNIDADE = :OLD_ITEMUNIDADE')
    Left = 528
    Top = 51
  end
  object C_ProdutosPrecoTmp: TClientDataSet
    Aggregates = <>
    Params = <>
    BeforePost = C_ProdutosPrecoBeforePost
    OnCalcFields = C_ProdutosPrecoCalcFields
    OnNewRecord = C_ProdutosPrecoNewRecord
    Left = 41
    Top = 423
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object IntegerField2: TIntegerField
      FieldName = 'PRODUTOPRECO'
      Required = True
    end
    object IntegerField3: TIntegerField
      FieldName = 'ITEM'
      Origin = 'PRODUTOSPRECO.ITEM'
    end
    object IntegerField4: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'PRODUTOSPRECO.TABELAPRECO'
    end
    object StringField1: TStringField
      FieldName = 'PRECOMANUAL'
      Origin = 'PRODUTOSPRECO.PRECOMANUAL'
      Size = 1
    end
    object CurrencyField1: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'PrecoMinimo'
    end
    object StringField2: TStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOSPRECO.UNIDADE'
      Size = 6
    end
    object BCDField1: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      OnChange = C_ProdutosPrecoPRECOChange
      Precision = 18
      Size = 3
    end
    object BCDField2: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object StringField3: TStringField
      FieldName = 'BASEADA'
      Size = 1
    end
    object StringField4: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTabela'
      LookupDataSet = C_TabelasPreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPRECO'
      Size = 25
      Lookup = True
    end
    object C_ProdutosPrecoTmpicPrecoOriginal: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoOriginal'
      Size = 3
    end
  end
  object P_ProdutosPreco: TDataSetProvider
    DataSet = Q_ProdutosPreco
    Constraints = True
    Left = 184
    Top = 99
  end
  object P_ItensFilhos: TDataSetProvider
    DataSet = Q_ItensFilhos
    Constraints = True
    Left = 281
    Top = 100
  end
  object P_ItensUnidades: TDataSetProvider
    DataSet = Q_ItensUnidades
    Constraints = True
    Left = 527
    Top = 105
  end
  object Q_ItensAlmox: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select ia.*, a.Descricao'
      
        'from ItensAlmox ia INNER JOIN Almoxarifados a ON ia.Almoxarifado' +
        ' = a.Almoxarifado'
      'Where ia.Item = :ITEM')
    UpdateObject = U_ItensAlmox
    Left = 623
    Top = 4
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'ITEM'
        ParamType = ptUnknown
      end>
  end
  object U_ItensAlmox: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from ItensAlmox '
      'where'
      '  ITEMALMOX = :ITEMALMOX')
    ModifySQL.Strings = (
      'update ItensAlmox'
      'set'
      '  ITEM = :ITEM,'
      '  ALMOXARIFADO = :ALMOXARIFADO,'
      '  ESTOQUEALMOX = :ESTOQUEALMOX'
      'where'
      '  ITEMALMOX = :OLD_ITEMALMOX')
    InsertSQL.Strings = (
      'insert into ItensAlmox'
      '  (ITEMALMOX, ITEM, ALMOXARIFADO, ESTOQUEALMOX)'
      'values'
      '  (:ITEMALMOX, :ITEM, :ALMOXARIFADO, :ESTOQUEALMOX)')
    DeleteSQL.Strings = (
      'delete from ItensAlmox'
      'where'
      '  ITEMALMOX = :OLD_ITEMALMOX')
    Left = 623
    Top = 50
  end
  object P_ItensAlmox: TDataSetProvider
    DataSet = Q_ItensAlmox
    Constraints = True
    Left = 623
    Top = 102
  end
  object C_ItensAlmox: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_ItensAlmox'
    BeforeOpen = C_ItensAlmoxBeforeOpen
    OnCalcFields = C_ItensAlmoxCalcFields
    Left = 623
    Top = 155
    object C_ItensAlmoxITEMALMOX: TIntegerField
      FieldName = 'ITEMALMOX'
      Required = True
    end
    object C_ItensAlmoxITEM: TIntegerField
      FieldName = 'ITEM'
    end
    object C_ItensAlmoxALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
    end
    object C_ItensAlmoxESTOQUEALMOX: TBCDField
      FieldName = 'ESTOQUEALMOX'
      Precision = 18
      Size = 3
    end
    object C_ItensAlmoxDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
    object C_ItensAlmoxicEstoqueAlmox: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icEstoqueAlmox'
      OnChange = C_ItensAlmoxicEstoqueAlmoxChange
      Size = 3
    end
  end
  object C_ItensAlmoxDS: TDataSource
    DataSet = C_ItensAlmox
    Left = 622
    Top = 206
  end
  object Q_CSTs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from csts'
      'order by cst')
    Left = 184
    Top = 281
  end
  object P_CSTs: TDataSetProvider
    DataSet = Q_CSTs
    Constraints = True
    Left = 184
    Top = 327
  end
  object C_CSTs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTs'
    Left = 185
    Top = 377
    object C_CSTsCST: TStringField
      FieldName = 'CST'
      Origin = 'CSTS.CST'
      Required = True
      Size = 2
    end
    object C_CSTsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
  end
  object C_CSTsDS: TDataSource
    DataSet = C_CSTs
    Left = 185
    Top = 430
  end
  object C_SitECF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SitECF'
    Left = 256
    Top = 380
    object C_SitECFSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'SITUACOESECF.SITUACAOECF'
      Required = True
      Size = 1
    end
    object C_SitECFDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'SITUACOESECF.DESCRICAO'
      Size = 25
    end
  end
  object P_SitECF: TDataSetProvider
    DataSet = Q_SitECF
    Constraints = True
    Left = 256
    Top = 330
  end
  object Q_SitECF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from situacoesecf'
      'where situacaoecf not in ('#39'C'#39','#39'D'#39','#39'S'#39')')
    Left = 256
    Top = 284
  end
  object Q_GruposUnidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 5000
    CachedUpdates = True
    SQL.Strings = (
      'select * from GruposUnidades')
    UniDirectional = True
    UpdateObject = U_GruposUnidades
    Left = 670
    Top = 283
  end
  object U_GruposUnidades: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from GruposUnidades '
      'where'
      '  GRUPOUNIDADE = :GRUPOUNIDADE')
    ModifySQL.Strings = (
      'update GruposUnidades'
      'set'
      '  GRUPO = :GRUPO,'
      '  UNIDADE = :UNIDADE,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  FATOR = :FATOR,'
      '  PERCENTUALMINIMO = :PERCENTUALMINIMO'
      'where'
      '  GRUPOUNIDADE = :OLD_GRUPOUNIDADE')
    InsertSQL.Strings = (
      'insert into GruposUnidades'
      '  (GRUPOUNIDADE, GRUPO, UNIDADE, PERCENTUAL, FATOR, '
      'PERCENTUALMINIMO)'
      'values'
      '  (:GRUPOUNIDADE, :GRUPO, :UNIDADE, :PERCENTUAL, :FATOR, '
      ':PERCENTUALMINIMO)')
    DeleteSQL.Strings = (
      'delete from GruposUnidades'
      'where'
      '  GRUPOUNIDADE = :OLD_GRUPOUNIDADE')
    Left = 672
    Top = 330
  end
  object P_GruposUnidades: TDataSetProvider
    DataSet = Q_GruposUnidades
    Constraints = True
    Left = 671
    Top = 384
  end
  object C_GruposUnidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GruposUnidades'
    Left = 671
    Top = 436
    object C_GruposUnidadesGRUPOUNIDADE: TIntegerField
      FieldName = 'GRUPOUNIDADE'
      Required = True
    end
    object C_GruposUnidadesGRUPO: TIntegerField
      FieldName = 'GRUPO'
    end
    object C_GruposUnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Size = 6
    end
    object C_GruposUnidadesPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Precision = 18
      Size = 3
    end
    object C_GruposUnidadesFATOR: TFloatField
      FieldName = 'FATOR'
    end
    object C_GruposUnidadesPERCENTUALMINIMO: TBCDField
      FieldName = 'PERCENTUALMINIMO'
      Precision = 18
      Size = 3
    end
    object C_GruposUnidadeslkDescUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkDescUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
  end
  object C_GruposUnidadesDS: TDataSource
    DataSet = C_GruposUnidades
    Left = 670
    Top = 486
  end
end
