unit Dlg_FormacaoCusto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, Placemnt, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_Shape, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, TS_CalcEdit, DBCtrls, TS_DBText, DB;

Const
  PM_Atualizar = WM_User + 2424;

type
  TDlgFormacaoCusto = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
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
    dfrFrete: TTS_CalcEdit;
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
    TS_Label36: TTS_Label;
    lbFormulaCusto: TTS_Label;
    lbFormulaPreco: TTS_Label;
    TS_Label14: TTS_Label;
    dfImpostos: TTS_CalcEdit;
    TS_Label37: TTS_Label;
    TS_Label38: TTS_Label;
    TS_Label39: TTS_Label;
    lbICMSSubstituto: TTS_Label;
    lbImpostosFederaisVenda: TTS_Label;
    dfrImpostosVenda: TTS_CalcEdit;
    TS_Label40: TTS_Label;
    dfICMSSubstitutoCompra: TTS_CalcEdit;
    dfImpostosVenda: TTS_CalcEdit;
    dfREducaoBC: TTS_CalcEdit;
    lblReducaoBC: TTS_Label;
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure FormShow(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private
    nCustoContabil : Currency;
    xItem:Integer;
    procedure Atualizar(bLucro : Boolean);
    procedure AtualizarMsg(var Msg:TMessage); message PM_Atualizar;
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
  With DMProjeto.Q_Sql Do Begin
    Close;
    Sql.Text := ' select F.precocompra, F.frete, F.bonificacao, F.custofinanceiro, F.icmscompra, F.ipicompra,  F.icmssubstituto, F.impfederalentrada, '+
                ' F.icmsvenda, F.ipivenda, F.despesas, F.encargos, F.comissao, F.custosadicionais, F.lucro, F.impfederalsaida, F.precocalculado, '+
                ' f.icmsfrete from formacaocustos f where item = '+IntToStr(xItem);
    Open;
    If RecordCount > 0 Then Begin
      dfPrecoCompra.Value                := Fields[0].Value;
      dfFrete.Value                      := Fields[1].Value;
      dfBonificacao.Value                := Fields[2].Value;
      dfCustoFinanceiro.Value            := Fields[3].Value;
      dfICMSCompra.Value                 := Fields[4].Value;
      dfIPICompra.Value                  := Fields[5].Value;
      dfICMSSubstitutoCompra.Value       := Fields[6].Value;
      dfImpostos.Value                   := Fields[7].value;
      dfICMSAplicado.Value               := Fields[8].Value;
      dfIPIVenda.Value                   := Fields[9].Value;
      dfDespesaFixa.Value                := Fields[10].value;
      dfCartoes.Value                    := Fields[11].value;
      dfComissao.Value                   := Fields[12].value;
      dfCustos.value                     := Fields[13].Value;
      dfLucro.Value                      := Fields[14].Value;
      dfImpostosVenda.Value              := Fields[15].value;
      dfICMSFrete.Value                  := Fields[17].Value;
    End Else Begin
        dfPrecoCompra.Value                := 0.00;
        dfFrete.Value                      := 0.00;
        dfBonificacao.Value                := 0.00;
        dfCustoFinanceiro.Value            := 0.00;
        dfICMSCompra.Value                 := 0.00;
        dfIPICompra.Value                  := 0.00;
        dfICMSSubstitutoCompra.Value       := 0.00;
        dfImpostos.Value                   := 0.00;
        dfICMSAplicado.Value               := 0.00;
        dfIPIVenda.Value                   := 0.00;
        dfDespesaFixa.Value                := 0.00;
        dfCartoes.Value                    := 0.00;
        dfComissao.Value                   := 0.00;
        dfCustos.value                     := 0.00;
        dfLucro.Value                      := 0.00;
        dfImpostosVenda.Value              := 0.00;
        dfICMSFrete.Value                  := 0.00;
        dfICMSSubstitutoCompra.Value       := 0.00;
        dfREducaoBC.Value                  := 0.00;
        with DMItens do begin
          dfPrecoCompra.Value := C_TabelaPRECOCOMPRA.Value;
          dfImpostos.Value := C_GruposIMPOSTOSFEDERAIS.Value;
          dfImpostosVenda.vALUE := C_GruposIMPOSTOSFEDERAIS.Value;
          dfICMSAplicado.Value := C_GruposALIQICMS.Value;
          dfIPIVenda.Value := C_GruposIPIVenda.Value;
          dfDespesaFixa.Value := C_GruposDESPESASFIXAS.Value;
          dfCartoes.Value := C_GruposENCARGOSCARTOES.Value;
          dfComissao.Value := C_GruposCOMISSAOAPLICADA.Value;
          dfCustos.Value := C_GruposCUSTODESPESAS.Value;
          dfLucro.Value := C_GruposFATORLUCRO.Value;
          dfICMSSubstitutoCompra.Value   := DMItens.C_TabelaicTVA.Value;
          dfREducaoBC.Value := DMItens.C_TabelaREDUCAOCST.Value;
        end;
    End;
  End;

  if DMProjeto.sTipoTributEmpresa = 'S' then lbTipoTributacao.Caption := 'Tipo Tributação: Simples';
  if DMProjeto.sTipoTributEmpresa = 'A' then lbTipoTributacao.Caption := 'Tipo Tributação: Lucro Arbitrado';


  if DMProjeto.sTipoTributEmpresa = 'N' then Begin
     lbTipoTributacao.Caption := 'Tipo Tributação: Simples Nacional';
     lbFormulaCusto.Caption := '(A+B+C-D+E+G+F+H+I)';
     lbFormulaPreco.Caption := 'J/(1-((J+K+L+M+N+O+P+H+I)/100))';
  End;
  if DMProjeto.sTipoTributEmpresa = 'P' then Begin
     lbTipoTributacao.Caption := 'Tipo Tributação: Lucro Prezumido';
     lbFormulaCusto.Caption := '( A + (B+C+E+G+I)) - (H+D) ';
     lbFormulaPreco.Caption := 'J/(1-((J+K+L+M+N+O+P+H+I)/100))';
  End;

  if DMProjeto.sTipoTributEmpresa = 'R' then  Begin
     lbTipoTributacao.Caption := 'Tipo Tributação: Lucro Real';
     lbFormulaCusto.Caption := '( A + (B+E+G+I) ) - (C+F+H+D)';
     lbFormulaPreco.Caption := 'J/(1-((J+K+L+M+N+O+P+H+I)/100))';
  End;


  FormStorage.RestoreFormPlacement;

end;

procedure TDlgFormacaoCusto.FormKeyPress(Sender: TObject; var Key: Char);
var
  bPrecoCalc : Integer;
begin
  inherited;
  try
    bPrecoCalc := IIF(ActiveControl = dfPrecoCalc, 1, 0);

    if Key = #13 then
      Perform(WM_NEXTDLGCTL, 0, 0);

    Application.ProcessMessages;

    PostMessage(Handle, PM_Atualizar,bPrecoCalc,0);
  except
  end;
end;

procedure TDlgFormacaoCusto.Atualizar;
var
  nSemLucro, nComLucro, nICMSAplicEntrada,
  nTVA, xPreco, nICMS_ST, nPerICMSFrete : Double;
  nImpostosFederais: Currency;
begin

  Application.ProcessMessages;

  dfrFrete.Value                     := ((dfFrete.Value));
  dfrICMSFrete.Value                 := (dfrFrete.Value * (dfICMSFrete.Value/100));
  dfrBonificacao.Value               := (dfPrecoCompra.Value * (dfBonificacao.Value/100));
  dfrCustoFinanceiro.Value           := (dfPrecoCompra.Value * (dfCustoFinanceiro.Value/100));
  dfrICMSCompra.Value                := (dfPrecoCompra.Value * (dfICMSCompra.Value/100));
  dfrIPICompra.Value                 := (dfPrecoCompra.Value * (dfIPICompra.Value/100));

  if (DMProjeto.sTipoTributEmpresa = 'N') Then
     dfrImpostos.Value        := (dfPrecoCalc.Value * (dfImpostos.Value/100))
  else
  dfrImpostos.Value        := (dfPrecoCompra.Value * (dfImpostos.Value/100));
  dfrICMSAplicado.Value    := (dfPrecoCalc.Value * (dfICMSAplicado.Value/100));
  dfrIPIVenda.Value        := (dfPrecoCalc.Value * (dfIPIVenda.Value/100));
  dfrDespesasFixas.Value   := (dfPrecoCalc.Value * (dfDespesaFixa.Value/100));
  dfrImpostosVenda.Value    := (dfPrecoCalc.Value * (dfImpostosVenda.Value/100));
  dfrCartoes.Value         := (dfPrecoCalc.Value * (dfCartoes.Value/100));
  dfrComissoes.Value       := (dfPrecoCalc.Value * (dfComissao.Value/100));
  dfrCustos.Value          := (dfPrecoCalc.Value * (dfCustos.Value/100));
  dfrLucro.Value           := (dfPrecoCalc.Value * (dfLucro.Value/100));

  {Pegando o Valor do Percentual do Frete para o Item}
  try
    nPerICMSFrete :=  (dfrICMSFrete.Value / dfrFrete.Value);
  Except
    nPerICMSFrete :=  0;
  End;

  if DMProjeto.sTipoTributEmpresa <> 'N' then Begin
      {Definindo Custo Contábil de Compra}
      nICMSAplicEntrada := dfICMSCompra.Value;
      try
        if (DMItens.C_TabelaicCST.Value <> '') and (nICMSAplicEntrada > 0) and
           (DMItens.C_TabelaicReducaoCST.Value > 0) and (DMItens.C_TabelaicCST.Value[2] = '2') then
          nICMSAplicEntrada := Arredondar(nICMSAplicEntrada * (1-dfREducaoBC.Value/100),1,false);
      except
      end;

      try
        // Produtos com substituição tributária também devem ter o cálculo do custo considerado...
   //     xPreco:= dfPrecoCompra.Value + (dfPrecoCompra.Value * (dfFrete.Value/100)) + (dfPrecoCompra.Value * (dfIPICompra.Value/100));
          xPreco:= dfPrecoCompra.Value + (dfFrete.Value) + (dfPrecoCompra.Value * (dfIPICompra.Value/100));
        if (DMProjeto.Parametro('TVACustoItem') = 'S') and (DMItens.C_TabelaSituacaoECF.Value = 'F') and (DMItens.C_TabelaicTVA.Value > 0) then begin
          nTVA := (xPreco + (xPreco * (dfICMSSubstitutoCompra.Value /100.00)));
          nTVA := nTVA * (DMProjeto.nICMSInterno / 100.00);
          nTVA := nTVA - (xPreco * (dfICMSCompra.Value / 100.00)) ;

          nICMS_ST := DMProjeto.nICMSInterno;
        end else Begin
          nTVA := 0;
          nICMS_ST := 0;
        End;
      except
      end;
      // LUCRO REAL  = Crédito COFINS e PIS
      if DMProjeto.sTipoTributEmpresa = 'R' then
        nCustoContabil :=  (dfPrecoCompra.Value * (1+ (dfIPICompra.Value-nICMSAplicEntrada-dfImpostos.Value)/100))
                          +((dfFrete.Value))  
                          +(dfPrecoCompra.Value * (dfCustoFinanceiro.Value/100))
                          +(dfPrecoCompra.Value * (dfICMSSubstitutoCompra.Value/100))
                          +nTVA
                         -(dfPrecoCompra.Value * (dfBonificacao.Value/100))
                         -(dfFrete.Value * (dfICMSFrete.Value/100))
// nCustoContabil :=  (dfPrecoCompra.Value * (1+ (dfIPICompra.Value-nICMSAplicEntrada-dfImpostos.Value-nPerICMSFrete)/100))
//                          +((dfFrete.Value))
//                          +(dfPrecoCompra.Value * (dfCustoFinanceiro.Value/100))
//                          +(dfPrecoCompra.Value * (dfICMSSubstitutoCompra.Value/100))
//                          +nTVA
//                          -(dfPrecoCompra.Value * (dfBonificacao.Value/100))
      else
        nCustoContabil :=  (dfPrecoCompra.Value * (1+ (dfIPICompra.Value-nICMSAplicEntrada-nPerICMSFrete)/100))
                          +((dfFrete.Value))
                          +(dfPrecoCompra.Value * (dfCustoFinanceiro.Value/100))
                          +(dfPrecoCompra.Value * (dfICMSSubstitutoCompra.Value/100))
                          +(dfPrecoCompra.Value * (dfImpostos.Value/100))
                          +nTVA
                          -(dfPrecoCompra.Value * (dfBonificacao.Value/100));

      if DMItens.C_TabelaCompensaCusto.Value > 0 Then
        nCustoContabil :=  nCustoContabil + (dfPrecoCompra.Value * (DMItens.C_TabelaCompensaCusto.Value/100));

      {Definindo o Preço de Venda}
      nSemLucro :=  //dfImpostos.Value     +
                    dfICMSAplicado.Value +  //Já está considerando Reducao, Substituicao, Isensão, etc.
                    dfIPIVenda.Value     +
                    dfImpostosVenda.value+
                    dfDespesaFixa.Value  +
                    dfCartoes.Value      +
                    dfComissao.Value     +
                    dfCustos.Value;
      nSemLucro := IIF(nSemLucro >= 100, 99.999999, nSemLucro);

      if bLucro then begin
        nComLucro := (((dfPrecoCalc.Value - nCustoContabil)/dfPrecoCalc.Value) - (nSemLucro/100))*100;
        dfLucro.Value := nComLucro;
        exit;
      end;

      nComLucro := nSemLucro + dfLucro.Value;
      nComLucro := IIF(nComLucro >= 100, 99.999999, nComLucro);
      nSemLucro := (100 - nSemLucro) / 100;
      nComLucro := (100 - nComLucro) / 100;
      dfMPV.Value := nCustoContabil / nSemLucro;

      dfPrecoCalc.Value := (nCustoContabil / nComLucro);
      dfPrecoMinimo.Value := dfPrecoCalc.Value * (1- (DMItens.C_TabelaicDescontoMaximo.Value/100));
      lbCustoContabil.Caption := FormatCurr('##,##0.00', nCustoContabil);
  End Else Begin //Simples Nacional
      //nICMSAplicEntrada := dfICMSCompra.Value;
      xPreco:= dfPrecoCompra.Value;
      if (DMProjeto.Parametro('TVACustoItem') = 'S') and (DMItens.C_TabelaSituacaoECF.Value = 'F') and (DMItens.C_TabelaicTVA.Value > 0) then begin
          nTVA := (xPreco + (xPreco * (dfICMSSubstitutoCompra.Value /100.00)));
          nTVA := nTVA * (DMProjeto.nICMSInterno / 100.00);
          nTVA := nTVA - (xPreco * (dfICMSCompra.Value / 100.00)) ;
          nICMS_ST := DMProjeto.nICMSInterno;
          nICMSAplicEntrada := 0;
        end else Begin
          nTVA := 0;
          nICMS_ST := 0;
          nICMSAplicEntrada := DMProjeto.nICMSInterno  -  dfICMSCompra.Value;
        End;
        nCustoContabil :=  (dfPrecoCompra.Value * (nICMSAplicEntrada / 100.00))
                          +(dfPrecoCompra.Value * (dfIPICompra.Value / 100.00))
                          +(dfPrecoCompra.Value * (dfFrete.Value / 100.00))
                          +(dfPrecoCompra.Value * (dfCustoFinanceiro.Value / 100.00))
                          +nTVA
                          +dfPrecoCompra.Value
                          -(dfPrecoCompra.Value * (dfBonificacao.Value / 100.00));

      if DMItens.C_TabelaCompensaCusto.Value > 0 Then
        nCustoContabil := nCustoContabil  + (dfPrecoCompra.Value * (DMItens.C_TabelaCompensaCusto.Value / 100.00));
      {Definindo o Preço de Venda}
      nSemLucro :=  //dfImpostos.Value     +
                    dfDespesaFixa.Value  +
                    dfImpostosVenda.value+
                    dfCartoes.Value      +
                    dfComissao.Value     +
                    dfCustos.Value;
      nSemLucro := IIF(nSemLucro >= 100.00, 99.999999, nSemLucro);

      if bLucro then begin
        nComLucro := (((dfPrecoCalc.Value - nCustoContabil)/dfPrecoCalc.Value) - (nSemLucro/100))*100;
        dfLucro.Value := nComLucro;
        exit;
      end;

      nComLucro := nSemLucro + dfLucro.Value;
      nComLucro := IIF(nComLucro >= 100, 99.999999, nComLucro);
      nSemLucro := (100 - nSemLucro) / 100;
      nComLucro := (100 - nComLucro) / 100;
      dfMPV.Value := nCustoContabil / nSemLucro;
      dfPrecoCalc.Value := (nCustoContabil / nComLucro);

      if (dfPrecoCalc.Value < DMItens.C_GruposMENORVALORVENDA.Value) Then 
         dfPrecoCalc.Value := DMItens.C_GruposMENORVALORVENDA.Value;

      dfPrecoMinimo.Value := dfPrecoCalc.Value * (1- (DMItens.C_TabelaicDescontoMaximo.Value/100));
      lbCustoContabil.Caption := FormatCurr('##,##0.00', nCustoContabil);
  End;
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

  if not (DMItens.C_Tabela.State in [dsInsert,dsEdit]) then
    DMItens.C_Tabela.Edit;
  if DMItens.C_TabelaUltimaCompra.Value = 0 then
     with DMItens do begin //se não houve compra pode substituir campos
        C_TabelaCustoDespesas.Value := dfCustos.Value;
        C_TabelaFatorLucro.Value := dfLucro.Value;
        C_TabelaPrecoCompra.Value := dfPrecoCompra.Value;
        C_TabelaCustoMedio.Value := nCustoContabil;
        C_TabelaCustoContabil.Value := nCustoContabil;
    end
  else with DMItens do begin
    C_TabelaCustoDespesas.Value := dfCustos.Value;
    C_TabelaFatorLucro.Value := dfLucro.Value;
    if DlgMsg.ShowMsg( 8039 ) = 100 then begin
      C_TabelaPrecoCompra.Value := dfPrecoCompra.Value;
      C_TabelaCustoMedio.Value := nCustoContabil;
      C_TabelaCustoContabil.Value := nCustoContabil;
      C_TabelaicPrecoCalc.value :=   dfPrecoCalc.Value;
    end;
  end;

  With DMProjeto.Q_Sql do Begin
    Close;
    Params.Clear;
    Sql.Text := 'Execute Procedure PP_FORMACAOCUSTOS('+
                ':item,'+
                ':precocompra,'+
                ':frete,'+
                ':bonificacao,'+
                ':custofinanceiro,'+
                ':icmscompra,'+
                ':ipicompra,'+
                ':precocalculado,'+
                ':icmssubstituto,'+
                ':despesas,'+
                ':encargos,'+
                ':comissao,'+
                ':custosadicionais,'+
                ':lucro,'+
                ':impfederalsaida,'+
                ':icmsfrete,'+
                ':impfederalentrada,'+
                ':icmsvenda,'+
                ':ipivenda,'+
                ':mva,'+
                ':reducaocst)';
                ParamByName('item').Value := xItem;
                ParamByName('precocompra').Value := dfPrecoCompra.Value;
                ParamByName('Frete').Value := dfFrete.Value;
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
                ParamByName('mva').Value := dfICMSSubstitutoCompra.Value;
                ParamByName('reducaocst').Value := dfREducaoBC.Value;
     Prepare;
    ExecSql;
  End;

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
    if Not (DMProjeto.getParametrosForm(0) = null) then
       xItem:=DMProjeto.getParametrosForm(0);

end;

procedure TDlgFormacaoCusto.FormCreate(Sender: TObject);
begin
  inherited;
  lbImpostosFederais.Enabled := true;
  dfImpostos.Enabled := true;
  dfrImpostos.Enabled := true;
  lbImpostosFederais.Caption := 'Impostos Federais:';
  lbImpostosFederaisVenda.Caption := 'Impostos Federais:';
  lbImpostosFederais.Caption := 'Impostos Federais:';
  lbICMSVenda.Enabled := true;
  dfICMSAplicado.Enabled := true;
  lbIPIVenda.Enabled := true;
  dfIPIVenda.Enabled := true;
  if DMProjeto.sTipoTributEmpresa = 'N' Then Begin
    lbImpostosFederais.Enabled := false;
    dfImpostos.Enabled := false;
    dfrImpostos.Enabled := false;
    lbImpostosFederais.Caption := 'Tabela Simples:';
    lbImpostosFederaisVenda.Caption := 'Tabela Simples:';
    lbICMSVenda.Enabled := false;
    dfICMSAplicado.Enabled := False;
    lbIPIVenda.Enabled := False;
    dfIPIVenda.Enabled := False;
  End;

end;

end.
