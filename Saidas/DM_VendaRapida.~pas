unit DM_VendaRapida;

interface
  
uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    DM_Saidas, Db, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
    IBUpdateSQL, IBQuery, IBEvents, Dlg_InplacePgtos, TS_QDBGrid, Variants,
    Math, BTOdeum,  T_TefDiscado;

type
    TModelo = (Nenhuma,Bematech,Corisco,Schalter,Urano,Afrac,Elgin,Sweda,Daruma,Yanco,Sweda100,Quattro,ElginMFD);
    TDMVendaRapida = class(TDMSaidas)
    C_PlanosPagamentoDS: TDataSource;
    C_ItensicIG: TStringField;
    C_ItensicX: TStringField;
    C_Parcelas_icSelecionado: TIntegerField;
    C_ParcelasValorAReceber: TCurrencyField;
    C_ParcelasPagamento: TCurrencyField;
    C_ParcelasJuros: TCurrencyField;
    C_ParcelasVENDA: TIntegerField;
    C_TabelaLabelMsg: TStringField;
    C_TabelaicNomeTabelaPadrao: TStringField;
    C_PlanosPagamentoicResumo: TStringField;
    Q_Precos: TIBQuery;
    P_Precos: TDataSetProvider;
    C_Precos: TClientDataSet;
    IntegerField2: TIntegerField;
    C_PrecosDS: TDataSource;
    C_PrecosPRODUTOPRECO: TIntegerField;
    C_PrecosITEM: TIntegerField;
    C_PrecosTABELAPRECO: TIntegerField;
    C_PrecosPRECOMANUAL: TStringField;
    C_PrecosPRECOPROMOCAO: TBCDField;
    C_PrecosDESCRICAO: TStringField;
    C_PrecosBASEADA: TStringField;
    C_PrecosPERCENTUAL: TBCDField;
    C_PrecosDESCITEM: TStringField;
    C_PrecosPRECO_NORMAL: TBCDField;
    C_PrecosPRECO: TCurrencyField;
    TEF2: TTEFDiscado;
    C_TabelaNUMEROECF: TStringField;
    C_TabelaCCF: TStringField;
    C_TabelaCRZ: TStringField;
    C_TabelaNUMEROSERIEECF: TStringField;
        procedure DataModuleCreate(Sender: TObject);
        procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
            Where: string; var bSkip: Boolean);
        procedure C_ItensNewRecord(DataSet: TDataSet);
        procedure C_ItensCalcFields(DataSet: TDataSet);
        procedure C_ParcelasCalcFields(DataSet: TDataSet);
        procedure DMComponentGravar3_AposApply(Sender: TObject);
        procedure DMComponentGravar1_Iniciar(Sender: TObject;
            var bSkip: Boolean);
        procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
        procedure C_TabelaTABELAPADRAOChange(Sender: TField);
        procedure C_TabelaTOTALChange(Sender: TField);
    procedure C_PrecosCalcFields(DataSet: TDataSet);
    procedure C_ItensPRECOChange(Sender: TField);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_ItensAfterInsert(DataSet: TDataSet);
    private
        { Private declarations }
        procedure CancelandoMultiplosCartoes;
    public
        { Public declarations }
        bDevolucao, bTroca, bCartaoTEF, bNaoImpDOCCOBRANCA  : Boolean;

        sItensDevolucao : string;
        nCreditoDevolucao : currency; //Valor da Parcela antes de editar;

        FormVenda: TForm;

        nTipoMovimentoPadrao: Integer;

        nSelecParcs: Currency;
        dbgParcelasForm: TTS_QDBGrid;

        DlgPgtos: TDlgInplacePgtos;

        procedure AtualizarResumoPlanos;
    end;
    Type
       TMultiplosCartoes = Record
         comprovante: Integer;
         PossuiTEF: Integer;
         MsgTEF: string;
         rede: string;
         nsu: string;
         data: string;
         hora: string;
         cupom: TStringList;
         aprovado: Boolean;
         valores: array[0..7] of Currency;
         HiperCard: Boolean;
         Dirreq: String;
         DirResp: String;
         Cartao: String;
    End;

var
    DMVendaRapida: TDMVendaRapida;
    valores: array[0..7] of Currency;
    hipercard: boolean;
    MultCartao: array[0..7] of TMCartoes;
    MultCartoes: Array[0..7] of TMultiplosCartoes;
const
    formapgto: array[0..8] of string = ('DINHEIRO', 'CHEQUE', 'CHQ ELETRO', 'CARTAO', 'DEP BANC', 'CREDITO', 'OUTROS', 'DOC COBRANCA','InforPOP');

implementation
uses DM_Projeto, Funcoes, DM_Financeiro, DM_ECF, FuncoesPAF;

{$R *.DFM}

procedure TDMVendaRapida.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMVendaRapida := self;
    bNaoImpDOCCOBRANCA := DMProjeto.Parametro('NaoImpDOCCOBRANCA') = 'S';
    nTipoMovimentoPadrao := 1;
    bCartaoTEF := True;
end;

procedure TDMVendaRapida.DMComponentPesquisar1_Iniciar(Sender: TObject;
    var Select, Where: string; var bSkip: Boolean);
begin
    inherited;
    Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = ' + IntToStr(nTipoMovimentoPadrao) +
        ' and ');
end;

procedure TDMVendaRapida.C_ItensNewRecord(DataSet: TDataSet);
begin
    inherited;
    C_ItensStatus.Value := 'E';
end;

procedure TDMVendaRapida.C_ItensCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ItensicX.Value := 'X';
    C_ItensicIG.Value := '=';
end;

procedure TDMVendaRapida.C_ParcelasCalcFields(DataSet: TDataSet);
begin
    inherited;
    C_ParcelasValorAReceber.Value := C_ParcelasValor.Value;
    C_ParcelasJuros.Value := 0;
end;

procedure TDMVendaRapida.DMComponentGravar1_Iniciar(Sender: TObject;
    var bSkip: Boolean);
var
    i, k, nMsg, j,NroCartoes, comprovante, PossuiTEF, z: Integer;
    nDif, nParcelas, nDescAcrescimo: Currency;
    sTmp, Msg, MsgTEF, sCliente, sVendedor, sEndereco, rede, nsu, data, hora, valor: string;
    cupom: TStringList;
    aprovado: Boolean;
begin
    C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.Value, []);

    if (DMProjeto.nModeloECF <> 0) and (DMProjeto.bECFAtivo) then
    begin
        if not (C_Tabela.State in [dsInsert, dsEdit]) then
            C_Tabela.Edit;
        C_TabelaNUMERO.AsString := 'COO:' + DMECF.ECF1.COO;
        C_Tabela.Post;
    end;
    inherited;

    if bSkip then
        exit;

    {*** Validando o Faturamento ***}
    C_TiposMovimento.Locate('TipoMovimento', C_TabelaTipoMovimento.Value, []);

    {É obrigatório selecionar parcelas para serem pagas}
    if (C_TabelaFavorecido.Value = 1) and (dbgParcelasForm.Selecionados = '') then
    begin
        DlgMsg.ShowMsg(2500);
        bSkip := true;
        exit;
    end;

    if (C_TiposMovimentoCB_GERARNUM.Value <> 'S') and (C_TabelaNumero.Value = '') then
    begin
        DlgMsg.ShowMsg(2333);
        bSkip := true;
        exit;
    end;

    {Validando o Recebimento}
    if (DlgPgtos <> nil) and not DlgPgtos.Validar then
    begin
        bSkip := true;
        exit;
    end;

    {Verificando se é Pagamento completo, parcial ou gera crédito}
    if DlgPgtos <> nil then
    begin
        {Verificando se está a menor}
        if DlgPgtos.GetRecebido < nSelecParcs then
        begin {Pgto. Parcial}
            nDif := 0;
            nMsg := 2509;
        end
        else if (DlgPgtos.GetRecebido - DlgPgtos.GetTroco) > nSelecParcs then
        begin {Pgto. gerando crédito => Troco a menor}
            nDif := (DlgPgtos.GetRecebido - DlgPgtos.GetTroco) - nSelecParcs;
            nMsg := 2511;
        end
        else
        begin
            nDif := 0;
            nMsg := 2510;
        end;
    end;

    {*** Confirmando gravação com o usuário ***}
    if (DMProjeto.Parametro('ConfirmacaoVR') = 'S') then
    begin
        if DlgMsg.ShowMsg(nMsg, [IIF(nDif <> 0, FormatCurr('#,##0.00', nDif), '')]) <> 100 then
        begin
            bSkip := true;
            exit;
        end;
    end;

    {Ajustando Titulos para Pagamento a Menor => Pgto. Parcial dos titulos selecionados}
    if (nMsg = 2509) and (DlgPgtos.GetRecebido > 0) then
        with C_Parcelas do
        begin
            Last;
            nDif := ABS(nSelecParcs - DlgPgtos.GetRecebido);
            while not BOF or (nDif > 0) do
            begin
                if C_Parcelas.FieldByName('_icSelecionado').asInteger = 1 then
                begin
                    C_Parcelas.Edit;
                    if nDif > C_Parcelas.Fieldbyname('Pagamento').asCurrency then
                    begin
                        dbgParcelasForm.RemoverSelecao;
                        nDif := nDif - C_ParcelasValor.asCurrency;
                    end
                    else if nDif < C_Parcelas.Fieldbyname('Pagamento').asCurrency then
                    begin
                        C_Parcelas.Fieldbyname('Pagamento').asCurrency := C_Parcelas.Fieldbyname('Pagamento').asCurrency - nDif;
                        nDif := 0;
                    end;
                end;
                Prior;
            end;
        end;

    // Impressão do Cupom Fiscal
    if (C_TabelaTIPOPADRAO.Value = 1) and (TModelo(DMECF.ECF1.Modelo) <> Nenhuma) and (DMProjeto.bECFAtivo) then begin
        if Abs((C_TabelaTOTAL.AsFloat - C_TabelaDESCONTO.AsFloat - C_TabelaOUTRASDESPESAS.AsFloat)- DMECF.ECF1.SubTotal) > 0.03 then begin
            if DlgMsg.ShowMsg(6038) = 100 then begin
                DMECF.ECF1.CancelaUltimoCupom;
                {PAF}
                if (DMProjeto.PAFObrigatorio) Then Begin
                  DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                  FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                End;
                bSkip := True;
            end;
        end;

        DMProjeto.bTimer := False;
        MsgTEF := '';
        rede := '';
        nsu := '';
        data := '';
        hora := '';
        comprovante := 0;
        aprovado := true;
        PossuiTEF := 0;
        Cupom := TStringList.Create;

        DlgPgtos.ValoresPagos(valores, hipercard, MultCartao);

       //Preenchendo o MultiCartoes.
        NroCartoes := 0;
        For k := 0 to 7 do Begin
           MultCartoes[k].comprovante :=0;
           MultCartoes[k].PossuiTEF :=0;
           MultCartoes[k].MsgTEF := '';
           MultCartoes[k].rede := '';
           MultCartoes[k].nsu  := '';
           MultCartoes[k].data := '';
           MultCartoes[k].hora := '';
           MultCartoes[k].valores[0] := 0; //Dinheiro
           MultCartoes[k].valores[1] := 0; //Cheque
           MultCartoes[k].valores[2] := 0; //Cheque Eletronico
           MultCartoes[k].valores[3] := MultCartao[k].Valor; //Cartao
           MultCartoes[k].Cartao     := MultCartao[k].Cartao; //Descricao Cartao.
           MultCartoes[k].valores[4] := 0;
           MultCartoes[k].valores[5] := 0;
           MultCartoes[k].valores[6] := 0;
           MultCartoes[k].valores[7] := 0;
           MultCartoes[k].cupom      := TstringList.Create();
           MultCartoes[k].aprovado   := false;
           MultCartoes[k].HiperCard  := iif(MultCartao[k].Cartao = 'HiperCard',True,False);
           MultCartoes[k].Dirreq     := '';
           MultCartoes[k].DirResp    := '';
           if MultCartao[k].Valor > 0 Then
              Inc(NroCartoes);
        End;
        nParcelas := 0;
        for i := 0 to 6 do
            nParcelas := nParcelas + valores[i];

        // Faltou considerar o desconto
        if (nParcelas < DMECF.ECF1.SubTotal + C_TabelaDESCONTO.AsFloat) then
            valores[7] := DMECF.ECF1.SubTotal + C_TabelaDESCONTO.AsFloat - nParcelas;


        if (DMProjeto.bTEF and DlgPgtos.bCartaoTEF) Then Begin
          dmECF.TEF1.diretorioreq := 'C:\TEF_DIAL\REQ';
          dmECF.TEF1.diretorioresp := 'C:\TEF_DIAL\RESP';
          dmECF.TEF1.FinalizaTEF;
          dmECF.TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
          dmECF.TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
          dmECF.TEF1.FinalizaTEF;
          dmECF.TEF1.diretorioreq := 'C:\HiperTEF\req';
          dmECF.TEF1.diretorioresp := 'C:\HiperTEF\resp';
          dmECF.TEF1.FinalizaTEF;
          dmECF.TEF1.diretorioreq := '';
          dmECF.TEF1.diretorioresp := '';
        End;
        if (DMProjeto.bTEF and DlgPgtos.bCartaoTEF) and (DMProjeto.ParametroTEF('ConsultaCheque') = 'S') and (Valores[1] > 0) then
            with DlgPgtos do begin
              C_Cheques.First;
              dmECF.TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
              dmECF.TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
              while not C_Cheques.Eof do begin
                if dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF'))) then begin
                  aprovado := dmECF.TEF1.Cheques(IntToStr(DMProjeto.NextID('TEF')), C_ChequesValor.AsCurrency,
                             iif(Length(C_ChequesCPF_CNPJ.AsString) > 11, 'J', 'F'), C_ChequesCPF_CNPJ.AsString, FormatDateTime('ddmmyyyy', C_ChequesVencimento.AsDateTime),
                             C_ChequeslkCodBanco.AsString, C_ChequesAgencia.AsString, C_ChequesAgenciaDV.AsString, C_ChequesConta.AsString, C_ChequesContaDV.AsString,
                             IntToStr(C_ChequesNumCheque.AsInteger), C_ChequesChequeDV.AsString, Msg);
                  if aprovado then begin
                    DlgMsg.ShowMsg(50,[Msg]);
                  end
                  else begin
                    DlgMsg.ShowMsg(50,[Msg]);
                    bSkip := True;
                    dmECF.TEF1.FinalizaTEF;
                    DMProjeto.bTimer := True;
                    Exit;
                  end;
                end
                else begin
                  bSkip := True;
                  dmECF.TEF1.FinalizaTEF;
                  DlgMsg.ShowMsg(50,['Gerenciador Padrão não está ativo.']);
                  DmProjeto.bTimer := True;
                  Exit;
                end;
                dmECF.TEF1.FinalizaTEF;
                C_Cheques.Next;
              end;
              dmECF.TEF1.FinalizaTEF;
            end;
        If NroCartoes <= 1 Then Begin
            if ((DMProjeto.bTEF and DlgPgtos.bCartaoTEF)) and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or  (not hipercard) ) then begin
               dmProjeto.bTimer := False;
                if not dmECF.VerificaTEF(valores, aprovado, MsgTEF, Cupom, PossuiTEF, comprovante, hipercard) then begin
                   bSkip := True;
                   DMProjeto.bTimer := True;
                   Exit;
                end;
                dmProjeto.bTimer := True;
                if PossuiTEF = 1 then begin
                    if not (C_Tabela.State in [dsInsert, dsEdit]) then
                        C_Tabela.Edit;
                    C_TabelaLabelMsg.Value := MsgTEF;
                    C_Tabela.Post;
                    SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
                    ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
                    FormVenda.SetFocus;
                    FormVenda.Repaint;
                end;
            end;
            if DMProjeto.Parametro('ImprimeCliente') = 'S' then
            begin
                sCliente := iif(C_TabelaF_Nome.Value <> '', C_TabelaF_Nome.Value, '');
                sCliente := sCliente + iif(C_TabelaF_CPF_CNPJ.Value <> '', ' -- CPF/CNPJ:' + C_TabelaF_CPF_CNPJ.Value, '');
            end
            else
                sCliente := '';
            if DMProjeto.Parametro('ImprimeVendedor') = 'S' then
                sVendedor := C_TabelalkVendedor.Value
            else
                sVendedor := '';
            if DMProjeto.Parametro('ImprimeEndereco') = 'S' then
                sEndereco := C_TabelaF_Endereco.Value + ' ' + C_TabelaF_Bairro.value
            else
                sEndereco := '';

            // Fechamento Cupon Iniciando o Tef
            nDescAcrescimo := 0;
            if C_TabelaDESCONTO.AsCurrency < 0 Then
             nDescAcrescimo := C_TabelaDESCONTO.AsCurrency
            Else
             nDescAcrescimo := C_TabelaOUTRASDESPESAS.AsCurrency;
            if not dmECF.FechamentoCupomTEF(cupom, valores, FormaPgto, nDescAcrescimo, C_TabelaOBS.Value, sCliente, sVendedor, sEndereco, PossuiTEF) then begin
                //DlgMsg.ShowMsg(50,['if not dmECF.FechamentoCupomTEF(cupom']);
                bSkip := true;
                DMProjeto.bTimer := True;
                exit;
            end;
               //DlgMsg.ShowMsg(50,[pchar(inttostr(comprovante) + ' ' + cupom.text + ' ' + Floattostr(valores[2]) + ' ' + rede + ' ' + nsu + ' ' + data + ' ' +hora)]);
            if (Not bNaoImpDOCCOBRANCA) Then Begin
                if not DMECF.ImprimeTEF(comprovante, cupom, valores, rede, nsu, data, hora) then
                    bSkip := True
                else begin
                    DlgPgtos.NSU := NSU;
                    DlgPgtos.RedeNSU := Rede;
                    DlgPgtos.DataNSU := Data;
                    DlgPgtos.HoraNSU := Hora;
                end;
            End;
            if PossuiTEF = 1 then begin
              if not (C_Tabela.State in [dsInsert, dsEdit]) then
                  C_Tabela.Edit;
              C_TabelaLabelMsg.Value := '';
              C_Tabela.Post;
              DMECF.TEF1.InicializaTEF;
            end;
            DMProjeto.bTimer := True;
            // Autenticação de Cheques...
            if (DMProjeto.Parametro('AutenticaCheques') = 'S') and (DlgPgtos.C_Cheques.RecordCount > 0) then begin
              DlgPgtos.C_Cheques.First;
              for i := 1 to 5 do begin
                if DlgMsg.ShowMsg( 8055, [DlgPgtos.C_ChequesNumCheque.AsString] ) = 100 then begin
                  DMECF.ECF1.Autenticacao( DlgPgtos.C_ChequesValor.AsString, 'Cheque Num ' + DlgPgtos.C_ChequesNumCheque.AsString );
                end;
                DlgPgtos.C_Cheques.Next;
                if DlgPgtos.C_Cheques.EOF then Break;
              end;
            end;
        end Else Begin      //Multiplos Cartões Inicio.
          cupom.Clear;
          if ((DMProjeto.bTEF and DlgPgtos.bCartaoTEF)) and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or  (not hipercard) ) then begin
            For k := 0 to (NroCartoes -1) do Begin
             if not dmECF.VerificaTEF(MultCartoes[k].valores,
                                       MultCartoes[k].aprovado,
                                       MultCartoes[k].MsgTEF,
                                       MultCartoes[k].cupom,
                                       MultCartoes[k].PossuiTEF,
                                       MultCartoes[k].comprovante,
                                       MultCartoes[k].HiperCard) then begin
                 bSkip := True;
                 PossuiTEF := 0;
                 NroCartoes := 0;
                 Application.MessageBox('Venda com multiplos cartões devera ser cancelada.','Aviso',mb_ok);
                 CancelandoMultiplosCartoes;
                 DMProjeto.bTimer := True;
                 Exit;
              end Else Begin
                  PossuiTEF := 1;
                  if MultCartoes[k].valores[3] > 0 then begin
                    if MultCartoes[k].HiperCard then begin
                      TEF2.diretorioreq := 'C:\HiperTEF\req';
                      TEF2.diretorioresp := 'C:\HiperTEF\resp';
                    end  else begin
                      TEF2.diretorioreq := 'C:\TEF_DIAL\REQ';
                      TEF2.diretorioresp := 'C:\TEF_DIAL\RESP';
                    end;
                  end else begin
                    TEF2.diretorioreq := 'C:\TEF_DISC\REQ';
                    TEF2.diretorioresp := 'C:\TEF_DISC\RESP';
                  End;
                  for z:=0 to MultCartoes[k].cupom.Count - 1 do
                     cupom.Add(MultCartoes[k].cupom[z]);
                TEF2.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')),MultCartoes[k].rede,MultCartoes[k].nsu,MultCartoes[k].data,MultCartoes[k].hora);
              End;
            end;
            dmProjeto.bTimer := True;
       End;
      if PossuiTEF = 1 then begin
         if not (C_Tabela.State in [dsInsert, dsEdit]) then
             C_Tabela.Edit;
         C_TabelaLabelMsg.Value := MsgTEF;
         C_Tabela.Post;
         SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
         ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
         FormVenda.SetFocus;
         FormVenda.Repaint;
      end;
      if DMProjeto.Parametro('ImprimeCliente') = 'S' then begin
            sCliente := iif(C_TabelaF_Nome.Value <> '', C_TabelaF_Nome.Value, '');
            sCliente := sCliente + iif(C_TabelaF_CPF_CNPJ.Value <> '', ' -- CPF/CNPJ:' + C_TabelaF_CPF_CNPJ.Value, '');
      end else
            sCliente := '';
      if DMProjeto.Parametro('ImprimeVendedor') = 'S' then
         sVendedor := C_TabelalkVendedor.Value
      else
         sVendedor := '';
      if DMProjeto.Parametro('ImprimeEndereco') = 'S' then
         sEndereco := C_TabelaF_Endereco.Value + ' ' + C_TabelaF_Bairro.value
      else
         sEndereco := '';
        // Fechamento Cupon Iniciando o Tef
      if not dmECF.FechamentoCupomTEF(cupom, valores, FormaPgto, C_TabelaDESCONTO.AsCurrency, C_TabelaOBS.Value, sCliente, sVendedor, sEndereco, PossuiTEF) then begin
            bSkip := true;
            DMProjeto.bTimer := True;
            exit;
      end;
      comprovante :=1;
      if ((DMProjeto.bTEF and DlgPgtos.bCartaoTEF)) and ( (hipercard and (DMProjeto.ParametroTEF('TEFHIPER') = 'S')) or  (not hipercard) ) then begin
        if not DMECF.ImprimeTEF(comprovante, cupom, valores, rede, nsu, data, hora) then
          bSkip := True
        else begin
          DlgPgtos.NSU := NSU;
          DlgPgtos.RedeNSU := Rede;
          DlgPgtos.DataNSU := Data;
          DlgPgtos.HoraNSU := Hora;
        end;
      End;
      if PossuiTEF = 1 then begin
        if not (C_Tabela.State in [dsInsert, dsEdit]) then
           C_Tabela.Edit;
        C_TabelaLabelMsg.Value := '';
        C_Tabela.Post;
        DMECF.TEF1.InicializaTEF;
      end;
      DMProjeto.bTimer := True;
     End; //Multiplos Cartões Inicio.
    End;

    if not bSkip then
        DMProjeto.SetGeneratorTrans(1);
    // não imprimir bSkip := True;
end;


procedure TDMVendaRapida.CancelandoMultiplosCartoes;
var k: Integer;
 msgCancelamento: String;
 Cupons: TStringList;
Begin
  Cupons := TStringList.Create;
  msgCancelamento := 'A venda deverá ser finalizada em outra forma de pagamento.'+#13#10;
  msgCancelamento := msgCancelamento + 'Após  finalização, favor efetuar cancelamento'+#13#10 ;
  msgCancelamento := msgCancelamento + '(no Administrativo dos cartões) dos seguintea cartões:'+#13#10;
  For k := 0 to 7 do Begin
    if (MultCartoes[k].aprovado) then Begin
      msgCancelamento:=msgCancelamento + MultCartoes[k].MsgTEF + #13#10;
      msgCancelamento:=msgCancelamento + 'Rede: ' + MultCartoes[k].rede + #13#10;
      msgCancelamento:=msgCancelamento + 'NSU : ' + MultCartoes[k].nsu  + #13#10;
      msgCancelamento:=msgCancelamento + 'Data: ' + MultCartoes[k].data + #13#10;
      msgCancelamento:=msgCancelamento + 'Hora: ' + MultCartoes[k].hora + #13#10;
      msgCancelamento:=msgCancelamento + 'Vlr : ' + FloatToStr(MultCartoes[k].valores[3])+#13#10; //Cartao
      msgCancelamento:=msgCancelamento + '-----------------------------------------------'+#13#10;
      MultCartao[k].Valor := 0;
      Cupons.Add( msgCancelamento );
      //TEF2.CancelaPgto(IntToStr(DMProjeto.NextID('TEF')), FloattoStr(MultCartoes[k].valores[3]), MultCartoes[k].rede, MultCartoes[k].nsu, MultCartoes[k].data, MultCartoes[k].hora, MultCartoes[k].cupom, MultCartoes[k].msgTef);
    end;
  End;
  Cupons.SaveToFile('C:\MultiplosCartoes_'+FormatDateTime('YYYYMMDD',Now)+'.TXT');
  Application.MessageBox(pchar(msgCancelamento),'Atenção',mb_OK);
End;

procedure TDMVendaRapida.DMComponentGravar3_AposApply(Sender: TObject);
var  IDDevolucao : integer;
     NumDev : string;
begin
    inherited;
    NumDev := '';
    if bTroca then begin
      IDDevolucao := DMProjeto.GerarDevolucao( NumDev, C_TabelaFavorecido.Value, C_TabelaVendedor.Value,
                                               sItensDevolucao, 0 );
      DMFinanceiro.RegistrarCredito( C_TabelaFavorecido.Value, IDDevolucao, 46, true, 0,
                                     nCreditoDevolucao, 'Devolução #' + NumDev );
    end;
    if DlgPgtos <> nil then begin
        if DlgPgtos.GetRecebido > 0 then
            DlgPgtos.Gravar(dbgParcelasForm.ItensSelecionados, dbgParcelasForm.Selecionados, C_Parcelas);
        sPerformance := sPerformance + Format('%s: Gravou Recebimentos', [DateTimeToStr(Now)]) + #13;
        DMProjeto.SetGeneratorTrans(0);
    end;
end;

procedure TDMVendaRapida.DMComponentExclusao(Sender: TObject;
    var bSkip: Boolean);
begin
    try
        sTipoExclusao := 'Total';
        inherited;
    finally
        sTipoExclusao := 'Operacao';
    end;
end;

procedure TDMVendaRapida.C_TabelaTABELAPADRAOChange(Sender: TField);
begin
    inherited;
    C_tabelaicNomeTabelaPadrao.Value := NomeTabelaPreco(Sender.asInteger);
end;

procedure TDMVendaRapida.AtualizarResumoPlanos;
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

procedure TDMVendaRapida.C_TabelaTOTALChange(Sender: TField);
begin
    inherited;
    if C_PlanosPagamento.Active and (C_PlanosPagamentoicResumo.Value <> '') then
    begin
        AtualizarResumoPlanos;
    end;
end;

procedure TDMVendaRapida.C_PrecosCalcFields(DataSet: TDataSet);
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

procedure TDMVendaRapida.C_ItensPRECOChange(Sender: TField);
var nPreco: Currency;
begin
  inherited;
end;

procedure TDMVendaRapida.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  Try
    if (DMProjeto.bECFAtivo) Then Begin
      DataSet.FieldByName('NUMEROSERIEECF').AsString :=  DMProjeto.PAFCampos.NroFabricacao_ECF;
      DataSet.FieldByName('NUMEROECF').AsString      :=  DMProjeto.PAFCampos.NroECF;
      DataSet.FieldByName('CCF').AsString := SoNumeros( IntToStr(StrToInt(DMECF.ECF1.GetNumero_CCF()) + 1),6) ;
      DataSet.FieldByName('CRZ').AsString := DMProjeto.PAFCampos.ProximaZ;
    End;
    Except
      on E:Exception do Begin
        MessageDlg('Não existe PDV criado para este computador!', mtInformation, [mbOK], 0);
        DataSet.FieldByName('NUMEROSERIEECF').AsString :=  '';
        DataSet.FieldByName('NUMEROECF').AsString      :=  '';
        DataSet.FieldByName('CCF').AsString := '' ;
        DataSet.FieldByName('CRZ').AsString := '';
      End;
  End;    
end;

procedure TDMVendaRapida.C_ItensAfterInsert(DataSet: TDataSet);
begin
  inherited;
  DMProjeto.AtualizaMD5Itens(DMProjeto.C_LocalizarItensITEM.Value);
end;

end.
