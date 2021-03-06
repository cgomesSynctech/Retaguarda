unit Dlg_FormacaoCusto;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, TS_Shape, dxCntner, dxEditor, dxExEdtr,
    dxEdLib, TS_CalcEdit, DBCtrls, TS_DBText, DB;

const
    PM_Atualizar = WM_User + 2424;

type
    TDlgFormacaoCusto = class(TFrmModeloCadastros)
        TS_Label1: TTS_Label;
        lbFrete: TTS_Label;
        lbICMSCompra: TTS_Label;
        TS_Label4: TTS_Label;
        TS_Label5: TTS_Label;
        lbImpostosFederais: TTS_Label;
        TS_Label7: TTS_Label;
        lbICMSVenda: TTS_Label;
        lbIPIVenda: TTS_Label;
        TS_Label10: TTS_Label;
        TS_Label11: TTS_Label;
        TS_Label12: TTS_Label;
        TS_Label13: TTS_Label;
        TS_Shape36: TTS_Shape;
        dxfLabel1: TdxfLabel;
        dxfLabel2: TdxfLabel;
        TS_Shape1: TTS_Shape;
        lbTipoTributacao: TTS_Label;
        TS_Shape3: TTS_Shape;
        TS_Label15: TTS_Label;
        TS_Label16: TTS_Label;
        TS_Label17: TTS_Label;
        dfPrecoCompra: TTS_CalcEdit;
        dfFrete: TTS_CalcEdit;
        dfICMSCompra: TTS_CalcEdit;
        dfIPICompra: TTS_CalcEdit;
        dfCustos: TTS_CalcEdit;
        dfLucro: TTS_CalcEdit;
        dfPrecoCalc: TTS_CalcEdit;
        dfICMSAplicado: TTS_CalcEdit;
        dfIPIVenda: TTS_CalcEdit;
        dfDespesaFixa: TTS_CalcEdit;
        dfCartoes: TTS_CalcEdit;
        dfComissao: TTS_CalcEdit;
        dfPrecoMinimo: TTS_CalcEdit;
        dfMPV: TTS_CalcEdit;
        lbCustoContabil: TTS_Label;
        TS_Shape2: TTS_Shape;
        dxfLabel3: TdxfLabel;
        TS_Label18: TTS_Label;
        TS_DBText2: TTS_DBText;
        dfBonificacao: TTS_CalcEdit;
        dfCustoFinanceiro: TTS_CalcEdit;
        TS_Label19: TTS_Label;
        TS_Label20: TTS_Label;
        dfrBonificacao: TTS_CalcEdit;
        dfrCustoFinanceiro: TTS_CalcEdit;
        dfrICMSCompra: TTS_CalcEdit;
        dfrIPICompra: TTS_CalcEdit;
        dfrImpostos: TTS_CalcEdit;
        dfrICMSAplicado: TTS_CalcEdit;
        dfrIPIVenda: TTS_CalcEdit;
        dfrDespesasFixas: TTS_CalcEdit;
        dfrCartoes: TTS_CalcEdit;
        dfrComissoes: TTS_CalcEdit;
        dfrCustos: TTS_CalcEdit;
        dfrLucro: TTS_CalcEdit;
        TS_Label6: TTS_Label;
        TS_Label8: TTS_Label;
        TS_Label9: TTS_Label;
        TS_Label21: TTS_Label;
        TS_Label22: TTS_Label;
        TS_Label23: TTS_Label;
        TS_Label24: TTS_Label;
        TS_Label25: TTS_Label;
        TS_Label26: TTS_Label;
        TS_Label27: TTS_Label;
        TS_Label28: TTS_Label;
        TS_Label29: TTS_Label;
        TS_Label30: TTS_Label;
        TS_Label31: TTS_Label;
        TS_Label32: TTS_Label;
        TS_Label33: TTS_Label;
        TS_Label34: TTS_Label;
        TS_Label35: TTS_Label;
        dfICMSFrete: TTS_CalcEdit;
        dfrICMSFrete: TTS_CalcEdit;
        lbICMSFrete: TTS_Label;
        lbFormulaCusto: TTS_Label;
        lbFormulaPreco: TTS_Label;
        TS_Label14: TTS_Label;
        dfImpostos: TTS_CalcEdit;
        TS_Label37: TTS_Label;
        TS_Label38: TTS_Label;
        lbICMSSubstituto: TTS_Label;
        lbImpostosFederaisVenda: TTS_Label;
        dfrImpostosVenda: TTS_CalcEdit;
        dfICMSSubstitutoCompra: TTS_CalcEdit;
        dfImpostosVenda: TTS_CalcEdit;
        dfREducaoBC: TTS_CalcEdit;
        lblReducaoBC: TTS_Label;
        dfMVA: TTS_CalcEdit;
        lbMVA: TTS_Label;
        dfrICMSSubstitutoCompra: TTS_CalcEdit;
        dfrReducaoBC: TTS_CalcEdit;
        dfrMVA: TTS_CalcEdit;
        TS_Label2: TTS_Label;
    dfPrecoNota: TTS_CalcEdit;
    TS_Label3: TTS_Label;
        procedure FormKeyPress(Sender: TObject; var Key: Char);
        procedure FormShow(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure setConfiguracoesCampos();
        procedure FormCreate(Sender: TObject);
        procedure dfFreteKeyPress(Sender: TObject; var Key: Char);
    procedure dfPrecoNotaEnter(Sender: TObject);
    private
        sTributacao: string;
        nCustoContabil: Currency;
        xItem: Integer;
        compencaCusto : double;
        procedure Atualizar(bLucro: Boolean);
        procedure AtualizarMsg(var Msg: TMessage); message PM_Atualizar;

    public
        { Public declarations }

    end;

var
    DlgFormacaoCusto: TDlgFormacaoCusto;

implementation
uses DM_Projeto, DM_Itens, Funcoes;

{$R *.dfm}

procedure TDlgFormacaoCusto.FormShow(Sender: TObject);
begin
    inherited;
    with DMProjeto.Q_Sql do
        begin
            Close;
            Sql.Text := ' select precocompra,frete,bonificacao,custofinanceiro,icmscompra,ipicompra,icmssubstituto,despesas,encargos,comissao,custosadicionais,lucro,impfederalsaida, ' +
                ' icmsfrete,impfederalentrada,icmsvenda,ipivenda,mva,reducaocst from formacaocustos f where item = ' + IntToStr(xItem);
            Open;
            if RecordCount > 0 then
                begin
                    dfPrecoCompra.Value := Fields[00].Value;
                    dfFrete.Value := Fields[01].Value;
                    dfBonificacao.Value := Fields[02].Value;
                    dfCustoFinanceiro.Value := Fields[03].Value;
                    dfICMSCompra.Value := Fields[04].Value;
                    dfIPICompra.Value := Fields[05].Value;
                    dfICMSSubstitutoCompra.Value := Fields[06].Value;
                    dfDespesaFixa.Value := Fields[07].value;
                    dfCartoes.Value := Fields[08].value;
                    dfComissao.Value := Fields[09].value;
                    dfCustos.value := Fields[10].Value;
                    dfLucro.Value := Fields[11].Value;
                    dfImpostosVenda.Value := Fields[12].value;
                    dfICMSFrete.Value := Fields[13].Value;
                    dfImpostos.Value := Fields[14].value;
                    dfICMSAplicado.Value := Fields[15].Value;
                    dfIPIVenda.Value := Fields[16].Value;
                    dfMVA.Value := Fields[17].Value;
                    dfREducaoBC.Value := Fields[18].Value;

                end
            else
                begin
                    dfPrecoCompra.Value := 0.00;
                    dfFrete.Value := 0.00;
                    dfBonificacao.Value := 0.00;
                    dfCustoFinanceiro.Value := 0.00;
                    dfICMSCompra.Value := 0.00;
                    dfIPICompra.Value := 0.00;
                    dfICMSSubstitutoCompra.Value := 0.00;
                    dfImpostos.Value := 0.00;
                    dfICMSAplicado.Value := 0.00;
                    dfIPIVenda.Value := 0.00;
                    dfDespesaFixa.Value := 0.00;
                    dfCartoes.Value := 0.00;
                    dfComissao.Value := 0.00;
                    dfCustos.value := 0.00;
                    dfLucro.Value := 0.00;
                    dfImpostosVenda.Value := 0.00;
                    dfICMSFrete.Value := 0.00;
                    dfMVA.Value := 0.00;
                    dfREducaoBC.Value := 0.00;

                    with DMItens do
                        begin
                            dfPrecoCompra.Value := C_TabelaPRECOCOMPRA.Value;
                            dfImpostos.Value := C_GruposIMPOSTOSFEDERAIS.Value;
                            dfImpostosVenda.vALUE := C_GruposIMPOSTOSFEDERAIS.Value;
                            dfICMSAplicado.Value := C_GruposALIQICMS.Value;
                            dfIPIVenda.Value := C_GruposIPIVenda.Value;
                            dfDespesaFixa.Value := C_GruposDESPESASFIXAS.Value;
                            dfCartoes.Value := C_GruposENCARGOSCARTOES.Value;
                            dfComissao.Value := C_TabelaicComissaoAplic.Value;
                            dfCustos.Value := C_GruposCUSTODESPESAS.Value;
                            dfLucro.Value := C_GruposFATORLUCRO.Value;
                            dfMVA.Value := C_TabelaicTVA.Value;
                            dfREducaoBC.Value := C_TabelaREDUCAOCST.Value;

                        end;
                end;
        end;

    setConfiguracoesCampos();
    FormStorage.RestoreFormPlacement;

end;

procedure TDlgFormacaoCusto.FormKeyPress(Sender: TObject; var Key: Char);
var
    bPrecoCalc: Integer;
begin
    inherited;
    try
        bPrecoCalc := IIF(ActiveControl = dfPrecoCalc, 1, 0);

        if Key = #13 then
            Perform(WM_NEXTDLGCTL, 0, 0);

        Application.ProcessMessages;

        PostMessage(Handle, PM_Atualizar, bPrecoCalc, 0);
    except
    end;
end;

procedure TDlgFormacaoCusto.setConfiguracoesCampos();
begin
    lbMVA.Enabled := true;
    dfMVA.Enabled := true;
    dfImpostos.Enabled := true;
    dfREducaoBC.Enabled := true;
    lblReducaoBC.Enabled := true;
    dfICMSFrete.Enabled := true;
    lbICMSFrete.Enabled := true;
    dfICMSSubstitutoCompra.Enabled := true;
    lbICMSSubstituto.Enabled := true;


    if (dfPrecoNota.Value <> dfPrecoCompra.Value) then begin
      try

         compencaCusto := dfPrecoCompra.Value - dfPrecoNota.Value;

      except
         compencaCusto := 0.00
      end;

    end else
      compencaCusto := 0.00;

    if DMProjeto.sTipoTributEmpresa = 'S' then lbTipoTributacao.Caption := 'Simples';
    if DMProjeto.sTipoTributEmpresa = 'A' then lbTipoTributacao.Caption := 'Lucro Arbitrado';

    if DMProjeto.sTipoTributEmpresa = 'N' then
        begin
            sTributacao := 'Simples Nacional';
            lbFormulaCusto.Caption := '(A +(M - B) +E +G +F +J +I -D)';
            lbFormulaPreco.Caption := 'L/(1-((J+K+L+M+N+O+P+H+I)/100))';
            lbImpostosFederais.Caption := 'Tabela Simples:';
            lbImpostosFederaisVenda.Caption := 'Tabela Simples:';
            lbICMSCompra.Caption := 'ICMS Entre UFs:';
            dfICMSFrete.Enabled := false;
            lbICMSFrete.Enabled := false;
            lbICMSVenda.Enabled := false;
            lbImpostosFederais.Enabled := false;
            dfImpostos.Enabled := false;
            dfImpostos.Value := 0.00;
            dfrImpostos.Value := 0.00;
            dfICMSFrete.Value := 0.00;
            dfrICMSFrete.Value := 0.00;

            lbICMSFrete.Enabled := false;
            dfICMSAplicado.Enabled := false;
            dfICMSAplicado.Value := 0.00;
            dfrICMSAplicado.Value := 0.00;

        end;
    if DMProjeto.sTipoTributEmpresa = 'P' then
        begin
            sTributacao := 'Lucro Presumido';
            lbFormulaCusto.Caption := '(A +B +E +J - (C +D +F))';
            lbFormulaPreco.Caption := 'L/(1-((J+K+L+M+N+O+P+H+I)/100))';
            lbImpostosFederais.Caption := 'Impostos Federais:';
            lbImpostosFederaisVenda.Caption := 'Impostos Federais:';
            dfImpostos.Enabled := false;
            dfImpostos.Value := 0.00;
            dfrImpostos.Value := 0.00;

        end;
    if DMProjeto.sTipoTributEmpresa = 'R' then
        begin
            sTributacao := 'Lucro Real';
            lbFormulaCusto.Caption := '(A +B +E +J - (C +D +F +K))';
            lbFormulaPreco.Caption := 'L/(1-((J+K+L+M+N+O+P+H+I)/100))';
        end;
    if (DMItens.C_TabelaicCST.Value = '020') then
        begin
            lbTipoTributacao.Caption := sTributacao + ', Redu��o Base Calculo.';
            dfMVA.Value := 0;
            dfrMVA.Value := 0;
            lbMVA.Enabled := false;
            dfrMVA.Enabled := false;
            dfMVA.Enabled := false;
            dfICMSSubstitutoCompra.Enabled := false;
            lbICMSSubstituto.Enabled := false;
        end
    else if (DMItens.C_TabelaSituacaoECF.Value = 'F') then
        begin
            lbTipoTributacao.Caption := sTributacao + ', Substitui��o Tributaria.';
            dfREducaoBC.Value := 0;
            dfrREducaoBC.Value := 0;
            dfREducaoBC.Enabled := false;
            dfrREducaoBC.Enabled := false;
            lblReducaoBC.Enabled := false;
        end
    else if (DMItens.C_TabelaSituacaoECF.Value = 'T') then
        begin
            lbTipoTributacao.Caption := sTributacao + ', Tributado Integralmente.';
            dfREducaoBC.Value := 0;
            dfrREducaoBC.Value := 0;
            dfREducaoBC.Enabled := false;
            dfrREducaoBC.Enabled := false;
            lblReducaoBC.Enabled := false;
            dfMVA.Value := 0;
            dfrMVA.Value := 0;
            lbMVA.Enabled := false;
            dfrMVA.Enabled := false;
            dfMVA.Enabled := false;
            dfICMSSubstitutoCompra.Enabled := false;
            lbICMSSubstituto.Enabled := false;
        end
    else if ((DMItens.C_TabelaSituacaoECF.Value = 'I') or (DMItens.C_TabelaSituacaoECF.Value = 'N')) then
        begin
            lbTipoTributacao.Caption := sTributacao + ', Isento, N�o Incid�ncia.';

            dfICMSCompra.Value := 0.00;
            dfrICMSCompra.Value := 0.00;
            lbICMSCompra.Enabled := false;
            dfICMSCompra.Enabled := false;
            dfrICMSCompra.Enabled := false;

            dfICMSAplicado.Value := 0.00;
            dfrICMSAplicado.Value := 0.00;
            lbICMSVenda.Enabled := false;
            dfICMSAplicado.Enabled := false;
            dfrICMSAplicado.Enabled := false;

            dfREducaoBC.Value := 0.00;
            dfrREducaoBC.Value := 0.00;
            dfREducaoBC.Enabled := false;
            dfrREducaoBC.Enabled := false;
            lblReducaoBC.Enabled := false;

            dfMVA.Value := 0;
            dfrMVA.Value := 0;
            lbMVA.Enabled := false;
            dfrMVA.Enabled := false;
            dfMVA.Enabled := false;

            dfICMSSubstitutoCompra.Enabled := false;
            lbICMSSubstituto.Enabled := false;
        end;

end;

procedure TDlgFormacaoCusto.Atualizar;
var
    nSemLucro, nComLucro, nICMSAplicEntrada, nICMSAplicSaida,
        nTVA, baseCalculoST, nICMS_ST, nPerICMSFrete: Double;
    nImpostosFederais: Currency;
begin

    Application.ProcessMessages;



    dfrICMSFrete.Value := (dfFrete.Value * (dfICMSFrete.Value / 100));
    dfrBonificacao.Value := (dfPrecoNota.Value * (dfBonificacao.Value / 100));
    dfrCustoFinanceiro.Value := (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100));
    dfrICMSCompra.Value := (dfPrecoNota.Value * (dfICMSCompra.Value / 100));
    dfrIPICompra.Value := (dfPrecoNota.Value * (dfIPICompra.Value / 100));
    dfrICMSSubstitutoCompra.Value := (dfPrecoNota.Value * (dfrICMSSubstitutoCompra.Value / 100));
    dfrMVA.Value := (dfPrecoNota.Value * (dfMVA.Value / 100));
    dfrReducaoBC.Value := (dfPrecoNota.Value * (dfrReducaoBC.Value / 100));
    dfrImpostos.Value := (dfPrecoNota.Value * (dfImpostos.Value / 100));
    dfrICMSAplicado.Value := (dfPrecoCalc.Value * (dfICMSAplicado.Value / 100));
    dfrIPIVenda.Value := (dfPrecoCalc.Value * (dfIPIVenda.Value / 100));
    dfrDespesasFixas.Value := (dfPrecoCalc.Value * (dfDespesaFixa.Value / 100));
    dfrImpostosVenda.Value := (dfPrecoCalc.Value * (dfImpostosVenda.Value / 100));
    dfrCartoes.Value := (dfPrecoCalc.Value * (dfCartoes.Value / 100));
    dfrComissoes.Value := (dfPrecoCalc.Value * (dfComissao.Value / 100));
    dfrCustos.Value := (dfPrecoCalc.Value * (dfCustos.Value / 100));
    dfrLucro.Value := (dfPrecoCalc.Value * (dfLucro.Value / 100));
    DMProjeto.nICMSInterno := DMProjeto.AliquotaEstado(DMProjeto.sUFEmpresa);
    {Pegando o Valor do Percentual do Frete para o Item}
    try
        nPerICMSFrete := (dfrICMSFrete.Value / dfPrecoNota.Value) * 100.00;
    except
        nPerICMSFrete := 0;
    end;

    setConfiguracoesCampos();

    //Simples Nacional
    if (DMProjeto.sTipoTributEmpresa = 'N') then
        begin
            try
                //Simples Nacional - Calculo para produto com redu��o de Base de Calculo
                if (DMItens.C_TabelaicCST.Value = '020') then
                    begin
                        nICMSAplicEntrada := (DMPRojeto.nICMSInterno - dfICMSCompra.Value) - ((DMPRojeto.nICMSInterno - dfICMSCompra.Value) * (dfREducaoBC.Value / 100.00));
                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + ((dfPrecoNota.Value  + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))) * (nICMSAplicEntrada / 100.00))
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * (dfBonificacao.Value / 100.00));
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end
                else if (DMItens.C_TabelaSituacaoECF.Value = 'F') then
                    begin
                        //Simples Nacional - Calculo para Produto com Substitui��o
                        nICMSAplicEntrada := 0.00;
                        baseCalculoST := dfPrecoNota.Value
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfFrete.Value);
                        if (dfICMSCompra.Value = 0) then
                            DMProjeto.nICMSInterno := 0;

                        nTVA := ((baseCalculoST * (1 + (dfMVA.Value / 100.00))) * (DMProjeto.nICMSInterno / 100.00)) - (dfPrecoNota.Value * (dfICMSCompra.Value / 100.00));

                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + ((dfPrecoNota.Value  + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))) * (nICMSAplicEntrada / 100.00))
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            + nTVA
                            - (dfPrecoNota.Value * (dfBonificacao.Value / 100.00));
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end
                else if ((DMItens.C_TabelaSituacaoECF.Value = 'I') or (DMItens.C_TabelaSituacaoECF.Value = 'N')) then
                    begin
                        //Simples Nacional - Isento Ou N�o Tributadd
                        nICMSAplicEntrada := 0.00;
                        baseCalculoST := dfPrecoNota.Value

                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfFrete.Value);
                        if (dfICMSCompra.Value = 0) then
                            DMProjeto.nICMSInterno := 0;

                        nCustoContabil := (dfPrecoNota.Value)
                            
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * (dfBonificacao.Value / 100.00));
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end
                else
                    begin
                        //Simples Nacional - Calculo Para o Produto Tributado
                        if (dfICMSCompra.Value > 0) then
                            nICMSAplicEntrada := DMPRojeto.nICMSInterno - dfICMSCompra.Value
                        else
                            nICMSAplicEntrada := 0.00;

                        nCustoContabil := (dfPrecoNota.Value)

                            + (dfFrete.Value) //Digitado em R$
                            + ((dfPrecoNota.Value  + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))) * (nICMSAplicEntrada / 100.00))
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * (dfBonificacao.Value / 100.00));
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end;

                {Simples Nacional - Definindo o Pre�o de Venda}
                nSemLucro := dfDespesaFixa.Value
                    + dfImpostosVenda.value
                    + dfCartoes.Value
                    + dfComissao.Value
                    + dfCustos.Value
                    + dfIPIVenda.Value;
                nSemLucro := IIF(nSemLucro >= 100.00, 99.999999, nSemLucro);

                if bLucro then
                    begin
                        nComLucro := (((dfPrecoCalc.Value - (nCustoContabil + compencaCusto)) / dfPrecoCalc.Value) - (nSemLucro / 100)) * 100;
                        nComLucro := Arredondar(nComLucro,2);
                        dfLucro.Value := Truncar(nComLucro,2);
                        exit;
                    end;

                nComLucro := nSemLucro + dfLucro.Value;
                nComLucro := IIF(nComLucro >= 100, 99.999999, nComLucro);
                nSemLucro := (100 - nSemLucro) / 100;
                nComLucro := (100 - nComLucro) / 100;
                dfMPV.Value := (nCustoContabil + compencaCusto) / nSemLucro;
                dfPrecoCalc.Value := ((nCustoContabil + compencaCusto) / nComLucro);

                if (dfPrecoCalc.Value < DMItens.C_GruposMENORVALORVENDA.Value) then
                    dfPrecoCalc.Value := DMItens.C_GruposMENORVALORVENDA.Value;
                dfPrecoMinimo.Value := dfPrecoCalc.Value * (1 - (DMItens.C_TabelaicDescontoMaximo.Value / 100));
                lbCustoContabil.Caption := FormatCurr('##,##0.000', nCustoContabil);
            except on E: Exception do
                    raise Exception.Create('Erro ao tentar efetuar calculo de custos do item!' + #13 + e.Message);
            end;
        end;

    //Lucro Presumido
    if (DMProjeto.sTipoTributEmpresa = 'P') then
        begin
            try
                //Lucro Presumido- Calculo para produto com redu��o de Base de Calculo
                if (DMItens.C_TabelaicCST.Value = '020') then
                    begin
                        nICMSAplicEntrada := (dfICMSCompra.Value - ((dfICMSCompra.Value * dfREducaoBC.Value) / 100.00));
                        nICMSAplicSaida := (dfICMSAplicado.Value - ((dfICMSAplicado.Value * dfREducaoBC.Value) / 100.00));
                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * ((dfBonificacao.Value + nICMSAplicEntrada + nPerICMSFrete) / 100.00));
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end
                else if ((DMItens.C_TabelaSituacaoECF.Value = 'I') or (DMItens.C_TabelaSituacaoECF.Value = 'N')) then
                    begin
                        //Lucro Presumido-- Isento Ou N�o Tributadd
                        nICMSAplicEntrada := 0.00;
                        nICMSAplicSaida := 0.00;
                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * (dfBonificacao.Value) / 100.00);
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end
                else if (DMItens.C_TabelaSituacaoECF.Value = 'F') then
                    begin
                        //Lucro Presumido - Calculo para Produto com Substitui��o
                        nICMSAplicEntrada := 0.00;
                        nICMSAplicSaida := 0.00;
                        baseCalculoST := dfPrecoNota.Value
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfFrete.Value);
                        if (dfICMSCompra.Value = 0) then
                            DMProjeto.nICMSInterno := 0;
                        nTVA := ((baseCalculoST * (1 + (dfMVA.Value / 100.00))) * (DMProjeto.nICMSInterno / 100.00)) - (dfPrecoNota.Value * (dfICMSCompra.Value / 100.00));

                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            + nTVA
                            - (dfPrecoNota.Value * (dfBonificacao.Value + nPerICMSFrete) / 100.00);
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));

                    end
                else
                    begin
                        //Lucro Presumido - Calculo Para o Produto Tributado
                        nICMSAplicEntrada := dfICMSCompra.Value;
                        nICMSAplicSaida := dfICMSAplicado.Value;
                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * (dfBonificacao.Value + nICMSAplicEntrada + nPerICMSFrete) / 100.00);
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end;


                {Lucro Presumido  - Definindo o Pre�o de Venda}
                nSemLucro := nICMSAplicSaida //J� est� considerando Reducao, Substituicao, Isens�o, etc.
                + dfIPIVenda.Value
                    + dfImpostosVenda.value
                    + dfDespesaFixa.Value
                    + dfCartoes.Value
                    + dfComissao.Value
                    + dfCustos.Value;



                nSemLucro := IIF(nSemLucro >= 100.00, 99.999999, nSemLucro);

                if bLucro then
                    begin
                        //nComLucro := (((dfPrecoCalc.Value - nCustoContabil + compencaCusto) / dfPrecoCalc.Value) - (nSemLucro / 100)) * 100;
                        nComLucro := (((dfPrecoCalc.Value - (nCustoContabil + compencaCusto)) / dfPrecoCalc.Value) - (nSemLucro / 100)) * 100;
                        dfLucro.Value := nComLucro;
                        exit;
                    end;

                nComLucro := nSemLucro + dfLucro.Value;
                nComLucro := IIF(nComLucro >= 100, 99.999999, nComLucro);
                nSemLucro := (100 - nSemLucro) / 100;
                nComLucro := (100 - nComLucro) / 100;
                dfMPV.Value := (nCustoContabil+ compencaCusto) / nSemLucro;
                dfPrecoCalc.Value := ((nCustoContabil+ compencaCusto) / nComLucro);

                if (dfPrecoCalc.Value < DMItens.C_GruposMENORVALORVENDA.Value) then
                    dfPrecoCalc.Value := DMItens.C_GruposMENORVALORVENDA.Value;
                dfPrecoMinimo.Value := dfPrecoCalc.Value * (1 - (DMItens.C_TabelaicDescontoMaximo.Value / 100));
                lbCustoContabil.Caption := FormatCurr('##,##0.000', nCustoContabil);
            except on E: Exception do
                    raise Exception.Create('Erro ao tentar efetuar calculo de custos do item!' + #13 + e.Message);
            end;
        end;

    //Lucro Real
    if (DMProjeto.sTipoTributEmpresa = 'R') then
        begin
            try
                //Lucro Real - Calculo para produto com redu��o de Base de Calculo
                if (DMItens.C_TabelaicReducaoCST.Value > 0) and (DMItens.C_TabelaicCST.Value = '020') then
                    begin
                        nICMSAplicSaida := (dfICMSAplicado.Value - ((dfICMSAplicado.Value * dfREducaoBC.Value) / 100.00));
                        nICMSAplicEntrada := (dfICMSCompra.Value - ((dfICMSCompra.Value * dfREducaoBC.Value) / 100.00));
                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * (dfBonificacao.Value + nICMSAplicEntrada + nPerICMSFrete + dfImpostos.Value) / 100.00);
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));

                    end
                else if (DMItens.C_TabelaSituacaoECF.Value = 'F') then
                    begin
                        //Lucro Real - Calculo para Produto com Substitui��o
                        nICMSAplicEntrada := 0.00;
                        nICMSAplicSaida := dfICMSAplicado.Value;
                        baseCalculoST := dfPrecoNota.Value
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfFrete.Value);
                        if (dfICMSCompra.Value = 0) then
                            DMProjeto.nICMSInterno := 0;
                        nTVA := ((baseCalculoST * (1 + (dfMVA.Value / 100.00))) * (DMProjeto.nICMSInterno / 100.00)) - (dfPrecoNota.Value * (dfICMSCompra.Value / 100.00));

                        nICMSAplicEntrada := dfICMSCompra.Value;
                        nICMSAplicSaida := 0.00;
                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            + nTVA
                            - (dfPrecoNota.Value * (dfBonificacao.Value + dfImpostos.Value) / 100.00);
//                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
//                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end
                else if ((DMItens.C_TabelaSituacaoECF.Value = 'I') or (DMItens.C_TabelaSituacaoECF.Value = 'N')) then
                    begin
                        //Lucro Real - Calculo Para o Produto Isento ou N�o Tributado
                        nICMSAplicEntrada := 0.00;
                        nICMSAplicSaida := 0.00;
                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * (dfBonificacao.Value + nICMSAplicEntrada + dfImpostos.Value) / 100.00);
                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end
                else
                    begin
                        //Lucro Real - Calculo Para o Produto Tributado
                        nICMSAplicEntrada := dfICMSCompra.Value;
                        nICMSAplicSaida := dfICMSAplicado.Value;
                        nCustoContabil := (dfPrecoNota.Value)
                            + (dfFrete.Value) //Digitado em R$
                            + (dfPrecoNota.Value * (dfIPICompra.Value / 100.00))
                            + (dfPrecoNota.Value * (dfCustoFinanceiro.Value / 100.00))
                            - (dfPrecoNota.Value * (dfBonificacao.Value + nICMSAplicEntrada + nPerICMSFrete + dfImpostos.Value) / 100.00);
                        if DMItens.C_TabelaCompensaCusto.Value > 0 then
                            nCustoContabil := nCustoContabil + (dfPrecoNota.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
                    end;




                {Lucro Real  - Definindo o Pre�o de Venda}
                nSemLucro := nICMSAplicSaida //J� est� considerando Reducao, Substituicao, Isens�o, etc.
                + dfIPIVenda.Value
                    + dfImpostosVenda.value
                    + dfDespesaFixa.Value
                    + dfCartoes.Value
                    + dfComissao.Value
                    + dfCustos.Value;
                nSemLucro := IIF(nSemLucro >= 100.00, 99.999999, nSemLucro);

                if bLucro then
                    begin
                        //nComLucro := (((dfPrecoCalc.Value - nCustoContabil + compencaCusto) / dfPrecoCalc.Value) - (nSemLucro / 100)) * 100;
                        nComLucro := (((dfPrecoCalc.Value - (nCustoContabil + compencaCusto) ) / dfPrecoCalc.Value) - (nSemLucro / 100)) * 100;
                        dfLucro.Value := nComLucro;
                        exit;
                    end;

                nComLucro := nSemLucro + dfLucro.Value;
                nComLucro := IIF(nComLucro >= 100, 99.999999, nComLucro);
                nSemLucro := (100 - nSemLucro) / 100;
                nComLucro := (100 - nComLucro) / 100;
                dfMPV.Value := (nCustoContabil + compencaCusto) / nSemLucro;
                dfPrecoCalc.Value := ((nCustoContabil + compencaCusto) / nComLucro);

                if (dfPrecoCalc.Value < DMItens.C_GruposMENORVALORVENDA.Value) then
                    dfPrecoCalc.Value := DMItens.C_GruposMENORVALORVENDA.Value;
                dfPrecoMinimo.Value := dfPrecoCalc.Value * (1 - (DMItens.C_TabelaicDescontoMaximo.Value / 100));
                lbCustoContabil.Caption := FormatCurr('##,##0.000', nCustoContabil);
            except on E: Exception do
                    raise Exception.Create('Erro ao tentar efetuar calculo de custos do item!' + #13 + e.Message);
            end;
        end;
    Application.ProcessMessages;
end;

procedure TDlgFormacaoCusto.AtualizarMsg(var Msg: TMessage);
begin
    Atualizar(Msg.wParam = 1);
end;

procedure TDlgFormacaoCusto.btGravarClick(Sender: TObject);
begin
    inherited;
    {Aplicando Indices}

    if not (DMItens.C_Tabela.State in [dsInsert, dsEdit]) then
        DMItens.C_Tabela.Edit;
    DMItens.C_TabelaicPrecoCalc.value := dfPrecoCalc.Value;
    DMItens.C_TabelaCUSTOMANUAL.Value := nCustoContabil;
    DMItens.C_TabelaCUSTOCONTABIL.Value := nCustoContabil;

    if DMItens.C_TabelaUltimaCompra.Value = 0 then
        with DMItens do
            begin //se n�o houve compra pode substituir campos
                C_TabelaPrecoCompra.Value := dfPrecoCompra.Value;
                C_TabelaCustoMedio.Value := nCustoContabil;
                C_TabelaCustoDespesas.Value := dfCustos.Value;
                C_TabelaFatorLucro.Value := dfLucro.Value;

                if DlgMsg.ShowMsg(8039) = 100 then
                    begin
                        C_TabelaPrecoCompra.Value := dfPrecoCompra.Value;
                        C_TabelaCustoMedio.Value := nCustoContabil;
                        C_TabelaCustoContabil.Value := nCustoContabil;
                        C_TabelaicComissaoAplic.Value := dfComissao.Value;
                        C_TabelaicTVA.Value := dfMVA.Value;
                        C_TabelaREDUCAOCST.Value := dfREducaoBC.Value;
                        C_Grupos.Edit;
                        C_GruposIMPOSTOSFEDERAIS.Value := dfImpostosVenda.Value;
                        C_GruposDESPESASFIXAS.Value := dfDespesaFixa.Value;
                        C_GruposENCARGOSCARTOES.Value := dfCartoes.Value;
                        C_GruposCUSTODESPESAS.Value := dfCustos.Value;
                        C_GruposFATORLUCRO.Value := dfLucro.Value;
                    end;
            end;

    with DMProjeto.Q_Sql do
        begin
            Close;
            Params.Clear;
            Sql.Text := 'Execute Procedure PP_FORMACAOCUSTOS(' +
                ':item,' +
                ':precocompra,' +
                ':frete,' +
                ':bonificacao,' +
                ':custofinanceiro,' +
                ':icmscompra,' +
                ':ipicompra,' +
                ':precocalculado,' +
                ':icmssubstituto,' +
                ':despesas,' +
                ':encargos,' +
                ':comissao,' +
                ':custosadicionais,' +
                ':lucro,' +
                ':impfederalsaida,' +
                ':icmsfrete,' +
                ':impfederalentrada,' +
                ':icmsvenda,' +
                ':ipivenda,' +
                ':mva,' +
                ':reducaocst)';
            ParamByName('item').Value := xItem;
            ParamByName('precocompra').Value := dfPrecoCompra.Value;
            ParamByName('frete').Value := dfFrete.Value;
            ParamByName('bonificacao').Value := dfBonificacao.value;
            ParamByName('custofinanceiro').Value := dfCustoFinanceiro.Value;
            ParamByName('icmscompra').Value := dfICMSCompra.Value;
            ParamByName('ipicompra').Value := dfIPICompra.Value;
            ParamByName('precocalculado').Value := dfPrecoCalc.Value;
            ParamByName('icmssubstituto').Value := dfICMSSubstitutoCompra.Value;
            ParamByName('despesas').Value := dfDespesaFixa.Value;
            ParamByName('encargos').Value := dfCartoes.Value;
            ParamByName('comissao').Value := dfComissao.Value;
            ParamByName('custosadicionais').Value := dfCustos.Value;
            ParamByName('lucro').Value := dflucro.Value;
            ParamByName('impfederalsaida').Value := dfImpostosVenda.Value;
            ParamByName('icmsfrete').Value := dfICMSFrete.Value;
            ParamByName('impfederalentrada').Value := dfImpostos.Value;
            ParamByName('icmsvenda').Value := dfICMSAplicado.Value;
            ParamByName('ipivenda').Value := dfIPIVenda.Value;
            ParamByName('mva').Value := dfMVA.Value;
            ParamByName('reducaocst').Value := dfReducaoBC.Value;
            Prepare;
            ExecSql;
        end;

    ModalResult := 100;

end;

procedure TDlgFormacaoCusto.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    FormStorage.SaveFormPlacement;
end;

procedure TDlgFormacaoCusto.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    xItem := -1;
    if DMProjeto.ExisteParametrosForm then
        if not (DMProjeto.getParametrosForm(0) = null) then
            xItem := DMProjeto.getParametrosForm(0);

end;

procedure TDlgFormacaoCusto.FormCreate(Sender: TObject);
begin
    inherited;
    if (DMProjeto.sTipoTributEmpresa = null) or (DMProjeto.sTipoTributEmpresa = '') then
        begin
            ShowMessage('Falta configurar no cadastro de empresas a sua forma de tributa��o');
            Close();
        end;
end;

procedure TDlgFormacaoCusto.dfFreteKeyPress(Sender: TObject;
    var Key: Char);
var nPercent: Currency;
begin
    inherited;
    if (Key = '%') and (ActiveControl = dfFrete) then
        begin
            Key := #0;
            nPercent := dfFrete.Value;
            dfFrete.Value := (dfPrecoCompra.Value + dfrIPICompra.Value) * (nPercent / 100);
            SelectNext(ActiveControl as TWinControl, True, True);
        end;
end;

procedure TDlgFormacaoCusto.dfPrecoNotaEnter(Sender: TObject);
begin
  inherited;
  if (dfPrecoNota.Value <= 0) then
        dfPrecoNota.Value := dfPrecoCompra.Value;
end;

end.

