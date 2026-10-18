
unit DM_PedidoRapido;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    DM_Saidas, Db, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
    IBUpdateSQL, IBQuery, IBEvents, TS_QDBGrid, Variants, Math, BTOdeum;

type
    TEmAlteracao = procedure(sNum: string) of object;

    TDMPedidoRapido = class(TDMSaidas)
        C_PlanosPagamentoDS: TDataSource;
        C_ItensicIG: TStringField;
        C_ItensicX: TStringField;
        C_Parcelas_icSelecionado: TIntegerField;
        C_ParcelasValorAReceber: TCurrencyField;
        C_ParcelasPagamento: TCurrencyField;
        C_ParcelasJuros: TCurrencyField;
        C_ParcelasVENDA: TIntegerField;
        C_PlanosPagamentoicResumo: TStringField;
        C_TabelaicNomeTabelaPadrao: TStringField;
        C_ItensDescricaoGrupo: TStringField;
        C_ItensDescFabricante: TStringField;
        C_ItensicCusto: TStringField;
        C_ItensicMPV: TStringField;
        C_ItensicEstoque: TBCDField;
    Q_Precos: TIBQuery;
    P_Precos: TDataSetProvider;
    C_Precos: TClientDataSet;
    IntegerField2: TIntegerField;
    C_PrecosPRODUTOPRECO: TIntegerField;
    C_PrecosITEM: TIntegerField;
    C_PrecosTABELAPRECO: TIntegerField;
    C_PrecosPRECOMANUAL: TStringField;
    C_PrecosPRECOPROMOCAO: TBCDField;
    C_PrecosDESCRICAO: TStringField;
    C_PrecosBASEADA: TStringField;
    C_PrecosPERCENTUAL: TBCDField;
    C_PrecosDESCITEM: TStringField;
    C_PrecosDS: TDataSource;
    C_PrecosPRECO_NORMAL: TBCDField;
    C_PrecosPRECO: TCurrencyField;
        procedure DataModuleCreate(Sender: TObject);
        procedure C_ItensCalcFields(DataSet: TDataSet);
        procedure C_ParcelasCalcFields(DataSet: TDataSet);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure C_TabelaTABELAPADRAOChange(Sender: TField);
        procedure DMComponentPesquisar4_Dados(Sender: TObject);
        procedure C_TabelaSTATUSValidate(Sender: TField);
        procedure C_ItensITEMChange(Sender: TField);
        procedure C_TabelaTOTALChange(Sender: TField);
    procedure C_PrecosCalcFields(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    private
        { Private declarations }
    public
        { Public declarations }
        nTipoMovimentoPadrao: Integer;

        pEmAlteracao: TEmAlteracao;

        nSelecParcs: Currency;
        dbgParcelasForm: TTS_QDBGrid;

        procedure AtualizarResumoPlanos;

    end;

var
    DMPedidoRapido: TDMPedidoRapido;

implementation
uses DM_Projeto, Funcoes, DM_Financeiro, DM_DigitacaoItens;

{$R *.DFM}

procedure TDMPedidoRapido.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMPedidoRapido := self;
    nTipoMovimentoPadrao := 2;
end;

procedure TDMPedidoRapido.C_ItensCalcFields(DataSet: TDataSet);
var
    nFator, FC: double;
    s: string;
begin
    inherited;
    s := DMProjeto.Parametro('CodigoCusto');     

    nFator := (100 - C_ItensI_SEMLUCRO.Value) / 100;
    if nFator <= 0 then
        nFator := 1;

    FC := IIF(C_ItensFator.Value <= 0, 1, C_ItensFator.Value);

    C_ItensicCusto.Value := CustoSimbolico((C_ItensI_CUSTOMEDIO.Value * FC), s);
    C_ItensicMPV.Value := CustoSimbolico((C_ItensI_CUSTOMEDIO.Value / nFator) * FC, s);

    C_ItensicX.Value := 'X';
    C_ItensicIG.Value := '=';

    C_ItensicEstoque.Value := C_ItensI_Estoque.Value / FC;
end;

procedure TDMPedidoRapido.C_ParcelasCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ParcelasValorAReceber.Value := C_ParcelasValor.Value;
    C_ParcelasJuros.Value := 0;
end;

procedure TDMPedidoRapido.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
var
    i, nMsg: Integer;
    nDif: Currency;
    sTmp: string;
begin
    inherited;

    if bSkip then
        exit;

    C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.Value, []);

    if (C_TiposMovimentoCB_GERARNUM.Value <> 'S') and (C_TabelaNumero.Value = '') then
    begin
        DlgMsg.ShowMsg(2333);
        bSkip := true;
        exit;
    end;

end;

procedure TDMPedidoRapido.AtualizarResumoPlanos;
var
    nValorVenda: Currency;
    sEntrada, sParcelas, sResumo: string;
begin
    if C_PlanosPagamento.Active then
        with C_PlanosPagamento do
        begin
            nValorVenda := C_TabelaTotal.asCurrency - C_TabelaJuros.asCurrency - C_TabelaicDescontoParcelas.asCurrency;
            First;
            while not EOF do
            begin
                sResumo := DMProjeto.GerarPlanoPgto(C_PlanosPagamento, nValorVenda, 0,
                    IIF(C_TabelaPJuros.Value > 0, C_TabelaPJuros.Value, C_PlanosPagamentoJuros.Value),
                    C_TabelaData.Value,
                    C_PlanosPagamentoPlanoPagamento.Value, sEntrada, sParcelas);
                Edit;
                FieldByName('icResumo').asString := sResumo;
                Post;

                Next;
            end;
        end;
end;

procedure TDMPedidoRapido.C_TabelaTABELAPADRAOChange(Sender: TField);
begin
    inherited;
    C_TabelaicNomeTabelaPadrao.Value := NomeTabelaPreco(Sender.AsInteger);
end;

procedure TDMPedidoRapido.DMComponentPesquisar4_Dados(Sender: TObject);
begin
    inherited;
    pEmAlteracao(C_TabelaNumero.Value);
end;

procedure TDMPedidoRapido.C_TabelaSTATUSValidate(Sender: TField);
begin
    inherited;
    if Sender.asString = '' then
        exit;

    if C_TabelaTipoPadrao.Value in [2, 3] then
    begin
        if (Sender.asString[1] in ['B', 'C', 'E']) then
        begin
            DlgMsg.ShowMsg(2399); //Status não é válido para a operação.
            raise exception.create('@@');
        end;

        if (sender.asString = 'F') or (Sender.asString = 'L') then
        begin
            DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
            raise exception.create('@@');
        end
        else if bAlteracao and (C_TabelaStatusOld.Value = 'F') and (sender.asString <> 'F') then
        begin
            DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
            raise exception.create('@@');
        end
        else if bAlteracao and (C_TabelaStatusOld.Value = 'L') and (sender.asString <> 'H') then
        begin
            DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
            raise exception.create('@@');
        end;
    end;

    if C_TabelaTipoPadrao.Value = 1 then
    begin
        if not (Sender.asString[1] in ['B', 'C', 'E']) then
        begin
            DlgMsg.ShowMsg(2399); //Status não é válido para a operação.
            raise exception.create('@@');
        end;
    end;

end;

procedure TDMPedidoRapido.C_ItensITEMChange(Sender: TField);
begin
    inherited;
    C_ItensDescricaoGrupo.Value := DMProjeto.C_LocalizarItensDescricaoGrupo.Value;
    C_ItensDescFabricante.Value := DMProjeto.C_LocalizarItensDescFabricante.Value;
    sPerformance := sPerformance + Format('[%s] - Após definir Descrição Grupo e Fabricante', [TimeToStr(Now)]) + #13;
end;

procedure TDMPedidoRapido.C_TabelaTOTALChange(Sender: TField);
begin
    inherited;
    if C_PlanosPagamento.Active and (C_PlanosPagamentoicResumo.Value <> '') then
    begin
        AtualizarResumoPlanos;
        sPerformance := sPerformance + Format('[%s] - Após definir Resumo dos Planos', [TimeToStr(Now)]) + #13;
    end;
end;

procedure TDMPedidoRapido.C_PrecosCalcFields(DataSet: TDataSet);
begin
  inherited;
  if DataSet.FieldByName('PRECOPROMOCAO').AsCurrency > 0 then
    DataSet.FieldByName('PRECO').AsCurrency := DataSet.FieldByName('PRECOPROMOCAO').AsCurrency
  else
    DataSet.FieldByName('PRECO').AsCurrency := DataSet.FieldByName('PRECO_NORMAL').AsCurrency;
  // Adicionando as cotações dos indexadores mais atualizados...
  if (DMProjeto.C_LocalizarItens.FieldByName('Indexador').AsVariant <> null) then begin
    with Q_SQL do begin
      Close;
      SQL.Text := 'select valor from cotacoes ' +
                  'where data = (select max(data) from cotacoes where indexador = :i) ' +
                  'and indexador = :i ';
      ParamByName('i').AsInteger := DMProjeto.C_LocalizarItens.FieldByName('Indexador').AsInteger;
      Open;
      if (RecordCount > 0) and (Fields[0].AsFloat > 0) then begin
        DataSet.FieldByName('Preco').AsCurrency := RoundTo( DataSet.FieldByName('Preco').AsCurrency / Fields[0].AsFloat, -2 );
//        DataSet.FieldByName('icPrecoMinimo').AsCurrency := RoundTo( DataSet.FieldByName('icPrecoMinimo').AsCurrency / Fields[0].AsFloat, -2 );
      end;
      Close;
    end;
  end;
end;

procedure TDMPedidoRapido.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  //C_TabelaIDMESTRE.Value := -999;
end;

end.
