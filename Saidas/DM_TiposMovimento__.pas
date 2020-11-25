unit DM_TiposMovimento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery, IBStoredProc;

type
  TDMTiposMovimento = class(TDMManutencao)
    Q_TiposPadrao: TIBQuery;
    P_TiposPadrao: TDataSetProvider;
    C_TiposPadrao: TClientDataSet;
    C_TiposPadraoDS: TDataSource;
    C_TiposPadraoTIPOPADRAO: TIntegerField;
    C_TiposPadraoDESCRICAO: TStringField;
    C_TabelaDescTipoPadrao: TStringField;
    C_TabelaTIPOMOVIMENTO: TIntegerField;
    C_TabelaTIPO: TStringField;
    C_TabelaBAIXAESTOQUE: TStringField;
    C_TabelaCALCCOMISSAO: TStringField;
    C_TabelaPOSSUIENTREGA: TStringField;
    C_TabelaBLOQUEARSEATRASADO: TStringField;
    C_TabelaBLOQUEARPORSITUACAO: TStringField;
    C_TabelaBLOQUEARPORESTOQUE: TStringField;
    C_TabelaLIMITEFAVORECIDO: TStringField;
    C_TabelaSIGLAINICIAL: TStringField;
    C_TabelaTIT1_DATA: TStringField;
    C_TabelaTIT2_DATA: TStringField;
    C_TabelaTIT1_NUMERO: TStringField;
    C_TabelaTIT2_NUMERO: TStringField;
    C_TabelaCB_INFOENTREGA: TStringField;
    C_TabelaTIT1_LOCALENTREGA: TStringField;
    C_TabelaTIT1_DATAENTREGA: TStringField;
    C_TabelaTIT1_TIPOENTREGA: TStringField;
    C_TabelaTIT2_LOCALENTREGA: TStringField;
    C_TabelaTIT2_DATAENTREGA: TStringField;
    C_TabelaTIT2_TIPOENTREGA: TStringField;
    C_TabelaCB_VENDEDOR: TStringField;
    C_TabelaTIT1_VENDEDOR: TStringField;
    C_TabelaTIT2_VENDEDOR: TStringField;
    C_TabelaCB_PEDIDO: TStringField;
    C_TabelaTIT1_PEDIDO: TStringField;
    C_TabelaTIT2_PEDIDO: TStringField;
    C_TabelaCB_COMISSAO: TStringField;
    C_TabelaTIT1_COMISSAO: TStringField;
    C_TabelaTIT2_COMISSAO: TStringField;
    C_TabelaCB_TERMOS: TStringField;
    C_TabelaTIT1_TERMOS: TStringField;
    C_TabelaTIT2_TERMOS: TStringField;
    C_TabelaCB_MENSAGEM: TStringField;
    C_TabelaTIT1_MENSAGEM: TStringField;
    C_TabelaTIT2_MENSAGEM: TStringField;
    C_TabelaCB_DESCONTOS: TStringField;
    C_TabelaTIT1_DESCONTOS: TStringField;
    C_TabelaTIT2_DESCONTOS: TStringField;
    C_TabelaCB_FRETE: TStringField;
    C_TabelaTIT1_FRETE: TStringField;
    C_TabelaTIT2_FRETE: TStringField;
    C_TabelaCB_TOTALITENS: TStringField;
    C_TabelaTIT1_TOTALITENS: TStringField;
    C_TabelaTIT2_TOTALITENS: TStringField;
    C_TabelaCB_TOTALFINAL: TStringField;
    C_TabelaTIT1_TOTALFINAL: TStringField;
    C_TabelaTIT2_TOTALFINAL: TStringField;
    C_TabelaTIT1_DESCRICAO: TStringField;
    C_TabelaTIT1_QUANTIDADE: TStringField;
    C_TabelaTIT1_PRECO: TStringField;
    C_TabelaTIT1_SUBTOTAL: TStringField;
    C_TabelaTIT2_DESCRICAO: TStringField;
    C_TabelaTIT2_QUANTIDADE: TStringField;
    C_TabelaTIT2_PRECO: TStringField;
    C_TabelaTIT2_SUBTOTAL: TStringField;
    C_TabelaCB_JUROS: TStringField;
    C_TabelaTIT1_JUROS: TStringField;
    C_TabelaTIT2_JUROS: TStringField;
    C_TabelaCB_DESPESAS: TStringField;
    C_TabelaTIT1_DESPESAS: TStringField;
    C_TabelaTIT2_DESPESAS: TStringField;
    C_TabelaCB_CAMPO01: TStringField;
    C_TabelaTIT1_CAMPO1: TStringField;
    C_TabelaTIT2_CAMPO1: TStringField;
    C_TabelaCB_CAMPO02: TStringField;
    C_TabelaTIT1_CAMPO2: TStringField;
    C_TabelaTIT2_CAMPO2: TStringField;
    C_TabelaCB_CAMPO03: TStringField;
    C_TabelaTIT1_CAMPO3: TStringField;
    C_TabelaTIT2_CAMPO3: TStringField;
    C_TabelaCB_CAMPO04: TStringField;
    C_TabelaTIT1_CAMPO4: TStringField;
    C_TabelaTIT2_CAMPO4: TStringField;
    C_TabelaCB_CODIGO: TStringField;
    C_TabelaTIT1_CODIGO: TStringField;
    C_TabelaTIT2_CODIGO: TStringField;
    C_TabelaCB_FUNCIONARIO: TStringField;
    C_TabelaTIT1_FUNCIONARIO: TStringField;
    C_TabelaTIT2_FUNCIONARIO: TStringField;
    C_TabelaCB_ICMS: TStringField;
    C_TabelaTIT1_ICMS: TStringField;
    C_TabelaTIT2_ICMS: TStringField;
    C_TabelaTIT1_COLUNA1: TStringField;
    C_TabelaTIT1_COLUNA2: TStringField;
    C_TabelaTIT1_COLUNA3: TStringField;
    C_TabelaTIT1_COLUNA4: TStringField;
    C_TabelaTIT2_COLUNA1: TStringField;
    C_TabelaTIT2_COLUNA2: TStringField;
    C_TabelaTIT2_COLUNA3: TStringField;
    C_TabelaTIT2_COLUNA4: TStringField;
    C_TabelaCORTITULOS: TIntegerField;
    C_TabelaTIPOFAVPADRAO: TIntegerField;
    C_TabelaTIPOPADRAO: TIntegerField;
    C_TabelaCB_COLUNA1: TStringField;
    C_TabelaCB_COLUNA2: TStringField;
    C_TabelaCB_COLUNA3: TStringField;
    C_TabelaCB_COLUNA4: TStringField;
    C_TabelaTIT1_UNIDADE: TStringField;
    C_TabelaTIT2_UNIDADE: TStringField;
    C_TabelaFOTO: TStringField;
    C_TabelaTIT1_VALIDADE: TStringField;
    C_TabelaTIT2_VALIDADE: TStringField;
    Q_SQL: TIBQuery;
    C_TabelaCB_REFERENCIA: TStringField;
    C_TabelaTIT1_REFERENCIA: TStringField;
    C_TabelaTIT2_REFERENCIA: TStringField;
    C_TabelaTIT1_QTDRECEBIDA: TStringField;
    C_TabelaTIT2_QTDRECEBIDA: TStringField;
    C_TabelaTIT1_SITUACAO: TStringField;
    C_TabelaTIT2_SITUACAO: TStringField;
    C_TabelaATUALIZACUSTO: TStringField;
    C_TabelaATUALIZAPRECO: TStringField;
    C_TabelaINCLUIDESCONTO: TStringField;
    C_TabelaATUALIZAPRECOMANUAL: TStringField;
    C_TabelaCB_STATUS: TStringField;
    C_TabelaSTATUSPADRAO: TStringField;
    C_TabelaCB_STATUSITENS: TStringField;
    C_TabelaSTATUSPADRAOITENS: TStringField;
    C_TabelaCB_DOCSGARANTIA: TStringField;
    Q_Status: TIBQuery;
    P_Status: TDataSetProvider;
    C_Status: TClientDataSet;
    C_StatusSTATUS: TStringField;
    C_StatusDESCRICAO: TStringField;
    C_StatusORDEM: TIntegerField;
    C_TabelalkStatus: TStringField;
    C_TabelaCB_IMPRIMIROP: TStringField;
    C_TabelaCB_PGTOS: TStringField;
    C_TabelaCB_FICHACLIENTE: TStringField;
    C_TabelaCB_TOPRINTER: TStringField;
    C_TabelaCB_GERARNUM: TStringField;
    C_TabelaFAVORECIDOPADRAO: TIntegerField;
    C_TabelaTIPOIMPRESSAO_OP: TStringField;
    C_TabelaNOME: TStringField;
    Q_MensagensOperacoes: TIBQuery;
    P_MensagensOperacoes: TDataSetProvider;
    C_MensagensOperacoes: TClientDataSet;
    C_MensagensOperacoesMENSAGEMOPERACAO: TIntegerField;
    C_MensagensOperacoesDESCRICAO: TStringField;
    C_TabelaMENSAGEMPADRAO: TIntegerField;
    C_TabelalkMensagem: TStringField;
    C_TabelaCB_CONTRATO: TStringField;
    C_TermosContratos: TClientDataSet;
    P_TermosContratos: TDataSetProvider;
    Q_TermosContratos: TIBQuery;
    C_TermosContratosTERMOCONTRATO: TIntegerField;
    C_TermosContratosDESCRICAO: TStringField;
    C_TermosContratosDESATIVADO: TStringField;
    C_TermosContratosTITULO: TStringField;
    C_TabelaTEMPLATE: TIntegerField;
    C_TabelaTERMOCONTRATO: TIntegerField;
    C_TabelalkTermoContrato: TStringField;
    Q_Templates: TIBQuery;
    C_Templates: TClientDataSet;
    P_Templates: TDataSetProvider;
    C_TemplatesTEMPLATE: TIntegerField;
    C_TemplatesDESCRICAO: TStringField;
    C_TemplatesARQUIVO: TStringField;
    C_TabelalkTemplate: TStringField;
    C_TabelaCB_PRECO: TStringField;
    C_TabelaCB_SUBTOTAL: TStringField;
    C_TabelaCB_CODIGOFORN: TStringField;
    C_TabelaTIT1_CODIGOFORN: TStringField;
    C_TabelaTIT2_CODIGOFORN: TStringField;
    C_TabelaCB_COMPOSICAOITENS: TStringField;
    C_TabelaCB_DESCRICAOCOMPLEMENTAR: TStringField;
    C_TabelaCB_UNIDADE: TStringField;
    C_TabelaCB_CONSISTENCIA: TStringField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaCB_BALANCE: TStringField;
    C_TabelaTIT2_BALANCE: TStringField;
    C_TabelaTIT2_PGTOS: TStringField;
    C_TabelaTIT1_PGTOS: TStringField;
    C_TabelaTIT1_BALANCE: TStringField;
    C_TabelaCB_VALIDADE: TStringField;
    C_TiposImpressaoDS: TDataSource;
    C_TiposImpressao: TClientDataSet;
    C_TabelaDIASVALIDADE: TIntegerField;
    C_TabelaTABELAPADRAO: TIntegerField;
    C_TabelaALMOXPADRAO: TIntegerField;
    Q_TabelasPreco: TIBQuery;
    Q_TabelasPrecoTABELAPRECO: TIntegerField;
    Q_TabelasPrecoDESCRICAO: TIBStringField;
    Q_TabelasPrecoPERCENTUAL: TIBBCDField;
    Q_TabelasPrecoDESATIVADO: TIBStringField;
    Q_TabelasPrecoBASEADA: TIBStringField;
    C_TabelasPreco: TClientDataSet;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_TabelasPrecoPERCENTUAL: TBCDField;
    C_TabelasPrecoDESATIVADO: TStringField;
    C_TabelasPrecoBASEADA: TStringField;
    P_TabelasPreco: TDataSetProvider;
    Q_Almoxarifados: TIBQuery;
    P_Almoxarifados: TDataSetProvider;
    C_Almoxarifados: TClientDataSet;
    C_AlmoxarifadosALMOXARIFADO: TIntegerField;
    C_AlmoxarifadosDESCRICAO: TStringField;
    C_TabelalkAlmoxarifado: TStringField;
    C_TabelalkTabelaPadrao: TStringField;
    C_TabelaTIPODESCRICAO: TStringField;
    C_TabelaPOSSUIICMS: TStringField;
    C_TabelaPOSSUIIPI: TStringField;
    C_TabelaPOSSUIISS: TStringField;
    C_TabelaCONTABILIZAICMS: TStringField;
    C_TabelaTIT1_TVA: TStringField;
    C_TabelaTIT2_TVA: TStringField;
    C_TabelaCB_TVA: TStringField;
    C_TabelaCB_FABRICANTE: TStringField;
    C_TabelaTIT1_FABRICANTE: TStringField;
    C_TabelaCB_NUMEROITEM: TStringField;
    C_TabelaCB_REGISTRO: TStringField;
    C_TabelaTIT2_FABRICANTE: TStringField;
    C_TabelaTIT1_REGISTRO: TStringField;
    C_TabelaTIT2_REGISTRO: TStringField;
    C_TabelaCB_ALIQICMS: TStringField;
    C_TabelaCB_POREXTENSO: TStringField;
    C_TabelaSERIE: TStringField;
    C_TabelaMODELODOC: TStringField;
    C_TabelaTIT1_IPI: TStringField;
    C_TabelaTIT2_IPI: TStringField;
    C_TabelaCB_IPI: TStringField;
    C_TabelaCB_LICITACAO: TStringField;
    C_TabelaCB_CFOP: TStringField;
    C_TabelaTIT1_CFOP: TStringField;
    C_TabelaTIT2_CFOP: TStringField;
    P_TiposImpressao: TDataSetProvider;
    Q_TiposImpressao: TIBQuery;
    C_TiposImpressaoTIPO: TStringField;
    C_TiposImpressaoTITULO: TStringField;
    C_TiposImpressaoDESCRICAO: TStringField;
    C_TiposImpressaoIMAGEM: TStringField;
    C_TiposImpressaoicImagem: TGraphicField;
    C_TabelaTIPOCOB_PADRAO: TIntegerField;
    C_TabelaCB_NOTAFISCAL: TStringField;
    C_TabelaTIPONOTAFISCAL: TStringField;
    C_TabelaTEMPLATENOTAFISCAL: TIntegerField;
    C_TabelaCB_DUPLICATA: TStringField;
    C_TabelaCB_BOLETO: TStringField;
    C_TabelaCB_CARNE: TStringField;
    C_TabelaCB_RECIBO: TStringField;
    C_TabelaCB_IMPDOC: TStringField;
    C_TabelaDescTipoImpressao: TStringField;
    C_TabelalkTemplateNF: TStringField;
    Q_TemplatesNF: TIBQuery;
    P_TemplatesNF: TDataSetProvider;
    C_TemplatesNF: TClientDataSet;
    C_TemplatesNFTEMPLATE: TIntegerField;
    C_TemplatesNFDESCRICAO: TStringField;
    C_TemplatesNFARQUIVO: TStringField;
    C_TemplatesNFTIPO: TStringField;
    C_TabelaCB_IDENTIFICACAO: TStringField;
    C_TabelaCB_OPCOESIMPRESSAO: TStringField;
    C_TemplatesDS: TDataSource;
    C_TemplatesNFDS: TDataSource;
    C_TemplatesTIPO: TStringField;
    Q_TemplateDup: TIBQuery;
    C_TemplateDup: TClientDataSet;
    P_TemplateDup: TDataSetProvider;
    C_TemplateBol: TClientDataSet;
    P_TemplateBol: TDataSetProvider;
    Q_TemplateBol: TIBQuery;
    C_TemplateDupDS: TDataSource;
    C_TemplateDupTEMPLATE: TIntegerField;
    C_TemplateDupDESCRICAO: TStringField;
    C_TemplateDupARQUIVO: TStringField;
    C_TemplateDupTIPO: TStringField;
    C_TemplateBolTEMPLATE: TIntegerField;
    C_TemplateBolDESCRICAO: TStringField;
    C_TemplateBolARQUIVO: TStringField;
    C_TemplateBolTIPO: TStringField;
    C_TemplateBolDS: TDataSource;
    C_TabelaTEMPLATEDUPLICATA: TIntegerField;
    C_TabelaTEMPLATEBOLETO: TIntegerField;
    C_TabelalkTemplateDup: TStringField;
    C_TabelalkTemplateBol: TStringField;
    Q_TiposCobranca: TIBQuery;
    P_TiposCobranca: TDataSetProvider;
    C_TiposCobranca: TClientDataSet;
    C_TiposCobrancaTIPOCOBRANCA: TIntegerField;
    C_TiposCobrancaDESCRICAO: TStringField;
    C_TiposCobrancaDESATIVADO: TStringField;
    C_TabelalkTipoCobrancaPadrao: TStringField;
    C_TabelaCFOPASSOCIADO: TStringField;
    C_TabelaGERAFINANCEIRO: TStringField;
    C_Carteiras: TClientDataSet;
    C_CarteirasCARTEIRA: TIntegerField;
    C_CarteirasNUMEROCARTEIRA: TStringField;
    P_Carteiras: TDataSetProvider;
    Q_Carteiras: TIBQuery;
    C_TabelaTIPO_CARTEIRA_PADRAO: TIntegerField;
    C_TabelalkTipoCarteiraPadrao: TStringField;
    C_TabelaCB_ORDEM_IMP_ITENS: TStringField;
    C_TabelaCB_DUPLICATA_IMPRESSA: TStringField;
    C_TabelaCB_IMPRESSAOSEMVALORES: TStringField;
    C_TabelaBAIXAESTOQUEFISCAL: TStringField;
    C_TabelaCB_SOLICITACAOALMOX: TStringField;
    C_TabelaCB_CARNEIDENTIFICADO: TStringField;
    Q_CFOPSCST: TIBQuery;
    U_CFOPSCST: TIBUpdateSQL;
    P_CFOPSCST: TDataSetProvider;
    C_CFOPSCST: TClientDataSet;
    C_CFOPSCSTDs: TDataSource;
    C_CFOPSCSTCFOPCST: TIntegerField;
    C_CFOPSCSTCFOPASSOCIADO: TStringField;
    C_CFOPSCSTCST: TStringField;
    C_CFOPSCSTTIPOMOVIMENTO: TIntegerField;
    C_TabelaQ_CFOPSCST: TDataSetField;
    C_CFOPSCSTCFOPFORAESTADO: TStringField;
    C_TabelaLIVROFISCAL: TStringField;
    PP_INSERTCFOPSCST: TIBStoredProc;
    C_TabelaCB_DESCONTOITEM: TStringField;
    C_TabelaCB_CSTPADRAO: TStringField;
    C_TabelaCST_PADRAO: TStringField;
    Q_CSTPADRAO: TIBQuery;
    P_CSTPADRAO: TDataSetProvider;
    C_CSTPADRAO: TClientDataSet;
    C_CSTPADRAODS: TDataSource;
    C_CSTPADRAOCST: TStringField;
    C_CSTPADRAODESCRICAO: TStringField;
    C_TabelalkCstPadrao: TStringField;
    C_TabelaORDEM: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaCALCULAPISCOFINS: TStringField;
    C_TabelaCB_IMPRESSORAPADRAO: TStringField;
    C_TabelaNOMEIMPRESSORA: TStringField;
    C_TabelaPAPELIMPRESSORA: TStringField;
    C_TabelaCALCULAICMSSUBST: TStringField;
    C_TabelaCB_MENSAGEMTRIBUTOS: TStringField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaPOSSUIENTREGAChange(Sender: TField);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaTIPOPADRAOValidate(Sender: TField);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure C_TiposImpressaoAfterOpen(DataSet: TDataSet);
    procedure C_CFOPSCSTNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    nTipoPadraoFixo : Integer;
    nomeImpressoraPadrao, tipoPapelPadrao: string;
    
//    procedure CarregarTiposImpressao;
  end;

var
  DMTiposMovimento: TDMTiposMovimento;

implementation
  uses DM_Projeto, funcoes;

{$R *.DFM}

(*
procedure TDMTiposMovimento.CarregarTiposImpressao;
var Picture : TPicture;
		sFileName : string;
begin
  with DMTiposMovimento.C_TiposImpressao do begin
    {Gráfico - Normal}
    Append;
    FieldByName('Tipo').AsString := 'N';
    FieldByName('Descricao').AsString := 'Normal. Tipo Gráfico. Modelo de impressão padrão do sistema. ';
    FieldByName('Titulo').AsString := 'Normal Gráfico';
    sFileName := DMProjeto.ImgPath+'normal.bmp';
    if fileexists( sFileName ) then
    	TGraphicField(FieldByName('Imagem')).LoadFromFile( sFileName );
    Post;
    {Gráfico - Produto e Serviço Separado}
    Append;
    FieldByName('Tipo').AsString := 'PS';
    FieldByName('Titulo').AsString := 'Produto e Serviço Separado';
    FieldByName('Descricao').AsString := 'Produtos e Serviços Separado. Tipo Gráfico. Modelo de impressão onde os produtos são impressos na parte superior e os serviços na parte inferior.';
    sFileName := DMProjeto.ImgPath+'prodserv.bmp';
    if fileexists( sFileName ) then
    	TGraphicField(FieldByName('Imagem')).LoadFromFile( sFileName );
    Post;
    {Gráfico - Econômico}
    Append;
    FieldByName('Tipo').AsString := 'E';
    FieldByName('Titulo').AsString := 'Econômico';
    FieldByName('Descricao').AsString := 'Econômico. Tipo Gráfico. Modelo de Impressão sem linhas laterais e internas.';
    sFileName := DMProjeto.ImgPath+'economico.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile( sFileName );
    Post;
    {Gráfico - Econômico Produto e Serviço Separado}
    Append;
    FieldByName('Tipo').AsString := 'EPS';
    FieldByName('Titulo').AsString := 'Econômico Produto e Serviço Separado';
    FieldByName('Descricao').AsString := 'Econômico com Produto e Serviço Separado. Tipo Gráfico. Modelo de Impressão sem linhas laterais e internas com Produtos e Serviços em separado.';
    sFileName := DMProjeto.ImgPath+'economico_prodserv.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile( sFileName );
    Post;
    {Gráfico - Meia Folha/Simples}
    Append;
    FieldByName('Tipo').AsString := 'S';
    FieldByName('Titulo').AsString := 'Meia Folha';
    FieldByName('Descricao').AsString := 'Meia Folha. Tipo Gráfico. Modelo de Impressão simples.';
    sFileName := DMProjeto.ImgPath+'simples.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {Texto - Invoice Rápida}
    Append;
    FieldByName('Tipo').AsString := 'TN';
    FieldByName('Titulo').AsString := 'Invoice Rápida';
    FieldByName('Descricao').AsString := 'Invoice Rápida. Tipo Texto. Modelo de Impressão para impressoras matriciais.';
    sFileName := DMProjeto.ImgPath+'inv_rapida.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {Texto - Invoice Rápida Condensado}
    Append;
    FieldByName('Tipo').AsString := 'TC';
    FieldByName('Titulo').AsString := 'Invoice Rápida Condensado';
    FieldByName('Descricao').AsString := 'Invoice Rápida Condensado. Tipo Texto. Modelo de Impressão para impressoras matriciais com caracteres condensado.';
    sFileName := DMProjeto.ImgPath+'inv_rapida.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {Texto - Invoice Rápida com produto e serviço separado}
    Append;
    FieldByName('Tipo').AsString := 'TS';
    FieldByName('Titulo').AsString := 'Invoice Rápida Produto Serviço';
    FieldByName('Descricao').AsString := 'Invoice Rápida com produto e serviço separado. Tipo Texto. Modelo de Impressão para impressoras matriciais com tamanho de caracteres normais.';
    sFileName := DMProjeto.ImgPath+'inv_rapidaprodserv.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile( sFileName );
    Post;
    {Texto - Invoice Rápida Condensado com produto e serviço separado}
    Append;
    FieldByName('Tipo').AsString := 'TSC';
    FieldByName('Titulo').AsString := 'Invoice Rápida Condensado Produto Serviço';
    FieldByName('Descricao').AsString := 'Invoice Rápida Condensado com produto e serviço separado. Tipo Texto. Modelo de Impressão para impressoras matriciais com caracteres condensados.';
    sFileName := DMProjeto.ImgPath+'inv_rapidaprodserv.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {Texto - Venda Rápida}
    Append;
    FieldByName('Tipo').AsString := 'RN';
    FieldByName('Titulo').AsString := 'Venda Rápida';
    FieldByName('Descricao').AsString := 'Venda Rápida. Tipo Texto. Modelo de Impressão para vendas de balcão.';
    sFileName := DMProjeto.ImgPath+'inv_vendarapida.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {Texto - Venda Rápida Condensado}
    Append;
    FieldByName('Tipo').AsString := 'RC';
    FieldByName('Titulo').AsString := 'Venda Rápida Condensado';
    FieldByName('Descricao').AsString := 'Venda Rápida Condensado. Tipo Texto. Modelo de Impressão para vendas de balcão com caracteres condensados.';
    sFileName := DMProjeto.ImgPath+'inv_vendarapida.bmp';
    if fileexists( sFilename ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {Texto - Venda Rápida com produtos e serviços separado}
    Append;
    FieldByName('Tipo').AsString := 'RS';
    FieldByName('Titulo').AsString := 'Venda Rápida com produtos serviços separado';
    FieldByName('Descricao').AsString := 'Venda Rápida com produtos e serviços separado. Tipo Texto. Modelo de Impressão para vendas de balcão com caracteres normais.';
    sFileName := DMProjeto.ImgPath+'inv_vendarapidaprodserv.bmp';
    if fileexists( sFileName ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {Texto - Venda Rápida com produtos e serviços separado e condensado}
    Append;
    FieldByName('Tipo').AsString := 'RSC';
    FieldByName('Titulo').AsString := 'Venda Rápida com produtos serviços separado condensado';
    FieldByName('Descricao').AsString := 'Venda Rápida Condensado com produtos e serviços separado. Tipo Texto. Modelo de Impressão para vendas de balcão com caracteres condensados.';
    sFileName := DMProjeto.ImgPath+'inv_vendarapidaprodserv.bmp';
    if fileexists( sFileName ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {Texto - Venda Rápida com produtos e serviços separado e condensado}
    Append;
    FieldByName('Tipo').AsString := '40';
    FieldByName('Titulo').AsString := 'Venda Rápida em 40 colunas';
    FieldByName('Descricao').AsString := 'Venda Rápida em 40 colunas. Tipo Texto. Modelo de Impressão para vendas de balcão com caracteres normais.';
    sFileName := DMProjeto.ImgPath+'40col.bmp';
    if fileexists( sFileName ) then
			TGraphicField(FieldByName('Imagem')).LoadFromFile(sFileName);
    Post;
    {
  	if Locate('Tipo',DMTiposMovimento.C_TabelaTipoImpressao_Op.Value,[]) then
  		cmbTipo.Text := DMTiposMovimento.C_TiposImpressaoTitulo.AsString;
    }
  end;
end;
*)
procedure TDMTiposMovimento.C_TabelaNewRecord(DataSet: TDataSet);
var
  i : Integer;
begin
  inherited;
  C_TabelaDesativado.Value := 'N';
  C_TabelaTipo.Value := 'S';

  C_TabelaDiasValidade.Value := 0;
//  C_TabelaORDEM.value := 0;

  C_TabelaAlmoxPadrao.Value := 0;

  C_TabelaPOSSUIICMS.Value := 'N';
  C_TabelaPOSSUIIPI.Value := 'N';
  C_TabelaPOSSUIISS.Value := 'N';
  C_TabelaCONTABILIZAICMS.Value := 'S';
  C_TabelaCB_POREXTENSO.Value := 'N';
  C_TabelaCB_ALIQICMS.value := 'N';

  C_TabelaBAIXAESTOQUE.Value := 'N';
  C_TabelaCALCCOMISSAO.Value := 'N';
  C_TabelaPOSSUIENTREGA.Value := 'N';
  C_TabelaBLOQUEARSEATRASADO.Value := 'N';
  C_TabelaBLOQUEARPORSITUACAO.Value := 'N';
  C_TabelaBLOQUEARPORESTOQUE.Value := 'N';
  C_TabelaLIMITEFAVORECIDO.Value := 'N';
  C_TabelaFOTO.Value := 'S';
  C_TabelaTemplate.Value := 0;
  C_TabelaTipoFavPadrao.Value := 1; {Cliente}

  for i := 0 to C_Tabela.FieldCount - 1 do begin

    if Esquerda(C_Tabela.Fields[i].FieldName,3) = 'CB_' then
      C_Tabela.Fields[i].AsString := 'N';

  end;

  if nTipoPadraoFixo > 0 then
    C_TabelaTipoPadrao.Value := nTipoPadraoFixo;

 C_TabelaCB_NotaFiscal.Value := 'N';
 C_TabelaCB_IMPDOC.Value := 'S';
 C_TabelaTIPONOTAFISCAL.Value := 'P';
end;

procedure TDMTiposMovimento.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTiposMovimento := self;
end;

procedure TDMTiposMovimento.C_TabelaPOSSUIENTREGAChange(Sender: TField);
begin
  inherited;
  C_TabelaCB_INFOENTREGA.Value := Sender.asString;
  C_TabelaCB_FRETE.Value := Sender.asString;
end;

procedure TDMTiposMovimento.DMComponentModoInclusao1_Iniciar(
  Sender: TObject);
begin
  inherited;
  if not DMProjeto.C_TipoFav.Active then
    DMProjeto.C_TipoFav.Open;
end;

procedure TDMTiposMovimento.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if C_TabelaTipoPadrao.Value = 0 then begin
    bSkip := true;
    DlgMsg.ShowMsg(3076);
    Exit;
  end;

  if Pos('-', C_TabelaSiglaInicial.Value) > 0 then begin
    bSkip := true;
    DlgMsg.ShowMsg(3077);
    Exit;
  end;

  if C_TabelaDescricao.Value = '' then begin
    bSkip := true;
    DlgMsg.ShowMsg(513, [C_TabelaDescricao.DisplayLabel]);
    Exit;
  end;
end;

procedure TDMTiposMovimento.C_TabelaTIPOPADRAOValidate(Sender: TField);
begin
  inherited;
  if bAlteracao then with Q_SQL do begin
    Close;
    SQL.Text := 'Select count(*) as SaidasMov From Saidas where TipoMovimento = :TM ';
    Params[0].asInteger := C_TabelaTipoMovimento.Value;
    Open;

    if FieldByName('SaidasMov').asInteger > 0 then begin
      DlgMsg.ShowMsg(2150); //Não pode modificar.
      raise Exception.Create('@@');
    end;

  end;
end;

procedure TDMTiposMovimento.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  if nTipoPadraoFixo > 0 then begin
    Where := Uppercase(Where);
    Where := replace(Where, 'WHERE', 'WHERE TipoPadrao = '+IntToStr(nTipoPadraoFixo)+ ' and ' );
  end;

end;

procedure TDMTiposMovimento.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
//  C_TiposImpressao.Locate('Tipo',C_TabelaTipoImpressao_Op.Value,[]);
//  C_TabelaDescTipoImpressao.AsString := C_TiposImpressaoTitulo.AsString;
end;

procedure TDMTiposMovimento.C_TiposImpressaoAfterOpen(DataSet: TDataSet);
begin
  inherited;
  while not DataSet.EOF do begin
    if fileexists( DMProjeto.ImgPath+C_TiposImpressaoImagem.Value ) then begin
      DataSet.Edit;
   	  C_TiposImpressaoicImagem.LoadFromFile( DMProjeto.ImgPath+C_TiposImpressaoImagem.Value );
      DataSet.Post;
    end;
    DataSet.Next;
  end;
end;

procedure TDMTiposMovimento.C_CFOPSCSTNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('TipoMovimento').Value := C_TabelaTipoMovimento.Value;
  C_CFOPSCSTCFOPCST.Value := -999;
end;

procedure TDMTiposMovimento.DMComponentGravar2_AposIDS_Tabela(
  Sender: TObject);
begin
  inherited;
//  Try
//    with PP_INSERTCFOPSCST do begin
//        StoredProcName := 'PP_INSERTCFOPSCST';
//        ParamByName('ORIGEM').AsInteger := C_Tabela.FieldByName('TIPOMOVIMENTO').AsInteger;
//        ExecProc;
//    end;
//  Except
//  End;
end;

end.
