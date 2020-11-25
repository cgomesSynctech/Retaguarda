inherited DMItens: TDMItens
  Left = 341
  Top = 32
  Height = 722
  Width = 1116
  inherited OpenDialog: TOpenDialog
    Left = 236
    Top = 432
  end
  inherited SaveDialog: TSaveDialog
    Left = 183
    Top = 432
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      
        'Select i.item, i.tipoitem, i.codigo, i.descricaocompra, i.grupo,' +
        ' i.descricao, i.customedio, i.ultimofornecedor, i.qtdeminimo, i.' +
        'qtdemaximo, i.pontopedido, i.percentual, i.unidade, i.localizaca' +
        'o, i.desativado, i.estoque, i.importacao, i.comissao, i.desconto' +
        'maximo, i.conta_venda, i.conta_custo, i.conta_invent, i.fabrican' +
        'te, i.balanco, i.campo01, i.campo02, i.campo03, i.campo04, i.cam' +
        'po05, i.precocompra, i.campo06, i.custocontabil, i.isitemcompra,' +
        ' i.campo07, i.campo08, i.campo09, i.custodespesas, i.campo10, i.' +
        'foto, i.promocao, i.fatorlucro, i.haschildren, i.referencia, i.s' +
        'emlucro, i.pri_customedio, i.pri_custocontabil, i.pri_precocompr' +
        'a, i.datacadastro, i.custoproduto, i.controlevalidade, i.tempome' +
        'diovalidade, i.fornecpreferencia, i.revenda, i.ultimacompra, i.c' +
        'ompensacusto, i.comlucro, i.unidadeentrada, i.unidadecarga, i.un' +
        'idadevarejo, i.ultqtdecompra, i.unidademinima, i.fatorundvenda, ' +
        'i.fatorundcompra, i.ultimavenda, i.abc, i.descricaocomplementar,' +
        ' i.descricaotecnica, i.cst, i.reducaocst, i.ipicompra, i.ipivend' +
        'a, i.pesobruto, i.pesoliquido, i.aliqicms, i.situacaoecf, i.tva,' +
        ' i.tvafonte, i.clasfiscal, i.cest_opc, i.leituraatual, i.leitura' +
        'maxima, i.identificacao, i.codigobarras, i.encerrante, i.agendar' +
        'contato, i.piscofins, i.reducaocstentrada, pp.preco, uf.nome as ' +
        'NomeUltimoFornecedor, fp.Nome as NomeFornecPreferencia, i.data_h' +
        'ora_alteracao, i.grupocomissao, i.indexador, i.estoquefiscal, i.' +
        'CUSTOMANUAL, IDTRIBFEDERAL, i.QTDMINGONDOLA,  i.estoquevolume, O' +
        'RIGEMMERCADORIA, MODALIDADEBCICMS, MODALIDADEBCICMSST, CSTPISCOF' +
        'INS,ALIQPIS, ALIQCOFINS,CSTIPI, GENERO,'
      'ALIQIR,'
      'ALIQSS,'
      'MENSAGEM,'
      'PRINCIPIOATIVO,'
      'TIPOSERVICO,'
      'IPPT,'
      'IAT,'
      'CSTPISCOFINSSAIDA,'
      'NATURAZARECEITAPISCOFINS,'
      'ALIQPISSAIDA,'
      'ALIQCOFINSSAIDA,'
      'VINCULOCREDITOPISCOFINS,'
      'BASECREDITOPISCOFINS,'
      'i.EMPRESA,'
      'i.CODANP,'
      'i.CODIF as CODIF,'
      'i.PESAVEL,'
      'i.ITEMMVA,'
      'i.TIPOMATERIAPRIMA,'
      'i.CODIGOVENDA, CSTIPIENTRADA, CENQIPICOMPRA, CENQIPIVENDA,'
      'i.fabricacaopropria,'
      'I.DESCRICAOANP,'
      'I.PGNV,'
      'I.PGLP,'
      'I.materiaprima,'
      'i.cubagem'
      'from itens i'
      
        'inner join produtospreco pp on i.item = pp.item and pp.unidade =' +
        ' i.unidade and pp.tabelapreco = 0'
      'inner JOIN Favorecidos uf ON uf.Favorecido = i.ULTIMOFORNECEDOR'
      'inner JOIN Favorecidos fp ON fp.Favorecido = i.FORNECPREFERENCIA')
    Left = 14
    Top = 19
  end
  inherited Q_MasterDS: TDataSource
    Left = 77
    Top = 6
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itens '
      'where'
      '  ITEM = :ITEM')
    ModifySQL.Strings = (
      'update itens'
      'set'
      '  TIPOITEM = :TIPOITEM,'
      '  CODIGO = :CODIGO,'
      '  DESCRICAOCOMPRA = :DESCRICAOCOMPRA,'
      '  GRUPO = :GRUPO,'
      '  DESCRICAO = :DESCRICAO,'
      '  CUSTOMEDIO = :CUSTOMEDIO,'
      '  ULTIMOFORNECEDOR = :ULTIMOFORNECEDOR,'
      '  QTDEMINIMO = :QTDEMINIMO,'
      '  QTDEMAXIMO = :QTDEMAXIMO,'
      '  PONTOPEDIDO = :PONTOPEDIDO,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  UNIDADE = :UNIDADE,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  DESATIVADO = :DESATIVADO,'
      '  ESTOQUE = :ESTOQUE,'
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
      '  SEMLUCRO = :SEMLUCRO,'
      '  PRI_CUSTOMEDIO = :PRI_CUSTOMEDIO,'
      '  PRI_CUSTOCONTABIL = :PRI_CUSTOCONTABIL,'
      '  PRI_PRECOCOMPRA = :PRI_PRECOCOMPRA,'
      '  DATACADASTRO = :DATACADASTRO,'
      '  CUSTOPRODUTO = :CUSTOPRODUTO,'
      '  CONTROLEVALIDADE = :CONTROLEVALIDADE,'
      '  TEMPOMEDIOVALIDADE = :TEMPOMEDIOVALIDADE,'
      '  FORNECPREFERENCIA = :FORNECPREFERENCIA,'
      '  REVENDA = :REVENDA,'
      '  ULTIMACOMPRA = :ULTIMACOMPRA,'
      '  COMPENSACUSTO = :COMPENSACUSTO,'
      '  COMLUCRO = :COMLUCRO,'
      '  UNIDADEENTRADA = :UNIDADEENTRADA,'
      '  UNIDADECARGA = :UNIDADECARGA,'
      '  UNIDADEVAREJO = :UNIDADEVAREJO,'
      '  ULTQTDECOMPRA = :ULTQTDECOMPRA,'
      '  UNIDADEMINIMA = :UNIDADEMINIMA,'
      '  FATORUNDVENDA = :FATORUNDVENDA,'
      '  FATORUNDCOMPRA = :FATORUNDCOMPRA,'
      '  ULTIMAVENDA = :ULTIMAVENDA,'
      '  ABC = :ABC,'
      '  DESCRICAOCOMPLEMENTAR = :DESCRICAOCOMPLEMENTAR,'
      '  DESCRICAOTECNICA = :DESCRICAOTECNICA,'
      '  CST = :CST,'
      '  REDUCAOCST = :REDUCAOCST,'
      '  IPICOMPRA = :IPICOMPRA,'
      '  IPIVENDA = :IPIVENDA,'
      '  PESOBRUTO = :PESOBRUTO,'
      '  PESOLIQUIDO = :PESOLIQUIDO,'
      '  ALIQICMS = :ALIQICMS,'
      '  SITUACAOECF = :SITUACAOECF,'
      '  TVA = :TVA,'
      '  TVAFONTE = :TVAFONTE,'
      '  CLASFISCAL = :CLASFISCAL,'
      '  LEITURAATUAL = :LEITURAATUAL,'
      '  LEITURAMAXIMA = :LEITURAMAXIMA,'
      '  IDENTIFICACAO = :IDENTIFICACAO,'
      '  CODIGOBARRAS = :CODIGOBARRAS,'
      '  ENCERRANTE = :ENCERRANTE,'
      '  AGENDARCONTATO = :AGENDARCONTATO,'
      '  PISCOFINS = :PISCOFINS,'
      '  REDUCAOCSTENTRADA = :REDUCAOCSTENTRADA,'
      '  DATA_HORA_ALTERACAO = :DATA_HORA_ALTERACAO,'
      '  GRUPOCOMISSAO = :GRUPOCOMISSAO,'
      '  INDEXADOR = :INDEXADOR,'
      '  CUSTOMANUAL = :CUSTOMANUAL,'
      '  IDTRIBFEDERAL = :IDTRIBFEDERAL,'
      '  QTDMINGONDOLA = :QTDMINGONDOLA,'
      '  ESTOQUEVOLUME = :ESTOQUEVOLUME,'
      '  ORIGEMMERCADORIA = :ORIGEMMERCADORIA,'
      '  MODALIDADEBCICMS = :MODALIDADEBCICMS,'
      '  MODALIDADEBCICMSST = :MODALIDADEBCICMSST,'
      '  CSTPISCOFINS = :CSTPISCOFINS,'
      '  ALIQPIS = :ALIQPIS,'
      '  ALIQCOFINS = :ALIQCOFINS,'
      '  CSTIPI = :CSTIPI,'
      '  GENERO = :GENERO,'
      '  ALIQIR = :ALIQIR,'
      '  ALIQSS = :ALIQSS,'
      '  MENSAGEM = :MENSAGEM,'
      '  PRINCIPIOATIVO = :PRINCIPIOATIVO,'
      '  TIPOSERVICO = :TIPOSERVICO,'
      '  IPPT = :IPPT,'
      '  IAT = :IAT,'
      '  CSTPISCOFINSSAIDA = :CSTPISCOFINSSAIDA,'
      '  NATURAZARECEITAPISCOFINS = :NATURAZARECEITAPISCOFINS,'
      '  ALIQPISSAIDA = :ALIQPISSAIDA,'
      '  ALIQCOFINSSAIDA = :ALIQCOFINSSAIDA,'
      '  VINCULOCREDITOPISCOFINS = :VINCULOCREDITOPISCOFINS,'
      '  BASECREDITOPISCOFINS = :BASECREDITOPISCOFINS,'
      '  EMPRESA = :EMPRESA,'
      '  CODANP = :CODANP,'
      '  CODIF = :CODIF,'
      '  PESAVEL = :PESAVEL,'
      '  ITEMMVA = :ITEMMVA,'
      '  TIPOMATERIAPRIMA = :TIPOMATERIAPRIMA,'
      '  CODIGOVENDA = :CODIGOVENDA,'
      '  CSTIPIENTRADA = :CSTIPIENTRADA,'
      '  CENQIPICOMPRA = :CENQIPICOMPRA,'
      '  CENQIPIVENDA = :CENQIPIVENDA,'
      '  CEST_OPC = :CEST_OPC,'
      '  FABRICACAOPROPRIA = :FABRICACAOPROPRIA,'
      '  DESCRICAOANP = :DESCRICAOANP,'
      '  PGNV = :PGNV,'
      '  PGLP = :PGLP,'
      '  MATERIAPRIMA = :MATERIAPRIMA,'
      ' CUBAGEM = :CUBAGEM'
      'where'
      '  ITEM = :OLD_ITEM')
    InsertSQL.Strings = (
      'insert into itens'
      '  (ITEM,TIPOITEM, CODIGO, DESCRICAOCOMPRA, GRUPO, DESCRICAO, '
      'CUSTOMEDIO, ULTIMOFORNECEDOR, '
      '   QTDEMINIMO, QTDEMAXIMO, PONTOPEDIDO, PERCENTUAL, UNIDADE, '
      'LOCALIZACAO, '
      '   DESATIVADO, ESTOQUE, IMPORTACAO, COMISSAO, DESCONTOMAXIMO, '
      'CONTA_VENDA, '
      '   CONTA_CUSTO, CONTA_INVENT, FABRICANTE, BALANCO, CAMPO01, '
      'CAMPO02, CAMPO03, '
      '   CAMPO04, CAMPO05, PRECOCOMPRA, CAMPO06, CUSTOCONTABIL, '
      'ISITEMCOMPRA, '
      '   CAMPO07, CAMPO08, CAMPO09, CUSTODESPESAS, CAMPO10, FOTO, '
      'PROMOCAO, FATORLUCRO, '
      '   HASCHILDREN, REFERENCIA, SEMLUCRO, PRI_CUSTOMEDIO, '
      'PRI_CUSTOCONTABIL, '
      '   PRI_PRECOCOMPRA, DATACADASTRO, CUSTOPRODUTO, '
      'CONTROLEVALIDADE, TEMPOMEDIOVALIDADE, '
      '   FORNECPREFERENCIA, REVENDA, ULTIMACOMPRA, COMPENSACUSTO, '
      'COMLUCRO, UNIDADEENTRADA, '
      '   UNIDADECARGA, UNIDADEVAREJO, ULTQTDECOMPRA, UNIDADEMINIMA, '
      'FATORUNDVENDA, '
      '   FATORUNDCOMPRA, ULTIMAVENDA, ABC, DESCRICAOCOMPLEMENTAR, '
      'DESCRICAOTECNICA, '
      
        '   CST, REDUCAOCST, IPICOMPRA, IPIVENDA, PESOBRUTO, PESOLIQUIDO,' +
        ' '
      'ALIQICMS, '
      '   SITUACAOECF, TVA, TVAFONTE, CLASFISCAL, LEITURAATUAL, '
      'LEITURAMAXIMA, '
      '   IDENTIFICACAO, CODIGOBARRAS, ENCERRANTE, AGENDARCONTATO, '
      'PISCOFINS, '
      '   REDUCAOCSTENTRADA, DATA_HORA_ALTERACAO, GRUPOCOMISSAO, '
      'INDEXADOR, CUSTOMANUAL, '
      '   IDTRIBFEDERAL, QTDMINGONDOLA, ESTOQUEVOLUME, '
      'ORIGEMMERCADORIA, MODALIDADEBCICMS, '
      
        '   MODALIDADEBCICMSST, CSTPISCOFINS, ALIQPIS, ALIQCOFINS, CSTIPI' +
        ', '
      'GENERO, '
      
        '   ALIQIR, ALIQSS, MENSAGEM, PRINCIPIOATIVO, TIPOSERVICO, IPPT, ' +
        'IAT, '
      'CSTPISCOFINSSAIDA, '
      '   NATURAZARECEITAPISCOFINS, ALIQPISSAIDA, ALIQCOFINSSAIDA, '
      'VINCULOCREDITOPISCOFINS, '
      
        '   BASECREDITOPISCOFINS, EMPRESA, CODANP, CODIF, PESAVEL,ITEMMVA' +
        ','
      '   TIPOMATERIAPRIMA, CODIGOVENDA, CSTIPIENTRADA, CENQIPICOMPRA, '
      'CENQIPIVENDA, CEST_OPC, FABRICACAOPROPRIA, DESCRICAOANP, PGNV , '
      'PGLP, MATERIAPRIMA, CUBAGEM )'
      'values'
      
        '  (:ITEM,:TIPOITEM, :CODIGO, :DESCRICAOCOMPRA, :GRUPO, :DESCRICA' +
        'O, '
      ':CUSTOMEDIO, '
      '   :ULTIMOFORNECEDOR, :QTDEMINIMO, :QTDEMAXIMO, :PONTOPEDIDO, '
      ':PERCENTUAL, '
      '   :UNIDADE, :LOCALIZACAO, :DESATIVADO, :ESTOQUE, :IMPORTACAO, '
      ':COMISSAO, '
      '   :DESCONTOMAXIMO, :CONTA_VENDA, :CONTA_CUSTO, :CONTA_INVENT, '
      ':FABRICANTE, '
      '   :BALANCO, :CAMPO01, :CAMPO02, :CAMPO03, :CAMPO04, :CAMPO05, '
      ':PRECOCOMPRA, '
      '   :CAMPO06, :CUSTOCONTABIL, :ISITEMCOMPRA, :CAMPO07, :CAMPO08, '
      ':CAMPO09, '
      '   :CUSTODESPESAS, :CAMPO10, :FOTO, :PROMOCAO, :FATORLUCRO, '
      ':HASCHILDREN, '
      '   :REFERENCIA, :SEMLUCRO, :PRI_CUSTOMEDIO, :PRI_CUSTOCONTABIL, '
      ':PRI_PRECOCOMPRA, '
      '   :DATACADASTRO, :CUSTOPRODUTO, :CONTROLEVALIDADE, '
      ':TEMPOMEDIOVALIDADE, '
      '   :FORNECPREFERENCIA, :REVENDA, :ULTIMACOMPRA, :COMPENSACUSTO, '
      ':COMLUCRO, '
      '   :UNIDADEENTRADA, :UNIDADECARGA, :UNIDADEVAREJO, '
      ':ULTQTDECOMPRA, :UNIDADEMINIMA, '
      '   :FATORUNDVENDA, :FATORUNDCOMPRA, :ULTIMAVENDA, :ABC, '
      ':DESCRICAOCOMPLEMENTAR, '
      '   :DESCRICAOTECNICA, :CST, :REDUCAOCST, :IPICOMPRA, :IPIVENDA, '
      ':PESOBRUTO, '
      
        '   :PESOLIQUIDO, :ALIQICMS, :SITUACAOECF, :TVA, :TVAFONTE, :CLAS' +
        'FISCAL, '
      
        '   :LEITURAATUAL, :LEITURAMAXIMA, :IDENTIFICACAO, :CODIGOBARRAS,' +
        ' '
      ':ENCERRANTE, '
      '   :AGENDARCONTATO, :PISCOFINS, :REDUCAOCSTENTRADA, '
      ':DATA_HORA_ALTERACAO, '
      '   :GRUPOCOMISSAO, :INDEXADOR, :CUSTOMANUAL, :IDTRIBFEDERAL, '
      ':QTDMINGONDOLA, '
      '   :ESTOQUEVOLUME, :ORIGEMMERCADORIA, :MODALIDADEBCICMS, '
      ':MODALIDADEBCICMSST, '
      
        '   :CSTPISCOFINS, :ALIQPIS, :ALIQCOFINS, :CSTIPI, :GENERO, :ALIQ' +
        'IR, :ALIQSS, '
      '   :MENSAGEM, :PRINCIPIOATIVO, :TIPOSERVICO, :IPPT, :IAT, '
      ':CSTPISCOFINSSAIDA, '
      '   :NATURAZARECEITAPISCOFINS, :ALIQPISSAIDA, :ALIQCOFINSSAIDA, '
      ':VINCULOCREDITOPISCOFINS, '
      '   :BASECREDITOPISCOFINS, :EMPRESA, :CODANP, :CODIF, '
      ':PESAVEL,:ITEMMVA, :TIPOMATERIAPRIMA, :CODIGOVENDA, '
      ':CSTIPIENTRADA, :CENQIPICOMPRA, :CENQIPIVENDA, :CEST_OPC, '
      ':FABRICACAOPROPRIA, :DESCRICAOANP, :PGNV, :PGLP, :MATERIAPRIMA, '
      ':CUBAGEM )')
    DeleteSQL.Strings = (
      'delete from itens'
      'where'
      '  ITEM = :OLD_ITEM')
    Left = 12
    Top = 71
  end
  inherited DMComponent: TDMComponent
    AntesDeApagar = DMComponentAntesDeApagar
    AntesDeDesativar = DMComponentAntesDeDesativar
    AntesDeIniciar = DMComponentAntesDeIniciar
    AposIniciar = DMComponentAposIniciar
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    Pesquisar2_SQLFinal = DMComponentPesquisar2_SQLFinal
    Gravar4_AposCommit = DMComponentGravar4_AposCommit
    Apagar_AntesApply = DMComponentApagar_AntesApply
    KeyForIDs = 'ITENS'
    Tabela_Nome = 'ITENS'
    Tabela_Chave = 'I.ITEM'
    Tabela_ChaveAlias = 'ITEM'
    MestreDetalhe = True
    DeleteValidate.Strings = (
      'SaidasItens=item'
      'BalancoFichasItens=item'
      'EntradasItens=item'
      'SaidasItensFilhos=item'
      'Montagens=Item')
    Left = 24
    Top = 279
  end
  inherited DlgMsg: TDlgMsg
    Left = 26
    Top = 335
  end
  inherited P_Tabela: TDataSetProvider
    Left = 12
    Top = 119
  end
  inherited C_Tabela: TClientDataSet
    AfterScroll = C_TabelaAfterScroll
    OnCalcFields = C_TabelaCalcFields
    Left = 12
    Top = 170
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
      Size = 14
    end
    object C_TabelaDESCRICAOCOMPRA: TStringField
      FieldName = 'DESCRICAOCOMPRA'
      Origin = 'ITENS.DESCRICAOCOMPRA'
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
      Size = 50
    end
    object C_TabelaCUSTOMEDIO: TFloatField
      FieldName = 'CUSTOMEDIO'
      Origin = 'ITENS.CUSTOMEDIO'
    end
    object C_TabelaULTIMOFORNECEDOR: TIntegerField
      FieldName = 'ULTIMOFORNECEDOR'
      Origin = 'ITENS.ULTIMOFORNECEDOR'
    end
    object C_TabelaQTDEMINIMO: TBCDField
      FieldName = 'QTDEMINIMO'
      Origin = 'ITENS.QTDEMINIMO'
      Precision = 18
      Size = 3
    end
    object C_TabelaQTDEMAXIMO: TBCDField
      FieldName = 'QTDEMAXIMO'
      Origin = 'ITENS.QTDEMAXIMO'
      Precision = 18
      Size = 3
    end
    object C_TabelaPONTOPEDIDO: TBCDField
      FieldName = 'PONTOPEDIDO'
      Origin = 'ITENS.PONTOPEDIDO'
      Precision = 18
      Size = 3
    end
    object C_TabelaPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'ITENS.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'ITENS.DESATIVADO'
      Size = 1
    end
    object C_TabelaESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_TabelaIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'ITENS.IMPORTACAO'
    end
    object C_TabelaCOMISSAO: TBCDField
      FieldName = 'COMISSAO'
      Origin = 'ITENS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESCONTOMAXIMO: TBCDField
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'ITENS.DESCONTOMAXIMO'
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
    object C_TabelaFABRICANTE: TIntegerField
      FieldName = 'FABRICANTE'
      Origin = 'ITENS.FABRICANTE'
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
    object C_TabelaPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
      Origin = 'ITENS.PRECOCOMPRA'
      OnChange = C_TabelaPRECOCOMPRAChange
    end
    object C_TabelaCAMPO06: TStringField
      FieldName = 'CAMPO06'
      Origin = 'ITENS.CAMPO06'
      Size = 255
    end
    object C_TabelaCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
      Origin = 'ITENS.CUSTOCONTABIL'
    end
    object C_TabelaISITEMCOMPRA: TStringField
      FieldName = 'ISITEMCOMPRA'
      Origin = 'ITENS.ISITEMCOMPRA'
      Size = 1
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
    object C_TabelaCUSTODESPESAS: TBCDField
      FieldName = 'CUSTODESPESAS'
      Origin = 'ITENS.CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object C_TabelaCAMPO10: TStringField
      FieldName = 'CAMPO10'
      Origin = 'ITENS.CAMPO10'
      Size = 255
    end
    object C_TabelaFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'ITENS.FOTO'
      Size = 255
    end
    object C_TabelaPROMOCAO: TStringField
      FieldName = 'PROMOCAO'
      Origin = 'ITENS.PROMOCAO'
      Size = 1
    end
    object C_TabelaFATORLUCRO: TFloatField
      FieldName = 'FATORLUCRO'
      Origin = 'ITENS.FATORLUCRO'
    end
    object C_TabelaHASCHILDREN: TStringField
      FieldName = 'HASCHILDREN'
      Origin = 'ITENS.HASCHILDREN'
      Size = 1
    end
    object C_TabelaREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
    object C_TabelaSEMLUCRO: TFloatField
      FieldName = 'SEMLUCRO'
      Origin = 'ITENS.SEMLUCRO'
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
    object C_TabelaDATACADASTRO: TDateField
      FieldName = 'DATACADASTRO'
      Origin = 'ITENS.DATACADASTRO'
    end
    object C_TabelaCUSTOPRODUTO: TFloatField
      FieldName = 'CUSTOPRODUTO'
      Origin = 'ITENS.CUSTOPRODUTO'
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
    end
    object C_TabelaCOMLUCRO: TFloatField
      FieldName = 'COMLUCRO'
      Origin = 'ITENS.COMLUCRO'
    end
    object C_TabelaUNIDADEENTRADA: TStringField
      FieldName = 'UNIDADEENTRADA'
      Origin = 'ITENS.UNIDADEENTRADA'
      OnValidate = C_TabelaUNIDADEENTRADAValidate
      Size = 6
    end
    object C_TabelaUNIDADECARGA: TStringField
      FieldName = 'UNIDADECARGA'
      Origin = 'ITENS.UNIDADECARGA'
      OnValidate = C_TabelaUNIDADECARGAValidate
      Size = 6
    end
    object C_TabelaUNIDADEVAREJO: TStringField
      FieldName = 'UNIDADEVAREJO'
      Origin = 'ITENS.UNIDADEVAREJO'
      OnValidate = C_TabelaUNIDADEVAREJOValidate
      Size = 6
    end
    object C_TabelaULTQTDECOMPRA: TBCDField
      FieldName = 'ULTQTDECOMPRA'
      Origin = 'ITENS.ULTQTDECOMPRA'
      Precision = 18
      Size = 3
    end
    object C_TabelaUNIDADEMINIMA: TIntegerField
      FieldName = 'UNIDADEMINIMA'
      Origin = 'ITENS.UNIDADEMINIMA'
    end
    object C_TabelaFATORUNDVENDA: TFloatField
      FieldName = 'FATORUNDVENDA'
      Origin = 'ITENS.FATORUNDVENDA'
    end
    object C_TabelaFATORUNDCOMPRA: TFloatField
      FieldName = 'FATORUNDCOMPRA'
      Origin = 'ITENS.FATORUNDCOMPRA'
    end
    object C_TabelaULTIMAVENDA: TDateField
      FieldName = 'ULTIMAVENDA'
      Origin = 'ITENS.ULTIMAVENDA'
    end
    object C_TabelaABC: TStringField
      FieldName = 'ABC'
      Origin = 'ITENS.ABC'
      Size = 1
    end
    object C_TabelaDESCRICAOTECNICA: TStringField
      FieldName = 'DESCRICAOTECNICA'
      Origin = 'ITENS.DESCRICAOTECNICA'
      Size = 255
    end
    object C_TabelaREDUCAOCST: TBCDField
      FieldName = 'REDUCAOCST'
      Origin = 'ITENS.REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object C_TabelaIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Origin = 'ITENS.IPICOMPRA'
      Precision = 18
      Size = 2
    end
    object C_TabelaIPIVENDA: TBCDField
      FieldName = 'IPIVENDA'
      Origin = 'ITENS.IPIVENDA'
      Precision = 18
      Size = 2
    end
    object C_TabelaPESOBRUTO: TBCDField
      FieldName = 'PESOBRUTO'
      Origin = 'ITENS.PESOBRUTO'
      Precision = 18
      Size = 3
    end
    object C_TabelaPESOLIQUIDO: TBCDField
      FieldName = 'PESOLIQUIDO'
      Origin = 'ITENS.PESOLIQUIDO'
      Precision = 18
      Size = 3
    end
    object C_TabelaALIQICMS: TBCDField
      FieldName = 'ALIQICMS'
      Origin = 'ITENS.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object C_TabelaSITUACAOECF: TStringField
      FieldName = 'SITUACAOECF'
      Origin = 'ITENS.SITUACAOECF'
      OnChange = C_TabelaSITUACAOECFChange
      Size = 1
    end
    object C_TabelaTVA: TBCDField
      FieldName = 'TVA'
      Origin = 'ITENS.TVA'
      Precision = 18
      Size = 2
    end
    object C_TabelaTVAFONTE: TBCDField
      FieldName = 'TVAFONTE'
      Origin = 'ITENS.TVAFONTE'
      Precision = 18
      Size = 2
    end
    object C_TabelaCLASFISCAL: TStringField
      FieldName = 'CLASFISCAL'
      Origin = 'ITENS.CLASFISCAL'
      Size = 15
    end
    object C_TabelaLEITURAATUAL: TBCDField
      FieldName = 'LEITURAATUAL'
      Origin = 'ITENS.LEITURAATUAL'
      Precision = 18
      Size = 2
    end
    object C_TabelaLEITURAMAXIMA: TBCDField
      FieldName = 'LEITURAMAXIMA'
      Origin = 'ITENS.LEITURAMAXIMA'
      Precision = 18
      Size = 2
    end
    object C_TabelaIDENTIFICACAO: TStringField
      FieldName = 'IDENTIFICACAO'
      Origin = 'ITENS.IDENTIFICACAO'
      Size = 1
    end
    object C_TabelaENCERRANTE: TStringField
      FieldName = 'ENCERRANTE'
      Origin = 'ITENS.ENCERRANTE'
      Size = 1
    end
    object C_TabelaAGENDARCONTATO: TStringField
      FieldName = 'AGENDARCONTATO'
      Origin = 'ITENS.AGENDARCONTATO'
      Size = 1
    end
    object C_TabelaPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Origin = 'ITENS.PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_TabelaREDUCAOCSTENTRADA: TBCDField
      FieldName = 'REDUCAOCSTENTRADA'
      Origin = 'ITENS.REDUCAOCSTENTRADA'
      Precision = 18
      Size = 2
    end
    object C_TabelaPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      OnChange = C_TabelaPRECOChange
      EditFormat = '0.000'
      Precision = 18
      Size = 3
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
    object C_TabelaUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENS.UNIDADE'
      OnChange = C_TabelaUNIDADEChange
      OnValidate = C_TabelaUNIDADEValidate
      Size = 6
    end
    object C_TabelaDATA_HORA_ALTERACAO: TDateTimeField
      FieldName = 'DATA_HORA_ALTERACAO'
      Origin = 'ITENS.DATA_HORA_ALTERACAO'
    end
    object C_TabelaGRUPOCOMISSAO: TIntegerField
      FieldName = 'GRUPOCOMISSAO'
      Origin = 'ITENS.GRUPOCOMISSAO'
    end
    object C_TabelaINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Origin = 'ITENS.INDEXADOR'
    end
    object C_TabelaLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'ITENS.LOCALIZACAO'
    end
    object C_TabelalkTipoItem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoItem'
      LookupDataSet = C_TiposItens
      LookupKeyFields = 'TIPOITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOITEM'
      Size = 30
      Lookup = True
    end
    object C_TabelalkGrupoItem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGrupoItem'
      LookupDataSet = C_Grupos
      LookupKeyFields = 'GRUPO'
      LookupResultField = 'DESCRICAOGRUPO'
      KeyFields = 'GRUPO'
      Size = 30
      Lookup = True
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
    object C_TabelalkContaVenda: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaVenda'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_VENDA'
      Size = 50
      Lookup = True
    end
    object C_TabelalkContaCusto: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaCusto'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_CUSTO'
      Size = 50
      Lookup = True
    end
    object C_TabelalkContaInvent: TStringField
      FieldKind = fkLookup
      FieldName = 'lkContaInvent'
      LookupDataSet = C_Contas
      LookupKeyFields = 'CONTA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CONTA_INVENT'
      Size = 50
      Lookup = True
    end
    object C_TabelalkUnidadeVarejo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidadeVarejo'
      LookupDataSet = C_OutrasUnds
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADEVAREJO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkUnidadeCompra: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidadeCompra'
      LookupDataSet = C_OutrasUnds
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADEENTRADA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkUnidadeCarga: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidadeCarga'
      LookupDataSet = C_OutrasUnds
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADECARGA'
      Size = 30
      Lookup = True
    end
    object C_TabelalkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_TabelalkGruposComissoes: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGruposComissoes'
      LookupDataSet = C_GruposComissoes
      LookupKeyFields = 'GRUPOCOMISSAO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'GRUPOCOMISSAO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkLocalizacao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkLocalizacao'
      LookupDataSet = C_Localizacoes
      LookupKeyFields = 'LOCALIZACAO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'LOCALIZACAO'
      Size = 15
      Lookup = True
    end
    object C_TabelaQ_ProdutosPreco: TDataSetField
      FieldName = 'Q_ProdutosPreco'
    end
    object C_TabelaQ_ItensUnidades: TDataSetField
      FieldName = 'Q_ItensUnidades'
    end
    object C_TabelaQ_ItensFilhos: TDataSetField
      FieldName = 'Q_ItensFilhos'
    end
    object C_TabelaQ_ItensAlmox: TDataSetField
      FieldName = 'Q_ItensAlmox'
    end
    object C_TabelaicValorEstoqueTotal: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icValorEstoqueTotal'
      DisplayFormat = '###,##0.00'
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
    object C_TabelaicEncargosCartoes: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icEncargosCartoes'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicCustoDespesas: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icCustoDepesas'
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
    object C_TabelaicICMSAplicado: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icICMSAplicado'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicSituacaoECF: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icSituacaoECF'
      Size = 1
    end
    object C_TabelaicCST: TStringField
      FieldKind = fkInternalCalc
      FieldName = 'icCST'
      Size = 3
    end
    object C_TabelaicTVA: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icTVA'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicTVAFonte: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icTVAFonte'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicAliqICMS: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icAliqICMS'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelaicReducaoCST: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icReducaoCST'
      DisplayFormat = '##0.0#%'
    end
    object C_TabelalkSitECF: TStringField
      FieldKind = fkLookup
      FieldName = 'lkSitECF'
      LookupDataSet = C_SitECF
      LookupKeyFields = 'SITUACAOECF'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'icSituacaoECF'
      Size = 30
      Lookup = True
    end
    object C_TabelalkCST: TStringField
      DisplayWidth = 60
      FieldKind = fkLookup
      FieldName = 'lkCST'
      LookupDataSet = C_CSTs
      LookupKeyFields = 'CST'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'icCST'
      Size = 60
      Lookup = True
    end
    object C_TabelalkIndexador: TStringField
      FieldKind = fkLookup
      FieldName = 'lkIndexador'
      LookupDataSet = C_Index
      LookupKeyFields = 'INDEXADOR'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'INDEXADOR'
      Size = 30
      Lookup = True
    end
    object C_TabelaicPrecoCalc: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoCalc'
    end
    object C_TabelaicPrecoCalcDescMax: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoCalcDescMax'
    end
    object C_TabelaicFator: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icFator'
    end
    object C_TabelaicFatorMult: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icFatorMult'
    end
    object C_TabelaicMenorPrecoVenda: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icMenorPrecoVenda'
    end
    object C_TabelaicCusto: TBCDField
      FieldKind = fkInternalCalc
      FieldName = 'icCusto'
    end
    object C_TabelaESTOQUEFISCAL: TBCDField
      FieldName = 'ESTOQUEFISCAL'
      Origin = 'ITENS.ESTOQUEFISCAL'
      Precision = 18
      Size = 3
    end
    object C_TabelaicDIFESTOQUE: TFloatField
      FieldKind = fkInternalCalc
      FieldName = 'icDIFESTOQUE'
    end
    object C_TabelaCUSTOMANUAL: TBCDField
      FieldName = 'CUSTOMANUAL'
      Origin = 'ITENS.CUSTOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_TabelaIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
      Origin = 'ITENS.IDTRIBFEDERAL'
    end
    object C_TabelaQTDMINGONDOLA: TBCDField
      FieldName = 'QTDMINGONDOLA'
      Origin = 'ITENS.QTDMINGONDOLA'
      Precision = 18
      Size = 3
    end
    object C_TabelaESTOQUEVOLUME: TBCDField
      FieldName = 'ESTOQUEVOLUME'
      Origin = 'ITENS.ESTOQUEVOLUME'
      Precision = 18
      Size = 3
    end
    object C_TabelaQ_ServicosPreco: TDataSetField
      FieldName = 'Q_ServicosPreco'
    end
    object C_TabelaORIGEMMERCADORIA: TIntegerField
      FieldName = 'ORIGEMMERCADORIA'
      Origin = 'ITENS.ORIGEMMERCADORIA'
    end
    object C_TabelaMODALIDADEBCICMS: TIntegerField
      FieldName = 'MODALIDADEBCICMS'
      Origin = 'ITENS.MODALIDADEBCICMS'
    end
    object C_TabelaMODALIDADEBCICMSST: TIntegerField
      FieldName = 'MODALIDADEBCICMSST'
      Origin = 'ITENS.MODALIDADEBCICMSST'
    end
    object C_TabelaALIQPIS: TBCDField
      FieldName = 'ALIQPIS'
      Origin = 'ITENS.ALIQPIS'
      Precision = 18
      Size = 2
    end
    object C_TabelaALIQCOFINS: TBCDField
      FieldName = 'ALIQCOFINS'
      Origin = 'ITENS.ALIQCOFINS'
      Precision = 18
      Size = 2
    end
    object C_TabelaCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'ITENS.CSTIPI'
      Size = 2
    end
    object C_TabelaGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'ITENS.GENERO'
      Size = 2
    end
    object C_TabelalkCSTSIPI: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCSTSIPI'
      LookupDataSet = C_CstsIPI
      LookupKeyFields = 'CSTIPI'
      LookupResultField = 'CODDESC'
      KeyFields = 'CSTIPI'
      Size = 50
      Lookup = True
    end
    object C_TabelalkGeneros: TStringField
      FieldKind = fkLookup
      FieldName = 'lkGeneros'
      LookupDataSet = C_Generos
      LookupKeyFields = 'GENERO'
      LookupResultField = 'CODDESC'
      KeyFields = 'GENERO'
      Size = 50
      Lookup = True
    end
    object C_TabelalkOrigem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkOrigem'
      LookupDataSet = C_Origem
      LookupKeyFields = 'ORIGEMMERCADORIA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ORIGEMMERCADORIA'
      Size = 50
      Lookup = True
    end
    object C_TabelalkModalidadeICMS: TStringField
      FieldKind = fkLookup
      FieldName = 'lkModalidadeICMS'
      LookupDataSet = C_MODALIDADESBCICMS
      LookupKeyFields = 'MODALIDADEBCICMS'
      LookupResultField = 'CODDESC'
      KeyFields = 'MODALIDADEBCICMS'
      Size = 50
      Lookup = True
    end
    object C_TabelaCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'ITENS.CSTPISCOFINS'
      Size = 2
    end
    object C_TabelalkModaledadeICMSST: TStringField
      FieldKind = fkLookup
      FieldName = 'lkModaledadeICMSST'
      LookupDataSet = C_MODALIDADESBCICMSST
      LookupKeyFields = 'MODALIDADEBCICMSST'
      LookupResultField = 'CODDESC'
      KeyFields = 'MODALIDADEBCICMSST'
      Size = 50
      Lookup = True
    end
    object C_TabelaALIQIR: TBCDField
      FieldName = 'ALIQIR'
      Origin = 'ITENS.ALIQIR'
      Precision = 18
      Size = 2
    end
    object C_TabelaALIQSS: TBCDField
      FieldName = 'ALIQSS'
      Origin = 'ITENS.ALIQSS'
      Precision = 18
      Size = 2
    end
    object C_TabelaMENSAGEM: TIntegerField
      FieldName = 'MENSAGEM'
      Origin = 'ITENS.MENSAGEM'
    end
    object C_TabelalkMensagem: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMensagem'
      LookupDataSet = C_Msn
      LookupKeyFields = 'MENSAGEMOPERACAO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'MENSAGEM'
      Size = 50
      Lookup = True
    end
    object C_TabelaPRINCIPIOATIVO: TIntegerField
      FieldName = 'PRINCIPIOATIVO'
      Origin = 'ITENS.PRINCIPIOATIVO'
    end
    object C_TabelalkPrincipioAtivo: TStringField
      FieldKind = fkLookup
      FieldName = 'lkPrincipioAtivo'
      LookupDataSet = C_PrincipioAtivo
      LookupKeyFields = 'PRINCIPIOATIVO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'PRINCIPIOATIVO'
      Size = 50
      Lookup = True
    end
    object C_TabelaTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'ITENS.TIPOSERVICO'
    end
    object C_TabelalkTipoServico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTipoServico'
      LookupDataSet = C_TabelaServicos
      LookupKeyFields = 'SERVICO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOSERVICO'
      Size = 50
      Lookup = True
    end
    object C_TabelaIPPT: TStringField
      FieldName = 'IPPT'
      Origin = 'ITENS.IPPT'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCODIGOBARRAS: TStringField
      DisplayWidth = 14
      FieldName = 'CODIGOBARRAS'
      Origin = 'ITENS.CODIGOBARRAS'
      Size = 14
    end
    object C_TabelaIAT: TStringField
      FieldName = 'IAT'
      Origin = 'ITENS.IAT'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCST: TStringField
      FieldName = 'CST'
      Origin = 'ITENS.CST'
      Size = 3
    end
    object C_TabelaCSTPISCOFINSSAIDA: TStringField
      FieldName = 'CSTPISCOFINSSAIDA'
      Origin = 'ITENS.CSTPISCOFINSSAIDA'
      OnChange = C_TabelaCSTPISCOFINSSAIDAChange
      Size = 2
    end
    object C_TabelaNATURAZARECEITAPISCOFINS: TIntegerField
      FieldName = 'NATURAZARECEITAPISCOFINS'
      Origin = 'ITENS.NATURAZARECEITAPISCOFINS'
    end
    object C_TabelaALIQPISSAIDA: TFloatField
      FieldName = 'ALIQPISSAIDA'
      Origin = 'ITENS.ALIQPISSAIDA'
    end
    object C_TabelaALIQCOFINSSAIDA: TFloatField
      FieldName = 'ALIQCOFINSSAIDA'
      Origin = 'ITENS.ALIQCOFINSSAIDA'
    end
    object C_TabelaVINCULOCREDITOPISCOFINS: TStringField
      FieldName = 'VINCULOCREDITOPISCOFINS'
      Origin = 'ITENS.VINCULOCREDITOPISCOFINS'
      Size = 3
    end
    object C_TabelaBASECREDITOPISCOFINS: TStringField
      FieldName = 'BASECREDITOPISCOFINS'
      Origin = 'ITENS.BASECREDITOPISCOFINS'
      Size = 2
    end
    object C_TabelalkCSTPISCONFINS: TStringField
      DisplayWidth = 200
      FieldKind = fkLookup
      FieldName = 'lkCSTPISCONFINS'
      LookupDataSet = C_CstPisCofins
      LookupKeyFields = 'CSTPISCOFINS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTPISCOFINS'
      Size = 200
      Lookup = True
    end
    object C_TabelalkVinculoCreditPisCofins: TStringField
      FieldKind = fkLookup
      FieldName = 'lkVinculoCreditPisCofins'
      LookupDataSet = C_VinculoCreditoPisCofins
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'VINCULOCREDITOPISCOFINS'
      Size = 50
      Lookup = True
    end
    object C_TabelalkBaseCreditoPisCofins: TStringField
      FieldKind = fkLookup
      FieldName = 'lkBaseCreditoPisCofins'
      LookupDataSet = C_BaseCreditoPisCofins
      LookupKeyFields = 'CODIGO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'BASECREDITOPISCOFINS'
      Size = 50
      Lookup = True
    end
    object C_TabelalkNaturezaReceitaPisCofins: TStringField
      FieldKind = fkLookup
      FieldName = 'lkNaturezaReceitaPisCofins'
      LookupDataSet = C_NaturezaReceitaPisCofins
      LookupKeyFields = 'ID'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'NATURAZARECEITAPISCOFINS'
      Size = 50
      Lookup = True
    end
    object C_TabelaEMPRESA: TIntegerField
      FieldName = 'EMPRESA'
      Origin = 'ITENS.EMPRESA'
      Required = True
    end
    object C_TabelalkCSTPISCOFINSSAIDA: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCSTPISCOFINSSAIDA'
      LookupDataSet = C_CstPisCofinsSAIDA
      LookupKeyFields = 'CSTPISCOFINS'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTPISCOFINSSAIDA'
      Size = 100
      Lookup = True
    end
    object C_TabelaCODIF: TStringField
      FieldName = 'CODIF'
      Origin = 'ITENS.CODIF'
      Size = 30
    end
    object C_TabelaCODANP: TStringField
      FieldName = 'CODANP'
      Origin = 'ITENS.CODANP'
      Size = 12
    end
    object C_TabelaPESAVEL: TStringField
      FieldName = 'PESAVEL'
      Origin = 'ITENS.PESAVEL'
      Size = 1
    end
    object C_TabelaITEMMVA: TIntegerField
      FieldName = 'ITEMMVA'
      Origin = 'ITENS.ITEMMVA'
    end
    object C_TabelalkMva: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMva'
      LookupDataSet = C_MVA
      LookupKeyFields = 'ITEMMVA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'ITEMMVA'
      Lookup = True
    end
    object C_TabelaQ_ItensCodigos: TDataSetField
      FieldName = 'Q_ItensCodigos'
    end
    object C_TabelaTIPOMATERIAPRIMA: TIntegerField
      FieldName = 'TIPOMATERIAPRIMA'
      Origin = 'ITENS.TIPOMATERIAPRIMA'
    end
    object C_TabelalkMateriaPrima: TStringField
      FieldKind = fkLookup
      FieldName = 'lkMateriaPrima'
      LookupDataSet = C_MateriaPrima
      LookupKeyFields = 'MATERIAPRIMA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOMATERIAPRIMA'
      Size = 50
      Lookup = True
    end
    object C_TabelaCODIGOVENDA: TStringField
      FieldName = 'CODIGOVENDA'
      Origin = 'ITENS.CODIGOVENDA'
      Size = 14
    end
    object C_TabelaCSTIPIENTRADA: TStringField
      FieldName = 'CSTIPIENTRADA'
      Origin = 'ITENS.CSTIPIENTRADA'
      Size = 2
    end
    object C_TabelaCENQIPICOMPRA: TStringField
      FieldName = 'CENQIPICOMPRA'
      Origin = 'ITENS.CENQIPICOMPRA'
      Size = 3
    end
    object C_TabelaCENQIPIVENDA: TStringField
      FieldName = 'CENQIPIVENDA'
      Origin = 'ITENS.CENQIPIVENDA'
      Size = 3
    end
    object C_TabelalkCSTSIPIEntrada: TStringField
      FieldKind = fkLookup
      FieldName = 'lkCSTSIPIEntrada'
      LookupDataSet = C_CstsIPIEntrada
      LookupKeyFields = 'CSTIPIENTRADA'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'CSTIPIENTRADA'
      Size = 80
      Lookup = True
    end
    object C_TabelaCEST_OPC: TStringField
      FieldName = 'CEST_OPC'
      Origin = 'ITENS.CEST_OPC'
      Size = 7
    end
    object C_TabelaFABRICACAOPROPRIA: TStringField
      FieldName = 'FABRICACAOPROPRIA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaDESCRICAOANP: TStringField
      FieldName = 'DESCRICAOANP'
      Size = 40
    end
    object C_TabelaPGNV: TBCDField
      FieldName = 'PGNV'
      Precision = 18
      Size = 2
    end
    object C_TabelaPGLP: TBCDField
      FieldName = 'PGLP'
      Precision = 18
      Size = 2
    end
    object C_TabelaDESCRICAOCOMPLEMENTAR: TStringField
      FieldName = 'DESCRICAOCOMPLEMENTAR'
      Size = 500
    end
    object C_TabelaMATERIAPRIMA: TStringField
      FieldName = 'MATERIAPRIMA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCUBAGEM: TBCDField
      FieldName = 'CUBAGEM'
      Precision = 18
      Size = 3
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 24
    Top = 221
  end
  inherited ResultSet: TClientDataSet
    Left = 76
    Top = 55
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
    Left = 91
    Top = 227
  end
  object P_Contas: TDataSetProvider
    DataSet = Q_Contas
    Constraints = True
    Left = 91
    Top = 275
  end
  object C_Contas: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Contas'
    Left = 91
    Top = 323
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
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADES order by descricao')
    UniDirectional = True
    Left = 148
    Top = 227
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 148
    Top = 275
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 148
    Top = 323
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
      Origin = 'UNIDADES.COMQTD'
      Size = 1
    end
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
    Left = 216
    Top = 227
  end
  object P_Fabricantes: TDataSetProvider
    DataSet = Q_Fabricantes
    Constraints = True
    Left = 217
    Top = 275
  end
  object C_Fabricantes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Fabricantes'
    Left = 217
    Top = 324
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
  object Q_TiposItens: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'Select * from TiposItens'
      'Where not (TipoItem in (5,6))')
    UniDirectional = True
    Left = 292
    Top = 236
    object Q_TiposItensTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
    end
    object Q_TiposItensDESCRICAO: TIBStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object P_TiposItens: TDataSetProvider
    DataSet = Q_TiposItens
    Constraints = True
    Left = 292
    Top = 283
  end
  object C_TiposItens: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TiposItens'
    Left = 292
    Top = 338
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
  object Q_TiposItensDS: TDataSource
    DataSet = Q_TiposItens
    Left = 292
    Top = 392
  end
  object Q_Grupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_TiposItensDS
    SQL.Strings = (
      'select * from GRUPOS '
      'where tipoitem = :TIPOITEM'
      'order by descricaogrupo')
    UniDirectional = True
    Left = 400
    Top = 236
    ParamData = <
      item
        DataType = ftInteger
        Name = 'TIPOITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_Grupos: TClientDataSet
    Aggregates = <>
    DataSetField = C_TiposItensQ_Grupos
    Params = <>
    Left = 406
    Top = 287
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
      Size = 3
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
    object C_GruposGRUPOPAI: TIntegerField
      FieldName = 'GRUPOPAI'
      Origin = 'GRUPOS.GRUPOPAI'
    end
    object C_GruposIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'GRUPOS.IMPORTACAO'
    end
    object C_GruposFOTO: TStringField
      FieldName = 'FOTO'
      Origin = 'GRUPOS.FOTO'
      Size = 255
    end
    object C_GruposTAXINCLUSO: TStringField
      FieldName = 'TAXINCLUSO'
      Origin = 'GRUPOS.TAXINCLUSO'
      Size = 1
    end
    object C_GruposPTAXINCLUSO: TBCDField
      FieldName = 'PTAXINCLUSO'
      Origin = 'GRUPOS.PTAXINCLUSO'
      Precision = 18
      Size = 2
    end
    object C_GruposTAXAVEL: TStringField
      FieldName = 'TAXAVEL'
      Origin = 'GRUPOS.TAXAVEL'
      Size = 1
    end
    object C_GruposDESATIVADO: TStringField
      FieldName = 'DESATIVADO'
      Origin = 'GRUPOS.DESATIVADO'
      Size = 1
    end
    object C_GruposDTHALTERACAO: TDateTimeField
      FieldName = 'DTHALTERACAO'
      Origin = 'GRUPOS.DTHALTERACAO'
    end
    object C_GruposMODALIDADEBCICMS: TIntegerField
      FieldName = 'MODALIDADEBCICMS'
      Origin = 'GRUPOS.MODALIDADEBCICMS'
    end
    object C_GruposMODALIDADEBCICMSST: TIntegerField
      FieldName = 'MODALIDADEBCICMSST'
      Origin = 'GRUPOS.MODALIDADEBCICMSST'
    end
    object C_GruposCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'GRUPOS.CSTPISCOFINS'
      Size = 2
    end
    object C_GruposALIQPIS: TBCDField
      FieldName = 'ALIQPIS'
      Origin = 'GRUPOS.ALIQPIS'
      Precision = 18
      Size = 2
    end
    object C_GruposALIQCOFINS: TBCDField
      FieldName = 'ALIQCOFINS'
      Origin = 'GRUPOS.ALIQCOFINS'
      Precision = 18
      Size = 2
    end
    object C_GruposCSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'GRUPOS.CSTIPI'
      Size = 2
    end
    object C_GruposGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GRUPOS.GENERO'
      Size = 2
    end
    object C_GruposALIQIR: TBCDField
      FieldName = 'ALIQIR'
      Origin = 'GRUPOS.ALIQIR'
      Precision = 18
      Size = 2
    end
    object C_GruposALIQSS: TBCDField
      FieldName = 'ALIQSS'
      Origin = 'GRUPOS.ALIQSS'
      Precision = 18
      Size = 2
    end
    object C_GruposIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
      Origin = 'GRUPOS.IDTRIBFEDERAL'
    end
    object C_GruposORIGEMMERCADORIA: TIntegerField
      FieldName = 'ORIGEMMERCADORIA'
      Origin = 'GRUPOS.ORIGEMMERCADORIA'
    end
    object C_GruposIPICOMPRA: TBCDField
      FieldName = 'IPICOMPRA'
      Origin = 'GRUPOS.IPICOMPRA'
      Precision = 18
      Size = 2
    end
    object C_GruposIPIVENDA: TBCDField
      FieldName = 'IPIVENDA'
      Origin = 'GRUPOS.IPIVENDA'
      Precision = 18
      Size = 2
    end
    object C_GruposCSTPISCOFINSSAIDA: TStringField
      FieldName = 'CSTPISCOFINSSAIDA'
      Origin = 'GRUPOS.CSTPISCOFINSSAIDA'
      Size = 2
    end
    object C_GruposNATURAZARECEITAPISCOFINS: TIntegerField
      FieldName = 'NATURAZARECEITAPISCOFINS'
      Origin = 'GRUPOS.NATURAZARECEITAPISCOFINS'
    end
    object C_GruposALIQPISSAIDA: TFloatField
      FieldName = 'ALIQPISSAIDA'
      Origin = 'GRUPOS.ALIQPISSAIDA'
    end
    object C_GruposALIQCOFINSSAIDA: TFloatField
      FieldName = 'ALIQCOFINSSAIDA'
      Origin = 'GRUPOS.ALIQCOFINSSAIDA'
    end
    object C_GruposVINCULOCREDITOPISCOFINS: TStringField
      FieldName = 'VINCULOCREDITOPISCOFINS'
      Origin = 'GRUPOS.VINCULOCREDITOPISCOFINS'
      Size = 3
    end
    object C_GruposBASECREDITOPISCOFINS: TStringField
      FieldName = 'BASECREDITOPISCOFINS'
      Origin = 'GRUPOS.BASECREDITOPISCOFINS'
      Size = 2
    end
    object C_GruposPISCOFINS: TStringField
      FieldName = 'PISCOFINS'
      Origin = 'GRUPOS.PISCOFINS'
      FixedChar = True
      Size = 1
    end
    object C_GruposDESPESASFIXAS: TBCDField
      FieldName = 'DESPESASFIXAS'
      Origin = 'GRUPOS.DESPESASFIXAS'
      Precision = 18
      Size = 2
    end
    object C_GruposENCARGOSCARTOES: TBCDField
      FieldName = 'ENCARGOSCARTOES'
      Origin = 'GRUPOS.ENCARGOSCARTOES'
      Precision = 18
      Size = 2
    end
    object C_GruposCOMISSAOAPLICADA: TBCDField
      FieldName = 'COMISSAOAPLICADA'
      Origin = 'GRUPOS.COMISSAOAPLICADA'
      Precision = 18
      Size = 2
    end
    object C_GruposIMPOSTOSFEDERAIS: TBCDField
      FieldName = 'IMPOSTOSFEDERAIS'
      Origin = 'GRUPOS.IMPOSTOSFEDERAIS'
      Precision = 18
      Size = 2
    end
    object C_GruposMENORVALORVENDA: TBCDField
      FieldName = 'MENORVALORVENDA'
      Origin = 'GRUPOS.MENORVALORVENDA'
      Precision = 18
      Size = 3
    end
  end
  object C_GruposDS: TDataSource
    DataSet = C_Grupos
    Left = 400
    Top = 343
  end
  object Q_ProdutosPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select pp.produtopreco, pp.item, pp.tabelapreco, pp.preco, pp.pr' +
        'ecomanual, pp.tipoupdate, pp.unidade, pp.id_altpreco, pp.hora_al' +
        'tpreco, pp.precopromocao, pp.exportacao, t.percentual, t.baseada'
      'from produtospreco pp '
      'INNER JOIN TabelasPreco t ON t.TabelaPreco = pp.TabelaPreco'
      'where pp.item = :ITEM ')
    UpdateObject = U_ProdutosPreco
    Left = 150
    Top = 8
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
    DataSetField = C_TabelaQ_ProdutosPreco
    Params = <>
    OnCalcFields = C_ProdutosPrecoCalcFields
    OnNewRecord = C_ProdutosPrecoNewRecord
    Left = 149
    Top = 59
    object C_ProdutosPreco_icSelecionado: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ProdutosPrecoPRODUTOPRECO: TIntegerField
      FieldName = 'PRODUTOPRECO'
      Origin = 'PRODUTOSPRECO.PRODUTOPRECO'
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
    object C_ProdutosPrecoPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      OnChange = C_ProdutosPrecoPRECOChange
      Precision = 18
      Size = 3
    end
    object C_ProdutosPrecoPRECOMANUAL: TStringField
      FieldName = 'PRECOMANUAL'
      Origin = 'PRODUTOSPRECO.PRECOMANUAL'
      Size = 1
    end
    object C_ProdutosPrecoTIPOUPDATE: TStringField
      FieldName = 'TIPOUPDATE'
      Origin = 'PRODUTOSPRECO.TIPOUPDATE'
      Size = 3
    end
    object C_ProdutosPrecoUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'PRODUTOSPRECO.UNIDADE'
      Size = 6
    end
    object C_ProdutosPrecoID_ALTPRECO: TStringField
      FieldName = 'ID_ALTPRECO'
      Origin = 'PRODUTOSPRECO.ID_ALTPRECO'
      Size = 40
    end
    object C_ProdutosPrecoHORA_ALTPRECO: TTimeField
      FieldName = 'HORA_ALTPRECO'
      Origin = 'PRODUTOSPRECO.HORA_ALTPRECO'
    end
    object C_ProdutosPrecoPRECOPROMOCAO: TBCDField
      FieldName = 'PRECOPROMOCAO'
      Origin = 'PRODUTOSPRECO.PRECOPROMOCAO'
      Precision = 18
      Size = 3
    end
    object C_ProdutosPrecoEXPORTACAO: TStringField
      FieldName = 'EXPORTACAO'
      Origin = 'PRODUTOSPRECO.EXPORTACAO'
      FixedChar = True
      Size = 1
    end
    object C_ProdutosPrecoPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'TABELASPRECO.PERCENTUAL'
      Precision = 18
      Size = 2
    end
    object C_ProdutosPrecoBASEADA: TStringField
      FieldName = 'BASEADA'
      Origin = 'TABELASPRECO.BASEADA'
      Size = 1
    end
    object C_ProdutosPrecolkTabelaPreco: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTabelaPreco'
      LookupDataSet = C_TabelasPreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPRECO'
      Size = 25
      Lookup = True
    end
    object C_ProdutosPrecoicPrecoMinimo: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icPrecoMinimo'
    end
  end
  object U_ProdutosPreco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from produtospreco '
      'where'
      '  PRODUTOPRECO = :PRODUTOPRECO')
    ModifySQL.Strings = (
      'update produtospreco'
      'set'
      '  PRODUTOPRECO = :PRODUTOPRECO,'
      '  ITEM = :ITEM,'
      '  TABELAPRECO = :TABELAPRECO,'
      '  PRECO = :PRECO,'
      '  PRECOMANUAL = :PRECOMANUAL,'
      '  TIPOUPDATE = :TIPOUPDATE,'
      '  UNIDADE = :UNIDADE,'
      '  ID_ALTPRECO = :ID_ALTPRECO,'
      '  HORA_ALTPRECO = :HORA_ALTPRECO,'
      '  PRECOPROMOCAO = :PRECOPROMOCAO,'
      '  EXPORTACAO = :EXPORTACAO'
      'where'
      '  PRODUTOPRECO = :OLD_PRODUTOPRECO')
    InsertSQL.Strings = (
      'insert into produtospreco'
      '  (PRODUTOPRECO, ITEM, TABELAPRECO, PRECO, PRECOMANUAL, '
      'TIPOUPDATE, UNIDADE, '
      '   ID_ALTPRECO, HORA_ALTPRECO, PRECOPROMOCAO, EXPORTACAO)'
      'values'
      '  (:PRODUTOPRECO, :ITEM, :TABELAPRECO, :PRECO, :PRECOMANUAL, '
      ':TIPOUPDATE, '
      '   :UNIDADE, :ID_ALTPRECO, :HORA_ALTPRECO, :PRECOPROMOCAO, '
      ':EXPORTACAO)')
    DeleteSQL.Strings = (
      'delete from produtospreco'
      'where'
      '  PRODUTOPRECO = :OLD_PRODUTOPRECO')
    Left = 152
    Top = 118
  end
  object Q_ItensUnidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_Master2DS
    SQL.Strings = (
      
        'select EXPORTACAO, FATOR, HERDADO, ITEM, ITEMUNIDADE, PERCENTUAL' +
        ', PERCENTUALMINIMO, PRECOMANUAL, UNIDADE, QTDEMBALAGEM, CODIGO, ' +
        'TABELAPRECO'
      'from ITENSUNIDADES'
      'where ITEM = :ITEM')
    UpdateObject = U_ItensUnidades
    Left = 244
    Top = 9
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ItensUnidades: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ItensUnidades
    Params = <>
    OnNewRecord = C_ItensUnidadesNewRecord
    Left = 245
    Top = 59
    object C_ItensUnidadesEXPORTACAO: TStringField
      FieldName = 'EXPORTACAO'
      Origin = 'ITENSUNIDADES.EXPORTACAO'
      FixedChar = True
      Size = 1
    end
    object C_ItensUnidadesFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'ITENSUNIDADES.FATOR'
    end
    object C_ItensUnidadesHERDADO: TStringField
      FieldName = 'HERDADO'
      Origin = 'ITENSUNIDADES.HERDADO'
      FixedChar = True
      Size = 1
    end
    object C_ItensUnidadesITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENSUNIDADES.ITEM'
    end
    object C_ItensUnidadesITEMUNIDADE: TIntegerField
      FieldName = 'ITEMUNIDADE'
      Origin = 'ITENSUNIDADES.ITEMUNIDADE'
      Required = True
    end
    object C_ItensUnidadesPERCENTUAL: TBCDField
      FieldName = 'PERCENTUAL'
      Origin = 'ITENSUNIDADES.PERCENTUAL'
      Precision = 18
      Size = 3
    end
    object C_ItensUnidadesPERCENTUALMINIMO: TBCDField
      FieldName = 'PERCENTUALMINIMO'
      Origin = 'ITENSUNIDADES.PERCENTUALMINIMO'
      Precision = 18
      Size = 3
    end
    object C_ItensUnidadesPRECOMANUAL: TBCDField
      FieldName = 'PRECOMANUAL'
      Origin = 'ITENSUNIDADES.PRECOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_ItensUnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENSUNIDADES.UNIDADE'
      Size = 6
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
    object C_ItensUnidadesQTDEMBALAGEM: TFloatField
      FieldName = 'QTDEMBALAGEM'
      Origin = 'ITENSUNIDADES.QTDEMBALAGEM'
    end
    object C_ItensUnidadesCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENSUNIDADES.CODIGO'
      OnValidate = C_ItensUnidadesCODIGOValidate
      Size = 14
    end
    object C_ItensUnidadesTABELAPRECO: TIntegerField
      FieldName = 'TABELAPRECO'
      Origin = 'ITENSUNIDADES.TABELAPRECO'
    end
    object C_ItensUnidadeslkTabelaPreco: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTabelaPreco'
      LookupDataSet = C_TabelasPreco
      LookupKeyFields = 'TABELAPRECO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TABELAPRECO'
      Size = 100
      Lookup = True
    end
  end
  object C_ProdutosPrecoDS: TDataSource
    DataSet = C_ProdutosPreco
    Left = 155
    Top = 169
  end
  object U_ItensUnidades: TIBUpdateSQL
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
      '  EXPORTACAO = :EXPORTACAO,'
      '  FATOR = :FATOR,'
      '  HERDADO = :HERDADO,'
      '  ITEM = :ITEM,'
      '  PERCENTUAL = :PERCENTUAL,'
      '  PERCENTUALMINIMO = :PERCENTUALMINIMO,'
      '  PRECOMANUAL = :PRECOMANUAL,'
      '  UNIDADE = :UNIDADE,'
      '  QTDEMBALAGEM = :QTDEMBALAGEM,'
      '  TABELAPRECO = :TABELAPRECO,'
      '  CODIGO = :CODIGO'
      'where'
      '  ITEMUNIDADE = :OLD_ITEMUNIDADE')
    InsertSQL.Strings = (
      'insert into ITENSUNIDADES'
      '  (EXPORTACAO, FATOR, HERDADO, ITEM, ITEMUNIDADE, PERCENTUAL, '
      'PERCENTUALMINIMO, '
      '   PRECOMANUAL, UNIDADE, QTDEMBALAGEM, TABELAPRECO, CODIGO)'
      'values'
      
        '  (:EXPORTACAO, :FATOR, :HERDADO, :ITEM, :ITEMUNIDADE, :PERCENTU' +
        'AL, '
      ':PERCENTUALMINIMO, '
      '   :PRECOMANUAL, :UNIDADE, :QTDEMBALAGEM, :TABELAPRECO, :CODIGO)')
    DeleteSQL.Strings = (
      'delete from ITENSUNIDADES'
      'where'
      '  ITEMUNIDADE = :OLD_ITEMUNIDADE')
    Left = 247
    Top = 112
  end
  object C_ItensUnidadesDS: TDataSource
    DataSet = C_ItensUnidades
    Left = 244
    Top = 161
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
    Left = 71
    Top = 110
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
    Left = 482
    Top = 235
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
  object P_TabelasPreco: TDataSetProvider
    DataSet = Q_TabelasPreco
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 482
    Top = 283
  end
  object C_TabelasPreco: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelasPreco'
    AfterOpen = C_TabelasPrecoAfterOpen
    Left = 484
    Top = 334
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
  object Q_CSTs: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select *'
      'from csts c'
      'where c.cst >= :cstI and c.cst <= :cstF'
      'order by c.cst asc')
    Left = 320
    Top = 13
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'cstI'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'cstF'
        ParamType = ptUnknown
      end>
  end
  object P_CSTs: TDataSetProvider
    DataSet = Q_CSTs
    Constraints = True
    Left = 320
    Top = 63
  end
  object C_CSTs: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CSTs'
    BeforeOpen = C_CSTsBeforeOpen
    Left = 321
    Top = 113
    object C_CSTsCST: TStringField
      FieldName = 'CST'
      Origin = 'CSTS.CST'
      Required = True
      Size = 3
    end
    object C_CSTsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
  end
  object C_SitECF: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_SitECF'
    Left = 392
    Top = 116
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
    Left = 392
    Top = 66
  end
  object Q_SitECF: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from situacoesecf'
      'where situacaoecf in ('#39'T'#39','#39'F'#39','#39'I'#39','#39'N'#39','#39'S'#39')')
    Left = 392
    Top = 20
  end
  object Q_SQL: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Left = 74
    Top = 163
  end
  object C_ContasDS: TDataSource
    DataSet = C_Contas
    Left = 92
    Top = 376
  end
  object C_UnidadesDS: TDataSource
    DataSet = C_Unidades
    Left = 164
    Top = 376
  end
  object Q_OutrasUnds: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from UNIDADES order by descricao')
    UniDirectional = True
    Left = 463
    Top = 19
  end
  object P_OutrasUnds: TDataSetProvider
    DataSet = Q_OutrasUnds
    Constraints = True
    Left = 463
    Top = 69
  end
  object C_OutrasUnds: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_OutrasUnds'
    Left = 463
    Top = 113
    object StringField1: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Size = 6
    end
    object StringField2: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
    object StringField3: TStringField
      FieldName = 'COMQTD'
      Origin = 'UNIDADES.COMQTD'
      Size = 1
    end
  end
  object C_OutrasUndsDS: TDataSource
    DataSet = C_OutrasUnds
    Left = 463
    Top = 160
  end
  object Q_ItensFilhos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BeforeOpen = Q_ItensFilhosBeforeOpen
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select ii.*, i.codigo, i.descricao, f.descricao as fabricante, i' +
        '.customedio, coalesce(i.customanual, 0) as customanual,'
      
        'coalesce(i.custocontabil, 0) as custocontabil, coalesce(i.precoc' +
        'ompra, 0) as precocompra,'
      
        'i.FatorUndVenda as FatorUndPrecoVenda, pp.Preco, ii.Fator as Old' +
        'Fator, ii.Unidade as UnidadeOld,'
      
        'coalesce((select p1.preco from produtospreco p1 where p1.item = ' +
        'i.item and p1.tabelapreco = 111), 0) as tabelapreco1,'
      
        'coalesce((select p2.preco from produtospreco p2 where p2.item = ' +
        'i.item and p2.tabelapreco = 222), 0) as tabelapreco2,'
      
        'coalesce((select p3.preco from produtospreco p3 where p3.item = ' +
        'i.item and p3.tabelapreco = 333), 0) as tabelapreco3'
      'from itensfilhos ii '
      '            inner join itens i ON ii.subitem = i.item'
      
        '            left join fabricantes f on i.fabricante = f.fabrican' +
        'te  '
      
        '            inner join produtospreco pp ON ii.Subitem = pp.Item ' +
        'and pp.Unidade = i.Unidade'
      'where ii.item = :ITEM and pp.tabelapreco = 0')
    UniDirectional = True
    UpdateObject = U_ItensFilhos
    Left = 540
    Top = 19
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
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
      '  ITEM = :ITEM,'
      '  SUBITEM = :SUBITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  UNIDADE = :UNIDADE,'
      '  FATOR = :FATOR'
      'where'
      '  IDFILHO = :OLD_IDFILHO')
    InsertSQL.Strings = (
      'insert into itensfilhos'
      '  (IDFILHO, ITEM, SUBITEM, QUANTIDADE, UNIDADE, FATOR)'
      'values'
      '  (:IDFILHO, :ITEM, :SUBITEM, :QUANTIDADE, :UNIDADE, :FATOR)')
    DeleteSQL.Strings = (
      'delete from itensfilhos'
      'where'
      '  IDFILHO = :OLD_IDFILHO')
    Left = 542
    Top = 163
  end
  object C_ItensFilhos: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ItensFilhos
    Params = <>
    AfterOpen = C_ItensFilhosAfterOpen
    OnCalcFields = C_ItensFilhosCalcFields
    OnNewRecord = C_ItensFilhosNewRecord
    Left = 539
    Top = 68
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
      Origin = 'ITENSFILHOS.UNIDADE'
      Size = 6
    end
    object C_ItensFilhosFATOR: TFloatField
      FieldName = 'FATOR'
      Origin = 'ITENSFILHOS.FATOR'
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
    object C_ItensFilhosFATORUNDPRECOVENDA: TFloatField
      FieldName = 'FATORUNDPRECOVENDA'
      Origin = 'ITENS.FATORUNDPRECOVENDA'
    end
    object C_ItensFilhosPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosOLDFATOR: TFloatField
      FieldName = 'OLDFATOR'
      Origin = 'ITENSFILHOS.OLDFATOR'
    end
    object C_ItensFilhosUNIDADEOLD: TStringField
      FieldName = 'UNIDADEOLD'
      Origin = 'ITENSFILHOS.UNIDADEOLD'
      Size = 6
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
    object C_ItensFilhosCUSTOMANUAL: TBCDField
      FieldName = 'CUSTOMANUAL'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosCUSTOCONTABIL: TFloatField
      FieldName = 'CUSTOCONTABIL'
    end
    object C_ItensFilhosPRECOCOMPRA: TFloatField
      FieldName = 'PRECOCOMPRA'
    end
    object C_ItensFilhosTABELAPRECO1: TBCDField
      FieldName = 'TABELAPRECO1'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosTABELAPRECO2: TBCDField
      FieldName = 'TABELAPRECO2'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosTABELAPRECO3: TBCDField
      FieldName = 'TABELAPRECO3'
      Precision = 18
      Size = 3
    end
    object C_ItensFilhosicSubTotalTabela1: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalTabela1'
    end
    object C_ItensFilhosicSubTotalTabela2: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalTabela2'
    end
    object C_ItensFilhosicSubTotalTabela3: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotalTabela3'
    end
    object C_ItensFilhosFABRICANTE: TStringField
      FieldName = 'FABRICANTE'
      Size = 30
    end
  end
  object C_ItensFilhosDS: TDataSource
    DataSet = C_ItensFilhos
    Left = 542
    Top = 116
  end
  object Q_Master2DS: TDataSource
    DataSet = Q_Tabela
    Left = 804
    Top = 569
  end
  object Q_ItensAlmox: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      
        'select ia.itemalmox, ia.item, ia.almoxarifado, ia.estoquealmox, ' +
        'a.descricao'
      'from itensalmox ia'
      'left join almoxarifados a on a.almoxarifado = ia.almoxarifado'
      'where ia.item = :ITEM')
    UpdateObject = U_ItensAlmox
    Left = 820
    Top = 18
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ItensAlmox: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ItensAlmox
    Params = <>
    Left = 820
    Top = 62
    object C_ItensAlmoxITEMALMOX: TIntegerField
      FieldName = 'ITEMALMOX'
      Origin = 'ITENSALMOX.ITEMALMOX'
      Required = True
    end
    object C_ItensAlmoxITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENSALMOX.ITEM'
    end
    object C_ItensAlmoxALMOXARIFADO: TIntegerField
      FieldName = 'ALMOXARIFADO'
      Origin = 'ITENSALMOX.ALMOXARIFADO'
    end
    object C_ItensAlmoxESTOQUEALMOX: TBCDField
      FieldName = 'ESTOQUEALMOX'
      Origin = 'ITENSALMOX.ESTOQUEALMOX'
      Precision = 18
      Size = 3
    end
    object C_ItensAlmoxDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ALMOXARIFADOS.DESCRICAO'
      Size = 30
    end
  end
  object U_ItensAlmox: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itensalmox '
      'where'
      '  ITEMALMOX = :ITEMALMOX')
    ModifySQL.Strings = (
      'update itensalmox'
      'set'
      '  ITEMALMOX = :ITEMALMOX,'
      '  ITEM = :ITEM,'
      '  ALMOXARIFADO = :ALMOXARIFADO,'
      '  ESTOQUEALMOX = :ESTOQUEALMOX'
      'where'
      '  ITEMALMOX = :OLD_ITEMALMOX')
    InsertSQL.Strings = (
      'insert into itensalmox'
      '  (ITEMALMOX, ITEM, ALMOXARIFADO, ESTOQUEALMOX)'
      'values'
      '  (:ITEMALMOX, :ITEM, :ALMOXARIFADO, :ESTOQUEALMOX)')
    DeleteSQL.Strings = (
      'delete from itensalmox'
      'where'
      '  ITEMALMOX = :OLD_ITEMALMOX')
    Left = 820
    Top = 110
  end
  object C_ItensAlmoxDS: TDataSource
    DataSet = C_ItensAlmox
    Left = 824
    Top = 158
  end
  object Q_GruposComissoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select grupocomissao, descricao'
      'from gruposcomissoes'
      'order by 2')
    Left = 710
    Top = 21
  end
  object P_GruposComissoes: TDataSetProvider
    DataSet = Q_GruposComissoes
    Constraints = True
    Left = 710
    Top = 77
  end
  object C_GruposComissoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_GruposComissoes'
    Left = 710
    Top = 133
    object C_GruposComissoesGRUPOCOMISSAO: TIntegerField
      FieldName = 'GRUPOCOMISSAO'
      Origin = 'GRUPOSCOMISSOES.GRUPOCOMISSAO'
      Required = True
    end
    object C_GruposComissoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'GRUPOSCOMISSOES.DESCRICAO'
      Size = 30
    end
  end
  object Q_Index: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select indexador, descricao'
      'from indexadores'
      'order by 2')
    Left = 312
    Top = 165
  end
  object P_Index: TDataSetProvider
    DataSet = Q_Index
    Constraints = True
    Left = 345
    Top = 232
  end
  object C_Index: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Index'
    Left = 345
    Top = 280
    object C_IndexINDEXADOR: TIntegerField
      FieldName = 'INDEXADOR'
      Origin = 'INDEXADORES.INDEXADOR'
      Required = True
    end
    object C_IndexDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'INDEXADORES.DESCRICAO'
      Size = 30
    end
  end
  object Q_Localizacoes: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select localizacao, descricao'
      'from localizacoes'
      'order by 2')
    Left = 618
    Top = 24
  end
  object P_Localizacoes: TDataSetProvider
    DataSet = Q_Localizacoes
    Constraints = True
    Left = 618
    Top = 80
  end
  object C_Localizacoes: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Localizacoes'
    Left = 618
    Top = 128
    object C_LocalizacoesLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'LOCALIZACOES.LOCALIZACAO'
      Required = True
    end
    object C_LocalizacoesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'LOCALIZACOES.DESCRICAO'
      Size = 15
    end
  end
  object Q_TabelasGrupos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select percentual from tabelasgrupos where grupo = :g'
      'and tabelapreco = :tp')
    Left = 905
    Top = 568
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'g'
        ParamType = ptUnknown
      end
      item
        DataType = ftUnknown
        Name = 'tp'
        ParamType = ptUnknown
      end>
  end
  object Q_TribFederal: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from TIPOTRIBUTACAOFEDERAL')
    Left = 814
    Top = 347
  end
  object P_TribFederal: TDataSetProvider
    DataSet = Q_TribFederal
    Constraints = True
    Left = 824
    Top = 441
  end
  object C_TribFederal: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TribFederal'
    Left = 814
    Top = 393
    object C_TribFederalIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
      Required = True
    end
    object C_TribFederalDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 30
    end
  end
  object C_TribFederalDs: TDataSource
    DataSet = C_TribFederal
    Left = 820
    Top = 488
  end
  object Q_ServicosPreco: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select sp.servicopreco, sp.item, sp.servico, sp.preco'
      'from servicospreco sp'
      'where sp.item = :ITEM')
    UpdateObject = U_ServicosPreco
    Left = 914
    Top = 340
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ServicosPreco: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ServicosPreco
    Params = <>
    OnNewRecord = C_ServicosPrecoNewRecord
    Left = 915
    Top = 388
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ServicosPrecoSERVICOPRECO: TIntegerField
      FieldName = 'SERVICOPRECO'
      Origin = 'SERVICOSPRECO.SERVICOPRECO'
      Required = True
    end
    object C_ServicosPrecoITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'SERVICOSPRECO.ITEM'
    end
    object C_ServicosPrecoSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOSPRECO.SERVICO'
    end
    object C_ServicosPrecoPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'SERVICOSPRECO.PRECO'
      Precision = 18
      Size = 2
    end
    object C_ServicosPrecolkpServico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpServico'
      LookupDataSet = C_Servicos
      LookupKeyFields = 'ITEM'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'SERVICO'
      Size = 50
      Lookup = True
    end
  end
  object U_ServicosPreco: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from servicospreco '
      'where'
      '  SERVICOPRECO = :SERVICOPRECO')
    ModifySQL.Strings = (
      'update servicospreco'
      'set'
      ''
      '  ITEM = :ITEM,'
      '  SERVICO = :SERVICO,'
      '  PRECO = :PRECO'
      'where'
      '  SERVICOPRECO = :OLD_SERVICOPRECO')
    InsertSQL.Strings = (
      'insert into servicospreco'
      '  (SERVICOPRECO, ITEM, SERVICO, PRECO)'
      'values'
      '  (:SERVICOPRECO, :ITEM, :SERVICO, :PRECO)')
    DeleteSQL.Strings = (
      'delete from servicospreco'
      'where'
      '  SERVICOPRECO = :OLD_SERVICOPRECO')
    Left = 914
    Top = 433
  end
  object C_ServicosPrecoDs: TDataSource
    DataSet = C_ServicosPreco
    Left = 915
    Top = 485
  end
  object Q_Servicos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select item,descricao from itens '
      'where tipoitem = 3'
      'order by descricao')
    UniDirectional = True
    Left = 1091
    Top = 478
  end
  object C_Servicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Servicos'
    Left = 1093
    Top = 431
    object C_ServicosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENS.ITEM'
      Required = True
    end
    object C_ServicosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
  end
  object C_ServicosDs: TDataSource
    DataSet = C_Servicos
    Left = 1095
    Top = 381
  end
  object P_Servicos: TDataSetProvider
    DataSet = Q_Servicos
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 1093
    Top = 335
  end
  object P_Grupos: TDataSetProvider
    DataSet = Q_Grupos
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 394
    Top = 393
  end
  object Q_CstPisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.CSTPISCOFINS, c.CSTPISCOFINS||'#39'-'#39'||c.descricao  as Desc' +
        'ricao  from CSTSPISCOFINS c'
      'WHERE c.cstpiscofins >= '#39'50'#39
      'order by c.CSTPISCOFINS'
      '')
    Left = 642
    Top = 425
  end
  object P_CstPisCofins: TDataSetProvider
    DataSet = Q_CstPisCofins
    Constraints = True
    Left = 647
    Top = 513
  end
  object C_CstPisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CstPisCofins'
    Left = 642
    Top = 473
    object StringField5: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTS.DESCRICAO'
      Size = 60
    end
    object C_CstPisCofinsCSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'CSTSPISCOFINS.CSTPISCOFINS'
      Required = True
      Size = 2
    end
  end
  object Q_CstsIPI: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CSTIPI, DESCRICAO, CSTIPI||'#39' - '#39'||DESCRICAO AS CODDESC fr' +
        'om CstsIPI'
      'where CSTIPI > '#39'49'#39
      'order by CSTIPI')
    Left = 1068
    Top = 15
  end
  object P_CstsIPI: TDataSetProvider
    DataSet = Q_CstsIPI
    Constraints = True
    Left = 1072
    Top = 111
  end
  object C_CstsIPI: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CstsIPI'
    Left = 1068
    Top = 63
    object StringField4: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'CSTSIPI.DESCRICAO'
      Size = 60
    end
    object C_CstsIPICSTIPI: TStringField
      FieldName = 'CSTIPI'
      Origin = 'CSTSIPI.CSTIPI'
      Required = True
      Size = 2
    end
    object C_CstsIPICODDESC: TStringField
      FieldName = 'CODDESC'
      Size = 63
    end
  end
  object Q_Generos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select genero,descricao, cast(genero as varchar(8)) ||'#39'-'#39'|| desc' +
        'ricao as CodDesc  from Generos'
      'order by descricao')
    Left = 949
    Top = 17
  end
  object P_Generos: TDataSetProvider
    DataSet = Q_Generos
    Constraints = True
    Left = 945
    Top = 107
  end
  object C_Generos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Generos'
    Left = 949
    Top = 59
    object StringField6: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'GENEROS.DESCRICAO'
      Size = 60
    end
    object C_GenerosGENERO: TStringField
      FieldName = 'GENERO'
      Origin = 'GENEROS.GENERO'
      Required = True
      Size = 2
    end
    object C_GenerosCODDESC: TStringField
      FieldName = 'CODDESC'
      Size = 509
    end
  end
  object Q_Origem: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from OrigensMercadoria'
      'order by descricao')
    Left = 1009
    Top = 15
  end
  object P_Origem: TDataSetProvider
    DataSet = Q_Origem
    Constraints = True
    Left = 1013
    Top = 113
  end
  object C_Origem: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Origem'
    Left = 1015
    Top = 61
    object StringField7: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ORIGENSMERCADORIA.DESCRICAO'
      Size = 60
    end
    object C_OrigemORIGEMMERCADORIA: TIntegerField
      FieldName = 'ORIGEMMERCADORIA'
      Origin = 'ORIGENSMERCADORIA.ORIGEMMERCADORIA'
      Required = True
    end
  end
  object Q_MODALIDADESBCICMS: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select MODALIDADEBCICMS,descricao,  cast(MODALIDADEBCICMS as var' +
        'char(8)) ||'#39'-'#39'|| descricao as CodDesc from MODALIDADESBCICMS'
      'order by MODALIDADEBCICMS')
    Left = 971
    Top = 191
  end
  object P_MODALIDADESBCICMS: TDataSetProvider
    DataSet = Q_MODALIDADESBCICMS
    Constraints = True
    Left = 974
    Top = 284
  end
  object C_MODALIDADESBCICMS: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MODALIDADESBCICMS'
    Left = 972
    Top = 234
    object StringField8: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MODALIDADESBCICMS.DESCRICAO'
      Size = 60
    end
    object C_MODALIDADESBCICMSMODALIDADEBCICMS: TIntegerField
      FieldName = 'MODALIDADEBCICMS'
      Origin = 'MODALIDADESBCICMS.MODALIDADEBCICMS'
      Required = True
    end
    object C_MODALIDADESBCICMSCODDESC: TStringField
      FieldName = 'CODDESC'
      Size = 59
    end
  end
  object Q_MODALIDADESBCICMSST: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select MODALIDADEBCICMSst,descricao,  cast(MODALIDADEBCICMSst as' +
        ' varchar(8)) ||'#39'-'#39'|| descricao as CodDesc from modalidadesbcicms' +
        'st'
      'order by MODALIDADEBCICMSst')
    Left = 1095
    Top = 168
  end
  object P_MODALIDADESBCICMSST: TDataSetProvider
    DataSet = Q_MODALIDADESBCICMSST
    Constraints = True
    Left = 1093
    Top = 215
  end
  object C_MODALIDADESBCICMSST: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MODALIDADESBCICMSST'
    Left = 1089
    Top = 269
    object StringField9: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MODALIDADESBCICMSST.DESCRICAO'
      Size = 60
    end
    object C_MODALIDADESBCICMSSTMODALIDADEBCICMSST: TIntegerField
      FieldName = 'MODALIDADEBCICMSST'
      Origin = 'MODALIDADESBCICMSST.MODALIDADEBCICMSST'
      Required = True
    end
    object C_MODALIDADESBCICMSSTCODDESC: TStringField
      FieldName = 'CODDESC'
      Size = 59
    end
  end
  object C_Msn: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Msn'
    Left = 118
    Top = 448
    object C_MsnMENSAGEMOPERACAO: TIntegerField
      FieldName = 'MENSAGEMOPERACAO'
      Origin = 'MENSAGENSOPERACOES.MENSAGEMOPERACAO'
      Required = True
    end
    object C_MsnDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MENSAGENSOPERACOES.DESCRICAO'
      Size = 150
    end
    object C_MsnTIPO: TStringField
      FieldName = 'TIPO'
      Origin = 'MENSAGENSOPERACOES.TIPO'
      Size = 2
    end
  end
  object P_Msn: TDataSetProvider
    DataSet = Q_Msn
    Constraints = True
    Left = 69
    Top = 447
  end
  object Q_Msn: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT * FROM mensagensoperacoes')
    Left = 17
    Top = 447
  end
  object Q_PropagaGrupo: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPOS '
      'where grupo = :Grupo')
    UniDirectional = True
    Left = 1084
    Top = 556
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Grupo'
        ParamType = ptUnknown
      end>
    object Q_PropagaGrupoGRUPO: TIntegerField
      FieldName = 'GRUPO'
      Origin = 'GRUPOS.GRUPO'
      Required = True
    end
    object Q_PropagaGrupoGRUPOPAI: TIntegerField
      FieldName = 'GRUPOPAI'
      Origin = 'GRUPOS.GRUPOPAI'
    end
    object Q_PropagaGrupoCODIGO: TIBStringField
      FieldName = 'CODIGO'
      Origin = 'GRUPOS.CODIGO'
      Size = 10
    end
    object Q_PropagaGrupoDESCRICAOGRUPO: TIBStringField
      FieldName = 'DESCRICAOGRUPO'
      Origin = 'GRUPOS.DESCRICAOGRUPO'
      Required = True
      Size = 30
    end
    object Q_PropagaGrupoTIPOITEM: TIntegerField
      FieldName = 'TIPOITEM'
      Origin = 'GRUPOS.TIPOITEM'
      Required = True
    end
    object Q_PropagaGrupoIMPORTACAO: TIntegerField
      FieldName = 'IMPORTACAO'
      Origin = 'GRUPOS.IMPORTACAO'
    end
    object Q_PropagaGrupoFOTO: TIBStringField
      FieldName = 'FOTO'
      Origin = 'GRUPOS.FOTO'
      Size = 255
    end
    object Q_PropagaGrupoDESCONTOMAXIMO: TIBBCDField
      FieldName = 'DESCONTOMAXIMO'
      Origin = 'GRUPOS.DESCONTOMAXIMO'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoCOMISSAO: TIBBCDField
      FieldName = 'COMISSAO'
      Origin = 'GRUPOS.COMISSAO'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoTAXINCLUSO: TIBStringField
      FieldName = 'TAXINCLUSO'
      Origin = 'GRUPOS.TAXINCLUSO'
      Size = 1
    end
    object Q_PropagaGrupoPTAXINCLUSO: TIBBCDField
      FieldName = 'PTAXINCLUSO'
      Origin = 'GRUPOS.PTAXINCLUSO'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoCUSTODESPESAS: TIBBCDField
      FieldName = 'CUSTODESPESAS'
      Origin = 'GRUPOS.CUSTODESPESAS'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoFATORLUCRO: TIBBCDField
      FieldName = 'FATORLUCRO'
      Origin = 'GRUPOS.FATORLUCRO'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoTAXAVEL: TIBStringField
      FieldName = 'TAXAVEL'
      Origin = 'GRUPOS.TAXAVEL'
      Size = 1
    end
    object Q_PropagaGrupoDESATIVADO: TIBStringField
      FieldName = 'DESATIVADO'
      Origin = 'GRUPOS.DESATIVADO'
      Size = 1
    end
    object Q_PropagaGrupoREDUCAOCST: TIBBCDField
      FieldName = 'REDUCAOCST'
      Origin = 'GRUPOS.REDUCAOCST'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoALIQICMS: TIBBCDField
      FieldName = 'ALIQICMS'
      Origin = 'GRUPOS.ALIQICMS'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoSITUACAOECF: TIBStringField
      FieldName = 'SITUACAOECF'
      Origin = 'GRUPOS.SITUACAOECF'
      Size = 1
    end
    object Q_PropagaGrupoTVA: TIBBCDField
      FieldName = 'TVA'
      Origin = 'GRUPOS.TVA'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoTVAFONTE: TIBBCDField
      FieldName = 'TVAFONTE'
      Origin = 'GRUPOS.TVAFONTE'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoDTHALTERACAO: TDateTimeField
      FieldName = 'DTHALTERACAO'
      Origin = 'GRUPOS.DTHALTERACAO'
    end
    object Q_PropagaGrupoMODALIDADEBCICMS: TIntegerField
      FieldName = 'MODALIDADEBCICMS'
      Origin = 'GRUPOS.MODALIDADEBCICMS'
    end
    object Q_PropagaGrupoMODALIDADEBCICMSST: TIntegerField
      FieldName = 'MODALIDADEBCICMSST'
      Origin = 'GRUPOS.MODALIDADEBCICMSST'
    end
    object Q_PropagaGrupoCSTPISCOFINS: TIBStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'GRUPOS.CSTPISCOFINS'
      Size = 2
    end
    object Q_PropagaGrupoALIQPIS: TIBBCDField
      FieldName = 'ALIQPIS'
      Origin = 'GRUPOS.ALIQPIS'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoALIQCOFINS: TIBBCDField
      FieldName = 'ALIQCOFINS'
      Origin = 'GRUPOS.ALIQCOFINS'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoCSTIPI: TIBStringField
      FieldName = 'CSTIPI'
      Origin = 'GRUPOS.CSTIPI'
      Size = 2
    end
    object Q_PropagaGrupoGENERO: TIBStringField
      FieldName = 'GENERO'
      Origin = 'GRUPOS.GENERO'
      Size = 2
    end
    object Q_PropagaGrupoALIQIR: TIBBCDField
      FieldName = 'ALIQIR'
      Origin = 'GRUPOS.ALIQIR'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoALIQSS: TIBBCDField
      FieldName = 'ALIQSS'
      Origin = 'GRUPOS.ALIQSS'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoIDTRIBFEDERAL: TIntegerField
      FieldName = 'IDTRIBFEDERAL'
      Origin = 'GRUPOS.IDTRIBFEDERAL'
    end
    object Q_PropagaGrupoORIGEMMERCADORIA: TIntegerField
      FieldName = 'ORIGEMMERCADORIA'
      Origin = 'GRUPOS.ORIGEMMERCADORIA'
    end
    object Q_PropagaGrupoIPICOMPRA: TIBBCDField
      FieldName = 'IPICOMPRA'
      Origin = 'GRUPOS.IPICOMPRA'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoIPIVENDA: TIBBCDField
      FieldName = 'IPIVENDA'
      Origin = 'GRUPOS.IPIVENDA'
      Precision = 18
      Size = 2
    end
    object Q_PropagaGrupoCST: TIBStringField
      FieldName = 'CST'
      Origin = 'GRUPOS.CST'
      Size = 3
    end
    object Q_PropagaGrupoCSTPISCOFINSSAIDA: TIBStringField
      FieldName = 'CSTPISCOFINSSAIDA'
      Origin = 'GRUPOS.CSTPISCOFINSSAIDA'
      Size = 2
    end
    object Q_PropagaGrupoNATURAZARECEITAPISCOFINS: TIntegerField
      FieldName = 'NATURAZARECEITAPISCOFINS'
      Origin = 'GRUPOS.NATURAZARECEITAPISCOFINS'
    end
    object Q_PropagaGrupoALIQPISSAIDA: TFloatField
      FieldName = 'ALIQPISSAIDA'
      Origin = 'GRUPOS.ALIQPISSAIDA'
    end
    object Q_PropagaGrupoALIQCOFINSSAIDA: TFloatField
      FieldName = 'ALIQCOFINSSAIDA'
      Origin = 'GRUPOS.ALIQCOFINSSAIDA'
    end
  end
  object Q_PropagaGrupoDs: TDataSource
    DataSet = Q_PropagaGrupo
    Left = 1084
    Top = 605
  end
  object Q_ExportacaoMabel: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select * from GRUPOS '
      'where grupo = :Grupo')
    UniDirectional = True
    Left = 583
    Top = 588
    ParamData = <
      item
        DataType = ftUnknown
        Name = 'Grupo'
        ParamType = ptUnknown
      end>
  end
  object Q_PrincipioAtivo: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select PRINCIPIOATIVO, descricao from PRINCIPIOSATIVOS'
      'order by descricao'
      '')
    UniDirectional = True
    Left = 30
    Top = 490
  end
  object Q_PrincipioAtivoDs: TDataSource
    DataSet = C_PrincipioAtivo
    Left = 258
    Top = 493
  end
  object C_PrincipioAtivo: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_PrincipioAtivo'
    Left = 178
    Top = 491
    object C_PrincipioAtivoPRINCIPIOATIVO: TIntegerField
      FieldName = 'PRINCIPIOATIVO'
      Origin = 'PRINCIPIOSATIVOS.PRINCIPIOATIVO'
      Required = True
    end
    object C_PrincipioAtivoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'PRINCIPIOSATIVOS.DESCRICAO'
      Size = 50
    end
  end
  object P_PrincipioAtivo: TDataSetProvider
    DataSet = Q_PrincipioAtivo
    Constraints = True
    Left = 101
    Top = 491
  end
  object Q_TabelaServicos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select t.servico, t.servico || '#39' - '#39' || t.descricao as descricao'
      'from tabelaservico t'
      'where servico > 40'
      'order by descricao')
    UniDirectional = True
    Left = 30
    Top = 548
  end
  object P_TabelaServicos: TDataSetProvider
    DataSet = Q_TabelaServicos
    Constraints = True
    Left = 101
    Top = 549
  end
  object C_TabelaServicos: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TabelaServicos'
    Left = 178
    Top = 549
    object C_TabelaServicosSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'TABELASERVICO.SERVICO'
      Required = True
    end
    object C_TabelaServicosDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TABELASERVICO.DESCRICAO'
      Size = 500
    end
  end
  object C_TabelaServicosDs: TDataSource
    DataSet = C_TabelaServicos
    Left = 272
    Top = 549
  end
  object Q_CstPisCofinsSAIDA: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select c.CSTPISCOFINS, c.CSTPISCOFINS||'#39'-'#39'||c.descricao  as Desc' +
        'ricao from CSTSPISCOFINS c'
      'WHERE c.cstpiscofins < '#39'50'#39
      'order by c.CSTPISCOFINS')
    Left = 585
    Top = 261
  end
  object P_CstPisCofinsSAIDA: TDataSetProvider
    DataSet = Q_CstPisCofinsSAIDA
    Constraints = True
    Left = 582
    Top = 307
  end
  object C_CstPisCofinsSAIDA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CstPisCofinsSAIDA'
    Left = 587
    Top = 214
    object C_CstPisCofinsSAIDACSTPISCOFINS: TStringField
      FieldName = 'CSTPISCOFINS'
      Origin = 'CSTSPISCOFINS.CSTPISCOFINS'
      Required = True
      Size = 2
    end
    object C_CstPisCofinsSAIDADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 500
    end
  end
  object Q_VinculoCreditoPisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select V.codigo, V.codigo||'#39'-'#39'||V.descricao as descricao from vi' +
        'nculocretidopiscofins V'
      'order by V.codigo')
    Left = 390
    Top = 462
  end
  object P_VinculoCreditoPisCofins: TDataSetProvider
    DataSet = Q_VinculoCreditoPisCofins
    Constraints = True
    Left = 387
    Top = 547
  end
  object C_VinculoCreditoPisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_VinculoCreditoPisCofins'
    Left = 389
    Top = 506
    object C_VinculoCreditoPisCofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'VINCULOCRETIDOPISCOFINS.CODIGO'
      Required = True
      Size = 3
    end
    object C_VinculoCreditoPisCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object Q_BaseCreditoPisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select b.codigo,b.codigo||'#39'-'#39'||b.descricao as descricao from bas' +
        'ecreditopiscofins b'
      'order by b.codigo')
    Left = 532
    Top = 432
  end
  object P_BaseCreditoPisCofins: TDataSetProvider
    DataSet = Q_BaseCreditoPisCofins
    Constraints = True
    Left = 529
    Top = 480
  end
  object C_BaseCreditoPisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_VinculoCreditoPisCofins'
    Left = 531
    Top = 527
    object C_BaseCreditoPisCofinsCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'VINCULOCRETIDOPISCOFINS.CODIGO'
      Required = True
      Size = 3
    end
    object C_BaseCreditoPisCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 100
    end
  end
  object Q_NaturezaReceitaPisCofins: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = C_TabelaDS
    SQL.Strings = (
      
        'select n.ID, n.cst||'#39'.'#39'||cast(n.codigo as varchar(10))||'#39' - '#39'|| ' +
        'n.descricao as descricao , n.CST from naturazareceitapiscofins n'
      ''
      'order by n.cst,n.codigo,n.descricao')
    Left = 730
    Top = 201
  end
  object P_NaturezaReceitaPisCofins: TDataSetProvider
    DataSet = Q_NaturezaReceitaPisCofins
    Constraints = True
    Left = 731
    Top = 294
  end
  object C_NaturezaReceitaPisCofins: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_NaturezaReceitaPisCofins'
    Left = 729
    Top = 249
    object C_NaturezaReceitaPisCofinsID: TIntegerField
      FieldName = 'ID'
      Origin = 'NATURAZARECEITAPISCOFINS.ID'
      Required = True
    end
    object C_NaturezaReceitaPisCofinsDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1003
    end
    object C_NaturezaReceitaPisCofinsCST: TStringField
      FieldName = 'CST'
      Origin = 'NATURAZARECEITAPISCOFINS.CST'
      Required = True
      Size = 2
    end
  end
  object C_CstPisCofinsSAIDADs: TDataSource
    DataSet = C_CstPisCofinsSAIDA
    Left = 588
    Top = 359
  end
  object Q_MVA: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select IM.ITEMMVA,IM.NCMSH , IM.ncmsh ||'#39' - '#39'|| IM.DESCRICAO AS ' +
        'DESCRICAO  , IM.MVAORIGINAL, IM.MVA4, IM.MVA7, IM.MVA12  from it' +
        'ensmva IM')
    UniDirectional = True
    Left = 880
    Top = 62
  end
  object C_MVA: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MVA'
    Left = 882
    Top = 15
    object C_MVANCMSH: TStringField
      FieldName = 'NCMSH'
      Origin = 'ITENSMVA.NCMSH'
      Size = 15
    end
    object C_MVADESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 1000
    end
    object C_MVAMVAORIGINAL: TBCDField
      FieldName = 'MVAORIGINAL'
      Origin = 'ITENSMVA.MVAORIGINAL'
      Precision = 18
      Size = 2
    end
    object C_MVAMVA4: TBCDField
      FieldName = 'MVA4'
      Origin = 'ITENSMVA.MVA4'
      Precision = 18
      Size = 2
    end
    object C_MVAMVA7: TBCDField
      FieldName = 'MVA7'
      Origin = 'ITENSMVA.MVA7'
      Precision = 18
      Size = 2
    end
    object C_MVAMVA12: TBCDField
      FieldName = 'MVA12'
      Origin = 'ITENSMVA.MVA12'
      Precision = 18
      Size = 2
    end
    object C_MVAITEMMVA: TIntegerField
      FieldName = 'ITEMMVA'
      Origin = 'ITENSMVA.ITEMMVA'
      Required = True
    end
  end
  object C_MVADS: TDataSource
    DataSet = C_MVA
    Left = 887
    Top = 109
  end
  object P_MVA: TDataSetProvider
    DataSet = Q_MVA
    Constraints = True
    Options = [poDisableInserts, poDisableDeletes]
    Left = 884
    Top = 159
  end
  object Q_ItensCodigos: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    SQL.Strings = (
      'select ic.item,ic.codigo,ic.unidade'
      'from itenscodigos ic'
      'INNER JOIN itens i ON i.item = ic.item'
      'where ic.item = :ITEM')
    UpdateObject = U_ItensCodigos
    Left = 1007
    Top = 341
    ParamData = <
      item
        DataType = ftInteger
        Name = 'ITEM'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object C_ItensCodigos: TClientDataSet
    Aggregates = <>
    DataSetField = C_TabelaQ_ItensCodigos
    Params = <>
    OnNewRecord = C_ItensCodigosNewRecord
    Left = 1006
    Top = 389
    object C_ItensCodigosITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'ITENSCODIGOS.ITEM'
      Required = True
    end
    object C_ItensCodigosCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENSCODIGOS.CODIGO'
      Required = True
      OnValidate = C_ItensCodigosCODIGOValidate
      Size = 14
    end
    object C_ItensCodigosUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'ITENSCODIGOS.UNIDADE'
      Size = 6
    end
    object C_ItensCodigoslkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'UNIDADE'
      Lookup = True
    end
  end
  object U_ItensCodigos: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from itenscodigos '
      'where'
      '  ITEM = :ITEM and'
      '  CODIGO = :CODIGO')
    ModifySQL.Strings = (
      'update itenscodigos'
      'set'
      '  ITEM = :ITEM,'
      '  CODIGO = :CODIGO,'
      '  UNIDADE = :UNIDADE'
      'where'
      '  ITEM = :OLD_ITEM and'
      '  CODIGO = :OLD_CODIGO')
    InsertSQL.Strings = (
      'insert into itenscodigos'
      '  (ITEM, CODIGO, UNIDADE)'
      'values'
      '  (:ITEM, :CODIGO, :UNIDADE)')
    DeleteSQL.Strings = (
      'delete from itenscodigos'
      'where'
      '  ITEM = :OLD_ITEM and'
      '  CODIGO = :OLD_CODIGO')
    Left = 1009
    Top = 438
  end
  object C_ItensCodigosDS: TDataSource
    DataSet = C_ItensCodigos
    Left = 1012
    Top = 489
  end
  object Q_MateriaPrima: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'SELECT MA.MATERIAPRIMA, MA.DESCRICAO FROM MATERIASPRIMAS MA'
      'ORDER BY MA.descricao')
    UniDirectional = True
    Left = 27
    Top = 615
  end
  object P_MateriaPrima: TDataSetProvider
    DataSet = Q_MateriaPrima
    Constraints = True
    Left = 191
    Top = 615
  end
  object C_MateriaPrima: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_MateriaPrima'
    Left = 111
    Top = 616
    object C_MateriaPrimaMATERIAPRIMA: TIntegerField
      FieldName = 'MATERIAPRIMA'
      Origin = 'MATERIASPRIMAS.MATERIAPRIMA'
      Required = True
    end
    object C_MateriaPrimaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'MATERIASPRIMAS.DESCRICAO'
      Size = 30
    end
  end
  object Q_CstsIPIEntrada: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      
        'select CSTIPI as CSTIPIENTRADA, CSTIPI||'#39' - '#39'||DESCRICAO AS DESC' +
        'RICAO from CSTSIPI'
      'where CSTIPI < '#39'50'#39
      'order by CSTIPI')
    Left = 1143
    Top = 15
  end
  object C_CstsIPIEntrada: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_CstsIPIEntrada'
    Left = 1144
    Top = 63
    object C_CstsIPIEntradaCSTIPIENTRADA: TStringField
      FieldName = 'CSTIPIENTRADA'
      Origin = 'CSTSIPI.CSTIPIENTRADA'
      Required = True
      Size = 2
    end
    object C_CstsIPIEntradaDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Size = 65
    end
  end
  object P_CstsIPIEntrada: TDataSetProvider
    DataSet = Q_CstsIPIEntrada
    Constraints = True
    Left = 1141
    Top = 111
  end
end
