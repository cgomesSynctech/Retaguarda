unit dm_ECF;

interface

uses
    Windows, SysUtils, Classes, ECF, Dialogs, Funcoes, DlgMsg,
    Forms, T_TefDiscado, Toledo, ACBrBase, ACBrECF, ACBrECFClass;

type
    TdmECF = class(TDataModule)
        TEF1: TTEFDiscado;
        DlgMsg: TDlgMsg;
        ECF1: TECF;
        Toledo1: TToledo;
        //    TEFDedicado1: TTEFDedicado;
        procedure DataModuleCreate(Sender: TObject);
    private
        { Private declarations }
        bInforPOP: Boolean;
        procedure ConfirmaCartoesReduzido(sReduCheque, sReduCartao, sReduDebito, sReduVoucher: string);
        procedure ConfirmaCartoesDedicado(sNSUCheque, sNSUCartao, sNSUDebito, sNSUVoucher,
            sReduCheque, sReduCartao, sReduDebito, sReduVoucher: string);
    public
        { Public declarations }

        qtdCartao: integer;
        Msg: string;
        PossuiTEFGeral: integer;
        procedure AbrirAdmHospedado();
        procedure DesfazerCartaoTefHospedado(nsu: string);
        procedure GerarSped(dtInicio: TDateTime; dtFim: TDateTime);
        function UltimoCupomEmitido(): string;
        function VerificaTEF(var valores: array of currency; var aprovado: boolean; var MsgTef: string; Cupom: TStringList; var PossuiTEF: integer; var comprovante: integer; hipercard: boolean; var desconto: Currency; identificacao: string = '0'): boolean;
        function FechamentoCupomTEF(Cupom: TStringList; valores: array of currency; FormaPgto: array of string; nDesconto: currency;
            sObs: string; sCliente: string; sVendedor: string; sEndereco: string; PossuiTEF: integer; sPromo: string = '';
            bDedicado: boolean = false; sNSUCartao: string = ''; sNSUDebito: string = ''; sNSUVoucher: string = '';
            sReduCartao: string = ''; sReduDebito: string = ''; sReduVoucher: string = '';
            sNSUCheque: string = ''; sReduCheque: string = ''; sPV: string = ''): boolean;
        function ImprimeTEF(comprovante: integer; cupom: TStringList; valores: array of currency; var rede: string; var nsu: string; var data: string; var hora: string;
            bDedicado: boolean = false; sPromo: string = ''; sNSUCartao: string = ''; sNSUDebito: string = ''; sNSUVoucher: string = '';
            sReduCartao: string = ''; sReduDebito: string = ''; sReduVoucher: string = '';
            sNSUCheque: string = ''; sReduCheque: string = ''): boolean;
        function CancelaCupom(sNumero: string; Valor: string; NSU: string; DataNSU: string; HoraNSU: string; RedeNSU: string): boolean;
        procedure Administrativa(sBandeira: string);
    end;

var
    dmECF: TdmECF;
    jky, cont: integer;

implementation
uses DM_Projeto, Frm_MsgTEF, FuncoesPAF, RegReducaoZ_R06, RegAuxiliar,
    Frm_ConfigECF;
{$R *.dfm}

function TdmECF.VerificaTEF;
var Ident: string;
    ArqList: TStringList;
    Linha, InfoTEF: string;
    valorTef: Currency;

begin
    result := true;
    if (valores[3] > 0) or (valores[2] > 0) then
        begin
            if valores[3] > 0 then
                begin
                    if DMProjeto.Parametro('TEFHospedado') = 'N' then
                        begin
                            if ((hipercard) and (DMProjeto.Parametro('TEFHIPER') = 'S')) then
                                begin
                                    TEF1.diretorioreq := 'C:\HiperTEF\req';
                                    TEF1.diretorioresp := 'C:\HiperTEF\resp';
                                end
                            else
                                begin
                                    TEF1.diretorioreq := DMProjeto.sCaminhoTefReq; //'C:\TEF_DIAL\REQ';
                                    TEF1.diretorioresp := DMProjeto.sCaminhoTefResp; // 'C:\TEF_DIAL\RESP';
                                end;
                        end;
                    if DMProjeto.Parametro('TEFHospedado') = 'S' then
                        begin
                            if ((hipercard) and (DMProjeto.Parametro('TEFHIPER') = 'S')) then
                                begin
                                    TEF1.diretorioreq := 'C:\HiperTEF\req';
                                    TEF1.diretorioresp := 'C:\HiperTEF\resp';
                                end
                            else
                                begin
                                    TEF1.diretorioreq := DMProjeto.sCaminhoTefReq; //'C:\TEF_DIAL\REQ';
                                    TEF1.diretorioresp := DMProjeto.sCaminhoTefResp; // 'C:\TEF_DIAL\RESP';
                                end;
                        end;
                end
            else
                begin
                    TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
                    TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
                    //    TEF1.diretorioreq := DMProjeto.sCaminhoTefReq; //'C:\TEF_DIAL\REQ';
                    //    TEF1.diretorioresp := DMProjeto.sCaminhoTefResp;// 'C:\TEF_DIAL\RESP';
                end;
            if (identificacao = '0') then
                Ident := IntToStr(DMProjeto.NextID('TEF'))
            else
                Ident := identificacao;
            if TEF1.VerificaGP(IntToStr(DMPRojeto.NextID('TEF'))) then
                begin
                    Sleep(2000);

                    if (valores[3] > 0) then
                        begin
                            comprovante := TEF1.AutorizaCartao(Ident, valores[3], aprovado, MsgTEF, Cupom, desconto, 0);
                        end
                    else
                        begin
                            if (valores[2] > 0) then
                                begin
                                    comprovante := TEF1.AutorizaCartao(Ident, valores[2], aprovado, MsgTEF, Cupom, desconto, 1);
                                end
                            else
                                begin
                                    comprovante := TEF1.AutorizaCartao(Ident, valores[2], aprovado, MsgTEF, Cupom, desconto, 0);
                                end;
                        end;
                    PossuiTEF := 1;
                    //          Application.ProcessMessages;
                    //          FormVenda.Repaint;
                    //          FormVenda.Active := True;
                end
            else
                begin
                    DlgMsg.ShowMsg(50, ['Gerenciador Padrão não está ativo.']);
                    TEF1.InicializaTEF;
                    result := false;
                end;
        end;

    if not aprovado then
        begin
            if MsgTEF <> '' then DlgMsg.ShowMsg(50, [MsgTEF]);
            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                TEF1.InicializaTEF;
            result := false;
            desconto := 0;
        end;
end;

function TdmECF.FechamentoCupomTEF;
var r, iInforPOP, seq, i, ImpressoraDesligada: integer;
    sRede, sNSU, sValor, sAcrescimoDesconto: string;
    AcumularTEF: array[0..7] of boolean;
    cv, tef, aux: boolean;
    ValorPagamento: Currency;

begin
    if PossuiTEF = 1 then
        begin
            //SetForegroundWindow(FindWindow('TMDIProjeto','SyncTech - SyncLoja'));
            //ShowWindow(FindWindow('TMDIProjeto','SyncTech - SyncLoja'),SW_MAXIMIZE);
            FrmMsgTEF := TFrmMsgTEF.Create(Self);
            FrmMsgTEF.LabelMsg.Caption := Cupom[0];
            FrmMsgTEF.btMsgTEF.Visible := false;
            FrmMsgTEF.Show;
        end;
    result := true; //Trava o sistema
    bInforPOP := (DMProjeto.Parametro('InforPOP') = 'S');
    iInforPOP := 0;
    for r := 0 to 7 do
        AcumularTEF[r] := False;
    if valores[1] > 0 then AcumularTEF[1] := True;
    if valores[2] > 0 then AcumularTEF[2] := True;
    if valores[3] > 0 then AcumularTEF[3] := True;
    if ((valores[6] > 0) and (bInforPOP)) then iInforPOP := 2;
    if nDesconto < 0 then
        sAcrescimoDesconto := 'D'
    else
        sAcrescimoDesconto := 'A';
    if ECF1.IniciaFechamento(sAcrescimoDesconto, '$', FormatFloat('0.00', Abs(nDesconto))) then
        begin
            jky := 0;
            if ((valores[7] > 0) and (valores[3] > 0)) then
                begin
                    //    for jky := 0 to 7 do begin
                    for jky := 7 downto 0 do
                        begin
                            if valores[jky] > 0 then
                                begin
                                    tef := (ECF1.PagaCupom(FormaPgto[jky + iInforPOP], FormatFloat('0.00', valores[jky]), iif(PossuiTEF = 1, AcumularTEF[jky], False)));
                                    if tef then
                                        begin
                                            ValorPagamento := valores[jky];
                                            valores[jky] := 0;
                                            cont := 0;
                                        end;
                                    PossuiTEFGeral := PossuiTEF;
                                    if not tef then
                                        begin
                                            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                                begin
                                                    ECF1.CancelaUltimoCupom;
                                                    if PossuiTEF = 1 then
                                                        begin
                                                            if FrmMsgTEF <> nil then
                                                                begin
                                                                    FrmMsgTEF.Release;
                                                                    FrmMsgTEF := nil;
                                                                end;
                                                            if not bDedicado then
                                                                begin
                                                                    TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                                                    svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                                                    DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                                                end
                                                            else //TEFDedicado1.FinalizaCartao;
                                                        end;
                                                    result := false;
                                                    Exit;
                                                end;
                                        end;
                                    //Sleep(2000);
                                    ImpressoraDesligada := ECF1.VerificaImpressoraDesligada();
                                    if (ImpressoraDesligada = 1) and (DMProjeto.Parametro('TEFHospedado') = 'S') then
                                        begin
                                            //DMProjeto.ReducaoZ_R07(FormaPgto[jky + iInforPOP],valores[jky]);
                                            DMProjeto.ReducaoZ_R07(FormaPgto[jky + iInforPOP], ValorPagamento);
                                        end;
                                end;
                        end;
                    cont := 0; // For para cupons que tem forma de pagamento doccobrança e cartão
                end
            else
                begin
                    for jky := 0 to 7 do
                        begin
                            if valores[jky] > 0 then
                                begin
                                    tef := (ECF1.PagaCupom(FormaPgto[jky + iInforPOP], FormatFloat('0.00', valores[jky]), iif(PossuiTEF = 1, AcumularTEF[jky], False)));
                                    if tef then
                                        begin
                                            ValorPagamento := valores[jky];
                                            valores[jky] := 0;
                                            cont := 0;
                                        end;
                                    PossuiTEFGeral := PossuiTEF;
                                    if not tef then
                                        begin
                                            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                                begin
                                                    ECF1.CancelaUltimoCupom;
                                                    if PossuiTEF = 1 then
                                                        begin
                                                            if FrmMsgTEF <> nil then
                                                                begin
                                                                    FrmMsgTEF.Release;
                                                                    FrmMsgTEF := nil;
                                                                end;
                                                            if not bDedicado then
                                                                begin
                                                                    TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                                                    svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                                                    DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                                                end
                                                            else //TEFDedicado1.FinalizaCartao;
                                                        end;
                                                    result := false;
                                                    Exit;
                                                end;
                                        end;
                                    //Sleep(2000);
                                    ImpressoraDesligada := ECF1.VerificaImpressoraDesligada();
                                    if (ImpressoraDesligada = 1) and (DMProjeto.Parametro('TEFHospedado') = 'S') then
                                        begin
                                            //DMProjeto.ReducaoZ_R07(FormaPgto[jky + iInforPOP],valores[jky]);
                                            DMProjeto.ReducaoZ_R07(FormaPgto[jky + iInforPOP], ValorPagamento);
                                        end;
                                end;
                        end;
                    cont := 0; // For para todos as outras formas
                end;
            for jky := 7 downto 0 do
                begin
                    if valores[jky] > 0 then
                        begin
                            cont := cont + 1;
                        end;
                end;
            {PAF Impressao do Md5}
            ImpressoraDesligada := ECF1.VerificaImpressoraDesligada();
            if (ImpressoraDesligada <> 1) and (DMProjeto.Parametro('TEFHospedado') = 'S') then
                begin
                    if FrmMsgTEF <> nil then
                        begin
                            FrmMsgTEF.Release;
                            FrmMsgTEF := nil;
                        end;
                    aux := false;
                    //if aux then begin
                    if DlgMsg.ShowMsg(6040) = 200 then
                        begin
                            //sleep(2000);
                            //Sleep(2000);
                            for jky := 7 downto 0 do
                                begin
                                    if valores[jky] > 0 then
                                        begin
                                            //Sleep(2000);
                                            tef := (ECF1.PagaCupom(FormaPgto[jky + iInforPOP], FormatFloat('0.00', valores[jky]), iif(PossuiTEF = 1, AcumularTEF[jky], False)));
                                            if tef then
                                                begin
                                                    valores[jky] := 0;
                                                    cont := 0;
                                                end;
                                            PossuiTEFGeral := PossuiTEF;
                                            if not tef then
                                                begin
                                                    if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                                        begin
                                                            ECF1.CancelaUltimoCupom;
                                                            if PossuiTEF = 1 then
                                                                begin
                                                                    if FrmMsgTEF <> nil then
                                                                        begin
                                                                            FrmMsgTEF.Release;
                                                                            FrmMsgTEF := nil;
                                                                        end;
                                                                    if not bDedicado then
                                                                        begin
                                                                            TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                                                            svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                                                            DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                                                        end
                                                                    else //TEFDedicado1.FinalizaCartao;
                                                                end;
                                                            result := false;
                                                            Exit;
                                                        end;
                                                end;
                                            //Sleep(2000);
                                            ImpressoraDesligada := ECF1.VerificaImpressoraDesligada();
                                            if (ImpressoraDesligada = 1) and (DMProjeto.Parametro('TEFHospedado') = 'S') then
                                                begin
                                                    DMProjeto.ReducaoZ_R07(FormaPgto[jky + iInforPOP], valores[jky]);
                                                end;
                                        end;
                                end;
                            cont := 0;
                            for jky := 7 downto 0 do
                                begin
                                    if valores[jky] > 0 then
                                        begin
                                            cont := cont + 1;
                                        end;
                                end;
                            ImpressoraDesligada := ECF1.VerificaImpressoraDesligada();
                            if ImpressoraDesligada = 1 then
                                begin
                                    FrmMsgTEF := TFrmMsgTEF.Create(Self);
                                    FrmMsgTEF.LabelMsg.Caption := Cupom[0];
                                    FrmMsgTEF.btMsgTEF.Visible := false;
                                    FrmMsgTEF.Show;
                                    if (sPV = '') then
                                        Msg := PreencherStr('MD-5:' + DMProjeto.PAFCampos.MD5_ArqAutenticacao, ' ', 96)
                                    else
                                        Msg := 'MD-5:' + DMProjeto.PAFCampos.MD5_ArqAutenticacao + '           ' + PreencherStr('PV' + sPV, ' ', 96);
                                    if (sPromo <> '') then
                                        Msg := Msg + sPromo
                                    else
                                        begin
                                            Msg := Msg + sObs;
                                            if Trim(sCliente) <> '' then
                                                begin
                                                    if DMProjeto.Parametro('ImprimeCliente') = 'S' then
                                                        Msg := Msg + '-- Cliente: ' + sCliente;
                                                    if Trim(sEndereco) <> '' then
                                                        if DMProjeto.Parametro('ImprimeEndereco') = 'S' then
                                                            Msg := Msg + '-- Endereco: ' + sEndereco;
                                                end;
                                            if Trim(sVendedor) <> '' then
                                                if DMProjeto.Parametro('ImprimeVendedor') = 'S' then
                                                    Msg := Msg + '-- Vendedor: ' + sVendedor;
                                        end;
                                    // Impressão da mensagem promocional
                                    if not ECF1.TerminaFechamento(RetiraAcentos(Msg), PossuiTEF) then
                                        begin
                                            // if DMProjeto.Parametro('TEFHospedado') = 'N' Then Begin
                                            ECF1.CancelaUltimoCupom;
                                            if PossuiTEF = 1 then
                                                begin
                                                    if FrmMsgTEF <> nil then
                                                        begin
                                                            FrmMsgTEF.Release;
                                                            FrmMsgTEF := nil;
                                                        end;
                                                    DlgMsg.ShowMsg(6050);
                                                    if not bDedicado then
                                                        begin
                                                            TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                                            svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                                            DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                                        end
                                                    else //TEFDedicado1.FinalizaCartao;
                                                end;
                                            result := false;
                                            //end;
                                        end;
                                end
                            else
                                begin
                                    {Atualizar ArquivoAuxiliar}
                                    {PAF}
                                    if (DMProjeto.PAFObrigatorio) then
                                        begin
                                            DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                                            FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                                        end;
                                end;
                            if FrmMsgTEF <> nil then
                                begin
                                    FrmMsgTEF.Release;
                                    FrmMsgTEF := nil;
                                end;
                        end
                    else
                        begin
                            if FrmMsgTEF <> nil then
                                begin
                                    FrmMsgTEF.Release;
                                    FrmMsgTEF := nil;
                                end;
                            Result := false;
                            exit;
                        end;
                end
            else
                begin
                    //incio  problema temporariamente resolvido porem nao funcionara no tef discado
                    if (sPV = '') then
                        Msg := PreencherStr('MD-5:' + DMProjeto.PAFCampos.MD5_ArqAutenticacao, ' ', 96)
                    else
                        Msg := 'MD-5:' + DMProjeto.PAFCampos.MD5_ArqAutenticacao + '           ' + PreencherStr('PV' + sPV, ' ', 96);
                    if (sPromo <> '') then
                        Msg := Msg + sPromo
                    else
                        begin
                            Msg := Msg + sObs;
                            if Trim(sCliente) <> '' then
                                begin
                                    if DMProjeto.Parametro('ImprimeCliente') = 'S' then
                                        Msg := Msg + '-- Cliente: ' + sCliente;
                                    if Trim(sEndereco) <> '' then
                                        if DMProjeto.Parametro('ImprimeEndereco') = 'S' then
                                            Msg := Msg + '-- Endereco: ' + sEndereco;
                                end;
                            if Trim(sVendedor) <> '' then
                                if DMProjeto.Parametro('ImprimeVendedor') = 'S' then
                                    Msg := Msg + '-- Vendedor: ' + sVendedor;
                        end;
                    // Impressão da mensagem promocional
                    if not ECF1.TerminaFechamento(RetiraAcentos(Msg), PossuiTEF) then
                        begin
                            ECF1.CancelaUltimoCupom;
                            if PossuiTEF = 1 then
                                begin
                                    if FrmMsgTEF <> nil then
                                        begin
                                            FrmMsgTEF.Release;
                                            FrmMsgTEF := nil;
                                        end;
                                    DlgMsg.ShowMsg(6050);
                                    if not bDedicado then
                                        begin
                                            TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                            svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                            DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                        end
                                    else //TEFDedicado1.FinalizaCartao;
                                end;
                            result := false;
                        end
                    else
                        begin
                            {Atualizar ArquivoAuxiliar}
                            {PAF}
                            if (DMProjeto.PAFObrigatorio) then
                                begin
                                    DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
                                    FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
                                end;
                        end;
                    if FrmMsgTEF <> nil then
                        begin
                            FrmMsgTEF.Release;
                            FrmMsgTEF := nil;
                        end;
                end;
            //fim
        end
    else
        begin
            cont := 1;
            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                begin
                    if PossuiTEF = 1 then
                        begin
                            if FrmMsgTEF <> nil then
                                begin
                                    FrmMsgTEF.Release;
                                    FrmMsgTEF := nil;
                                end;
                            if not bDedicado then
                                begin
                                    TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                    svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                    DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                end
                            else // TEFDedicado1.FinalizaCartao;
                        end;
                    ECF1.CancelaUltimoCupom;
                    result := false;
                end;
        end;
    if DMProjeto.Parametro('TEFHospedado') = 'S' then
        begin
            if not ECF1.IniciaFechamento(sAcrescimoDesconto, '$', FormatFloat('0.00', Abs(nDesconto))) then
                begin
                    if FrmMsgTEF <> nil then
                        begin
                            FrmMsgTEF.Release;
                            FrmMsgTEF := nil;
                        end;
                end;
        end;
    {PAF}
    if (DMProjeto.PAFObrigatorio) then
        begin
            DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
            FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
        end;
end;

function TdmECF.ImprimeTEF;
var sRede, sNSU, sValor, Msg: string;
    i, seq, vias, PossuiTEF: integer;
    cv, hopedado: boolean;
begin
    //
    Result := True;
    seq := 0;
    if sPromo = '' then
        //vias := 2  {COMENTADO PARA VER DEPOIS QUESTÃO DA NECESSIDADE DE DUAS VIAS IMPRESSAS}
        vias := 1
    else
        vias := 1;
    for i := 0 to 3 do
        if valores[i] > 0 then seq := seq + 1;
    // Comprovante = 1 -> Tem cupom vinculado a imprimir
   // if (valores[7] > 0) Then Begin
    if ((valores[7] > 0) and (valores[3] <= 0)) then
        begin // Adicionaddo a condição do cartão
            cv := ECF1.AbreTEF('DOC COBRANCA', FloatToStr(valores[7]), IntToStr(seq));
            cv := ECF1.AbreRelatTEF;
            if cv then cv := ECF1.ImprimeRelatTEF(Cupom, 1, false);
            if cv then
                begin
                    cv := ECF1.FechaRelatTEF;
                    DMProjeto.ReducaoZ_R06('RG');
                end;
        end
    else if comprovante = 1 then
        begin
            //SetForegroundWindow(FindWindow('TMDIProjeto',DMProjeto.sCaptionMDI));
            //ShowWindow(FindWindow('TMDIProjeto',DMProjeto.sCaptionMDI),SW_MAXIMIZE);
            FrmMsgTEF := TFrmMsgTEF.Create(Self);
            FrmMsgTEF.LabelMsg.Caption := Cupom[0];
            FrmMsgTEF.btMsgTEF.Visible := false;
            FrmMsgTEF.Show;
            DMProjeto.bTimer := False;
            cv := ECF1.AbreTEF(iif(valores[1] > 0, 'CHEQUE', iif(valores[2] > 0, 'CHQ ELETRO',
                iif(valores[3] > 0, 'CARTAO', 'DEP BANC'))), FloatToStr(valores[2] + valores[3] + valores[4]), IntToStr(seq));

            while not cv do
                begin
                    if FrmMsgTEF <> nil then
                        begin
                            FrmMsgTEF.Release;
                            FrmMsgTEF := nil;
                        end;
                    if DlgMsg.ShowMsg(6040) = 200 then
                        begin
                            //sleep(2000);
                            //Sleep(2000);
                            if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                begin
                                    Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                        'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                    SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                    WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                    //Sleep(2000);
                                end;
                            SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
                            ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
                            FrmMsgTEF := TFrmMsgTEF.Create(Self);
                            FrmMsgTEF.LabelMsg.Caption := Cupom[0];
                            FrmMsgTEF.btMsgTEF.Visible := false;
                            //sleep(2000);
                            FrmMsgTEF.Show;
                            //sleep(2000);
                            ECF1.FechaRelatorio;
                            //sleep(2000);
                            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                begin
                                    cv := ECF1.AbreRelatTEF;
                                    if cv then cv := ECF1.ImprimeRelatTEF(Cupom, vias, DMProjeto.Parametro('EsperarSegundaVia') = 'S');
                                    if cv then
                                        begin
                                            cv := ECF1.FechaRelatTEF;
                                            DMProjeto.ReducaoZ_R06('RG');
                                        end;
                                end
                            else
                                begin
                                    //inicio teste
                                    if cont > 0 then
                                        begin
                                            if ECF1.IniciaFechamento('D', '$', FormatFloat('0.00', Abs(0))) then
                                                begin
                                                    for jky := 7 downto 0 do
                                                        begin
                                                            if valores[jky] > 0 then
                                                                begin
                                                                    if not (ECF1.PagaCupom(FormaPgto[jky + 0], FormatFloat('0.00', valores[jky]), iif(PossuiTEF = 1, true, False))) then
                                                                        exit;
                                                                    PossuiTEFGeral := PossuiTEF;
                                                                    DMProjeto.ReducaoZ_R07(FormaPgto[jky + 0], valores[jky]);
                                                                end;
                                                        end;
                                                end;
                                        end;
                                    Msg := PreencherStr('MD-5:' + DMProjeto.PAFCampos.MD5_ArqAutenticacao, ' ', 96);
                                    if not ECF1.TerminaFechamento(RetiraAcentos(Msg), PossuiTEF) then
                                        exit;
                                    cv := ECF1.AbreTEF(iif(valores[1] > 0, 'CHEQUE', iif(valores[2] > 0, 'CHQ ELETRO',
                                        iif(valores[3] > 0, 'CARTAO', 'DEP BANC'))), FloatToStr(valores[2] + valores[3] + valores[4]), IntToStr(seq));
                                    vias := 1;
                                    cv := ECF1.ImprimeTEF(cupom, vias, DMProjeto.Parametro('EsperarSegundaVia') = 'S');
                                    //INCIO ABRE TESTE
                                    while not cv do
                                        begin
                                            if FrmMsgTEF <> nil then
                                                begin
                                                    FrmMsgTEF.Release;
                                                    FrmMsgTEF := nil;
                                                end;
                                            if DlgMsg.ShowMsg(6040) = 200 then
                                                begin
                                                    //sleep(2000);
                                                    if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                                        begin
                                                            Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                                                'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                                            SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                                            WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                                            //Sleep(2000);
                                                        end;
                                                    SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
                                                    ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
                                                    FrmMsgTEF := TFrmMsgTEF.Create(Self);
                                                    FrmMsgTEF.LabelMsg.Caption := Cupom[0];
                                                    FrmMsgTEF.btMsgTEF.Visible := false;
                                                    FrmMsgTEF.Show;
                                                    ECF1.FechaRelatorio;
                                                    //sleep(2000);
                                                    cv := ECF1.AbreRelatTEF;
                                                    if DMProjeto.Parametro('TEFHospedado') = 'S' then
                                                        vias := 1;
                                                    if cv then cv := ECF1.ImprimeRelatTEF(Cupom, vias, DMProjeto.Parametro('EsperarSegundaVia') = 'S');
                                                    if cv then
                                                        begin
                                                            cv := ECF1.FechaRelatTEF;
                                                            DMProjeto.ReducaoZ_R06('RG');

                                                        end;
                                                    if cv then
                                                        begin
                                                            if FrmMsgTEF <> nil then
                                                                begin
                                                                    FrmMsgTEF.Release;
                                                                    FrmMsgTEF := nil;
                                                                end;
                                                            if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                                                begin
                                                                    Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                                                        'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                                                    SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                                                    WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                                                    //Sleep(2000);
                                                                end;
                                                            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                                                begin
                                                                    if not bDedicado then
                                                                        TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora)
                                                                    else
                                                                        begin
                                                                            if (bDedicado) {and (sPromo = '')} then
                                                                                begin
                                                                                    ConfirmaCartoesDedicado(sNSUCheque, sNSUCartao, sNSUDebito, sNSUVoucher,
                                                                                        sReduCheque, sReduCartao, sReduDebito, sReduVoucher);
                                                                                end;
                                                                            //TEFDedicado1.FinalizaCartao;
                                                                        end;
                                                                end;
                                                            DMProjeto.bTimer := True;
                                                            Exit;
                                                        end;
                                                end
                                            else
                                                begin
                                                    if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                                        begin
                                                            Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                                                'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                                            SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                                            WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                                            //Sleep(2000);
                                                        end;
                                                    TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                                    svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                                    DlgMsg.ShowMsg(6039, [iif(sRede <> '', 'Rede: ' + sRede, ''), iif(sNsu <> '', #13 + 'NSU: ' + sNsu, ''), iif(sValor <> '', #13 + 'Valor: ' + svalor, '')]);
                                                    ECF1.FechaRelatTEF;
                                                    DMProjeto.BTimer := True;
                                                    Exit;
                                                end;
                                        end;
                                    //FIM ABRE TESTE
                                    //vias := 1;
                                    //cv := ECF1.ImprimeTEF(cupom,vias,DMProjeto.Parametro('EsperarSegundaVia') = 'S');
                                    ECF1.FechaRelatorio;
                                    //sleep(2000);
                                    //fim teste
                                end;
                            if cv then
                                begin
                                    if FrmMsgTEF <> nil then
                                        begin
                                            FrmMsgTEF.Release;
                                            FrmMsgTEF := nil;
                                        end;
                                    if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                        begin
                                            Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                                'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                            SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                            WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                            //Sleep(2000);
                                        end;
                                    if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                        begin
                                            if not bDedicado then
                                                TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora)
                                            else
                                                begin
                                                    //                if (bDedicado) {and (sPromo = '') }then begin
                                                    //                  ConfirmaCartoesDedicado( sNSUCheque, sNSUCartao, sNSUDebito, sNSUVoucher,
                                                    //                                           sReduCheque, sReduCartao, sReduDebito, sReduVoucher );
                                                    //                end;
                                                    //                TEFDedicado1.FinalizaCartao;
                                                end;
                                        end;
                                    DMProjeto.bTimer := True;
                                    if DMProjeto.Parametro('TEFHospedado') = 'S' then
                                        begin
                                            if FrmMsgTEF <> nil then
                                                begin
                                                    FrmMsgTEF.Release;
                                                    FrmMsgTEF.btMsgTEF.Visible := false;
                                                    FrmMsgTEF := nil;
                                                    FrmMsgTEF.Close;
                                                end;
                                        end;
                                    Exit;
                                end;
                        end
                    else
                        begin
                            if DMProjeto.Parametro('TEFHospedado') = 'S' then
                                begin
                                    FrmMsgTEF := nil;
                                    FrmMsgTEF.Free;
                                end;
                            if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                begin
                                    Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                        'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                    SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                    WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                    //Sleep(2000);
                                end;
                            TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                            svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                            DlgMsg.ShowMsg(6039, [iif(sRede <> '', 'Rede: ' + sRede, ''), iif(sNsu <> '', #13 + 'NSU: ' + sNsu, ''), iif(sValor <> '', #13 + 'Valor: ' + svalor, '')]);
                            ECF1.FechaRelatTEF;
                            DMProjeto.BTimer := True;
                            Exit;
                        end;
                end;
            if DMProjeto.Parametro('TEFHospedado') = 'S' then
                vias := 1;
            cv := ECF1.ImprimeTEF(cupom, vias, DMProjeto.Parametro('EsperarSegundaVia') = 'S');
            //DMProjeto.ReducaoZ_R06('RG');  {TRECHO FOI MOVIDO PARA O FINAL DO WHILE}
            while not cv do
                begin
                    if FrmMsgTEF <> nil then
                        begin
                            FrmMsgTEF.Release;
                            FrmMsgTEF := nil;
                        end;
                    if DlgMsg.ShowMsg(6040) = 200 then
                        begin
                            //sleep(2000);
                            if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                begin
                                    Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                        'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                    SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                    WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                    //Sleep(2000);
                                end;
                            SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
                            ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
                            FrmMsgTEF := TFrmMsgTEF.Create(Self);
                            FrmMsgTEF.LabelMsg.Caption := Cupom[0];
                            FrmMsgTEF.btMsgTEF.Visible := false;
                            FrmMsgTEF.Show;
                            ECF1.FechaRelatorio;
                            //sleep(2000);
                            cv := ECF1.AbreRelatTEF;
                            if DMProjeto.Parametro('TEFHospedado') = 'S' then
                                vias := 1;
                            if cv then cv := ECF1.ImprimeRelatTEF(Cupom, vias, DMProjeto.Parametro('EsperarSegundaVia') = 'S', DMProjeto.ParametroTEF('TIPO_TEF'));
                            if cv then
                                begin
                                    cv := ECF1.FechaRelatTEF;
                                    DMProjeto.ReducaoZ_R06('RG');

                                end;
                            if cv then
                                begin
                                    if FrmMsgTEF <> nil then
                                        begin
                                            FrmMsgTEF.Release;
                                            FrmMsgTEF := nil;
                                        end;
                                    if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                        begin
                                            Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                                'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                            SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                            WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                            //Sleep(2000);
                                        end;
                                    if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                        begin
                                            if not bDedicado then
                                                TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora)
                                            else
                                                begin
                                                    if (bDedicado) {and (sPromo = '')} then
                                                        begin
                                                            ConfirmaCartoesDedicado(sNSUCheque, sNSUCartao, sNSUDebito, sNSUVoucher,
                                                                sReduCheque, sReduCartao, sReduDebito, sReduVoucher);
                                                        end;
                                                    //TEFDedicado1.FinalizaCartao;
                                                end;
                                        end;
                                    DMProjeto.bTimer := True;
                                    Exit;
                                end;
                        end
                    else
                        begin
                            if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                begin
                                    Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                        'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                    SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                    WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                    //Sleep(2000);
                                end;
                            TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                            svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                            DlgMsg.ShowMsg(6039, [iif(sRede <> '', 'Rede: ' + sRede, ''), iif(sNsu <> '', #13 + 'NSU: ' + sNsu, ''), iif(sValor <> '', #13 + 'Valor: ' + svalor, '')]);
                            ECF1.FechaRelatTEF;
                            DMProjeto.BTimer := True;
                            Exit;

                            //              if not bDedicado then begin
                            //                TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')),sRede,sNsu,sValor);
                            //                svalor := FormatFloat('0.00',StrToFloat(svalor)/100);
                            //                DlgMsg.ShowMsg(6039,[iif(sRede<>'','Rede: ' + sRede,''),iif(sNsu<>'',#13+'NSU: '+sNsu,''),iif(sValor<>'',#13+'Valor: ' + svalor,'')]);
                            //              end
                            //              else begin
                            //                TEFDedicado1.FinalizaCartao;
                            //                cv := ECF1.FechaTEF;
                            //              end;
                            //              DMProjeto.bTimer := True;
                            //              Exit;
                        end;
                end;
            DMProjeto.ReducaoZ_R06('RG');
            if FrmMsgTEF <> nil then
                begin
                    FrmMsgTEF.Release;
                    FrmMsgTEF := nil;
                end;
            //sleep(2000);
            cv := ECF1.FechaTEF;
            if cv then
                begin
                    if FrmMsgTEF <> nil then
                        begin
                            FrmMsgTEF := TFrmMsgTEF.Create(Self);
                            FrmMsgTEF.LabelMsg.Caption := Cupom[0];
                            FrmMsgTEF.btMsgTEF.Visible := false;
                            FrmMsgTEF.Show;
                            DMProjeto.ReducaoZ_R06('CC');
                        end;
                end;
            if cv then
                begin
                    if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                        begin
                            Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                'Será Inicializado Agora.'), 'Aviso', mb_OK);
                            SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                            WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                            //Sleep(2000);
                        end;
                    if (DMProjeto.Parametro('TEFHospedado') = 'N') or (qtdCartao = 1) then
                        begin //fábio analizar
                            if not bDedicado then
                                TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora)
                            else
                                begin
                                    if (bDedicado) {and (sPromo = '')} then
                                        begin
                                            ConfirmaCartoesDedicado(sNSUCheque, sNSUCartao, sNSUDebito, sNSUVoucher,
                                                sReduCheque, sReduCartao, sReduDebito, sReduVoucher);
                                            qtdCartao := 0;
                                        end;
                                    //TEFDedicado1.FinalizaCartao;
                                end;
                        end;
                    DMProjeto.bTimer := True;
                end;
            while not cv do
                begin
                    if FrmMsgTEF <> nil then
                        begin
                            FrmMsgTEF.Release;
                            FrmMsgTEF := nil;
                        end;
                    if DlgMsg.ShowMsg(6040) = 200 then
                        begin
                            //sleep(2000);
                              //Sleep(2000);
                            SetForegroundWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'));
                            ShowWindow(FindWindow('TMDIProjeto', 'SyncTech - SyncLoja'), SW_MAXIMIZE);
                            FrmMsgTEF := TFrmMsgTEF.Create(Self);
                            FrmMsgTEF.LabelMsg.Caption := Cupom[0];
                            FrmMsgTEF.btMsgTEF.Visible := false;
                            FrmMsgTEF.Show;
                            ECF1.FechaRelatorio;
                            //sleep(2000);
                            cv := ECF1.AbreRelatTEF;
                            if DMProjeto.Parametro('TEFHospedado') = 'S' then
                                vias := 1;
                            if cv then cv := ECF1.ImprimeRelatTEF(Cupom, vias, DMProjeto.Parametro('EsperarSegundaVia') = 'S');
                            if cv then
                                begin
                                    cv := ECF1.FechaRelatTEF;
                                    DMProjeto.ReducaoZ_R06('RG');

                                end;
                            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                begin
                                    if cv then
                                        begin
                                            if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                                begin
                                                    Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                                        'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                                    SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                                    WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                                    //Sleep(2000);
                                                end;
                                            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                                if not bDedicado then
                                                    TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora)
                                                else
                                                    begin
                                                        if (bDedicado) and (sPromo = '') then
                                                            begin
                                                                ConfirmaCartoesDedicado(sNSUCheque, sNSUCartao, sNSUDebito, sNSUVoucher,
                                                                    sReduCheque, sReduCartao, sReduDebito, sReduVoucher);
                                                            end;
                                                        //TEFDedicado1.FinalizaCartao;
                                                    end;
                                            DMProjeto.bTimer := True;
                                            if FrmMsgTEF <> nil then
                                                begin
                                                    FrmMsgTEF.Release;
                                                    FrmMsgTEF := nil;
                                                end;
                                            Exit;
                                        end;
                                end
                            else
                                begin
                                    if not bDedicado then
                                        begin
                                            {  TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')),sRede,sNsu,sValor);
                                              svalor := Fo  rmatFloat('0.00',StrToFloat(svalor)/100);
                                              DlgMsg.ShowMsg(6039,[iif(sRede<>'','Rede: ' + sRede,''),iif(sNsu<>'',#13+'NSU: '+sNsu,''),iif(sValor<>'',#13+'Valor: ' + svalor,'')]);}
                                            FrmMsgTEF.Release;
                                            FrmMsgTEF := nil;
                                        end
                                    else //TEFDedicado1.FinalizaCartao;
                                        DMProjeto.bTimer := True;
                                    Exit;
                                end;
                        end;
                end;
            if FrmMsgTEF <> nil then
                begin
                    FrmMsgTEF.Release;
                    FrmMsgTEF := nil;
                end;
        end;
end;

function TdmECF.CancelaCupom;
var comprovante: integer;
    cupom: TStringList;
    rede2, nsu2, data2, hora2, sRede, sNSU, sValor, Msg: string;
begin
    Result := True;
    Delete(Valor, Pos(',', Valor), 1);
    (* colocar aqui a checagem do numero do cupom se bate com a ultima venda *)
    if (ECF1.Modelo <> Nenhuma) then
        begin
            if (sNumero = ECF1.COO) then
                begin
                    if NSU <> '' then
                        begin
                            if TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF'))) then
                                begin
                                    Cupom := TStringList.Create;
                                    comprovante := TEF1.CancelaPgto(IntToStr(DMProjeto.NextID('TEF')), Valor, RedeNSU, NSU, DataNSU, HoraNSU, Cupom, Msg);
                                    case comprovante of
                                        0:
                                            begin
                                                Cupom.Free;
                                                Result := False;
                                            end;
                                        1:
                                            begin
                                                if not ECF1.CancelaUltimoCupom then
                                                    begin
                                                        Cupom.Free;
                                                        Result := False;
                                                    end
                                                else
                                                    begin
                                                        if ECF1.AbreRelatTEF then
                                                            begin
                                                                if ECF1.ImprimeRelatTEF(cupom, 2, DMProjeto.Parametro('EsperarSegundaVia') = 'S') then
                                                                    begin
                                                                        if ECF1.FechaRelatTEF then
                                                                            begin
                                                                                DMProjeto.ReducaoZ_R06('RG');
                                                                                if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                                                                    begin
                                                                                        if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                                                                            begin
                                                                                                Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                                                                                    'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                                                                                SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                                                                                WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                                                                                Sleep(2000);
                                                                                            end;
                                                                                        TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede2, nsu2, data2, hora2);
                                                                                    end;
                                                                            end
                                                                        else
                                                                            begin
                                                                                TEF1.NaoConfirmaCartao(IntTOStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                                                                svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                                                                DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                                                                Cupom.Free;
                                                                                Result := False;
                                                                            end;
                                                                    end
                                                                else
                                                                    begin
                                                                        TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                                                        svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                                                        DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                                                        Cupom.Free;
                                                                        Result := False;
                                                                    end;
                                                            end
                                                        else
                                                            begin
                                                                TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), sRede, sNSU, sValor);
                                                                svalor := FormatFloat('0.00', StrToFloat(svalor) / 100);
                                                                DlgMsg.ShowMsg(6039, [iif(srede <> '', 'Rede: ' + srede, ''), iif(snsu <> '', #13 + 'NSU: ' + snsu, ''), iif(svalor <> '', #13 + 'Valor: ' + svalor, '')]);
                                                                Cupom.Free;
                                                                Result := False;
                                                            end;
                                                    end;
                                                TEF1.InicializaTEF;
                                            end;
                                        2:
                                            begin
                                                if not ECF1.CancelaUltimoCupom then
                                                    begin
                                                        Cupom.Free;
                                                        Result := False;
                                                    end;
                                            end;
                                    end;
                                end
                            else
                                begin
                                    DlgMsg.ShowMsg(50, ['Gerenciador Padrão não está ativo.']);
                                    Result := False;
                                    Exit;
                                end;
                        end
                    else if not ECF1.CancelaUltimoCupom then
                        begin
                            Result := False;
                            Exit;
                        end;
                end
            else
                begin
                    Result := False;
                    Exit;
                end;
        end;
    if (DMProjeto.PAFObrigatorio) then
        begin
            DMPRojeto.PAFCampos.GrandeTotal := DMECF.ECF1.GetGrandeTotal();
            DMPRojeto.PAFCampos.NroFabricacao_ECF := DMECF.ECF1.GetNumeroFabricacao();
            FuncoesPAF.AtualizaArquivoAuxiliar(DMPRojeto.PAFCampos, ExtractFilePath(Application.ExeName));
            //FrmConfigECF.GerarArquivoAuxiliar(); //Alterar para homologação tef
            DMPRojeto.PAFCampos := LerArquivoAuxiliar(ExtractFilePath(Application.ExeName));
        end;
end;

procedure TdmECF.DataModuleCreate(Sender: TObject);
begin
    //    ECF1.diretorio := DMProjeto.ProgPath;
    dmECF := self;
end;

procedure TDMECF.Administrativa(sBandeira: string);
var comprovante: integer;
    cupom: TStringList;
    rede, nsu, data, hora, valor, msg, dTHoraUltimoDoc: string;
    cv: boolean;
    valor2: string;
    zR06: TReducaoZ_R06;
begin
    if DMProjeto.bTEF then
        begin
            if DMProjeto.Parametro('TEFHospedado') = 'N' then
                begin
                    if (sBandeira = 'HIPER') then
                        begin
                            TEF1.diretorioreq := 'C:\HiperTEF\req';
                            TEF1.diretorioresp := 'C:\HiperTEF\resp';
                        end
                    else if (sBandeira = 'TECBAN') then
                        begin
                            TEF1.diretorioreq := 'C:\TEF_DISC\REQ';
                            TEF1.diretorioresp := 'C:\TEF_DISC\RESP';
                        end
                    else
                        begin
                            TEF1.diretorioreq := DMProjeto.sCaminhoTefReq; //'C:\TEF_DIAL\REQ';
                            TEF1.diretorioresp := DMProjeto.sCaminhoTefResp; // 'C:\TEF_DIAL\RESP';
                        end;
                end
            else
                begin
                    TEF1.diretorioreq := DMProjeto.sCaminhoTefReq; //'C:\TEF_DIAL\REQ';
                    TEF1.diretorioresp := DMProjeto.sCaminhoTefResp; // 'C:\TEF_DIAL\RESP';
                end;
            TEF1.FinalizaTEF;
            cupom := TStringList.Create;
            if TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF'))) then
                begin

                    comprovante := TEF1.Administrativa(IntToStr(DMProjeto.NextID('TEF')), Cupom, Msg);
                    if (Comprovante = 1) and (Msg = '') then Msg := 'Aguarde...';
                    if Trim(Msg) <> '' then
                        begin
                            Application.MainForm.BringToFront;
                            SetForegroundWindow(FindWindow('TMDIProjeto', PChar(Application.MainForm.Caption)));
                            ShowWindow(FindWindow('TMDIProjeto', Pchar(Application.MainForm.Caption)), SW_MAXIMIZE);
                            FrmMsgTEF := TFrmMsgTEF.Create(Self);
                            FrmMsgTEF.LabelMsg.Caption := Msg;
                            if comprovante = 1 then
                                begin
                                    FrmMsgTEF.btMsgTEF.Visible := False;
                                    FrmMsgTEF.Show;
                                end
                            else
                                begin
                                    Application.MainForm.BringToFront;
                                    SetForegroundWindow(FindWindow('TMDIProjeto', PChar(Application.MainForm.Caption)));
                                    ShowWindow(FindWindow('TMDIProjeto', Pchar(Application.MainForm.Caption)), SW_MAXIMIZE);
                                    FrmMsgTEF.btMsgTEF.Visible := True;
                                    FrmMsgTEF.BringToFront;
                                    FrmMsgTEF.ShowModal;
                                    //          FrmMsgTEF.BringToFront;
                                    //          FrmMsgTEF.Repaint;
                                    //          FrmMsgTEF.ShowModal;
                                end;
                        end;
                    if comprovante = 1 then
                        begin
                            DMProjeto.bTimer := False;
                            cv := ECF1.AbreRelatTEF;
                            if cv then cv := ECF1.ImprimeRelatTEF(cupom, 2, DMProjeto.Parametro('EsperarSegundaVia') = 'S');
                            if cv then
                                cupom.SaveToFile(ExtractFilePath(Application.ExeName) + 'ADMTEF.TXT');
                            ECF1.ImprimirArquivo(ExtractFilePath(Application.ExeName) + 'ADMTEF.TXT', 'ADMINISTRATIVO');
                            DeleteFile(ExtractFilePath(Application.ExeName) + 'ADMTEF.TXT');
                            if cv then
                                begin
                                    cv := ECF1.FechaRelatTEF;
                                    DMProjeto.ReducaoZ_R06('RG');
                                end;
                            while not cv do
                                begin
                                    if (Trim(Msg) <> '') and (FrmMsgTEF <> nil) then
                                        begin
                                            FrmMsgTEF.Release;
                                            FrmMsgTEF := nil;
                                        end;
                                    if DlgMsg.ShowMsg(6040) = 200 then
                                        begin
                                            //sleep(2000);
                                            FrmMsgTEF := TFrmMsgTEF.Create(Self);
                                            FrmMsgTEF.LabelMsg.Caption := Msg;
                                            if comprovante = 1 then
                                                begin
                                                    FrmMsgTEF.btMsgTEF.Visible := False;
                                                    FrmMsgTEF.Show;
                                                end
                                            else
                                                begin
                                                    FrmMsgTEF.BringToFront;
                                                    FrmMsgTEF.Repaint;
                                                    FrmMsgTEF.ShowModal;
                                                end;
                                            ECF1.FechaRelatorio;
                                            //sleep(2000);

                                            cv := dmECF.ECF1.AbreRelatTEF;
                                            if cv then cv := ECF1.ImprimeRelatTEF(cupom, 2, DMProjeto.Parametro('EsperarSegundaVia') = 'S');
                                            if cv then
                                                begin
                                                    cv := ECF1.FechaRelatTEF;
                                                    DMProjeto.ReducaoZ_R06('RG');
                                                end;
                                        end
                                    else
                                        Break;
                                end;
                            if cv then
                                begin
                                    if not (dmECF.TEF1.VerificaGP(IntToStr(DMProjeto.NextID('TEF')))) then
                                        begin
                                            Application.messageBox(pchar('Gerenciador Padrão não está ativo.' + #13 +
                                                'Será Inicializado Agora.'), 'Aviso', mb_OK);
                                            SetCurrentDir(ExtractFilePath(DMProjeto.sCaminhoExecTef));
                                            WinExec(pChar(DMProjeto.sCaminhoExecTef) {'C:\tef_dial\tef_dial.exe'}, sw_Show);
                                            //                 Sleep(2000);
                                        end;
                                    if DMProjeto.Parametro('TEFHospedado') = 'N' then
                                        begin
                                            TEF1.ConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), rede, nsu, data, hora);
                                        end;
                                    DMProjeto.bTimer := True;
                                end
                            else
                                begin
                                    DlgMsg.ShowMsg(6050);
                                    TEF1.NaoConfirmaCartao(IntToStr(DMProjeto.NextID('TEF')), Rede, NSU, Valor);
                                    try
                                        valor2 := FormatFloat('0.00', StrToFloat(valor) / 100);
                                    except
                                        valor2 := '';
                                    end;
                                    DlgMsg.ShowMsg(6039, [iif(Rede <> '', 'Rede: ' + Rede, ''), iif(Nsu <> '', #13 + 'NSU: ' + Nsu, ''), iif(Valor2 <> '', #13 + 'Valor: ' + valor2, '')]);
                                end;
                        end;
                end;
            Cupom.Free;
            TEF1.InicializaTEF;
            if (Trim(Msg) <> '') and (FrmMsgTEF <> nil) then
                begin
                    FrmMsgTEF.Release;
                    FrmMsgTEF := nil;
                end;
            Application.MainForm.BringToFront;
            SetForegroundWindow(FindWindow('TMDIProjeto', Pchar(Application.MainForm.Caption)));
            ShowWindow(FindWindow('TMDIProjeto', Pchar(Application.MainForm.Caption)), SW_MAXIMIZE);
            Application.ProcessMessages;
        end
    else
        begin
            ShowMessage('Gerenciador Padrão não está ativo.');
            Cupom.Free;
            TEF1.InicializaTEF;
        end;
end;

procedure TDMECF.ConfirmaCartoesDedicado(sNSUCheque, sNSUCartao, sNSUDebito, sNSUVoucher,
    sReduCheque, sReduCartao, sReduDebito, sReduVoucher: string);
var i: integer;
    NSU: string;
begin
    //  // Confirmar Cheques
    //  for i := 1 to ContaStrings( sNSUCheque, '|' ) do begin
    //    NSU := SeparaStrings( sNSUCheque, '|', i );
    //    if IndiceString( sReduCartao, '|', NSU ) < 1 then
    //      TEFDedicado1.ConfirmaCartao(NSU);
    //  end;
    //  // Confirmar cartões de crédito
    //  for i := 1 to ContaStrings( sNSUCartao, '|' ) do begin
    //    NSU := SeparaStrings( sNSUCartao, '|', i );
    //    if IndiceString( sReduCartao, '|', NSU ) < 1 then
    //      TEFDedicado1.ConfirmaCartao(NSU);
    //  end;
    //  // Confirmar cartões de débito
    //  for i := 1 to ContaStrings( sNSUDebito, '|' ) do begin
    //    NSU := SeparaStrings( sNSUDebito, '|', i );
    //    if IndiceString( sReduDebito, '|', NSU ) < 1 then
    //      TEFDedicado1.ConfirmaDebito(NSU);
    //  end;
    //  // Confirmar cartões de Voucher
    //  for i := 1 to ContaStrings( sNSUVoucher, '|' ) do begin
    //    NSU := SeparaStrings( sNSUVoucher, '|', i );
    //    if IndiceString( sReduVoucher, '|', NSU ) < 1 then
    //      TEFDedicado1.ConfirmaVoucher(NSU);
    //  end;
end;

procedure TDMECF.ConfirmaCartoesReduzido(sReduCheque, sReduCartao, sReduDebito, sReduVoucher: string);
var i: integer;
    NSU: string;
begin
    //  // Confirmar Cheques
    //  for i := 1 to ContaStrings( sReduCheque, '|' ) do begin
    //    NSU := SeparaStrings( sReduCheque, '|', i );
    //    TEFDedicado1.ConfirmaCartao(NSU);
    //  end;
    //  // Confirmar cartões de crédito
    //  for i := 1 to ContaStrings( sReduCartao, '|' ) do begin
    //    NSU := SeparaStrings( sReduCartao, '|', i );
    //    TEFDedicado1.ConfirmaCartao(NSU);
    //  end;
    //  // Confirmar cartões de débito
    //  for i := 1 to ContaStrings( sReduDebito, '|' ) do begin
    //    NSU := SeparaStrings( sReduDebito, '|', i );
    //    TEFDedicado1.ConfirmaDebito(NSU);
    //  end;
    //  // Confirmar cartões de Voucher
    //  for i := 1 to ContaStrings( sReduVoucher, '|' ) do begin
    //    NSU := SeparaStrings( sReduVoucher, '|', i );
    //    TEFDedicado1.ConfirmaVoucher(NSU);
    //  end;
end;

procedure TDMECF.AbrirAdmHospedado();
var
    ArqList: TStringList;
    Cupom: TStringList;
    a: Boolean;
    vias, i: integer;
begin
    ArqList := TStringList.Create;
    ArqList.Clear;
    ArqList.Add('000-000 = ADM');
    ArqList.Add('001-000 = 000069');
    ArqList.Add('002-000 = 000069');
    ArqList.Add('003-000 = 1,00');
    ArqList.Add('999-999 = 0');
    ArqList.SaveToFile('C:\TEF_DIAL\REQ\IntPos.001');
    ArqList.Clear;
    while not FileExists('C:\TEF_DIAL\RESP\IntPos.001') do
        begin
            sleep(2000);
            Application.ProcessMessages;
        end;
    ArqList.LoadFromFile('C:\TEF_DIAL\RESP\IntPos.001');
    while (copy(ArqList[0], 11, 3) = 'ATV') do
        begin
            //    sleep(2000);
            ArqList.Clear;
            ArqList.LoadFromFile('C:\TEF_DIAL\RESP\IntPos.001');
        end;
    Cupom := TStringList.Create;
    //   Sleep(1000);
    CopyFile(Pchar('C:\TEF_DIAL\RESP\IntPos.001'),
        Pchar('C:\TEF_DIAL\RESP\IntPos.txt'), false);
    //   Sleep(1000);
    DeleteFile('C:\TEF_DIAL\RESP\IntPos.001');
    Cupom.LoadFromFile('C:\TEF_DIAL\RESP\IntPos.txt');
    while copy(Cupom[0], 11, 3) <> 'ADM' do
        begin
            CopyFile(Pchar('C:\TEF_DIAL\RESP\IntPos.001'), Pchar('C:\TEF_DIAL\RESP\IntPos.txt'), false);
            DeleteFile('C:\TEF_DIAL\RESP\IntPos.001');
            Cupom.LoadFromFile('C:\TEF_DIAL\RESP\IntPos.txt');
        end;
    FrmMsgTEF := TFrmMsgTEF.Create(Self);
    for i := 11 to Cupom.Count - 1 do
        begin
            if Copy(Cupom[i], 1, 4) = '030-' then
                begin
                    FrmMsgTEF.LabelMsg.Caption := SoLetrasSemAspas(copy(Cupom[i], 11, 40));
                end;
        end;
    FrmMsgTEF.btMsgTEF.Visible := false;
    FrmMsgTEF.Show;
    ECF1.ImprimeRelatorioTefHospedado(Cupom);
    DeleteFile('C:\TEF_DIAL\RESP\IntPos.txt');
    if FrmMsgTEF <> nil then
        begin
            FrmMsgTEF.Release;
            FrmMsgTEF := nil;
        end;
end;

procedure TDMECF.DesfazerCartaoTefHospedado(nsu: string);
var
    ArqList: TStringList;
begin
    ArqList := TStringList.Create;
    ArqList.Clear;
    ArqList.Add('000-000 = NCN');
    ArqList.Add('001-000 = 000069');
    ArqList.Add('002-000 = 12345');
    ArqList.Add('012-000 = ' + nsu);
    ArqList.Add('027-000 = 123456785');
    ArqList.Add('999-999 = 0');
    ArqList.SaveToFile('C:\TEF_DIAL\REQ\IntPos.001');
end;

procedure TDMECF.GerarSped(dtInicio: TDateTime; dtFim: TDateTime);
begin
    //DlgMsg.ShowMsg(50,[ECF1.GerarSped(dtInicio,dtFim)]);
    ECF1.GerarSped(dtInicio, dtFim);
end;

function TDMECF.UltimoCupomEmitido(): string;
begin
    Result := ECF1.UltimoCupomEmitido;
end;

end.

