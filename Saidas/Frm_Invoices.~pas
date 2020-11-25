unit Frm_Invoices;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Frm_Saidas, Db, IBCustomDataSet, IBQuery, ExtCtrls, teDrip, tePush,
    dxCntner, FormComponent, ImgList, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxfLabel, TS_MaxPanel, dxCalc, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib,
    dxDBELib, TS_DBEditNumber, TS_PopupEdit, TS_DBMemo, dxDBGrid, dxGrClEx, DBCtrls,
    TS_DBText, TS_Image, ComCtrls, TS_PageControl, StdCtrls, Mask,
    TS_DBButtonEdit, TS_DBEditFavorecido, TS_CheckBox, DBText,
    TS_DBTextEffect, TS_DBLookupTipoFav, TS_DBCheckBox, TS_DBEdit,
    TS_DBEditDate, dxEditor, dxDBEdtr, TS_DBLookupComboBox, TS_Label,
    TS_Shape, dxTLClms, dxTL, dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, TransEff, teTimed, BTOdeum,
    Placemnt, dxfProgressBar, TS_DBImageEdit, TS_DBPopupEdit, Dlg_CFOPs,
    TS_LookupComboBox, TS_DBComboBox;

type
    TFrmInvoices = class(TFrmSaidas)
        btEstimates: TTS_SpeedButton;
        imgStatus: TImageList;
        tsNotaFiscal: TTS_TabSheet;
        TS_Label16: TTS_Label;
        TS_Label17: TTS_Label;
        TS_Bevel2: TTS_Bevel;
        pnBaseCalcICMS: TTS_Panel;
        TS_Shape16: TTS_Shape;
        TS_Label20: TTS_Label;
        dfBaseCalculo: TTS_DBEditNumber;
        pnAliqICMS: TTS_Panel;
        TS_Shape17: TTS_Shape;
        TS_Label21: TTS_Label;
        dfAliqICMS: TTS_DBEditNumber;
        pnValorICMS: TTS_Panel;
        TS_Shape18: TTS_Shape;
        TS_Label22: TTS_Label;
        dfValorICMS: TTS_DBEditNumber;
        pnBaseCalcICMSSubst: TTS_Panel;
        TS_Shape19: TTS_Shape;
        TS_Label23: TTS_Label;
        dfBaseCalcSubst: TTS_DBEditNumber;
        pnValorFrete: TTS_Panel;
        TS_Shape20: TTS_Shape;
        TS_Label5: TTS_Label;
        dfValorFrete: TTS_DBEditNumber;
        pnValorSeguro: TTS_Panel;
        TS_Shape21: TTS_Shape;
        TS_Label6: TTS_Label;
        dfValorSeguro: TTS_DBEditNumber;
        pnOutrasDespesas: TTS_Panel;
        TS_Shape22: TTS_Shape;
        TS_Label7: TTS_Label;
        dfOutrasDespesas: TTS_DBEditNumber;
        pnValorIPI: TTS_Panel;
        TS_Shape23: TTS_Shape;
        TS_Label8: TTS_Label;
        dfValorIPI: TTS_DBEditNumber;
        pnTotalNota: TTS_Panel;
        TS_Shape24: TTS_Shape;
        TS_Label9: TTS_Label;
        dfTotal: TTS_DBEditNumber;
        pnValorICMSSubst: TTS_Panel;
        TS_Shape25: TTS_Shape;
        TS_Label10: TTS_Label;
        dfValorICMSSubst: TTS_DBEditNumber;
        pnTotalProdutos: TTS_Panel;
        TS_Shape26: TTS_Shape;
        TS_Label11: TTS_Label;
        dfTotalProdutos: TTS_DBEditNumber;
        dfSerie: TTS_DBEdit;
        dfCFOPNota: TTS_DBPopupEdit;
        dfModelo: TTS_DBEdit;
        pnTransportadora: TTS_Panel;
        TS_Shape27: TTS_Shape;
        TS_Label12: TTS_Label;
        cmbTransportadora: TTS_DBLookupComboBox;
        pnCIF_FOB: TTS_Panel;
        TS_Shape28: TTS_Shape;
        TS_Label13: TTS_Label;
        dfCIF_FOB: TTS_DBImageEdit;
        pnPlaca: TTS_Panel;
        TS_Shape29: TTS_Shape;
        TS_Label14: TTS_Label;
        dfPlaca: TTS_DBEdit;
        pnEspecie: TTS_Panel;
        TS_Shape30: TTS_Shape;
        TS_Label15: TTS_Label;
        dfEspecie: TTS_DBEdit;
        pnMarca: TTS_Panel;
        TS_Shape31: TTS_Shape;
        TS_Label18: TTS_Label;
        dfMarca: TTS_DBEdit;
        pnPesoBruto: TTS_Panel;
        TS_Shape32: TTS_Shape;
        TS_Label19: TTS_Label;
        dfPesoBruto: TTS_DBEditNumber;
        pnPesoLiquido: TTS_Panel;
        TS_Shape33: TTS_Shape;
        TS_Label24: TTS_Label;
        dfPesoLiquido: TTS_DBEditNumber;
        TS_Label25: TTS_Label;
        pnServicos: TTS_Panel;
        TS_Label27: TTS_Label;
        TS_DBText6: TTS_DBText;
        TS_Label28: TTS_Label;
        TS_Label26: TTS_Label;
        TS_DBText2: TTS_DBText;
        TS_Panel3: TTS_Panel;
        TS_Shape7: TTS_Shape;
        TS_Label29: TTS_Label;
        TS_DBText8: TTS_DBText;
        btConsig: TTS_SpeedButton;
        ppmConsig: TTS_PopupMenu;
        Itens1: TMenuItem;
        Movimentos1: TMenuItem;
        lbISS: TTS_Label;
        pnStatusNFe: TTS_Panel;
        lbStatusNFe: TTS_Label;
        cmbStatusNFe: TTS_DBLookupComboBox;
        dbgItenslkCFOPs: TdxDBGridLookupColumn;
        btnOficina: TTS_SpeedButton;
    dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn;
        procedure FormCreate(Sender: TObject);
        procedure lbOperacaoSetParametrosForm(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure btEstimatesClick(Sender: TObject);
        procedure dfCFOPNotaInitPopup(Sender: TObject);
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure dbgItensCFOPInitPopup(Sender: TObject);
        procedure cmbTipoMovimentoClick(Sender: TObject);
        procedure Itens1Click(Sender: TObject);
        procedure Movimentos1Click(Sender: TObject);
        procedure btConsigMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btItensUpClick(Sender: TObject);
        procedure btItensDownClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure dfObsKeyPress(Sender: TObject; var Key: Char);
        procedure ppmPadraoPopup(Sender: TObject);
        procedure dfVolumesValidate(Sender: TObject; var ErrorText: string;
            var Accept: Boolean);
        procedure dfObsValidate(Sender: TObject; var ErrorText: string;
            var Accept: Boolean);
        procedure btnOficinaClick(Sender: TObject);
    procedure dfDescontoExit(Sender: TObject);
    private
        DlgCFOPs, DlgCFOPs2: TDlgCFOPs;
    protected
        procedure AtualizaDadosCliente; override;
        procedure MescConsig(tipo: integer);
    public
        { Public declarations }
    end;

var
    FrmInvoices: TFrmInvoices;

implementation
uses DM_Projeto, DM_Invoices, Funcoes, Dlg_MesclarMovimentos, Dlg_MescAcertSaida, Frm_Oficina,
    Form_Padrao, FRM_PADRAO, DM_Saidas;

{$R *.DFM}

procedure TFrmInvoices.FormCreate(Sender: TObject);
begin
    inherited;
    FrmInvoices := self;
    DlgCFOPs := TDlgCFOPs.Create(self, DMInvoices.C_CFOPsDS, nil);
    DlgCFOPs2 := TDlgCFOPs.Create(self, DMInvoices.C_CFOPsDS, dbgItensCFOP);
    pgCabecalho.activepage := tsCabecalho;
end;

procedure TFrmInvoices.lbOperacaoSetParametrosForm(Sender: TObject);
begin
    DMProjeto.SetParametrosForm([DMInvoices.C_TabelaTIPOMOVIMENTO.asVariant, 1]);
end;

procedure TFrmInvoices.AtualizaDadosCliente;
begin
    inherited;
    if Application.Terminated then
        exit; //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

    if DMInvoices.GetMovimentos('2,3') > 0 then
        btEstimates.Font.Color := clRed
    else
        btEstimates.Font.Color := clBlack;

end;

procedure TFrmInvoices.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    btEstimates.Font.Color := clBlack;
    lbISS.Caption := FormatFloat('#0.0%', DMProjeto.nISS);
end;

procedure TFrmInvoices.dfFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    {Verificando se o cliente possui Estimates em aberto para aproveitamente}
    {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
     já deve indicar se existem ou não - dispensando uma nova consulta}
    if DMProjeto.Parametro('AlertasVenda') = 'S' then
        begin
            if (btEstimates.Font.Color = clred) and (not DMInvoices.bAlteracao) and (sTipoAbertura <> 'FATURAR OPERACAO') and (DMProjeto.LerPermissao(Self.Name, 'EST_SO')) then
                begin
                    if DlgMsg.ShowMsg(2186) = 100 then
                        begin
                            btEstimatesclick(self);
                        end;
                end;
        end;
end;

procedure TFrmInvoices.btEstimatesClick(Sender: TObject);
begin
    inherited;
    if not DMProjeto.DlgAutorizacao.ExecuteX(Self.Name, 'EST_SO') then
        exit;

    if DMInvoices.C_TabelaSituacao.Value = 'C' then
        exit;

    if DMInvoices.C_tabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(543);
            exit;
        end;
    bNAOPermitirItemDuplicado := False;
    DlgMesclarMovimentos := TDlgMesclarMovimentos.Create(self);
    DlgMesclarMovimentos.sTipos := '2,3';
    DlgMesclarMovimentos.DM := DMInvoices;
    DlgMesclarMovimentos.sSaida := dbtNumero.Caption;
    DlgMesclarMovimentos.GridItens := dbgItens;
    DlgMesclarMovimentos.ShowModal;
    DlgMesclarMovimentos.Release;
    dbtNumero.Caption := '';

    //Para Atualizar Ordem de digitação e sequencial;
    DMInvoices.C_TabelaAfterScroll(DMInvoices.C_Tabela);

    pgItens.ActivePageIndex := 0;

    ActiveControl := nil;

    PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmInvoices.dfCFOPNotaInitPopup(Sender: TObject);
begin
    inherited;
    TTS_DBPopupEdit(Sender).PopupControl := DlgCFOPs.pnCFOP;
    DlgCFOPs.SetEventos(TTS_DBPopupEdit(Sender));
    DlgCFOPs.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmInvoices.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    DlgCFOPs.Free;
    DlgCFOPs2.Free;
end;

procedure TFrmInvoices.dbgItensCFOPInitPopup(Sender: TObject);
begin
    inherited;
    dbgItensCFOP.PopupControl := nil;
    DlgCFOPs2.SetDS(DMInvoices.C_CFOPsDS);
    dbgItensCFOP.PopupControl := DlgCFOPs2.pnCFOP;
    DlgCFOPs2.SetColuna(dbgItensCFOP);
    DlgCFOPs2.SetFiltro('substring(cfop,1,1) >= ''5''');
end;

procedure TFrmInvoices.cmbTipoMovimentoClick(Sender: TObject);
begin
    inherited;
    pnServicos.visible := (DMSaida.C_TiposMovimentoPOSSUIISS.Value = 'S');
end;

procedure TFrmInvoices.MescConsig(tipo: integer);
begin
    if DMInvoices.C_TabelaSituacao.Value = 'C' then
        exit;

    if DMInvoices.C_tabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(543);
            exit;
        end;

    DlgMescAcertSaida := TDlgMescAcertSaida.Create(self);
    DlgMescAcertSaida.sTipos := '4';
    DlgMescAcertSaida.DM := DMInvoices;
    DlgMescAcertSaida.GridItens := dbgItens;
    if tipo = 1 then
        begin
            DlgMescAcertSaida.GridAcerto.Visible := True;
            DlgMescAcertSaida.GridMovs.Visible := False;
        end
    else
        begin
            DlgMescAcertSaida.GridAcerto.Visible := False;
            DlgMescAcertSaida.GridMovs.Visible := True;
        end;
    DlgMescAcertSaida.ShowModal;
    DlgMescAcertSaida.Release;

    //Para Atualizar Ordem de digitação e sequencial;
    DMInvoices.C_TabelaAfterScroll(DMInvoices.C_Tabela);

    DMInvoices.C_Itens.First;
    while not DMInvoices.C_Itens.Eof do
        begin
            if DMInvoices.C_ItensQuantidade.Value = 0 then
                DMInvoices.C_Itens.Delete
            else
                DMInvoices.C_Itens.Next;
        end;
    pgItens.ActivePageIndex := 0;

    ActiveControl := nil;

    PostMessage(Handle, PM_Foco, 0, 0);
end;

procedure TFrmInvoices.Itens1Click(Sender: TObject);
begin
    inherited;
    MescConsig(1);
end;

procedure TFrmInvoices.Movimentos1Click(Sender: TObject);
begin
    inherited;
    MescConsig(2);
end;

procedure TFrmInvoices.btConsigMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ppmConsig.PopupFromCursorPos;
end;

procedure TFrmInvoices.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;

    if ((DMInvoices.C_TabelaSTATUSNFE.Value in [100, 110, 204]) or
        (DMInvoices.C_TabelaSTATUSNFE.Value = 135) or
        (DMInvoices.C_TabelaSTATUSNFE.Value = 301) or
        (DMInvoices.C_TabelaSTATUSNFE.Value = 302) or
        (DMInvoices.C_TabelaSTATUSNFE.Value = 303) or
        ((DMInvoices.C_Tabela.FieldByName('STATUS').Value = 'F') and
        (DMInvoices.C_Tabela.FieldByName('TOTAL').Value = DMInvoices.C_Tabela.FieldByName('PAGOINVOICE').Value))) then
        begin
            dbgItens.Enabled := false;
            tsNotaFiscal.Enabled := false;
            dfFavorecido.Enabled := false;
            cmbTipoFav.Enabled := false;
            cmbTipoMovimento.Enabled := false;
            pnData.Enabled := false;
            pnNumero.Enabled := false;
            pnCliente.Enabled := false;
            pnDataEntrega.Enabled := false;
            pnSomaTotal.Enabled := false;
            tsTermos.Enabled := false;
            lbTermos.LinkTo := '';

            { Felipe - Parâmetro criado para bloquear/desbloquear o combobox do vendedor nas operações de saída (12/07/2016) }
            cmbVendedor.ReadOnly := DMSaida.bBloquearVendedor;
        end
    else
        begin
            dbgItens.Enabled := true;
            tsNotaFiscal.Enabled := true;
            dfFavorecido.Enabled := true;
            cmbTipoFav.Enabled := true;
            cmbTipoMovimento.Enabled := true;
            pnCliente.Enabled := true;
            pnData.Enabled := true;
            pnNumero.Enabled := true;
            pnDataEntrega.Enabled := true;
            pnSomaTotal.Enabled := true;
            tsTermos.Enabled := true;
            lbTermos.LinkTo := 'FrmPlanos_Pagamento';
            cmbVendedor.ReadOnly := False;
        end;

    { Felipe - Carrega o volume informado na operação. Caso seja preciso alterar o volume, deve-se alterar a quantidade de um ou mais itens ou digitar
    a novo valor do Volume no seu campo. (25/08/2015) }
    if (DMInvoices.C_TabelaVOLUMES.Value > 0) then
        DMSaida.volumeEdit := DMInvoices.C_TabelaVOLUMES.Value;

end;

procedure TFrmInvoices.btGravarClick(Sender: TObject);
begin
    //DMInvoices.C_TabelaTIPOFRETE.Value := FrmInvoices.dfCIF_FOB.Text;
    inherited;
end;

procedure TFrmInvoices.btItensUpClick(Sender: TObject);
begin
    inherited;
    pnStatusNFe.Visible := false;
end;

procedure TFrmInvoices.btItensDownClick(Sender: TObject);
begin
    inherited;
    pnStatusNFe.Visible := true;
end;

procedure TFrmInvoices.FormShow(Sender: TObject);
begin
    inherited;
    DMSaida.C_Tabela.Edit;
    DMSaida.C_TabelaTIPOMOVIMENTO.value := DMProjeto.TipoPadraoInicial(1, 'S', DMSaida.nTipoMovimento);
    btnOficina.Visible := DMProjeto.bPermitirOficina;
end;

procedure TFrmInvoices.dfObsKeyPress(Sender: TObject; var Key: Char);
begin
    inherited;
    if (key in ['@', '&']) then
        begin
            DlgMsg.ShowMsg(50, ['Para o campo informações não utilizar: ' + #13 +
                '@' + #13 + '&']);
            key := #0;
        end;
end;

procedure TFrmInvoices.ppmPadraoPopup(Sender: TObject);
begin
    inherited;
    if (DMInvoices.C_Tabela.FieldByName('STATUSNFE').Value = 100) or (DMInvoices.C_Tabela.FieldByName('SITUACAO').Value = 'C') then
        ApagarDados.Visible := False
    else
        ApagarDados.Visible := True;
end;

procedure TFrmInvoices.dfVolumesValidate(Sender: TObject;
    var ErrorText: string; var Accept: Boolean);
begin
    inherited;
    DMSaida.volumeEdit := dfVolumes.Value;
end;

procedure TFrmInvoices.dfObsValidate(Sender: TObject;
    var ErrorText: string; var Accept: Boolean);
begin
    inherited;
    if (dfObs.Text <> '') then
        begin
            dfObs.Text := Replace(dfObs.Text, #$D#$A, ' ');
        end;
end;

procedure TFrmInvoices.btnOficinaClick(Sender: TObject);
begin
    inherited;
    FrmOficina := TFrmOficina.Create(Self);
    FrmOficina.idSaida := DMInvoices.C_TabelaIDMESTRE.Value;

    if (DMSaida.idOficina > 0) then
        FrmOficina.idOficina := DMSaida.idOficina;

    FrmOficina.ShowModal;
    DMSaida.idOficina := FrmOficina.idOficina;
    FrmOficina.Release;
    FrmOficina := nil;

end;

procedure TFrmInvoices.dfDescontoExit(Sender: TObject);
begin
  inherited;
            while not DMSaida.C_Itens.EOF do
                begin
                    DMSaida.C_Itens.Edit;
//                    C_ItensRATEIODESCONTO.Value := Truncar(Abs((C_TabelaDesconto.Value * (C_ItensSubTotalItem.Value / C_TabelaTOTALITENS123.Value))), 2);
//                    SomaRateio := SomaRateio + Abs(C_ItensRATEIODESCONTO.Value);
                    DMSaida.C_ItensBASECALCICMSPROD.Value := DMSaida.C_ItensBASECALCICMSPROD.Value - DMSaida.C_ItensRATEIODESCONTO.Value ;
                    DMSaida.C_ItensVALORICMSPROD.Value := DMSaida.C_ItensBASECALCICMSPROD.Value * (DMSaida.C_ItensALIQICMS.Value/100 );
                    DMSaida.C_Itens.Post;
                    DMSaida.C_Itens.Next;
                end;
end;

end.

