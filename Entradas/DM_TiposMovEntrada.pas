unit DM_TiposMovEntrada;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
    IBUpdateSQL, Db, IBQuery;

type
    TDMTiposMovEntrada = class(TDMManutencao)
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
        C_TabelaCB_CODIGOFORN: TStringField;
        C_TabelaTIT1_CODIGOFORN: TStringField;
        C_TabelaTIT2_CODIGOFORN: TStringField;
        C_TabelaCB_IMPRIMIROP: TStringField;
        C_TabelaCB_PGTOS: TStringField;
        C_TabelaCB_TOPRINTER: TStringField;
        C_TabelaCB_GERARNUM: TStringField;
        C_TabelaCB_CONSISTENCIA: TStringField;
        C_TabelaDESATIVADO: TStringField;
        C_TabelaCB_COMPOSICAOITENS: TStringField;
        C_TabelaCB_ICMS: TStringField;
        C_TabelaTIT1_ICMS: TStringField;
        C_TabelaTIT2_ICMS: TStringField;
        C_TabelaPOSSUIICMS: TStringField;
        C_TabelaPOSSUIIPI: TStringField;
        C_TabelaTIT1_TVA: TStringField;
        C_TabelaTIT2_TVA: TStringField;
        C_TabelaCB_TVA: TStringField;
        C_TabelaCB_ALIQICMS: TStringField;
        C_TabelaSERIE: TStringField;
        C_TabelaMODELODOC: TStringField;
        C_TabelaTIT1_IPI: TStringField;
        C_TabelaTIT2_IPI: TStringField;
        C_TabelaCB_IPI: TStringField;
        C_TabelaCONTABILIZAICMS: TStringField;
        C_TabelaCB_CFOP: TStringField;
        C_TabelaTIT1_CFOP: TStringField;
        C_TabelaTIT2_CFOP: TStringField;
        C_TabelaCB_DESCONTOITEM: TStringField;
        C_TabelaCB_COMPENSACAO: TStringField;
        C_TabelaCB_COMPENSACAONOCUSTO: TStringField;
        C_TabelaCB_NOTAFISCAL: TStringField;
        C_TabelaTEMPLATENOTAFISCAL: TIntegerField;
        Q_Templates: TIBQuery;
        P_Templates: TDataSetProvider;
        C_Templates: TClientDataSet;
        C_TemplatesTEMPLATE: TIntegerField;
        C_TemplatesDESCRICAO: TStringField;
        C_TemplatesARQUIVO: TStringField;
        C_TemplatesTIPO: TStringField;
        C_TabelalkTemplate: TStringField;
        C_TabelaTIPONOTAFISCAL: TStringField;
        C_TabelaCFOPASSOCIADO: TStringField;
        C_TabelaTEMPLATE: TIntegerField;
        C_TabelaCB_IMPDOC: TStringField;
        Q_TemplatesPed: TIBQuery;
        P_TemplatesPed: TDataSetProvider;
        C_TemplatesPed: TClientDataSet;
        C_TemplatesPedTEMPLATE: TIntegerField;
        C_TemplatesPedDESCRICAO: TStringField;
        C_TemplatesPedARQUIVO: TStringField;
        C_TemplatesPedTIPO: TStringField;
        C_TabelalkTemplatePed: TStringField;
        C_TabelaALMOXPADRAO: TIntegerField;
        Q_Almoxarifado: TIBQuery;
        P_Almoxarifado: TDataSetProvider;
        C_Almoxarifado: TClientDataSet;
        C_AlmoxarifadoALMOXARIFADO: TIntegerField;
        C_AlmoxarifadoDESCRICAO: TStringField;
        C_TabelalkAlmoxarifado: TStringField;
        C_TabelaCB_ENTRADAPRECOVENDA: TStringField;
        C_TabelaBAIXAESTOQUEFISCAL: TStringField;
        Q_CFOPSCST: TIBQuery;
        U_CFOPSCST: TIBUpdateSQL;
        P_CFOPSCST: TDataSetProvider;
        C_CFOPSCST: TClientDataSet;
        C_CFOPSCSTCFOPCST: TIntegerField;
        C_CFOPSCSTCFOPASSOCIADO: TStringField;
        C_CFOPSCSTCST: TStringField;
        C_CFOPSCSTTIPOMOVIMENTO: TIntegerField;
        C_CFOPSCSTDs: TDataSource;
        C_TabelaQ_CFOPSCST: TDataSetField;
        C_TabelaLIVROFISCAL: TStringField;
        C_CFOPSCSTCFOPFORAESTADO: TStringField;
        Q_CSTPADRAO: TIBQuery;
        P_CSTPADRAO: TDataSetProvider;
        C_CSTPADRAO: TClientDataSet;
        C_CSTPADRAOCST: TStringField;
        C_CSTPADRAODESCRICAO: TStringField;
        C_CSTPADRAODS: TDataSource;
        C_TabelaCST_PADRAO: TStringField;
        C_TabelalkpCST_Padrao: TStringField;
        C_TabelaCB_CSTPADRAO: TStringField;
        C_TabelaCB_PRECO: TStringField;
        C_TabelaDESCRICAO: TStringField;
        C_TabelaCALCULAPISCOFINS: TStringField;
        Q_TiposImpressao: TIBQuery;
        P_TiposImpressao: TDataSetProvider;
        C_TiposImpressao: TClientDataSet;
        C_TiposImpressaoDS: TDataSource;
        C_TabelaTIPOIMPRESSAO_OP: TStringField;
        C_TabelaDescTipoImpressao: TStringField;
        C_TiposImpressaoTIPO: TStringField;
        C_TiposImpressaoTITULO: TStringField;
        C_TiposImpressaoDESCRICAO: TStringField;
        C_TiposImpressaoIMAGEM: TStringField;
        C_TiposImpressaoORIGEMREPLIC: TStringField;
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure DataModuleCreate(Sender: TObject);
        procedure C_TabelaPOSSUIENTREGAChange(Sender: TField);
        procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure C_TabelaTIPOPADRAOChange(Sender: TField);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure C_CFOPSCSTCalcFields(DataSet: TDataSet);
        procedure C_CFOPSCSTNewRecord(DataSet: TDataSet);
    private
        { Private declarations }
    public
        { Public declarations }

        nTipoPadraoFixo: Integer;
    end;

var
    DMTiposMovEntrada: TDMTiposMovEntrada;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDMTiposMovEntrada.C_TabelaNewRecord(DataSet: TDataSet);
var
    i: Integer;
begin
    inherited;
    C_TabelaTipo.Value := 'E';

    C_TabelaPOSSUIICMS.Value := 'N';
    C_TabelaPOSSUIIPI.Value := 'N';
    C_TabelaCONTABILIZAICMS.Value := 'S';
    C_TabelaTipoNotaFIscal.Value := 'NF';
    C_TabelaBAIXAESTOQUE.Value := 'N';
    C_TabelaCALCCOMISSAO.Value := 'N';
    C_TabelaPOSSUIENTREGA.Value := 'N';
    C_TabelaBLOQUEARSEATRASADO.Value := 'N';
    C_TabelaBLOQUEARPORSITUACAO.Value := 'N';
    C_TabelaBLOQUEARPORESTOQUE.Value := 'N';
    C_TabelaLIMITEFAVORECIDO.Value := 'N';
    C_TabelaFOTO.Value := 'N';
    C_TabelaATUALIZAPRECO.Value := 'NA';

    C_TabelaTipoFavPadrao.Value := 2; {Fornecedor}

    for i := 0 to C_Tabela.FieldCount - 1 do
        begin

            if Esquerda(C_Tabela.Fields[i].FieldName, 3) = 'CB_' then
                C_Tabela.Fields[i].AsString := 'N';

        end;

    if nTipoPadraoFixo > 0 then
        C_TabelaTipoPadrao.Value := nTipoPadraoFixo;

end;

procedure TDMTiposMovEntrada.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMTiposMovEntrada := self;
end;

procedure TDMTiposMovEntrada.C_TabelaPOSSUIENTREGAChange(Sender: TField);
begin
    inherited;
    C_TabelaCB_INFOENTREGA.Value := Sender.asString;
    C_TabelaCB_FRETE.Value := Sender.asString;
end;

procedure TDMTiposMovEntrada.DMComponentModoInclusao1_Iniciar(
    Sender: TObject);
begin
    inherited;
    if not DMProjeto.C_TipoFav.Active then
        DMProjeto.C_TipoFav.Open;
end;

procedure TDMTiposMovEntrada.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if C_TabelaTipoPadrao.Value = 0 then
        begin
            bSkip := true;
            DlgMsg.ShowMsg(3076);
            Exit;
        end;

    if Pos('-', C_TabelaSiglaInicial.Value) > 0 then
        begin
            bSkip := true;
            DlgMsg.ShowMsg(3077);
            Exit;
        end;

    if C_TabelaDescricao.Value = '' then
        begin
            bSkip := true;
            DlgMsg.ShowMsg(513, [C_TabelaDescricao.DisplayLabel]);
            Exit;
        end;
end;

procedure TDMTiposMovEntrada.C_TabelaTIPOPADRAOChange(Sender: TField);
begin
    inherited;
    if C_TabelaTipoPadrao.Value in [101, 105] then
        begin
            C_TabelaAtualizaCusto.VAlue := 'AMR';
            C_TabelaAtualizaPreco.Value := 'AMR';
            C_TabelaIncluiDesconto.Value := 'S';
        end
    else
        begin
            C_TabelaAtualizaCusto.VAlue := '';
            C_TabelaAtualizaPreco.Value := '';
            C_TabelaIncluiDesconto.Value := 'N';
        end;
end;

procedure TDMTiposMovEntrada.DMComponentPesquisar1_Iniciar(Sender: TObject;
    var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    if nTipoPadraoFixo > 0 then
        begin
            Where := Uppercase(Where);
            Where := replace(Where, 'WHERE', 'WHERE TipoPadrao = ' + IntToStr(nTipoPadraoFixo) + ' and ');
        end;
end;

procedure TDMTiposMovEntrada.C_CFOPSCSTCalcFields(DataSet: TDataSet);
begin
    inherited;
    DataSet.FieldByName('TipoMovimento').Value := C_TabelaTipoMovimento.Value;
end;

procedure TDMTiposMovEntrada.C_CFOPSCSTNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_CFOPSCSTCFOPCST.value := -999;
end;

end.

