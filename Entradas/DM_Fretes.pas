unit DM_Fretes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMFretes = class(TDMManutencao)
    Q_CFOPs: TIBQuery;
    C_CFOPs: TClientDataSet;
    P_CFOPs: TDataSetProvider;
    C_CFOPsDS: TDataSource;
    Q_TiposMovimento: TIBQuery;
    P_TiposMovimento: TDataSetProvider;
    C_TiposMovimento: TClientDataSet;
    C_TiposMovimentoTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentoDESCRICAO: TStringField;
    C_TiposMovimentoTIPOPADRAO: TIntegerField;
    C_TiposMovimentoTIPOORIGEM: TIntegerField;
    C_TiposMovimentoPOSSUIICMS: TStringField;
    C_TiposMovimentoPOSSUIIPI: TStringField;
    C_TiposMovimentoCONTABILIZAICMS: TStringField;
    C_TiposMovimentoDS: TDataSource;
    C_TiposMovimentoSERIE: TStringField;
    C_TiposMovimentoMODELODOC: TStringField;
    Q_SQL: TIBQuery;
    C_CFOPsCFOP: TStringField;
    C_CFOPsDESCRICAO: TStringField;
    C_CFOPsPAI: TStringField;
    C_TiposMovimentoCFOPASSOCIADO: TStringField;
    C_TabelaENTRADA: TIntegerField;
    C_TabelaNUMERO: TStringField;
    C_TabelaCIF_FOB: TStringField;
    C_TabelaDATA: TDateField;
    C_TabelaDATANOTA: TDateField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaCFOPNOTA: TStringField;
    C_TabelaCFOPENTRADA: TStringField;
    C_TabelaSERIENOTA: TStringField;
    C_TabelaMODELO: TStringField;
    C_TabelaDATAENTREGA: TDateField;
    C_TabelaOBS: TStringField;
    C_TabelaTIPOMOVIMENTO: TIntegerField;
    C_TabelaTIPOPADRAO: TIntegerField;
    C_TabelaSITUACAO: TStringField;
    C_TabelaNOTAORIGEM: TIntegerField;
    C_TabelaUSUARIO: TStringField;
    C_TabelaUFORIGEM: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaRAZAO: TStringField;
    C_TabelalkCFOP: TStringField;
    C_TabelalkTipoMov: TStringField;
    C_TabelaPDV: TIntegerField;
    C_TabelaBASECALCICMS: TFloatField;
    C_TabelaALIQICMSCOMPRA: TBCDField;
    C_TabelaVALORICMS: TFloatField;
    C_TabelaTOTAL: TFloatField;
    C_TabelaDESCONTO: TBCDField;
    C_TabelaFRETE: TBCDField;
    C_TabelaOUTRASDESPESAS: TFloatField;
    C_TabelaTOTALITENS: TFloatField;
    C_TabelaTOTALITENS123: TFloatField;
    C_TabelaDESCONTOITENS: TFloatField;
    C_TabelaPJUROS: TFloatField;
    C_TabelaVOLUMES: TFloatField;
    C_TabelaJUROS: TFloatField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaFAVORECIDOChange(Sender: TField);
    procedure C_TabelaBASECALCICMSChange(Sender: TField);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    function ExisteContasaPagar:boolean;
  public
    nEntradaOrigem: integer;
    nValorFrete: currency;
  end;

var
  DMFretes: TDMFretes;

implementation
uses DM_Projeto, funcoes, DM_Financeiro;

{$R *.dfm}

procedure TDMFretes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMFretes := self;
  nEntradaOrigem := 0;
  nValorFrete := 0;
end;

procedure TDMFretes.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaTipoMovimento.value := 12;
  C_TabelaTipoPADRAO.value := 108;
  C_TabelaSituacao.Value := 'N';
  C_TiposMovimento.locate('tipomovimento',C_TabelaTipoMovimento.value,[]);
  C_TabelaData.Value := DMProjeto.dDataSistema;
  C_TabelaDataNota.value := DMProjeto.dDataSistema;
  C_TabelaCIF_FOB.value := 'F';
  C_TabelaSerieNota.value := C_TiposMovimentoSerie.value;
  C_TabelaModelo.value := C_TiposMovimentoModeloDoc.value;
  C_TabelaVolumes.Value := 0;
  C_TabelaDesconto.Value := 0;
  C_TabelaFrete.Value := 0;
  C_TabelaNotaOrigem.Value := nEntradaOrigem;
  C_TabelaTotal.Value := nValorFrete;
  C_TabelaJUROS.Value := 0;
  C_TabelaOUTRASDESPESAS.Value := 0;
  C_TabelaTotalItens.Value := 0;
  C_TabelaTotalItens123.Value := 0;
  C_TabelaDescontoItens.Value := 0; {Descontos por valor acumulados}
  C_TabelaPJuros.Value := 0;
  C_TabelaBaseCalcICMS.value := 0;
  C_TabelaAliqICMSCompra.value := 0;
  C_TabelaValorICMS.value := 0;
  C_TabelaUsuario.Value := DMProjeto.sLoginName;
  C_TabelaPDV.Value := DMPRojeto.nPDV;
end;

procedure TDMFretes.C_TabelaFAVORECIDOChange(Sender: TField);
var sN,sL: string;
begin
  inherited;
  // LegisFiscal
  C_TabelaUFOrigem.value := DMProjeto.C_LocalizarFavUF.value;

  if C_TabelaUFOrigem.value <> DMProjeto.sUFEmpresa then begin
    sN := '6';
    sL := '2';
    end
  else begin
    sN := '5';
    sL := '1';
  end;
  C_TabelaCFOPNota.Value := sN+Direita(C_TiposMovimentoCFOPAssociado.Value,2);
  C_TabelaCFOPEntrada.Value := sL+Direita(C_TiposMovimentoCFOPAssociado.Value,2);

  C_TabelaAliqICMSCompra.value := DMProjeto.AliquotaEstado(C_TabelaUFOrigem.value);
end;

procedure TDMFretes.C_TabelaBASECALCICMSChange(Sender: TField);
begin
  inherited;
  C_TabelaValorICMS.value := (C_TabelaBaseCalcICMS.value * C_TabelaAliqICMSCompra.value)/100;
end;

function TDMFretes.ExisteContasaPagar;
begin
  DMProjeto.Q_ComandoSQL.SQL.text := 'select id from duplicatasapagar where idgerador_apagar = :id';
  DMProjeto.Q_ComandoSQL.params[0].asinteger := C_TabelaEntrada.value;
  DMProjeto.Q_ComandoSQL.open;
  result := DMProjeto.Q_ComandoSQL.fieldbyname('id').asinteger > 0;
end;

procedure TDMFretes.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  if (not C_TabelaDataEntrega.IsNull and (C_TabelaCIF_FOB.value = 'F') and not bAlteracao)
    or (not C_TabelaDataEntrega.IsNull and (C_TabelaCIF_FOB.value = 'F') and bAlteracao and not ExisteContasaPagar) then
    DMFinanceiro.Conta_A_Pagar(1,C_TabelaTotal.value,C_TabelaDataEntrega.value,C_TabelaData.value,
    '',0, C_TabelaFavorecido.value, C_TabelaEntrada.value, C_TabelaNumero.value,
    56, C_TabelaEntrada.value)
  else if (not C_TabelaDataEntrega.IsNull and (C_TabelaCIF_FOB.value = 'F') and bAlteracao and ExisteContasaPagar) then begin
    DMProjeto.Q_ComandoSQL.SQL.text := 'update duplicatasapagar set valor = :valor, vencimento = :vencimento, competencia = :data '+
    'where idgerador_apagar = :id';
    DMProjeto.Q_ComandoSQL.params[0].ascurrency := C_TabelaTotal.value;
    DMProjeto.Q_ComandoSQL.params[1].asdatetime := C_TabelaDataEntrega.value;
    DMProjeto.Q_ComandoSQL.params[2].asdatetime := C_TabelaData.value;
    DMProjeto.Q_ComandoSQL.params[3].asinteger := C_TabelaEntrada.value;
    DMProjeto.Q_ComandoSQL.execsql;

    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  end;


end;

procedure TDMFretes.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
  function CancelarParcelas( nInvoice : integer; Motivo : String; var sTitulos: string) : String; //Retorna o valor gerado de créditos;
  var
    sRetiradas : String;
    x : Integer;
  begin
    with Q_SQL do begin
      {Parcelas afetadas}
      Close;
      SQL.Text := 'Select * from DuplicatasAPagar where idgerador_apagar = :C and Status > 0 ';
      params[0].asInteger := nInvoice;
      Open;
      sTitulos := '';
      while not EOF do begin
        sTitulos := CExp(sTitulos, ',') + FieldByName('ID').asString;
        Next;
      end;
      Close;

      if sTitulos = '' then begin
        result := '';
        exit;
      end;

      {Retiradas Afetadas}
      Close;
      SQL.Text := 'Select * from RetiradasDuplicatas where Duplicata in ('+sTitulos+') ';
      Open;
      sRetiradas := '';
      while not EOF do begin
        sRetiradas := CExp(sRetiradas, ',') + FieldByName('Retirada').asString;
        Next;
      end;
      Close;

      for x := 1 to ContaStrings(sTitulos,',') do begin
        if not DMFinanceiro.CancelarDuplicata(StrToIntDef(SeparaStrings(sTitulos,',',x), 0), Motivo, false, false) then
          raise Exception.Create('@@')
        else
          DMFinanceiro.CancelarLancamentos(SeparaStrings(sTitulos,',',x));
      end;

      result := sRetiradas;

    end;
  end;
  function ExistePagamentos( nInvoice : integer ) : Boolean;
  begin
    with Q_SQL do begin
      Close;
      SQL.Text := 'Select * from DuplicatasAPagar d INNER JOIN RetiradasDuplicatas rd ON d.ID = rd.Duplicata '+
                  'where d.idgerador_apagar = :C and d.Status > 0 ';
      Params[0].asInteger := nInvoice;
      Open;

      Last;

      result := RecordCount > 0;

      Close;
    end;
  end;
var
  sRetiradasAfetadas, sMotivo, xTitulos : String;
  j: integer;
  xQtde,xQtdeEntrada,xQtdeAtual: double;
begin
  inherited;
  bSkip := true;
  {Verificando se já foi cancelado}
	if C_TabelaSituacao.Value = 'C' then begin
  	DlgMsg.ShowMsg( 940 );
    Exit;
  end;

  {Verificando se há Pagamentos e notificando ao usuário este fato}
  if ExistePagamentos(C_TabelaEntrada.Value) and
     (DlgMsg.ShowMsg(2295) <> 100) then
    exit;

  {Desfazendo edições para que não ocorram erros durante o cancelamento}
  C_Tabela.UndoLastChange(False);

  sMotivo := '';
  while sMotivo = '' do
    sMotivo :=  InputBox(DMProjeto.getMsg(449),DMProjeto.getMsg(450)+':','');

  {Cancelando a Operação}
  try
    try
      With Q_SQL do begin
        {Cancela, altera recebimentos e gera créditos (se preciso for)}
        sRetiradasAfetadas := CancelarParcelas( C_TabelaEntrada.Value, 'Canc. Frete #'+C_TabelaNumero.asString+'; '+ sMotivo,xTitulos);

        for j := 1 to ContaStrings(xTitulos,',') do
          DMFinanceiro.AjustaRecebimentoContas(StrToInt(SeparaStrings(xTitulos,',',j)),sRetiradasAfetadas);

        {Cancelando a Operacao}
        Close;
        SQL.Text := 'Update Entradas set Situacao = ''C'' where Entrada = :E ';
        Params[0].asInteger := C_TabelaEntrada.Value;
        ExecSQL;

        {Registrando Auditoria}
        {TODO}
        DMFinanceiro.AuditoriaFinanceira(38, 'Cancelamento do Frete #'+C_TabelaNumero.asString, 'Entradas',
                                         C_TabelaEntrada.Value, C_TabelaTotal.Value,
                                         C_TabelaEntrada.Value, 56, 0);

      end;
    finally
    end;

    // Estorno dos Lancamentos Contabeis
    DMFinanceiro.CancelarLancamentos(C_TabelaEntrada.AsString);


    if C_Tabela.State = dsBrowse then
      C_Tabela.Edit;
    C_TabelaSituacao.Value := 'C';
    C_Tabela.Post;
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining ;


  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining ;

      DlgMsg.ShowMsg(2199,e.message, '');
    end;
  end;
end;

procedure TDMFretes.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (C_TabelaFAVORECIDO.AsInteger <= 0) then begin
    DlgMsg.ShowMsg( 643 );
    bSkip := True;
  end;
end;

end.
