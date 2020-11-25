unit DM_DevolucoesFornecedores;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, DM_Saidas, IBEvents, DB, DBClient, Provider, DlgMsg,
    DMComponent, IBCustomDataSet, IBUpdateSQL, IBQuery, BTOdeum;

type
    TDMDevolucoesFornecedores = class(TDMSaidas)
        C_TabelaSTATUSNFE: TIntegerField;
    C_ItenslkCST: TStringField;
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure C_TabelaNewRecord(DataSet: TDataSet);
        procedure C_ItensNewRecord(DataSet: TDataSet);
        procedure DMComponentGravar4_AposCommit(Sender: TObject);
        procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure C_ItensPRECOChange(Sender: TField);
        procedure C_ItensQUANTIDADEChange(Sender: TField);
        procedure C_ItensBeforePost(DataSet: TDataSet);
        procedure C_ItensIPIChange(Sender: TField);
        procedure C_ItensBASECALCICMSPRODChange(Sender: TField);
        function BaixoEstoque(nItem: Integer; sUnidade: string): real;
        procedure C_ItensALIQICMSChange(Sender: TField);
        procedure RecalcularItens();
        procedure C_ItensAfterPost(DataSet: TDataSet);
    private
        nTotalValorIPI, nTotalBCICMS, nTotalValorICMS, nTotalBCICMSST, nTotalValorICMSST: Currency;
        procedure ApagarOperacoesExtras;
        { Private declarations }
    public
        CalcularPesoAutomatico: Boolean;
        volumeEdit: double;
        { Public declarations }
    end;

var
    DMDevolucoesFornecedores: TDMDevolucoesFornecedores;

implementation
uses funcoes, DM_Projeto, DM_Financeiro, DM_DigitacaoItens;

{$R *.dfm}

procedure TDMDevolucoesFornecedores.ApagarOperacoesExtras;
begin
    with Q_SQL do
        begin
            close;
            sql.text := 'delete from transacoescreditos where idgerador = :id';
            parambyname('id').AsInteger := C_TabelaIDMestre.Value;
            execsql;
        end;
end;

procedure TDMDevolucoesFornecedores.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMDevolucoesFornecedores := self;
end;

procedure TDMDevolucoesFornecedores.DMComponentPesquisar1_Iniciar(
    Sender: TObject; var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 6 and ');
    Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

procedure TDMDevolucoesFornecedores.C_TabelaNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_TabelaStatus.Value := 'D';
end;

procedure TDMDevolucoesFornecedores.C_ItensNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_ItensStatus.Value := 'D';
end;

procedure TDMDevolucoesFornecedores.DMComponentGravar4_AposCommit(
    Sender: TObject);
begin
    inherited;
    if bAlteracao then
        ApagarOperacoesExtras;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMPRojeto.DB_PRojeto.DefaultTransaction.StartTransaction;
        DMFinanceiro.RegistrarCredito(C_TabelaFavorecido.Value,
            C_TabelaIDMestre.Value,
            39, {Tipo Operação}
            false, {Empresa Devendo}
            0,
            C_TabelaTotalItens.Value,
            C_TabelalkTipoMovimento.AsString + ' #' + iif(sNumeroGerado <> '', sNumeroGerado, C_TabelaNumero.AsString));
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMPRojeto.DB_Projeto.DefaultTransaction.Commit;
    except
        on e: exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMPRojeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
                DlgMsg.ShowMsg(50, ['ERRO NA GERAÇÃO DO CRÉDITO AO FORNECEDOR' + #13#10 + e.message]);
            end;
    end;
end;

procedure TDMDevolucoesFornecedores.DMComponentExclusao(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    with Q_SQL do
        begin
            close;
            sql.text := 'delete from transacoescreditos where idgerador = :id';
            parambyname('id').asInteger := C_TabelaIDMestre.Value;
            ExecSQL;
        end;
end;

procedure TDMDevolucoesFornecedores.DMComponentGravar1_Iniciar(
    Sender: TObject; var bSkip: Boolean);
begin
    inherited;
    if DlgMsg.ShowMsg(710, [formatfloat('#,###,##0.00', C_TabelaTotalItens.Value)]) = 200 then
        begin
            bSkip := true;
            Exit;
        end;
end;

procedure TDMDevolucoesFornecedores.C_ItensPRECOChange(Sender: TField);
begin
    inherited;
    if (C_ItensSITUACAOECF.Value = 'T') then
        begin
            C_ItensBASECALCICMSPROD.Value := C_ItensPRECO.Value * C_ItensQUANTIDADE.Value;
            C_ItensValorICMSProd.value := Truncar((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100, 2);
        end;
end;

procedure TDMDevolucoesFornecedores.C_ItensQUANTIDADEChange(
    Sender: TField);
begin
    inherited;
    if (C_ItensSITUACAOECF.Value = 'T') then
        begin
            C_ItensBASECALCICMSPROD.Value := C_ItensPRECO.Value * C_ItensQUANTIDADE.Value;
            C_ItensValorICMSProd.value := Truncar((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100, 2);
        end;

    {Felipe - Zerando o totalizador do volume caso a quantidade de algum item seja digitada. Nesse caso o programa faz o calculo com base no total geral da coluna
    quantidade do grid de itens e/ou pelo total de produtos lancados no grid.  - 28/11/2016}
    volumeEdit := 0;
end;

procedure TDMDevolucoesFornecedores.C_ItensBeforePost(DataSet: TDataSet);
begin
    //inherited;

    if (C_ItensQuantidade.asVariant = null) and (C_ItensI_TIPOITEM.Value in [1, 2]) then
        C_ItensQuantidade.Value := 0.00;
    if (C_ItensPreco.asVariant = null) and not (C_ItensI_TIPOITEM.Value in [4, 7]) then
        C_ItensPreco.Value := 0.00;

    // LegisFiscal
    if (TipoMovimento('CB_CSTPADRAO') = 'S') then
        C_ItensCST.Value := TipoMovimento('CST_PADRAO');
    if C_ItensSituacaoECF.value = 'T' then
        begin
            if (bDECRETO25905) then
                begin
                    if (C_TabelaPossuiICMS.value = 'S') then
                        if (C_TabelaUFDestino.value = DMProjeto.sUFEmpresa) then
                            begin
                                if C_ItensReducaoCST.value > 0 then
                                    C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant - ((C_ItensSubTotal.AsVariant * C_ItensReducaoCST.value) / 100);
                                // Felipe - Comentado para permitir o usuário alterar o valor da Base ICMS (13/07/2015)
                                //else
                                //    C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant;

                                if (C_TabelaPossuiICMS.value = 'S') then
                                    C_ItensValorICMSProd.value := ((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100);
                                if (C_ItensTVA.value > 0) then
                                    begin
                                        C_ItensBaseCalcSubstProd.value := C_ItensSubTotal.value + ((C_ItensSubTotal.value * C_ItensTVA.value) / 100);
                                        if (C_TabelaPossuiICMS.value = 'S') then
                                            C_ItensValorICMSSubstProd.value := (((C_ItensBaseCalcSubstProd.value * C_ItensAliqICMS.value) / 100) - C_ItensValorICMSProd.Value);
                                    end;
                            end
                        else
                            begin
                                if (C_TabelaPossuiICMS.value = 'S') then
                                    begin
                                        if C_ItensReducaoCST.value > 0 then
                                            C_ItensBaseCalcICMSProd.AsVariant := 0.00
                                    end;
                                if (C_ItensTVA.value > 0) then
                                    begin
                                        C_ItensBaseCalcSubstProd.value := 0.00;
                                        if (C_TabelaPossuiICMS.value = 'S') then
                                            C_ItensValorICMSSubstProd.value := 0.00;
                                    end;
                            end;
                end
            else
                begin
                    if (C_TabelaPossuiICMS.value = 'S') then
                        begin
                            if C_ItensReducaoCST.value > 0 then
                                C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant - ((C_ItensSubTotal.AsVariant * C_ItensReducaoCST.value) / 100);
                            // Felipe - Comentado para permitir o usuário alterar o valor da Base ICMS (13/07/2015)
                            //else
                            //    C_ItensBaseCalcICMSProd.AsVariant := C_ItensSubTotal.AsVariant;
                        end;
                    if (C_ItensTVA.value > 0) then
                        begin
                            {Calculo do Item com Substituição}
                            C_ItensBaseCalcSubstProd.value := (C_ItensSubTotal.value + C_ItensVALORIPIPROD.Value) * ((100 + C_ItensTVA.value) / 100);
                            if (C_TabelaPossuiICMS.value = 'S') then
                                C_ItensValorICMSSubstProd.value := ((C_ItensBaseCalcSubstProd.value * (DMProjeto.nICMSInterno / 100)) - C_ItensValorICMSProd.Value);
                        end;
                end;
        end
    else if C_ItensSituacaoECF.value = 'F' then
        begin
            if (bDECRETO25905) then
                begin
                    if (C_TabelaPossuiICMS.value = 'S') then
                        if (C_TabelaUFDestino.value = DMProjeto.sUFEmpresa) then
                            begin
                                C_ItensBaseCalcSubstProd.value := C_ItensSubTotal.value;
                                C_ItensValorICMSSubstProd.value := (((C_ItensBaseCalcSubstProd.value * 3.00) / 100));
                            end
                        else
                            begin
                                C_ItensBaseCalcSubstProd.value := 0.00;
                                C_ItensValorICMSSubstProd.value := 0.00;
                            end;
                end;
        end
    else if (C_ItensSituacaoECF.value = 'I') then
        C_ItensValorIsentasProd.value := C_ItensSubTotal.value;

    C_ItensSubTotalItem.AsVariant := C_ItensSubTotal.AsVariant;

    if (C_ItensUsoTipoItem.Value <> '') and (C_ItensUsoTipoItem.Value[1] <> 'D') then
        C_ItensN_UsoTipoItem.Value := -StrToFloatDef(SeparaStrings(C_ItensUsoTipoItem.Value, '=', 2), 0);

    if (C_ItensPreco.Value <> 0) and (C_ItensItem.Value = 0) and (C_ItensDespesa.Value = 0) then
        begin
            DlgMsg.ShowMsg(2179);
            raise Exception.Create('@@');
        end;

    if C_ItensI_TipoItem.Value = 1 then
        C_ItenscfBaixoEstoque.Value := BaixoEstoque(C_ItensItem.Value, C_ItensUNIDADE.Value);
    if C_ItensI_TipoItem.Value = 3 then
        C_ItenscfBaixoEstoque.Value := 9999; {Para nao criticar quando Servico}

    {Para o controle dos itens filhos e mesclados}
    C_ItensTrocouItem.Value := C_ItensITEM.Value <> C_ItensOldItem.Value;

    C_ItensOldItem.Value := C_ItensItem.Value;

    {Registrando o Desconto - Diferenca do Preço Tabela pelo Preço digitado. O valor do Desconto já ficará negativo}
    if (C_ItensI_TipoItem.Value in [1, 2, 3]) and (C_ItensPrecoTabela.Value > 0) and (C_TabelaTIPOPADRAO.value <> 6) then
        begin
            C_ItensDesconto.Value := -(C_ItensPrecoTabela.asFloat - C_ItensPreco.asFloat);
            if C_ItensDesconto.Value > 0 then
                C_ItensDesconto.Value := 0;
        end;

    // Felipe - Adicionado em 23/09/2014 (Calcula valor de Pis e Cofins e atribui valor para os campos de SaidasItens)
    if (C_TiposMovimentoCALCULAPISCOFINS.Value = 'S') then
        begin
            C_ItensVALORPISPROD.Value := Truncar((C_ItensSubTotal.Value * C_ItensALIQPIS.Value) / 100, 2);
            C_ItensVALORCOFINSPROD.Value := Truncar((C_ItensSubTotal.Value * C_ItensALIQCOFINS.Value) / 100, 2);
        end;
end;

procedure TDMDevolucoesFornecedores.C_ItensIPIChange(Sender: TField);
begin
    inherited;
    if ((C_TabelaPOSSUIIPI.Value = 'S') and (C_ItensIPI.Value <> null)) then
        begin
            C_ItensVALORIPIPROD.Value := Truncar((C_ItensSubTotal.Value * C_ItensIPI.Value) / 100, 2);
        end;
end;

procedure TDMDevolucoesFornecedores.C_ItensBASECALCICMSPRODChange(
    Sender: TField);
begin
    //inherited;
    if (C_TabelaPossuiICMS.value = 'S') and (C_ItensSITUACAOECF.Value = 'T') then
        C_ItensValorICMSProd.value := Truncar((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100, 2);
end;

function TDMDevolucoesFornecedores.BaixoEstoque;
begin
    with Q_SQL do
        begin
            Close;
            SQL.Text := 'select i.fator from itensunidades i where i.item = :item and i.unidade =:unidade ';
            params[0].asInteger := nItem;
            params[1].asString := sUnidade;
            Open;
            Result := (C_ItensI_Estoque.Value / iif(fields[0].Value <> null, fields[0].Value, 1) * C_ItensI_FATORUNDVENDA.Value) - C_ItensQuantidade.Value;
        end;

end;

procedure TDMDevolucoesFornecedores.C_ItensALIQICMSChange(Sender: TField);
begin
    //inherited;
    if (C_TabelaPossuiICMS.value = 'S') and (C_ItensSITUACAOECF.Value = 'T') then
        C_ItensValorICMSProd.value := Truncar((C_ItensBaseCalcICMSProd.value * C_ItensAliqICMS.value) / 100, 2);
end;

procedure TDMDevolucoesFornecedores.RecalcularItens();
var
    TempDS: TClientDataSet;
    nTotalProdutos, nTotalItens, nTotal123, nBasePeNota, nJurosDescSub: Currency;
    nVolumes: double;
    nValorIsentas, nValorOutrasICMS, nValorIPI: currency;
    nBaseCalcICMS, nValorICMS, nValorICMS_Calc_ST: currency;
    nBaseSubst, nValorSubst, nPesoBruto, nPesoLiquido: Currency;
begin
    //inherited;

    TempDS := TClientDataSet.Create(self);

    with TempDS do
        begin
            CloneCursor(C_Itens, true);

            nVolumes := 0;

            nTotalProdutos := 0;
            nTotalItens := 0;
            nTotal123 := 0;
            nBasePeNota := 0;
            nJurosDescSub := 0;

            nBaseCalcICMS := 0;
            nValorICMS := 0;
            nValorICMS_Calc_ST := 0;
            nValorIsentas := 0;
            nValorOutrasICMS := 0;
            nValorIPI := 0;
            nBaseSubst := 0;
            nValorSubst := 0;
            nPesoBruto := 0;
            nPesoLiquido := 0;

            First;
            while not Eof do
                begin
                    if not (FieldByName('I_TipoItem').asInteger in [7]) then
                        nTotalItens := nTotalItens + FieldByName('SubTotal').asCurrency;

                    if FieldByName('I_TipoItem').asInteger in [1, 2, 3] then
                        nTotal123 := nTotal123 + FieldByName('SubTotal').asCurrency
                    else if (FieldByName('I_TipoItem').asInteger = 6) and (FieldByName('I_Percentual').asFloat = 0) then
                        nBasePeNota := nBasePeNota + FieldByName('SubTotal').asCurrency;

                    if (FieldByName('I_TipoItem').asInteger in [1, 2]) then
                        nTotalProdutos := nTotalProdutos + FieldByName('SubTotal').asCurrency + nJurosDescSub;

                    {Volumes}
                {Se a unidade é inteira considera a quantidade, caso contrario, considera-se como um volume.
                 Isto ocorre por exemplo, com queijo, carne, etc. onde a unidade é kilo, mas o volume é um só.}
                    if FieldByName('I_TipoItem').asInteger = 1 then
                        nVolumes := nVolumes + IIF(FieldByName('UnidadeInteira').AsString = 'S', FieldByName('Quantidade').asFloat, 1);

                    nBaseSubst := nBaseSubst + FieldByName('BaseCalcSubstProd').asCurrency;
                    nValorSubst := nValorSubst + FieldByName('VALORICMSSUBSTPROD').asCurrency;
                    nValorIPI := nValorIPI + FieldByName('ValorIPIProd').asCurrency;

                    if (C_ItensSITUACAOECF.Value = 'I') then
                        nValorIsentas := nValorIsentas + FieldByName('SubTotal').asCurrency
                    else
                        begin
                            if C_TabelaPossuiICMS.Value = 'S' then
                                begin
                                    nBaseCalcICMS := nBaseCalcICMS + FieldByName('BaseCalcICMSProd').asCurrency;
                                    nValorICMS := nValorICMS + FieldByName('ValorICMSProd').asCurrency;
                                    nValorOutrasICMS := nValorOutrasICMS + (FieldByName('SubTotal').asCurrency - FieldByName('BaseCalcICMSProd').asCurrency);

                                    if FieldByName('SituacaoECF').AsString = 'F' then
                                        nValorICMS_Calc_ST := nValorICMS_Calc_ST + (FieldByName('subtotalitem').asCurrency * FieldByName('AliqICMS').asCurrency) / 100;
                                end;
                        end;

                    if CalcularPesoAutomatico then
                        begin
                            nPesoBruto := nPesoBruto + (FieldByName('Quantidade').asfloat * FieldByName('Fator').asfloat * FieldByName('I_PesoBruto').asFloat);
                            nPesoLiquido := nPesoLiquido + (FieldByName('Quantidade').asfloat * FieldByName('Fator').asfloat * FieldByName('I_PesoLiquido').asFloat);
                        end;

                    Next;
                end;

            if C_Tabela.State = dsBrowse then
                C_Tabela.Edit;

            C_TabelaTOTALITENS.Value := nTotalItens;
            C_TabelaTOTALPRODUTOS.Value := nTotalProdutos;
            C_TabelaTOTALITENS123.Value := nTotal123;
            C_TabelaDESCONTOITENS.Value := nBasePeNota;

            C_TabelaBASECALCICMS.Value := nBaseCalcICMS;
            C_TabelaVALORICMS.Value := nValorICMS;
            C_TabelaBASECALCSUBST.Value := nBaseSubst;
            C_TabelaVALORICMSSUBST.Value := nValorSubst;
            C_TabelaVALORIPI.Value := nValorIPI;

            if CalcularPesoAutomatico then
                begin
                    C_TabelaPesoBruto.value := nPesoBruto;
                    C_TabelaPesoLiquido.value := nPesoLiquido;
                end;

            if (volumeEdit > 0) then
                nVolumes := volumeEdit;

            C_TabelaVolumes.asFloat := nVolumes;
        end;
    TempDS.Free;
end;

procedure TDMDevolucoesFornecedores.C_ItensAfterPost(DataSet: TDataSet);
begin
    //inherited;
    RecalcularItens();
end;

end.

