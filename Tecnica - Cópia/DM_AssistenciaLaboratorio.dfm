inherited DMAssistenciaLaboratorio: TDMAssistenciaLaboratorio
  Left = 445
  Top = 112
  Height = 510
  Width = 593
  inherited OpenDialog: TOpenDialog
    Left = 200
    Top = 276
  end
  inherited SaveDialog: TSaveDialog
    Left = 269
    Top = 268
  end
  inherited Q_Tabela: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    SQL.Strings = (
      'SELECT S.SERVICO,'
      '       S.OSNUMERO,'
      '       S.CLIENTE,'
      '       S.DATAENTRADA,'
      '       S.HORAENTRADA,'
      '       S.EQUIPAMENTO,'
      '       S.PARTESAGRAGADAS,'
      '       S.DEFEITOALEGADO,'
      '       S.DEFEITOENCONTRADO,'
      '       S.OBSERVACAO,'
      '       S.DATASAIDA,'
      '       S.HORASAIDA,'
      '       S.FUNCENTRADA,'
      '       S.TECNICO,'
      '       S.FUNCSAIDA,'
      '       S.STATUSSERVICO,'
      '       S.LOCALIZACAO,'
      '       S.TIPOSERVICO,'
      '       S.NUMEROSERIE,'
      '       S.MODELO,'
      '       S.CARACTERISTICA,'
      '       S.FATURADO,'
      '       S.ORCAMENTO,'
      '       S.AVARIA,'
      '       S.COMACESSORIO,'
      '       S.COMACESSORIOOBS,'
      '       S.ESTADOPRODMANCHADO,'
      '       S.ESTADOPRODARRANHADO,'
      '       S.ESTADOPRODSUJO,'
      '       S.ESTADOPRODCABOELETRICO,'
      '       S.ESTADOPRODQUEBRADO,'
      '       S.EMBALAGEMPAPELAO,'
      '       S.EMBALAGEMPLASTICO,'
      '       S.RETORNO,'
      '       S.ORCAMENTOACEITO,'
      '       S.ORCAMENTOCOMUNICADO,'
      '       S.DATAORCAMENTO,'
      '       S.GARANTIAFABRICA,'
      '       S.FORAGARANTIA,'
      '       S.SEMEMBALAGEM,'
      '       S.OBSAVARIA,'
      '       S.SERVICOPRONTO, '
      '       S.SERVICOAVISADO,'
      '       S.DATASERVICO,'
      '       S.PRODUTOENTREGUE,'
      '       S.OBSSERVICOPRONTO,'
      '       S.OBSSERVICOENTREGUE,'
      '       S.OBSORCACEITO, '
      '       S.OBSORCCOMUNICADO,'
      '       S.TECNICODAOS, '
      '       F.NOME,'
      '       F.ENDERECO,'
      '       F.BAIRRO,'
      '       F.CIDADE,'
      '       F.CEP,'
      '       F.FONE1, F.FONE2,'
      '       F.CONTATO,'
      '       F.celular,'
      '       M.DESCRICAO AS DESCMODELO,'
      '       T.descricao AS DESCEQUIPAMENTO'
      'From SERVICOS S'
      '    INNER JOIN FAVORECIDOS F ON F.FAVORECIDO = S.CLIENTE'
      
        '  Left Join clientesequipamentos c on c.equipamento = s.equipame' +
        'nto'
      '  Left Join modelos m on m.modelo = c.modelo'
      
        '  left join tipoequipamentos t on t.tipoequipamento = m.tipoequi' +
        'pamento')
    Top = 7
  end
  inherited U_Tabela: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      '  SERVICO,'
      '  OSNUMERO,'
      '  CLIENTE,'
      '  DATAENTRADA,'
      '  HORAENTRADA,'
      '  EQUIPAMENTO,'
      '  PARTESAGRAGADAS,'
      '  DEFEITOALEGADO,'
      '  DEFEITOENCONTRADO,'
      '  OBSERVACAO,'
      '  DATASAIDA,'
      '  HORASAIDA,'
      '  FUNCENTRADA,'
      '  TECNICO,'
      '  FUNCSAIDA,'
      '  STATUSSERVICO,'
      '  LOCALIZACAO,'
      '  TIPOSERVICO,'
      '  NUMEROSERIE,'
      '  MODELO,'
      '  CARACTERISTICA,'
      '  FATURADO,'
      '  ORCAMENTO,'
      '  AVARIA,'
      '  COMACESSORIO,'
      '  COMACESSORIOOBS,'
      '  ESTADOPRODMANCHADO,'
      '  ESTADOPROARRANHADO,'
      '  ESTADOPRODSUJO,'
      '  ESTADOPRODCABOELETRICO,'
      '  ESTADOPRODQUEBRADO,'
      '  EMBALAGEMPAPELAO,'
      '  EMBALAGEMPLASTICO,'
      '  ESTADOPRODARRANHADO,'
      '  GARANTIAFABRICA,'
      '  FORAGARANTIA,'
      '  RETORNO,'
      '  ORCAMENTOACEITO,'
      '  ORCAMENTOCOMUNICADO,'
      '  DATAORCAMENTO,'
      '  SEMEMBALAGEM,'
      '  OBSAVARIA,'
      '  SERVICOPRONTO,'
      '  SERVICOAVISADO,'
      '  DATASERVICO,'
      '  PRODUTOENTREGUE,'
      '  OBSSERVICOPRONTO,'
      '  OBSSERVICOENTREGUE,'
      '  OBSORCACEITO,'
      '  OBSORCCOMUNICADO,'
      '  TECNICOENTRADA,'
      '  TECNICODAOS'
      'from SERVICOS '
      'where'
      '  SERVICO = :SERVICO')
    ModifySQL.Strings = (
      'update SERVICOS'
      'set'
      '  OSNUMERO = :OSNUMERO,'
      '  CLIENTE = :CLIENTE,'
      '  DATAENTRADA = :DATAENTRADA,'
      '  HORAENTRADA = :HORAENTRADA,'
      '  EQUIPAMENTO = :EQUIPAMENTO,'
      '  PARTESAGRAGADAS = :PARTESAGRAGADAS,'
      '  DEFEITOALEGADO = :DEFEITOALEGADO,'
      '  DEFEITOENCONTRADO = :DEFEITOENCONTRADO,'
      '  OBSERVACAO = :OBSERVACAO,'
      '  DATASAIDA = :DATASAIDA,'
      '  HORASAIDA = :HORASAIDA,'
      '  FUNCENTRADA = :FUNCENTRADA,'
      '  TECNICO = :TECNICO,'
      '  FUNCSAIDA = :FUNCSAIDA,'
      '  STATUSSERVICO = :STATUSSERVICO,'
      '  LOCALIZACAO = :LOCALIZACAO,'
      '  TIPOSERVICO = :TIPOSERVICO,'
      '  NUMEROSERIE = :NUMEROSERIE,'
      '  MODELO = :MODELO,'
      '  CARACTERISTICA = :CARACTERISTICA,'
      '  FATURADO = :FATURADO,'
      '  ORCAMENTO = :ORCAMENTO,'
      '  AVARIA = :AVARIA,'
      '  COMACESSORIO = :COMACESSORIO,'
      '  COMACESSORIOOBS = :COMACESSORIOOBS,'
      '  ESTADOPRODMANCHADO = :ESTADOPRODMANCHADO,'
      '  ESTADOPRODARRANHADO = :ESTADOPRODARRANHADO,'
      '  ESTADOPRODSUJO = :ESTADOPRODSUJO,'
      '  ESTADOPRODCABOELETRICO = :ESTADOPRODCABOELETRICO,'
      '  ESTADOPRODQUEBRADO = :ESTADOPRODQUEBRADO,'
      '  EMBALAGEMPAPELAO = :EMBALAGEMPAPELAO,'
      '  EMBALAGEMPLASTICO = :EMBALAGEMPLASTICO,'
      '  RETORNO = :RETORNO,'
      '  ORCAMENTOACEITO = :ORCAMENTOACEITO,'
      '  ORCAMENTOCOMUNICADO = :ORCAMENTOCOMUNICADO,'
      '  DATAORCAMENTO = :DATAORCAMENTO,'
      '  GARANTIAFABRICA = :GARANTIAFABRICA,'
      '  FORAGARANTIA = :FORAGARANTIA,'
      '  SEMEMBALAGEM = :SEMEMBALAGEM,'
      '  OBSAVARIA = :OBSAVARIA,'
      '  SERVICOPRONTO = :SERVICOPRONTO,'
      '  SERVICOAVISADO = :SERVICOAVISADO,'
      '  DATASERVICO = :DATASERVICO,'
      '  PRODUTOENTREGUE = :PRODUTOENTREGUE,'
      '  OBSSERVICOPRONTO = :OBSSERVICOPRONTO,'
      '  OBSSERVICOENTREGUE = :OBSSERVICOENTREGUE,'
      '  OBSORCACEITO = :OBSORCACEITO,'
      '  OBSORCCOMUNICADO = :OBSORCCOMUNICADO,'
      '  TECNICODAOS = :TECNICODAOS'
      'where'
      '  SERVICO = :OLD_SERVICO')
    InsertSQL.Strings = (
      'insert into SERVICOS'
      '  (SERVICO,OSNUMERO, CLIENTE, DATAENTRADA, HORAENTRADA, '
      'EQUIPAMENTO, PARTESAGRAGADAS, '
      '   DEFEITOALEGADO, DEFEITOENCONTRADO, OBSERVACAO, DATASAIDA, '
      'HORASAIDA, '
      '   FUNCENTRADA, TECNICO, FUNCSAIDA, STATUSSERVICO, LOCALIZACAO, '
      'TIPOSERVICO, '
      '   NUMEROSERIE, MODELO, CARACTERISTICA, FATURADO, ORCAMENTO, '
      'AVARIA, COMACESSORIO, '
      '   COMACESSORIOOBS, ESTADOPRODMANCHADO, '
      'ESTADOPRODARRANHADO, ESTADOPRODSUJO, '
      '   ESTADOPRODCABOELETRICO, ESTADOPRODQUEBRADO, '
      'EMBALAGEMPAPELAO, EMBALAGEMPLASTICO, '
      '   RETORNO, ORCAMENTOACEITO, ORCAMENTOCOMUNICADO, '
      'DATAORCAMENTO, GARANTIAFABRICA, FORAGARANTIA, '
      '   SEMEMBALAGEM, OBSAVARIA, SERVICOPRONTO, SERVICOAVISADO, '
      'DATASERVICO, PRODUTOENTREGUE, '
      'OBSSERVICOPRONTO, '
      '   OBSSERVICOENTREGUE, OBSORCACEITO, OBSORCCOMUNICADO, '
      'TECNICODAOS)'
      'values'
      '  (:SERVICO,:OSNUMERO, :CLIENTE, :DATAENTRADA, :HORAENTRADA, '
      ':EQUIPAMENTO, :PARTESAGRAGADAS, '
      
        '   :DEFEITOALEGADO, :DEFEITOENCONTRADO, :OBSERVACAO, :DATASAIDA,' +
        ' '
      ':HORASAIDA, '
      
        '   :FUNCENTRADA, :TECNICO, :FUNCSAIDA, :STATUSSERVICO, :LOCALIZA' +
        'CAO, '
      ':TIPOSERVICO, '
      
        '   :NUMEROSERIE, :MODELO, :CARACTERISTICA, :FATURADO, :ORCAMENTO' +
        ', '
      ':AVARIA, '
      '   :COMACESSORIO, :COMACESSORIOOBS, :ESTADOPRODMANCHADO, '
      ':ESTADOPRODARRANHADO, '
      '   :ESTADOPRODSUJO, :ESTADOPRODCABOELETRICO, '
      ':ESTADOPRODQUEBRADO, :EMBALAGEMPAPELAO, '
      '   :EMBALAGEMPLASTICO, :RETORNO, :ORCAMENTOACEITO, '
      ':ORCAMENTOCOMUNICADO, '
      '   :GARANTIAFABRICA, :FORAGARANTIA, :SEMEMBALAGEM, :OBSAVARIA, '
      ':SERVICOPRONTO, :SERVICOAVISADO, :PRODUTOENTREGUE, '
      ':OBSSERVICOPRONTO, :OBSSERVICOENTREGUE, '
      ':OBSORCACEITO, '
      '   :OBSORCCOMUNICADO, :TECNICODAOS)')
    DeleteSQL.Strings = (
      'delete from SERVICOS'
      'where'
      '  SERVICO = :OLD_SERVICO')
    Top = 53
  end
  inherited DMComponent: TDMComponent
    Pesquisar1_Iniciar = DMComponentPesquisar1_Iniciar
    Gravar2_AposIDS_Tabela = DMComponentGravar2_AposIDS_Tabela
    KeyForIDs = 'SERVICOS'
    Tabela_Nome = 'SERVICOS'
    Tabela_Chave = 'SERVICO'
    GenerateIDFor.Strings = (
      'C_ServicosDet=SERVICODET')
    Left = 28
    Top = 276
  end
  inherited DlgMsg: TDlgMsg
    Left = 128
    Top = 276
  end
  inherited P_Tabela: TDataSetProvider
    Left = 31
  end
  inherited C_Tabela: TClientDataSet
    Left = 32
    Top = 148
    object C_TabelalkpStatus: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpStatus'
      LookupDataSet = C_StatusServico
      LookupKeyFields = 'STATUSSERVICO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'STATUSSERVICO'
      Size = 30
      Lookup = True
    end
    object C_TabelalkpTipoServico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpTipoServico'
      LookupDataSet = C_TipoServico
      LookupKeyFields = 'TIPOSERVICO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'TIPOSERVICO'
      Size = 30
      Lookup = True
    end
    object C_TabelaSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOS.SERVICO'
      Required = True
    end
    object C_TabelaOSNUMERO: TStringField
      FieldName = 'OSNUMERO'
      Origin = 'SERVICOS.OSNUMERO'
      Size = 8
    end
    object C_TabelaCLIENTE: TIntegerField
      FieldName = 'CLIENTE'
      Origin = 'SERVICOS.CLIENTE'
    end
    object C_TabelaDATAENTRADA: TDateField
      FieldName = 'DATAENTRADA'
      Origin = 'SERVICOS.DATAENTRADA'
    end
    object C_TabelaHORAENTRADA: TTimeField
      FieldName = 'HORAENTRADA'
      Origin = 'SERVICOS.HORAENTRADA'
    end
    object C_TabelaEQUIPAMENTO: TIntegerField
      FieldName = 'EQUIPAMENTO'
      Origin = 'SERVICOS.EQUIPAMENTO'
    end
    object C_TabelaPARTESAGRAGADAS: TStringField
      FieldName = 'PARTESAGRAGADAS'
      Origin = 'SERVICOS.PARTESAGRAGADAS'
      Size = 100
    end
    object C_TabelaDEFEITOALEGADO: TStringField
      FieldName = 'DEFEITOALEGADO'
      Origin = 'SERVICOS.DEFEITOALEGADO'
      Size = 255
    end
    object C_TabelaDEFEITOENCONTRADO: TStringField
      FieldName = 'DEFEITOENCONTRADO'
      Origin = 'SERVICOS.DEFEITOENCONTRADO'
      Size = 255
    end
    object C_TabelaOBSERVACAO: TStringField
      FieldName = 'OBSERVACAO'
      Origin = 'SERVICOS.OBSERVACAO'
      Size = 255
    end
    object C_TabelaDATASAIDA: TDateField
      FieldName = 'DATASAIDA'
      Origin = 'SERVICOS.DATASAIDA'
    end
    object C_TabelaHORASAIDA: TTimeField
      FieldName = 'HORASAIDA'
      Origin = 'SERVICOS.HORASAIDA'
    end
    object C_TabelaFUNCENTRADA: TIntegerField
      FieldName = 'FUNCENTRADA'
      Origin = 'SERVICOS.FUNCENTRADA'
    end
    object C_TabelaTECNICO: TIntegerField
      FieldName = 'TECNICO'
      Origin = 'SERVICOS.TECNICO'
    end
    object C_TabelaFUNCSAIDA: TIntegerField
      FieldName = 'FUNCSAIDA'
      Origin = 'SERVICOS.FUNCSAIDA'
    end
    object C_TabelaSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'SERVICOS.STATUSSERVICO'
      OnValidate = C_TabelaSTATUSSERVICOValidate
    end
    object C_TabelaLOCALIZACAO: TIntegerField
      FieldName = 'LOCALIZACAO'
      Origin = 'SERVICOS.LOCALIZACAO'
    end
    object C_TabelaTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'SERVICOS.TIPOSERVICO'
    end
    object C_TabelaNUMEROSERIE: TStringField
      FieldName = 'NUMEROSERIE'
      Origin = 'SERVICOS.NUMEROSERIE'
      Size = 30
    end
    object C_TabelaMODELO: TIntegerField
      FieldName = 'MODELO'
      Origin = 'SERVICOS.MODELO'
    end
    object C_TabelaCARACTERISTICA: TStringField
      FieldName = 'CARACTERISTICA'
      Origin = 'SERVICOS.CARACTERISTICA'
      Size = 100
    end
    object C_TabelaNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
    object C_TabelaQ_ServicosDet: TDataSetField
      FieldName = 'Q_ServicosDet'
    end
    object C_TabelalkpLocalizacao: TStringField
      FieldKind = fkLookup
      FieldName = 'lkpLocalizacao'
      LookupDataSet = C_Localizacao
      LookupKeyFields = 'LOCALIZACAOEQUIPAMENTO'
      LookupResultField = 'DESCRICAO'
      KeyFields = 'LOCALIZACAO'
      Size = 30
      Lookup = True
    end
    object C_TabelaENDERECO: TStringField
      FieldName = 'ENDERECO'
      Origin = 'FAVORECIDOS.ENDERECO'
      Size = 50
    end
    object C_TabelaBAIRRO: TStringField
      FieldName = 'BAIRRO'
      Origin = 'FAVORECIDOS.BAIRRO'
      Size = 30
    end
    object C_TabelaCIDADE: TStringField
      FieldName = 'CIDADE'
      Origin = 'FAVORECIDOS.CIDADE'
      Size = 30
    end
    object C_TabelaCEP: TStringField
      FieldName = 'CEP'
      Origin = 'FAVORECIDOS.CEP'
      Size = 10
    end
    object C_TabelaFONE1: TStringField
      FieldName = 'FONE1'
      Origin = 'FAVORECIDOS.FONE1'
    end
    object C_TabelaFONE2: TStringField
      FieldName = 'FONE2'
      Origin = 'FAVORECIDOS.FONE2'
    end
    object C_TabelaDESCMODELO: TStringField
      FieldName = 'DESCMODELO'
      Origin = 'MODELOS.DESCMODELO'
      Size = 60
    end
    object C_TabelaFATURADO: TStringField
      FieldName = 'FATURADO'
      Origin = 'SERVICOS.FATURADO'
      Size = 1
    end
    object C_TabelalkTecnico: TStringField
      FieldKind = fkLookup
      FieldName = 'lkTecnico'
      LookupDataSet = C_Tecnico
      LookupKeyFields = 'FAVORECIDO'
      LookupResultField = 'NOME'
      KeyFields = 'TECNICO'
      Size = 50
      Lookup = True
    end
    object C_TabelaORCAMENTO: TStringField
      FieldName = 'ORCAMENTO'
      Origin = 'SERVICOS.ORCAMENTO'
      Size = 1
    end
    object C_TabelaAVARIA: TStringField
      FieldName = 'AVARIA'
      Origin = 'SERVICOS.AVARIA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCOMACESSORIO: TStringField
      FieldName = 'COMACESSORIO'
      Origin = 'SERVICOS.COMACESSORIO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaCOMACESSORIOOBS: TStringField
      FieldName = 'COMACESSORIOOBS'
      Origin = 'SERVICOS.COMACESSORIOOBS'
      Size = 100
    end
    object C_TabelaESTADOPRODMANCHADO: TStringField
      FieldName = 'ESTADOPRODMANCHADO'
      Origin = 'SERVICOS.ESTADOPRODMANCHADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaESTADOPRODARRANHADO: TStringField
      FieldName = 'ESTADOPRODARRANHADO'
      Origin = 'SERVICOS.ESTADOPRODARRANHADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaESTADOPRODSUJO: TStringField
      FieldName = 'ESTADOPRODSUJO'
      Origin = 'SERVICOS.ESTADOPRODSUJO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaESTADOPRODCABOELETRICO: TStringField
      FieldName = 'ESTADOPRODCABOELETRICO'
      Origin = 'SERVICOS.ESTADOPRODCABOELETRICO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaESTADOPRODQUEBRADO: TStringField
      FieldName = 'ESTADOPRODQUEBRADO'
      Origin = 'SERVICOS.ESTADOPRODQUEBRADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaEMBALAGEMPAPELAO: TStringField
      FieldName = 'EMBALAGEMPAPELAO'
      Origin = 'SERVICOS.EMBALAGEMPAPELAO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaEMBALAGEMPLASTICO: TStringField
      FieldName = 'EMBALAGEMPLASTICO'
      Origin = 'SERVICOS.EMBALAGEMPLASTICO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaRETORNO: TStringField
      FieldName = 'RETORNO'
      Origin = 'SERVICOS.RETORNO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaORCAMENTOACEITO: TStringField
      FieldName = 'ORCAMENTOACEITO'
      Origin = 'SERVICOS.ORCAMENTOACEITO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaORCAMENTOCOMUNICADO: TStringField
      FieldName = 'ORCAMENTOCOMUNICADO'
      Origin = 'SERVICOS.ORCAMENTOCOMUNICADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaGARANTIAFABRICA: TStringField
      FieldName = 'GARANTIAFABRICA'
      Origin = 'SERVICOS.GARANTIAFABRICA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaFORAGARANTIA: TStringField
      FieldName = 'FORAGARANTIA'
      Origin = 'SERVICOS.FORAGARANTIA'
      FixedChar = True
      Size = 1
    end
    object C_TabelaSEMEMBALAGEM: TStringField
      FieldName = 'SEMEMBALAGEM'
      Origin = 'SERVICOS.SEMEMBALAGEM'
      FixedChar = True
      Size = 1
    end
    object C_TabelaOBSAVARIA: TStringField
      FieldName = 'OBSAVARIA'
      Origin = 'SERVICOS.OBSAVARIA'
      Size = 100
    end
    object C_TabelaSERVICOPRONTO: TStringField
      FieldName = 'SERVICOPRONTO'
      Origin = 'SERVICOS.SERVICOPRONTO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaPRODUTOENTREGUE: TStringField
      FieldName = 'PRODUTOENTREGUE'
      Origin = 'SERVICOS.PRODUTOENTREGUE'
      FixedChar = True
      Size = 1
    end
    object C_TabelaOBSSERVICOPRONTO: TStringField
      FieldName = 'OBSSERVICOPRONTO'
      Origin = 'SERVICOS.OBSSERVICOPRONTO'
      Size = 100
    end
    object C_TabelaOBSSERVICOENTREGUE: TStringField
      FieldName = 'OBSSERVICOENTREGUE'
      Origin = 'SERVICOS.OBSSERVICOENTREGUE'
      Size = 100
    end
    object C_TabelaOBSORCACEITO: TStringField
      FieldName = 'OBSORCACEITO'
      Origin = 'SERVICOS.OBSORCACEITO'
      Size = 100
    end
    object C_TabelaOBSORCCOMUNICADO: TStringField
      FieldName = 'OBSORCCOMUNICADO'
      Origin = 'SERVICOS.OBSORCCOMUNICADO'
      Size = 100
    end
    object C_TabelaTECNICODAOS: TIntegerField
      FieldName = 'TECNICODAOS'
      Origin = 'SERVICOS.TECNICODAOS'
    end
    object C_TabelaCONTATO: TStringField
      FieldName = 'CONTATO'
      Origin = 'FAVORECIDOS.CONTATO'
      Size = 100
    end
    object C_TabelaCELULAR: TStringField
      FieldName = 'CELULAR'
      Origin = 'FAVORECIDOS.CELULAR'
    end
    object C_TabelaDESCEQUIPAMENTO: TStringField
      FieldName = 'DESCEQUIPAMENTO'
      Origin = 'TIPOEQUIPAMENTOS.DESCEQUIPAMENTO'
      Size = 30
    end
    object C_TabelaSERVICOAVISADO: TStringField
      FieldName = 'SERVICOAVISADO'
      FixedChar = True
      Size = 1
    end
    object C_TabelaDATAORCAMENTO: TDateField
      FieldName = 'DATAORCAMENTO'
    end
    object C_TabelaDATASERVICO: TDateField
      FieldName = 'DATASERVICO'
    end
  end
  inherited C_TabelaDS: TDataSource
    Left = 33
    Top = 192
  end
  object Q_ServicosDet: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    DataSource = Q_MasterDS
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select   sd.DESCRICAOITEM, '
      '             sd.ITEM, '
      '             sd.QUANTIDADE, '
      '             sd.SERVICO, '
      '             sd.SERVICODET, '
      '             sd.VALOR,'
      '             sd.UNIDADE,'
      '             i.CODIGO,'
      '             i.descricao,'
      '             i.referencia,'
      '             pp.preco,'
      '             i.estoque'
      'from servicosdet sd'
      '    left join itens i on i.item = sd.item'
      
        '    left join produtospreco pp on pp.item = i.item and pp.tabela' +
        'preco = 0'
      'WHERE sd.SERVICO = :SERVICO'
      '')
    UpdateObject = U_ServicosDet
    Left = 170
    Top = 7
    ParamData = <
      item
        DataType = ftInteger
        Name = 'SERVICO'
        ParamType = ptUnknown
        Size = 4
      end>
  end
  object U_ServicosDet: TIBUpdateSQL
    RefreshSQL.Strings = (
      'Select '
      'from servicosdet '
      'where'
      '  SERVICODET = :SERVICODET')
    ModifySQL.Strings = (
      'update servicosdet'
      'set'
      '  SERVICO = :SERVICO,'
      '  ITEM = :ITEM,'
      '  DESCRICAOITEM = :DESCRICAOITEM,'
      '  QUANTIDADE = :QUANTIDADE,'
      '  VALOR = :VALOR,'
      '  UNIDADE = :UNIDADE,'
      '  REFERENCIA = :REFERENCIA'
      'where'
      '  SERVICODET = :OLD_SERVICODET')
    InsertSQL.Strings = (
      'insert into servicosdet'
      '  (SERVICODET, SERVICO, ITEM, DESCRICAOITEM, QUANTIDADE, VALOR, '
      'UNIDADE, REFERENCIA)'
      'values'
      
        '  (:SERVICODET, :SERVICO, :ITEM, :DESCRICAOITEM, :QUANTIDADE, :V' +
        'ALOR, '
      ':UNIDADE, :REFERENCIA)')
    DeleteSQL.Strings = (
      'delete from servicosdet'
      'where'
      '  SERVICODET = :OLD_SERVICODET')
    Left = 170
    Top = 53
  end
  object P_ServicosDet: TDataSetProvider
    DataSet = Q_ServicosDet
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 166
    Top = 105
  end
  object C_ServicosDet: TClientDataSet
    Tag = 100
    Aggregates = <>
    DataSetField = C_TabelaQ_ServicosDet
    Params = <>
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnCalcFields = C_ServicosDetCalcFields
    OnNewRecord = C_ServicosDetNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 169
    Top = 152
    object IntegerField1: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_ServicosDetDESCRICAOITEM: TStringField
      FieldName = 'DESCRICAOITEM'
      Origin = 'SERVICOSDET.DESCRICAOITEM'
      Size = 50
    end
    object C_ServicosDetITEM: TIntegerField
      FieldName = 'ITEM'
      Origin = 'SERVICOSDET.ITEM'
      OnChange = C_ServicosDetITEMChange
    end
    object C_ServicosDetQUANTIDADE: TBCDField
      FieldName = 'QUANTIDADE'
      Origin = 'SERVICOSDET.QUANTIDADE'
      Precision = 18
      Size = 3
    end
    object C_ServicosDetSERVICO: TIntegerField
      FieldName = 'SERVICO'
      Origin = 'SERVICOSDET.SERVICO'
    end
    object C_ServicosDetSERVICODET: TIntegerField
      FieldName = 'SERVICODET'
      Origin = 'SERVICOSDET.SERVICODET'
      Required = True
    end
    object C_ServicosDetVALOR: TBCDField
      FieldName = 'VALOR'
      Origin = 'SERVICOSDET.VALOR'
      Precision = 18
      Size = 3
    end
    object C_ServicosDetCODIGO: TStringField
      FieldName = 'CODIGO'
      Origin = 'ITENS.CODIGO'
      Size = 13
    end
    object C_ServicosDetDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'ITENS.DESCRICAO'
      Size = 50
    end
    object C_ServicosDetPRECO: TBCDField
      FieldName = 'PRECO'
      Origin = 'PRODUTOSPRECO.PRECO'
      Precision = 18
      Size = 3
    end
    object C_ServicosDetUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'SERVICOSDET.UNIDADE'
      Size = 6
    end
    object C_ServicosDeticSubTotal: TCurrencyField
      FieldKind = fkInternalCalc
      FieldName = 'icSubTotal'
    end
    object C_ServicosDetlkUnidade: TStringField
      FieldKind = fkLookup
      FieldName = 'lkUnidade'
      LookupDataSet = C_Unidades
      LookupKeyFields = 'UNIDADE'
      LookupResultField = 'UNIDADE'
      KeyFields = 'UNIDADE'
      Size = 30
      Lookup = True
    end
    object C_ServicosDetESTOQUE: TBCDField
      FieldName = 'ESTOQUE'
      Origin = 'ITENS.ESTOQUE'
      Precision = 18
      Size = 3
    end
    object C_ServicosDetREFERENCIA: TStringField
      FieldName = 'REFERENCIA'
      Origin = 'ITENS.REFERENCIA'
      Size = 25
    end
  end
  object C_ServicosDetDs: TDataSource
    Tag = 100
    DataSet = C_ServicosDet
    Left = 168
    Top = 202
  end
  object Q_TipoServico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT TIPOSERVICO, DESCRICAO'
      'FROM  TIPOSSERVICOS'
      'ORDER BY  DESCRICAO')
    Left = 34
    Top = 331
  end
  object P_TipoServico: TDataSetProvider
    DataSet = Q_TipoServico
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 122
    Top = 333
  end
  object C_TipoServico: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_TipoServico'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 203
    Top = 334
    object IntegerField3: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TipoServicoTIPOSERVICO: TIntegerField
      FieldName = 'TIPOSERVICO'
      Origin = 'TIPOSSERVICOS.TIPOSERVICO'
      Required = True
    end
    object C_TipoServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'TIPOSSERVICOS.DESCRICAO'
      Size = 30
    end
  end
  object C_TipoServicoDs: TDataSource
    Tag = 100
    DataSet = C_TipoServico
    Left = 286
    Top = 333
  end
  object Q_StatusServico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      '  SELECT STATUSSERVICO, DESCRICAO'
      'FROM  STATUSSERVICOS'
      
        'where statusservico >19 and  statusservico <60 or (statusservico' +
        ' = 11)'
      'ORDER BY  ORDEM')
    Left = 24
    Top = 389
  end
  object P_StatusServico: TDataSetProvider
    DataSet = Q_StatusServico
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 120
    Top = 389
  end
  object C_StatusServico: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_StatusServico'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 201
    Top = 390
    object IntegerField4: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_StatusServicoSTATUSSERVICO: TIntegerField
      FieldName = 'STATUSSERVICO'
      Origin = 'STATUSSERVICOS.STATUSSERVICO'
      Required = True
    end
    object C_StatusServicoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'STATUSSERVICOS.DESCRICAO'
      Size = 30
    end
  end
  object C_StatusServicoDs: TDataSource
    Tag = 100
    DataSet = C_StatusServico
    Left = 284
    Top = 391
  end
  object Q_Localizacao: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'Select * from  LOCALIZACAOEQUIPAMENTO'
      'Order by Descricao')
    Left = 264
    Top = 11
  end
  object P_Localizacao: TDataSetProvider
    DataSet = Q_Localizacao
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 266
    Top = 61
  end
  object C_Localizacao: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Localizacao'
    AfterOpen = C_TabelaAfterOpen
    AfterClose = C_TabelaAfterClose
    AfterPost = C_TabelaAfterPost
    OnNewRecord = C_TabelaNewRecord
    OnReconcileError = C_TabelaReconcileError
    Left = 263
    Top = 112
    object IntegerField8: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_LocalizacaoLOCALIZACAOEQUIPAMENTO: TIntegerField
      FieldName = 'LOCALIZACAOEQUIPAMENTO'
      Origin = 'LOCALIZACAOEQUIPAMENTO.LOCALIZACAOEQUIPAMENTO'
      Required = True
    end
    object C_LocalizacaoDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'LOCALIZACAOEQUIPAMENTO.DESCRICAO'
      Size = 30
    end
  end
  object C_LocalizacaoDs: TDataSource
    Tag = 100
    DataSet = C_Localizacao
    Left = 264
    Top = 162
  end
  object Q_Tecnico: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    SQL.Strings = (
      'SELECT FAVORECIDO, NOME FROM'
      'FAVORECIDOS'
      'WHERE TIPOFAVORECIDO = 3 AND CARGO NOT IN (2,3)'
      'ORDER BY NOME')
    Left = 364
    Top = 11
  end
  object P_Tecnico: TDataSetProvider
    DataSet = Q_Tecnico
    Constraints = True
    Options = [poIncFieldProps, poCascadeDeletes, poCascadeUpdates, poPropogateChanges, poAllowCommandText]
    Left = 368
    Top = 57
  end
  object C_Tecnico: TClientDataSet
    Tag = 100
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Tecnico'
    Left = 371
    Top = 110
    object IntegerField9: TIntegerField
      FieldKind = fkInternalCalc
      FieldName = '_icSelecionado'
    end
    object C_TecnicoFAVORECIDO: TIntegerField
      FieldName = 'FAVORECIDO'
      Origin = 'FAVORECIDOS.FAVORECIDO'
      Required = True
    end
    object C_TecnicoNOME: TStringField
      FieldName = 'NOME'
      Origin = 'FAVORECIDOS.NOME'
      Size = 50
    end
  end
  object C_TecnicoDs: TDataSource
    Tag = 100
    DataSet = C_Tecnico
    Left = 370
    Top = 163
  end
  object Q_Unidades: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    SQL.Strings = (
      'select unidade, descricao'
      'from unidades'
      'order by unidade')
    Left = 368
    Top = 272
  end
  object P_Unidades: TDataSetProvider
    DataSet = Q_Unidades
    Constraints = True
    Left = 368
    Top = 320
  end
  object C_Unidades: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'P_Unidades'
    Left = 376
    Top = 376
    object C_UnidadesUNIDADE: TStringField
      FieldName = 'UNIDADE'
      Origin = 'UNIDADES.UNIDADE'
      Required = True
      Size = 6
    end
    object C_UnidadesDESCRICAO: TStringField
      FieldName = 'DESCRICAO'
      Origin = 'UNIDADES.DESCRICAO'
      Required = True
      Size = 30
    end
  end
  object Q_ClientesEquip: TIBQuery
    Database = DMProjeto.DB_Projeto
    Transaction = DMProjeto.IBT_Projeto
    BufferChunks = 1000
    CachedUpdates = False
    Constraints = <
      item
        FromDictionary = False
      end>
    Left = 472
    Top = 15
  end
end
