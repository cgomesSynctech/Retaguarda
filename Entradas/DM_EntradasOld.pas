unit DM_Entradas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_ITENSMOVIMENTO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, DM_Contabilidade;

Const
  SInicioGravacao = '%s: Gravação de %s #%s  ';
  SValidaGravacao = '%s: Validação Concluida ';
  SChavesGravacao = '%s: Chave Gerada = %s ';
  SEstornoEstoque = '%s: Estornou Estoque dos Itens ';
  SOrdemDigitacao = '%s: Fixou ordem de Digitação ';
  SGravandoTabela = '%s: Gravou Tab. Principais #%s ';
  SGravandoCliente= '%s: Atualizou Fornecedor';
  SBaixaEstoque   = '%s: Atualizou Estoque dos Itens ';

type
  TDMEntradas = class(TDMItensMovimento)
    C_TabelaPERCENTUALTAX: TBCDField;
    C_TabelaDESCONTO: TBCDField;
    C_TabelaPLANOPAGAMENTO: TIntegerField;
    C_TabelaFRETE: TBCDField;
    C_TabelaTIPOENTREGA: TIntegerField;
    C_TabelaDATAENTREGA: TDateField;
    C_TabelaOUTRASDESPESAS: TBCDField;
    C_TabelaJUROS: TBCDField;
    C_TabelaCAMPO01: TStringField;
    C_TabelaCAMPO02: TStringField;
    C_TabelaCAMPO03: TStringField;
    C_TabelaCAMPO04: TStringField;
    Q_PlanosPagamento: TIBQuery;
    P_PlanosPagamento: TDataSetProvider;
    C_PlanosPagamento: TClientDataSet;
    Q_TiposEntrega: TIBQuery;
    P_TiposEntrega: TDataSetProvider;
    C_TiposEntrega: TClientDataSet;
    C_PlanosPagamentoPLANOPAGAMENTO: TIntegerField;
    C_PlanosPagamentoDESCRICAO: TStringField;
    C_PlanosPagamentoJUROS: TBCDField;
    C_PlanosPagamentoQTDPARCELAS: TIntegerField;
    C_PlanosPagamentoINTERVALOS: TStringField;
    C_TiposEntregaTIPOENTREGA: TIntegerField;
    C_TiposEntregaDESCRICAO: TStringField;
    C_TabelalkPlanoPagamento: TStringField;
    C_TabelalkTipoEntrega: TStringField;
    Q_SQL: TIBQuery;
    C_TabelacfEnderecoParaEntrega: TStringField;
    C_ItenscfMaxDesconto: TFloatField;
    C_ItenscfValorMaxDesconto: TFloatField;
    C_ItensSUBTOTALITEM: TBCDField;
    C_ItensORDEM: TIntegerField;
    C_TabelaIMPOSTO: TBCDField;
    C_PlanosPagamentoPDESCONTO: TBCDField;
    C_PlanosPagamentoDIAS_ANTECIPACAO: TIntegerField;
    C_ItenscfBaixoEstoque: TFloatField;
    C_ItensCUSTOMEDIO: TBCDField;
    C_TabelaPJUROS: TBCDField;
    C_PlanosPagamentoJUROSNEGOCIAVEIS: TStringField;
    Q_Parcelas: TIBQuery;
    U_Parcelas: TIBUpdateSQL;
    C_Parcelas: TClientDataSet;
    C_ParcelasDS: TDataSource;
    C_TabelaQ_Parcelas: TDataSetField;
    C_ParcelasID: TIntegerField;
    C_ParcelasTITULO: TStringField;
    C_ParcelasPARCELA: TIntegerField;
    C_ParcelasVENCIMENTO: TDateField;
    C_ParcelasCOMPETENCIA: TDateField;
    C_ParcelasVALOR: TBCDField;
    C_ParcelasSALDO: TBCDField;
    C_ParcelasIDMESTRE: TIntegerField;
    C_ParcelasVALORPAGO: TBCDField;
    C_ParcelasNOTAFISCAL: TStringField;
    C_ParcelasSTATUS: TIntegerField;
    C_ParcelasDATAANTECIPACAO: TDateField;
    C_ParcelasVALORDESCANTECIPADO: TBCDField;
    C_ParcelasJUROSPLANO: TBCDField;
    C_ParcelasUSUARIO: TIntegerField;
    C_ParcelasDESCONTOS: TBCDField;
    C_ParcelasDATAATRASADO: TDateField;
    C_ParcelasVALORJUROSMORA: TBCDField;
    C_ParcelasVALORMULTA: TBCDField;
    C_ParcelasCREDITOUTILIZADO: TBCDField;
    C_ParcelasCREDITOGERADO: TBCDField;
    C_TabelacfLastIDMov: TStringField;
    C_TabelaTOTALITENS: TBCDField;
    C_ItensTAXAVEL: TStringField;
    C_TabelaPAGOINVOICE: TBCDField;
    C_TabelaSTATUS: TStringField;
    C_ItensI_FATORLUCRO: TBCDField;
    C_ItensI_CUSTODESPESAS: TBCDField;
    C_TabelaF_AGRUPARPORITEM: TStringField;
    Q_SQLi: TIBQuery;
    C_TiposMovimentoTIT1_DATA: TStringField;
    C_TiposMovimentoTIT2_DATA: TStringField;
    C_TiposMovimentoTIT3_DATA: TStringField;
    C_TiposMovimentoTIT1_NUMERO: TStringField;
    C_TiposMovimentoTIT2_NUMERO: TStringField;
    C_TiposMovimentoTIT3_NUMERO: TStringField;
    C_TiposMovimentoCB_INFOENTREGA: TStringField;
    C_TiposMovimentoTIT1_LOCALENTREGA: TStringField;
    C_TiposMovimentoTIT1_DATAENTREGA: TStringField;
    C_TiposMovimentoTIT1_TIPOENTREGA: TStringField;
    C_TiposMovimentoTIT2_LOCALENTREGA: TStringField;
    C_TiposMovimentoTIT2_DATAENTREGA: TStringField;
    C_TiposMovimentoTIT2_TIPOENTREGA: TStringField;
    C_TiposMovimentoTIT3_LOCALENTREGA: TStringField;
    C_TiposMovimentoTIT3_DATAENTREGA: TStringField;
    C_TiposMovimentoTIT3_TIPOENTREGA: TStringField;
    C_TiposMovimentoCB_VENDEDOR: TStringField;
    C_TiposMovimentoTIT1_VENDEDOR: TStringField;
    C_TiposMovimentoTIT2_VENDEDOR: TStringField;
    C_TiposMovimentoTIT3_VENDEDOR: TStringField;
    C_TiposMovimentoCB_PEDIDO: TStringField;
    C_TiposMovimentoTIT1_PEDIDO: TStringField;
    C_TiposMovimentoTIT2_PEDIDO: TStringField;
    C_TiposMovimentoTIT3_PEDIDO: TStringField;
    C_TiposMovimentoCB_COMISSAO: TStringField;
    C_TiposMovimentoTIT1_COMISSAO: TStringField;
    C_TiposMovimentoTIT2_COMISSAO: TStringField;
    C_TiposMovimentoTIT3_COMISSAO: TStringField;
    C_TiposMovimentoCB_TERMOS: TStringField;
    C_TiposMovimentoTIT1_TERMOS: TStringField;
    C_TiposMovimentoTIT2_TERMOS: TStringField;
    C_TiposMovimentoTIT3_TERMOS: TStringField;
    C_TiposMovimentoCB_MENSAGEM: TStringField;
    C_TiposMovimentoTIT1_MENSAGEM: TStringField;
    C_TiposMovimentoTIT2_MENSAGEM: TStringField;
    C_TiposMovimentoTIT3_MENSAGEM: TStringField;
    C_TiposMovimentoCB_DESCONTOS: TStringField;
    C_TiposMovimentoTIT1_DESCONTOS: TStringField;
    C_TiposMovimentoTIT2_DESCONTOS: TStringField;
    C_TiposMovimentoTIT3_DESCONTOS: TStringField;
    C_TiposMovimentoCB_FRETE: TStringField;
    C_TiposMovimentoTIT1_FRETE: TStringField;
    C_TiposMovimentoTIT2_FRETE: TStringField;
    C_TiposMovimentoTIT3_FRETE: TStringField;
    C_TiposMovimentoCB_TOTALITENS: TStringField;
    C_TiposMovimentoTIT1_TOTALITENS: TStringField;
    C_TiposMovimentoTIT2_TOTALITENS: TStringField;
    C_TiposMovimentoTIT3_TOTALITENS: TStringField;
    C_TiposMovimentoCB_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT1_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT2_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT3_TOTALFINAL: TStringField;
    C_TiposMovimentoTIT1_DESCRICAO: TStringField;
    C_TiposMovimentoTIT1_QUANTIDADE: TStringField;
    C_TiposMovimentoTIT1_PRECO: TStringField;
    C_TiposMovimentoTIT1_SUBTOTAL: TStringField;
    C_TiposMovimentoTIT2_DESCRICAO: TStringField;
    C_TiposMovimentoTIT2_QUANTIDADE: TStringField;
    C_TiposMovimentoTIT2_PRECO: TStringField;
    C_TiposMovimentoTIT2_SUBTOTAL: TStringField;
    C_TiposMovimentoTIT3_DESCRICAO: TStringField;
    C_TiposMovimentoTIT3_QUANTIDADE: TStringField;
    C_TiposMovimentoTIT3_PRECO: TStringField;
    C_TiposMovimentoTIT3_SUBTOTAL: TStringField;
    C_TiposMovimentoCB_VALORTAX: TStringField;
    C_TiposMovimentoTIT1_VALORTAX: TStringField;
    C_TiposMovimentoTIT2_VALORTAX: TStringField;
    C_TiposMovimentoTIT3_VALORTAX: TStringField;
    C_TiposMovimentoCB_JUROS: TStringField;
    C_TiposMovimentoTIT1_JUROS: TStringField;
    C_TiposMovimentoTIT2_JUROS: TStringField;
    C_TiposMovimentoTIT3_JUROS: TStringField;
    C_TiposMovimentoCB_DESPESAS: TStringField;
    C_TiposMovimentoTIT1_DESPESAS: TStringField;
    C_TiposMovimentoTIT2_DESPESAS: TStringField;
    C_TiposMovimentoTIT3_DESPESAS: TStringField;
    C_TiposMovimentoCB_CAMPO01: TStringField;
    C_TiposMovimentoTIT1_CAMPO1: TStringField;
    C_TiposMovimentoTIT2_CAMPO1: TStringField;
    C_TiposMovimentoTIT3_CAMPO1: TStringField;
    C_TiposMovimentoCB_CAMPO02: TStringField;
    C_TiposMovimentoTIT1_CAMPO2: TStringField;
    C_TiposMovimentoTIT2_CAMPO2: TStringField;
    C_TiposMovimentoTIT3_CAMPO2: TStringField;
    C_TiposMovimentoCB_CAMPO03: TStringField;
    C_TiposMovimentoTIT1_CAMPO3: TStringField;
    C_TiposMovimentoTIT2_CAMPO3: TStringField;
    C_TiposMovimentoTIT3_CAMPO3: TStringField;
    C_TiposMovimentoCB_CAMPO04: TStringField;
    C_TiposMovimentoTIT1_CAMPO4: TStringField;
    C_TiposMovimentoTIT2_CAMPO4: TStringField;
    C_TiposMovimentoTIT3_CAMPO4: TStringField;
    C_TiposMovimentoCB_CODIGO: TStringField;
    C_TiposMovimentoTIT1_CODIGO: TStringField;
    C_TiposMovimentoTIT2_CODIGO: TStringField;
    C_TiposMovimentoTIT3_CODIGO: TStringField;
    C_TiposMovimentoCB_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT1_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT2_FUNCIONARIO: TStringField;
    C_TiposMovimentoTIT3_FUNCIONARIO: TStringField;
    C_TiposMovimentoCB_TAX: TStringField;
    C_TiposMovimentoTIT1_TAX: TStringField;
    C_TiposMovimentoTIT2_TAX: TStringField;
    C_TiposMovimentoTIT3_TAX: TStringField;
    C_TiposMovimentoTIT1_COLUNA1: TStringField;
    C_TiposMovimentoTIT1_COLUNA2: TStringField;
    C_TiposMovimentoTIT1_COLUNA3: TStringField;
    C_TiposMovimentoTIT1_COLUNA4: TStringField;
    C_TiposMovimentoTIT2_COLUNA1: TStringField;
    C_TiposMovimentoTIT2_COLUNA2: TStringField;
    C_TiposMovimentoTIT2_COLUNA3: TStringField;
    C_TiposMovimentoTIT2_COLUNA4: TStringField;
    C_TiposMovimentoTIT3_COLUNA1: TStringField;
    C_TiposMovimentoTIT3_COLUNA2: TStringField;
    C_TiposMovimentoTIT3_COLUNA3: TStringField;
    C_TiposMovimentoTIT3_COLUNA4: TStringField;
    C_TiposMovimentoCORTITULOS: TIntegerField;
    C_TiposMovimentoTIPOFAVPADRAO: TIntegerField;
    C_TiposMovimentoCB_COLUNA1: TStringField;
    C_TiposMovimentoCB_COLUNA2: TStringField;
    C_TiposMovimentoCB_COLUNA3: TStringField;
    C_TiposMovimentoCB_COLUNA4: TStringField;
    C_ItensCOLUNA1: TStringField;
    C_ItensCOLUNA2: TStringField;
    C_ItensCOLUNA3: TStringField;
    C_ItensCOLUNA4: TStringField;
    C_TiposMovimentoTIT1_UNIDADE: TStringField;
    C_TiposMovimentoTIT2_UNIDADE: TStringField;
    C_TiposMovimentoTIT3_UNIDADE: TStringField;
    C_TiposMovimentoFOTO: TStringField;
    C_TabelaPREVISAOENTREGA: TDateField;
    C_TabelaTAX: TIntegerField;
    C_ParcelasFORNECEDOR: TIntegerField;
    C_ParcelasJUROSPAGOS: TBCDField;
    C_ParcelasMULTA: TBCDField;
    C_ParcelasJUROSMORA: TBCDField;
    C_ItensCLIENTEREF: TIntegerField;
    C_ItensQTDRECEBIDA: TBCDField;
    C_ItensNOME: TStringField;
    C_ItensSITUACAO: TStringField;
    C_ItensREFERENCIA: TStringField;
    C_TiposMovimentoTIT1_VALIDADE: TStringField;
    C_TiposMovimentoTIT2_VALIDADE: TStringField;
    C_TiposMovimentoTIT3_VALIDADE: TStringField;
    C_TiposMovimentoCB_REFERENCIA: TStringField;
    C_TiposMovimentoTIT1_REFERENCIA: TStringField;
    C_TiposMovimentoTIT2_REFERENCIA: TStringField;
    C_TiposMovimentoTIT3_REFERENCIA: TStringField;
    C_TiposMovimentoTIT1_QTDRECEBIDA: TStringField;
    C_TiposMovimentoTIT2_QTDRECEBIDA: TStringField;
    C_TiposMovimentoTIT3_QTDRECEBIDA: TStringField;
    C_TiposMovimentoTIT1_SITUACAO: TStringField;
    C_TiposMovimentoTIT2_SITUACAO: TStringField;
    C_TiposMovimentoTIT3_SITUACAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure C_TabelaTIPOMOVIMENTOChange(Sender: TField);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaDESCONTOChange(Sender: TField);
    procedure C_ItensBeforePost(DataSet: TDataSet);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_ItensAfterPost(DataSet: TDataSet);
    procedure C_TabelaFRETEChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure C_TabelaPLANOPAGAMENTOChange(Sender: TField);
    procedure C_TabelaPJUROSChange(Sender: TField);
    procedure C_ParcelasNewRecord(DataSet: TDataSet);
    procedure C_ParcelasBeforePost(DataSet: TDataSet);
    procedure C_TabelaNUMEROChange(Sender: TField);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
    procedure C_ItensAfterDelete(DataSet: TDataSet);
    procedure C_ItensITEMChange(Sender: TField);
  private
    // Adriano
    DMContabil: TDMContabilidade;
    nSeqParcelas : Integer;
    sNumeroGerado : String;
    procedure AtualizarCustoPrecos;

  public
    { Public declarations }
    bFromPlanoPg : Boolean;
    sPerformance : String;
    nTipoEntrada : Integer;

    Function  SomaParcelas : Currency;
    procedure JurosParcelas;
    procedure GerarParcelamento(nEntradaFixa : Currency = 0);

    function TipoMovimento(FieldName : String) : String;
    procedure AtualizaTotalFinal;
    // Adriano
    function ContabilidadeAtivado:boolean;
    procedure ContabilidadeDesativado;
    procedure CriaContabilidade;
    procedure Contabiliza;
    procedure MostraContabilidade;
    /////////////////////////////////
  end;

var
  DMEntradas: TDMEntradas;

implementation
  uses DM_Projeto, Funcoes, Frm_DigitacaoItens, Math, Frm_Contabilidade;

{$R *.DFM}

procedure TDMEntradas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMEntradas := Self;
end;

procedure TDMEntradas.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
  inherited;
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
  nSeqParcelas := 0;

  C_TiposMovimento.Open;

end;

procedure TDMEntradas.C_TabelaTIPOMOVIMENTOChange(Sender: TField);
begin
  inherited;
  {Capturando o NextID}
  C_TabelaNUMERO.Value := CExp(TipoMovimento('SIGLAINICIAL'),'-')+
                          AdicionarStr( IntToStr(DMProjeto.LastID( 'TipoMovimento_'+C_TabelaTipoMovimento.asString )+1), '0', 6);

  C_TabelacfLastIDMov.Value := C_TabelaNUMERO.Value;

end;

procedure TDMEntradas.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;

  C_TabelaDesconto.Value := 0;
  C_TabelaFrete.Value := 0;
  C_TabelaTotal.Value := 0;
  C_TabelaPERCENTUALTAX.VAlue := 0;
  C_TabelaJUROS.Value := 0;
  C_TabelaOUTRASDESPESAS.Value := 0;
  C_TabelaIMPOSTO.Value := 0;
  C_TabelaTotalItens.Value := 0;

  if nTipoEntrada <> 0 then
    C_TabelaTipoMovimento.Value := nTipoEntrada;

end;

function TDMEntradas.TipoMovimento;
begin
  result := '';
  
  C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.VAlue, []);

  try
    result := C_TiposMovimento.FieldByName(FieldName).asString;
  except
    //Exceção só ocorre se o FieldName não for válido
  end;

end;

procedure TDMEntradas.C_TabelaDESCONTOChange(Sender: TField);
var
  nMax : Currency;
  nBaseIncluso, nBaseImposto : Currency;
begin
  {Obrigando que o Desconto seja sempre negativo}
  if Sender.asCurrency > 0 then begin
    Sender.asCurrency := -Sender.asCurrency;
    exit;
  end;

  inherited;

  AtualizaTotalFinal;

end;

procedure TDMEntradas.C_ItensBeforePost(DataSet: TDataSet);
var
  nNovoCusto : Currency;
begin
  inherited;
  C_ItensSubTotalItem.AsVariant := C_ItensSubTotal.AsVariant;

  if C_Itens.FieldByName('I_TipoItem').asInteger = 1 then with C_Itens do begin
    nNovoCusto := ((FieldByName('I_Estoque').asFloat*FieldByName('I_CustoMedio').asCurrency) +
                   (FieldByName('SubTotalItem').asCurrency) ) /
                   (FieldByName('Quantidade').asFloat + FieldByName('I_Estoque').asFloat);

    FieldByName('CustoMedio').asCurrency := nNovoCusto;
  end;

end;

procedure TDMEntradas.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
var
  TempDS : TClientDataSet;
  nSeq : Integer;
  sControle, sModificados : String;
begin
  inherited;

  sPerformance := sPerformance + Format(SChavesGravacao, [DateTimeToStr(Now), C_TabelaIDMestre.asString])+#13;

  {Gerando Número do Invoice}
  if (C_TabelaNUMERO.Value = C_TabelacfLastIDMov.Value) or (C_TabelaNumero.Value = '') then begin
    sNumeroGerado := CExp(TipoMovimento('SIGLAINICIAL'),'-')+
                     AdicionarStr( IntToStr(DMProjeto.NextID( 'TipoMovimento_'+C_TabelaTipoMovimento.asString )), '0', 6);

    if (sNumeroGerado <> C_TabelaNUMERO.Value) then begin

      C_Tabela.Edit;
      C_TabelaNUMERO.Value := sNumeroGerado;
      C_Tabela.Post;

    end;

  end;


  {Estornando os Estoque dos Itens de Inventário - antes do Apply}
  {A Baixa está após o Apply}
  if bAlteracao then begin
    DMProjeto.EstornarEstoqueEntrada( C_TabelaIDMestre.Value );
    sPerformance := sPerformance + Format(SEstornoEstoque, [DateTimeToStr(Now)])+#13;
  end;


  {Gerando o Campo Ordem - para Impressões e Consultas - Segue a ordem de digitacao dos itens}
  TempDS := TClientDataSet.Create(self);
  with TempDS do begin
    CloneCursor(C_Itens, true);

    First;
    While not EOF do begin
      nSeq := Recno;
      Edit;
      FieldByName('Ordem').asInteger := nSeq;
      Post;

      Next;
    end;

  end;
  TempDS.Free;

  sPerformance := sPerformance + Format(SOrdemDigitacao, [DateTimeToStr(Now)])+#13;


end;

procedure TDMEntradas.C_ItensAfterPost(DataSet: TDataSet);
var
  TempDS : TClientDataSet;
  nTotalItens : Currency;
begin
  inherited;
  TempDS := TClientDataSet.Create(self);

  with TempDS do begin
    CloneCursor(C_Itens, true);

    {Calculando o Total dos Itens}
    nTotalItens := 0;
    First;

    While not EOF do begin
      if FieldByName('I_TipoItem').asInteger <> 7 then
        nTotalItens := nTotalItens + FieldByName('SubTotal').asCurrency;

      Next;
    end;

    if C_Tabela.State = dsBrowse then
      C_Tabela.Edit;

    C_TabelaTotalItens.asCurrency    := nTotalItens;

  end;
  TempDS.Free;

end;

procedure TDMEntradas.C_TabelaFRETEChange(Sender: TField);
begin
  inherited;
  AtualizaTotalFinal;
end;

procedure TDMEntradas.AtualizaTotalFinal;
begin
  if C_Tabela.State = dsBrowse then
    C_Tabela.Edit;


  C_TabelaTOTAL.asCurrency :=  C_TabelaTOTALITENS.asCurrency +
                               C_TabelaDESCONTO.asCurrency +  {O Desconto é negativo}
                               C_TabelaFRETE.asCurrency +
                               C_TabelaIMPOSTO.asCurrency +
                               C_TabelaOUTRASDESPESAS.asCurrency +
                               C_TabelaJUROS.asCurrency;
  {Outras despesas não incluem os juros cobrados pelo plano de pgto, este valor agora é o campo Juros}

end;

Function TDMEntradas.SomaParcelas;
var
  nBalance : Currency;
begin
  nBalance := 0;
  if C_Parcelas.Active then begin
    C_Parcelas.First;
    while not C_Parcelas.EOF do begin
      nBalance := nBalance + C_ParcelasValor.Value;
      C_Parcelas.Next;
    end;
  end;
  result := nBalance;
end;

procedure TDMEntradas.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var
  i : Integer;
  s : string;
  nBalance : Currency;
  TmpDS : TClientDataSet;
begin
  inherited;

  if C_Itens.RecordCount = 0 then begin
    DlgMsg.ShowMsg(2120);
    bSkip := true;
    exit;
  end;

  {Existência de Parcelas}
  if (C_TabelaTipoPadrao.Value = 100) and (C_Parcelas.RecordCount = 0) then begin
    C_Parcelas.Append;
    C_ParcelasValor.asCurrency := C_TabelaTotal.asCurrency;
    C_ParcelasVencimento.Value := C_TabelaData.Value;
    C_ParcelasParcela.Value := 1;
    C_Parcelas.Post;
    end
  else begin
    {Garantindo atualização de campos da invoice: Fornecedor, Número da Nota, Títulos, etc.(POST)}
    C_Parcelas.First;
    while not C_Parcelas.EOF do begin
      C_Parcelas.Edit;
      C_Parcelas.Post;
      C_Parcelas.Next
    end;
  end;

  sPerformance := Format(SInicioGravacao, [DateTimeToStr(Now), C_TabelalkTipoMovimento.asString, C_TabelaNumero.asString])+#13;

  {Validação de Gravação}
  {Não permitindo número Duplicado - Se for '' será gerado após IDs (Clausula OR) }
  if C_TabelaNumero.Value <> '' then with Q_SQL do begin
    Close;
    SQL.Text := 'Select Count(Entrada) as Existentes from Entradas '+
                'where TipoMovimento = :TM and Numero = :N and Entrada <> :E ';
    ParamByName('TM').asInteger := C_TabelaTipoMovimento.Value;
    ParamByName('N').asString   := C_TabelaNumero.Value;
    ParamByName('E').asInteger  := C_TabelaIDMestre.asInteger;
    Open;

    i := FieldByName('Existentes').asInteger;
    Close;

    if (i > 0) then begin
      bSkip := true;
      DlgMsg.ShowMsg(2202, [C_TabelaNumero.Value, C_TabelalkTipoMovimento.Value ]);
      Exit;
    end;
  end;


  {Existência do Favorecido}
  if C_TabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(643); //Faltou escolher o Fornecedor!
    bSkip := true;
    exit;
  end;

  {Verificando Balance das Parcelas x Total Final}
  if C_TabelaPlanoPagamento.Value > 0 then begin
    nBalance := SomaParcelas;
    if ABS(nBalance - C_TabelaTotal.asCurrency) > 0.009 then begin
      if DlgMsg.ShowMsg(2100) <> 100 then begin
        bSkip := true;
        exit;
        end
      else begin  //Ajustando automaticamente
        JurosParcelas;  //Para apenas recalcular as parcelas
      end;
    end;
  end;

  sPerformance := sPerformance + Format(SValidaGravacao, [DateTimeToStr(Now)])+#13;

end;

procedure TDMEntradas.DMComponentGravar3_AposApply(Sender: TObject);
var nEstoque: double;
begin
  inherited;
  sPerformance := sPerformance + Format(SGravandoTabela, [DateTimeToStr(Now), C_TabelaNumero.asString ])+#13;

  {Atualizando o Endereço do Fornecedor}
  DMProjeto.AtualizarFornecedorCompra( C_TabelaFavorecido.Value,
                                   C_TabelaF_ENDERECO.Value,
                                   C_TabelaF_CIDADE.VAlue,
                                   C_TabelaF_UF.Value, C_TabelaF_CEP.Value,
                                   C_TabelaF_EMAIL.Value );

  sPerformance := sPerformance + Format(SGravandoCliente, [DateTimeToStr(Now)])+#13;

  {Baixando Estoque}
  DMProjeto.BaixarEstoqueEntrada( C_TabelaIDMestre.Value );
  sPerformance := sPerformance + Format(SBaixaEstoque, [DateTimeToStr(Now)])+#13;

  // Adriano
  if C_TabelaTipoPadrao.value = 100 then begin
    Contabiliza;

    if not DMContabil.Salvar(C_TabelaIDMestre.value) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
  end;
  ///////////////////////////

  {Atualizando o CustoMédio e Preços}
  if not bAlteracao then
    AtualizarCustoPrecos;

end;

procedure TDMEntradas.AtualizarCustoPrecos;
var
  TmpDS : TClientDataSet;
  nNovoCusto, nNovoPreco : Currency;
  nFator : double;
begin
  TmpDS := TClientDataSet.Create(self);
  with TmpDS do begin
    CloneCursor(C_Itens,true);

    First;
    while not EOF do begin
      if FieldByName('I_TipoItem').asInteger = 1 then begin {Item de Invetário}
        nNovoCusto := ((FieldByName('I_Estoque').asFloat*FieldByName('I_CustoMedio').asCurrency) +
                       (FieldByName('SubTotalItem').asCurrency) ) /
                       (FieldByName('Quantidade').asFloat + FieldByName('I_Estoque').asFloat);

        nFator := FieldByName('I_CustoDespesas').asFloat - FieldByName('I_FatorLucro').asFloat;
        if nFator > 100 then
          nFator := 99.9;

        nFator := (100 - nFator) / 100;

        nNovoPreco := nNovoCusto / nFator;

        {Gravando}
        with Q_SQL do begin
          {Custo Medio}
          Close;
          SQL.Text := 'Update Itens set CustoMedio = :NCusto where Item  = :I ';
          ParamByName('NCusto').asCurrency := nNovoCusto;
          ParamByName('I').asInteger := TmpDS.FieldByName('ITEM').asInteger;
          ExecSQL;

          {Preco Tabela Zero}
          Close;
          SQL.Text := 'Update ProdutosPreco set Preco = :NPreco where Item = :I and TabelaPreco = 0 ';
          ParamByName('NPreco').asCurrency := nNovoPreco;
          ParamByName('I').asInteger := TmpDS.FieldByName('ITEM').asInteger;
          ExecSQL;
        end;

        DMProjeto.AtualizarPrecos(FieldByName('Item').asInteger);
      end;

      Next;
    end;

  end;
  TmpDS.Free;

end;

procedure TDMEntradas.C_TabelaPLANOPAGAMENTOChange(Sender: TField);
begin
  inherited;
  {Geração das Parcelas fica no Change dos Juros}

  bFromPlanoPg := true;
  C_TabelaPJuros.Value := C_PlanosPagamentoJuros.Value;
  bFromPlanoPg := false;


end;

procedure TDMEntradas.C_TabelaPJUROSChange(Sender: TField);
begin
  inherited;
  if bFromPlanoPg then
    GerarParcelamento
  else
    JurosParcelas;
end;

procedure TDMEntradas.GerarParcelamento;
  procedure LimparParcelas;
  begin
    with C_Parcelas do begin
      DisableControls;
      First;
      while not eof do
        Delete;

      EnableControls;
    end;
  end;
var
  i, nInicio, nqtdeParcelas : Integer;
  nDif, nTotalParcelas, nValorParcelas, nValorEntrada, nValorVenda, nValorTotal, nParcLimpa : Currency;
  nIndiceLimpo, nIndice, nJuros : double;
  str, sParcelas, sParc1 : String;
  bEntrada : Boolean;
begin
  if C_TabelaPlanoPagamento.asVariant = null then begin
    LimparParcelas;
    C_Tabela.Edit;
    C_TabelaJuros.asCurrency := 0;

    exit;

  end;

  C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

  {Parametros do Parcelamento}
  nValorEntrada := 0;
  nqtdeParcelas := C_PlanosPagamentoQTDPARCELAS.asInteger;
  nJuros := C_TabelaPJUROS.asFloat;
  sParcelas := C_PlanosPagamentoINTERVALOS.asString;

  nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency;
  nValorTotal := nValorVenda;

  sParc1 := SeparaStrings(sParcelas,';',1);
  bEntrada := SeparaStrings(sParc1,'-',2) = '0'; //Se houver entrada
  nInicio := 1;

  if (nEntradaFixa > 0) then begin
    nValorEntrada := nEntradaFixa;
    nValorTotal := nValorTotal - nValorEntrada;
    dec(nQtdeParcelas);
    bEntrada := true;
  end;

  if nJuros <> 0 then
    nIndice := (nJuros/100) * power(1+(nJuros/100),nQtdeParcelas) /
               ( power(1+(nJuros/100),nQtdeParcelas) - 1 )
  else
    nIndice := 1/nQtdeParcelas;

  nIndiceLimpo := 1/nQtdeParcelas;

  nValorParcelas := (nValorTotal * nIndice);
  nParcLimpa     := (nValorTotal * nIndiceLimpo);

  nTotalParcelas := 0;

  {Gerando o Parcelamento}
  LimparParcelas;

  if bEntrada then begin

    if nValorEntrada = 0 then
      nValorEntrada := nValorParcelas;

    Inc(nInicio);
    str := SeparaStrings(sParcelas, ';', 1);

    //Inserindo o primeiro registro
    C_Parcelas.Insert;

    //Numero da Parcela
    C_ParcelasParcela.AsString := SeparaStrings(str, '-', 1);

    //Data do Vencimento
    C_ParcelasVencimento.Value := C_TabelaData.Value;

    //Valor da Parcela
    C_ParcelasValor.asCurrency := nValorEntrada;

    C_ParcelasCompetencia.Value := C_TabelaData.Value;

    C_ParcelasJurosPlano.asCurrency := 0;

    C_Parcelas.Post;

    nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;

  end;  //  if btEntrada


  for i := nInicio to nqtdeParcelas + nInicio - 1 do begin
    str := SeparaStrings(sParcelas, ';', i);

    if Str = '' then
      Continue;

    C_Parcelas.Append;

    //Numero da Parcela
    C_ParcelasParcela.AsString := SeparaStrings(str, '-', 1);

    //Data do Vencimento
    C_ParcelasVencimento.Value := C_TabelaData.Value+ StrToInt(SeparaStrings(str, '-', 2));

    //Valor da Parcela
    C_ParcelasValor.asCurrency := nValorParcelas;

    C_ParcelasCompetencia.Value := C_TabelaData.Value;

    C_ParcelasJurosPlano.asCurrency := nValorParcelas - nParcLimpa;

    if C_PlanosPagamentoPDesconto.Value > 0 then begin
      C_ParcelasDATAANTECIPACAO.Value := C_ParcelasVencimento.Value -
                                         C_PlanosPagamentoDias_Antecipacao.asInteger;

      C_ParcelasVALORDESCANTECIPADO.asCurrency := C_ParcelasValor.asCurrency *
                                                  (C_PlanosPagamentoPDesconto.Value/100);
    end;

    C_Parcelas.Post;

    nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;

  end; //for i:=1 to contastrings

  {Verificando se houve Juros que modificam o valor da venda, ou se houve desconto}
  {A atualização do Total fica por conta da função AtualizarTotalFinal no change dos campos}
  {Se o Plano de pagamento gerar parcelas a menor que o total, cada vez que este plano for
   chamado irá aumentar o valor do desconto, como se fosse acumulativo - isto porque não há
   como saber se o valor de desconto lá informado foi digitado pelo usuário ou gerado pelo
   GerarParcelamento anterior.}
  if nTotalParcelas > 0 then begin
    nDif :=  nTotalParcelas - nValorVenda;
    if nDif <> 0 then begin
      C_Tabela.Edit;
      if nDif > 0 then {=> Juros}
        C_TabelaJuros.asCurrency := nDif
      else {=> Desconto}
        C_TabelaDESCONTO.asCurrency := C_TabelaDESCONTO.asCurrency + nDif;
      end
    else if C_TabelaJuros.asCurrency <> 0 then begin
      C_Tabela.Edit;
      C_TabelaJuros.asCurrency := 0;
    end;
  end;

end;

procedure TDMEntradas.JurosParcelas;
  procedure LimparParcelas;
  begin
    with C_Parcelas do begin
      DisableControls;
      First;
      while not eof do
        Delete;

      EnableControls;
    end;
  end;
var
  i, nInicio, nqtdeParcelas : Integer;
  nDif, nTotalParcelas, nValorParcelas, nValorEntrada, nValorVenda, nValorTotal, nParcLimpa : Currency;
  nIndiceLimpo, nIndice, nJuros : double;
  str, sParcelas, sParc1 : String;
  bEntrada, bEOF: Boolean;
begin
  if C_TabelaPlanoPagamento.asVariant = null then begin
    LimparParcelas;
    C_Tabela.Edit;
    C_TabelaJuros.asCurrency := 0;

    exit;

  end;

  C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

  {Parametros do Parcelamento}
  nValorEntrada := 0;
  nqtdeParcelas := C_PlanosPagamentoQTDPARCELAS.asInteger;
  nJuros := C_TabelaPJUROS.asCurrency;
  sParcelas := C_PlanosPagamentoINTERVALOS.asString;

  nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency;
  nValorTotal := nValorVenda;

  sParc1 := SeparaStrings(sParcelas,';',1);
  bEntrada := SeparaStrings(sParc1,'-',2) = '0'; //Se houver entrada
  nInicio := 1;

  if nJuros <> 0 then
    nIndice := (nJuros/100) * power(1+(nJuros/100),nQtdeParcelas) /
               ( power(1+(nJuros/100),nQtdeParcelas) - 1 )
  else
    nIndice := 1/nQtdeParcelas;

  nIndiceLimpo := 1/nQtdeParcelas;

  nValorParcelas := (nValorTotal * nIndice);
  nParcLimpa     := (nValorTotal * nIndiceLimpo);

  nTotalParcelas := 0;

  C_Parcelas.First;

  if bEntrada then begin

    if nValorEntrada = 0 then
      nValorEntrada := nValorParcelas;

    //Inserindo o primeiro registro
    C_Parcelas.Edit;

    //Valor da Parcela
    C_ParcelasValor.asCurrency := nValorEntrada;

    C_ParcelasJurosPlano.asCurrency := 0;

    C_Parcelas.Post;

    nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;
  end;  //  if btEntrada


  bEOF := false;
  while not C_Parcelas.EOF do begin

    C_Parcelas.Next;
    if C_Parcelas.EOF then
      bEOF := true;

    C_Parcelas.Edit;

    //Valor da Parcela
    C_ParcelasValor.asCurrency := nValorParcelas;

    C_ParcelasCompetencia.Value := C_TabelaData.Value;

    C_ParcelasJurosPlano.asCurrency := nValorParcelas - nParcLimpa;

    if C_PlanosPagamentoPDesconto.Value > 0 then begin
      C_ParcelasVALORDESCANTECIPADO.asCurrency := C_ParcelasValor.asCurrency *
                                                  (C_PlanosPagamentoPDesconto.Value/100);
    end;

    C_Parcelas.Post;

    if bEOF then
      break;

    nTotalParcelas := nTotalParcelas + C_ParcelasValor.asCurrency;
  end; //for i:=1 to contastrings


  if nTotalParcelas > 0 then begin
    nDif :=  nTotalParcelas - nValorVenda;
    if nDif <> 0 then begin
      C_Tabela.Edit;
      if nDif > 0 then {=> Juros}
        C_TabelaJuros.asCurrency := nDif
      else {=> Desconto}
        C_TabelaDESCONTO.asCurrency := C_TabelaDESCONTO.asCurrency + nDif;
      end
    else if C_TabelaJuros.asCurrency <> 0 then begin
      C_Tabela.Edit;
      C_TabelaJuros.asCurrency := 0;
    end;
  end;

end;

{Aqui devem ser colocados todos os campos numéricos para que fique com
 valor diferente de null}
procedure TDMEntradas.C_ParcelasNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nSeqParcelas);

  C_ParcelasID.Value := nSeqParcelas;

  C_ParcelasValor.Value := 0;
  C_ParcelasValorPago.Value := 0;
  C_ParcelasStatus.Value := 1;
  C_ParcelasVALORDESCANTECIPADO.Value := 0;
  C_ParcelasJUROSPLANO.Value := 0;
  C_ParcelasDESCONTOS.Value := 0;
  C_ParcelasJUROSPAGOS.Value := 0;
  C_ParcelasVALORJUROSMORA.Value := 0;
  C_ParcelasVALORMULTA.Value := 0;
  C_ParcelasCREDITOGERADO.Value := 0;
  C_ParcelasCREDITOUTILIZADO.Value := 0;
  C_ParcelasJUROSMORA.Value := 0;
  C_ParcelasMULTA.Value := 0;
end;

{O BeforePost das Parcelas serve para definir os campos que só podem ter seus
 valores conhecidos após os campos básicos terem seus valores.  A Codificação
 abaixo está subentendendo que não poderá haver modificações para parcelas que
 já receberam pagamentos e que a classe ao gravar irá fazer uma varredura nas
 parcelas para Confirmação de Fornecedor, Titulo, etc.}
procedure TDMEntradas.C_ParcelasBeforePost(DataSet: TDataSet);
 function StatusTitulo( Vencimento, DataAtrasado : TDateTime ) : Integer;
 begin
   if DMProjeto.dDataSistema >= DataAtrasado then
     result := 3 {Em Atraso}
   else if (DMProjeto.dDataSistema < DataAtrasado) and (DMProjeto.dDataSistema>= Vencimento) then
     result := 2 {Vencido}
   else if DMProjeto.dDataSistema < Vencimento then
     result := 1;
 end;
begin
  inherited;
  if C_PlanosPagamentoPlanoPagamento.VAlue <> C_TabelaPlanoPagamento.Value then
    C_PlanosPagamento.Locate('PlanoPagamento', C_TabelaPlanoPagamento.Value, []);

  C_ParcelasCOMPETENCIA.Value := C_TabelaData.Value;
  C_ParcelasDATAATRASADO.Value := DMProjeto.PrimeiroDiaUtil(C_ParcelasVencimento.Value, False);

  if C_PlanosPagamentoPDesconto.Value > 0 then begin
    C_ParcelasDATAANTECIPACAO.Value := C_ParcelasVencimento.Value -
                                       C_PlanosPagamentoDias_Antecipacao.asInteger;

    C_ParcelasVALORDESCANTECIPADO.asCurrency := C_ParcelasValor.asCurrency *
                                                (C_PlanosPagamentoPDesconto.Value/100);
  end;

  C_ParcelasFornecedor.Value := C_TabelaFavorecido.Value;
  C_ParcelasNotaFiscal.Value := C_TabelaNumero.Value;
  if C_ParcelasNOTAFISCAL.Value <> '' then
    C_ParcelasTITULO.Value     := Adicionarstr(C_ParcelasNotaFiscal.Value, '0', 6) + '-' +
                                  C_ParcelasParcela.asString
  else
    C_ParcelasTITULO.Value     := AdicionarStr(IntToStr(DMProjeto.NextID('Titulo')),'0',6) + '-' +
                                  C_ParcelasParcela.asString;

  C_ParcelasUSUARIO.Value      := DMProjeto.nFuncionario;

  {Status}
  if C_TabelaTipoPadrao.Value <> 100 then
    C_ParcelasStatus.Value := -1  {Usa a tabela de Titulos a Receber apenas para armazenar acordo com o cliente}
  else if C_ParcelasValor.asCurrency <= (C_ParcelasValorPago.asCurrency +
                                    C_ParcelasDescontos.AsCurrency +
                                    C_ParcelasCREDITOUTILIZADO.AsCurrency) then
    C_ParcelasStatus.Value := 50
  else
    C_ParcelasStatus.Value := StatusTitulo( C_ParcelasVencimento.Value, C_ParcelasDATAATRASADO.Value );


end;

procedure TDMEntradas.C_TabelaNUMEROChange(Sender: TField);
var
  sSigla, sNum : String;
begin
  inherited;
  {Verificando se o Número possui 6 digitos}
  if pos('-', Sender.asString) > 0 then begin
    sSigla := SeparaStrings(Sender.asString, '-', 1) + '-';
    sNum   := SeparaStrings(Sender.asString, '-', 2);
    end
  else
    sNum := Sender.asString;

  if Length( sNum ) < 6 then begin
    sNum := AdicionarStr(sNum, '0', 6 );
    Sender.asString := sSigla + sNum;
  end;

end;

procedure TDMEntradas.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;

  if not bAlteracao and (sNumeroGerado <> C_TabelaNumero.asString) then
    DlgMsg.ShowMsg(2201, [C_TabelalkTipoMovimento.Value, sNumeroGerado]);

end;

procedure TDMEntradas.C_ItensAfterDelete(DataSet: TDataSet);
begin
  inherited;
  //Para forçar o recálculo dos itens, descontos e impostos
  C_ItensAfterPost( DataSet );
end;

procedure TDMEntradas.C_ItensITEMChange(Sender: TField);
begin
  inherited;
  C_ItensPreco.Value := DMProjeto.C_LocalizarItensCustoMedio.Value;
end;

function TDMEntradas.ContabilidadeAtivado;
begin
  result := DMContabil <> nil;
end;

procedure TDMEntradas.ContabilidadeDesativado;
begin
  DMContabil.FechaDatasets;
  DMContabil.Free;
end;

procedure TDMEntradas.CriaContabilidade;
begin
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDMEntradas.Contabiliza;
begin
  DMContabil.ContabilizaInvoicesEntradas(C_TabelaIDMestre.value,C_Tabela,C_Itens);
end;

procedure TDMEntradas.MostraContabilidade;
begin
  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.free;
end;

end.









