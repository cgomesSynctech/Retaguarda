unit Frm_SalesOrder;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Frm_Saidas, Db, IBCustomDataSet, IBQuery, ExtCtrls, teDrip, tePush,
    dxCntner, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel,
    TS_MaxPanel, dxCalc, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib, dxDBELib,
    TS_DBEditNumber, TS_PopupEdit, TS_DBMemo, dxDBGrid, dxGrClEx, DBCtrls,
    TS_DBText, TS_Image, ComCtrls, TS_PageControl, StdCtrls, Mask,
    TS_DBButtonEdit, TS_DBEditFavorecido, TS_CheckBox, DBText,
    TS_DBTextEffect, TS_DBLookupTipoFav, TS_DBCheckBox, TS_DBEdit,
    TS_DBEditDate, dxEditor, dxDBEdtr, TS_DBLookupComboBox, TS_Label,
    TS_Shape, dxTLClms, dxTL, dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, TransEff, teTimed, BTOdeum,
    Placemnt, dxfProgressBar, TS_LookupComboBox, CheckLst, TS_CheckListBox,
    TS_DBImageEdit, TS_DBComboBox;

type
    TFrmSalesOrder = class(TFrmSaidas)
        btEstimates: TTS_SpeedButton;
        imgStatus: TImageList;
        Complemento1: TMenuItem;
        dbgItensPRECOCUSTOLICITACAO: TdxDBGridMaskColumn;
        dbgItensSUBTOTALITEMLICITACAO: TdxDBGridCalcColumn;
        dbgItensDIFSUBTOTALLICITACAO: TdxDBGridCalcColumn;
        dbgItensPERCLUCROLICITACAO: TdxDBGridMaskColumn;
        dbgItensEstoque: TdxDBGridMaskColumn;
    btnOficina: TTS_SpeedButton;
    dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn;
    dbgItens_icSelecionado: TdxDBGridColumn;
    dbgItensI_TIPOITEM: TdxDBGridMaskColumn;
    dbgItensColumn65: TdxDBGridMaskColumn;
    dbgItensI_DESCRICAOCOMPRA: TdxDBGridMaskColumn;
    dbgItensI_GRUPO: TdxDBGridMaskColumn;
    dbgItensColumn68: TdxDBGridMaskColumn;
    dbgItensI_QTDEMINIMO: TdxDBGridCurrencyColumn;
    dbgItensI_QTDEMAXIMO: TdxDBGridCurrencyColumn;
    dbgItensI_TAXAVEL: TdxDBGridMaskColumn;
    dbgItensI_ULTIMOFORNECEDOR: TdxDBGridMaskColumn;
    dbgItensColumn73: TdxDBGridCurrencyColumn;
    dbgItensI_APLICARANTESTAX: TdxDBGridMaskColumn;
    dbgItensColumn75: TdxDBGridMaskColumn;
    dbgItensI_ESTOQUE: TdxDBGridCurrencyColumn;
    dbgItensI_BALANCO: TdxDBGridMaskColumn;
    dbgItensI_COMISSAO: TdxDBGridCurrencyColumn;
    dbgItensI_DESCONTOMAXIMO: TdxDBGridCurrencyColumn;
    dbgItensI_TAXINCLUSO: TdxDBGridMaskColumn;
    dbgItensI_CONTA_VENDA: TdxDBGridMaskColumn;
    dbgItensI_CONTA_CUSTO: TdxDBGridMaskColumn;
    dbgItensI_CONTA_INVENT: TdxDBGridMaskColumn;
    dbgItensI_FOTO: TdxDBGridMaskColumn;
    dbgItensI_PROMOCAO: TdxDBGridMaskColumn;
    dbgItensI_PONTOPEDIDO: TdxDBGridCurrencyColumn;
    dbgItensI_LOCALIZACAO: TdxDBGridMaskColumn;
    dbgItensI_FATORLUCRO: TdxDBGridMaskColumn;
    dbgItensI_REFERENCIA: TdxDBGridMaskColumn;
    dbgItensI_SEMLUCRO: TdxDBGridMaskColumn;
    dbgItensI_UNIDADEENTRADA: TdxDBGridMaskColumn;
    dbgItensI_UNIDADECARGA: TdxDBGridMaskColumn;
    dbgItensI_UNIDADEVAREJO: TdxDBGridMaskColumn;
    dbgItensI_UNIDADEMINIMA: TdxDBGridMaskColumn;
    dbgItensI_CUSTOMEDIO: TdxDBGridMaskColumn;
    dbgItensI_FATORUNDVENDA: TdxDBGridMaskColumn;
    dbgItensI_FATORUNDCOMPRA: TdxDBGridMaskColumn;
    dbgItensI_PESOLIQUIDO: TdxDBGridCurrencyColumn;
    dbgItensI_PESOBRUTO: TdxDBGridCurrencyColumn;
    dbgItensI_DescricaoComplementar: TdxDBGridMaskColumn;
    dbgItensI_DescricaoTecnica: TdxDBGridMaskColumn;
    dbgItensI_GRUPOCOMISSAO: TdxDBGridMaskColumn;
    dbgItensI_INDEXADOR: TdxDBGridMaskColumn;
    dbgItensI_COMLUCRO: TdxDBGridMaskColumn;
    dbgItensColumn105: TdxDBGridMaskColumn;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensColumn107: TdxDBGridMaskColumn;
    dbgItensColumn108: TdxDBGridMaskColumn;
    dbgItensColumn109: TdxDBGridMaskColumn;
    dbgItensColumn110: TdxDBGridMaskColumn;
    dbgItensIDMESTRE: TdxDBGridMaskColumn;
    dbgItensIDITEM: TdxDBGridMaskColumn;
    dbgItensUNIDADEINTEIRA: TdxDBGridMaskColumn;
    dbgItensDESCRICAOUNIDADE: TdxDBGridMaskColumn;
    dbgItensORDEM: TdxDBGridMaskColumn;
    dbgItensColumn116: TdxDBGridColumn;
    dbgItensHASCHILDREN: TdxDBGridMaskColumn;
    dbgItensTABELAPRECO: TdxDBGridMaskColumn;
    dbgItenscfBaixoEstoque: TdxDBGridColumn;
    dbgItensCONTAVENDA: TdxDBGridMaskColumn;
    dbgItensTAXAVEL: TdxDBGridMaskColumn;
    dbgItensQ_SaidasItensFilhos: TdxDBGridColumn;
    dbgItensOrdemMontagem: TdxDBGridMaskColumn;
    dbgItensPRODUCAO: TdxDBGridMaskColumn;
    dbgItensColumn125: TdxDBGridMaskColumn;
    dbgItenslkFuncProducao: TdxDBGridLookupColumn;
    dbgItensCHAVEPRODUCAOFUNC: TdxDBGridMaskColumn;
    dbgItensColumn128: TdxDBGridMaskColumn;
    dbgItensColumn129: TdxDBGridMaskColumn;
    dbgItensColumn130: TdxDBGridMaskColumn;
    dbgItensColumn131: TdxDBGridMaskColumn;
    dbgItenscfValorMaxDesconto: TdxDBGridColumn;
    dbgItensENTRADAITEM: TdxDBGridMaskColumn;
    dbgItensDESPESA: TdxDBGridMaskColumn;
    dbgItensQ_Mesclagens: TdxDBGridColumn;
    dbgItensColumn136: TdxDBGridMaskColumn;
    dbgItensTrocouItem: TdxDBGridColumn;
    dbgItensOLDITEM: TdxDBGridMaskColumn;
    dbgItensColumn139: TdxDBGridColumn;
    dbgItensFOTOGRUPO: TdxDBGridMaskColumn;
    dbgItensColumn141: TdxDBGridMaskColumn;
    dbgItensSTATUSOLD: TdxDBGridMaskColumn;
    dbgItensColumn143: TdxDBGridMaskColumn;
    dbgItensUNIDADE: TdxDBGridMaskColumn;
    dbgItensColumn145: TdxDBGridMaskColumn;
    dbgItensColumn146: TdxDBGridMaskColumn;
    dbgItensALMOXARIFADO: TdxDBGridMaskColumn;
    dbgItensDESCRICAOCOMPLEMENTAR: TdxDBGridMaskColumn;
    dbgItensSITUACAOECF: TdxDBGridMaskColumn;
    dbgItensColumn150: TdxDBGridMaskColumn;
    dbgItensColumn151: TdxDBGridMaskColumn;
    dbgItensCFOPNOTA: TdxDBGridMaskColumn;
    dbgItensDATACONTATO: TdxDBGridDateColumn;
    dbgItensBAIXAESTOQUEFISCAL: TdxDBGridMaskColumn;
    dbgItensColumn155: TdxDBGridMaskColumn;
    dbgItensIDTRIBFEDERAL: TdxDBGridMaskColumn;
    dbgItenslkUnidade: TdxDBGridLookupColumn;
    dbgItensColumn158: TdxDBGridLookupColumn;
    dbgItenslkSitECF: TdxDBGridLookupColumn;
    dbgItenslkCFOP: TdxDBGridLookupColumn;
    dbgItensColumn161: TdxDBGridColumn;
    dbgItensicFoto: TdxDBGridColumn;
    dbgItensicPercDesconto: TdxDBGridColumn;
    dbgItensColumn164: TdxDBGridColumn;
    dbgItensColumn165: TdxDBGridMaskColumn;
    dbgItensI_CODIGOBARRAS: TdxDBGridMaskColumn;
    dbgItensPDV: TdxDBGridMaskColumn;
    dbgItensIMPORTACAO: TdxDBGridMaskColumn;
    dbgItensColumn169: TdxDBGridMaskColumn;
    dbgItensEMPRESA: TdxDBGridMaskColumn;
    dbgItensColumn171: TdxDBGridMaskColumn;
    dbgItensColumn172: TdxDBGridMaskColumn;
    dbgItensI_IDENTIFICACAO: TdxDBGridMaskColumn;
    dbgItensI_ITEM: TdxDBGridMaskColumn;
    dbgItensCalcSubTotalPrecoLicitacao: TdxDBGridColumn;
    dbgItensColumn176: TdxDBGridColumn;
    dbgItensColumn177: TdxDBGridColumn;
    dbgItensSUBTOTALITEM: TdxDBGridMaskColumn;
    dbgItensColumn179: TdxDBGridMaskColumn;
    dbgItensRATEIODESCONTO: TdxDBGridMaskColumn;
    dbgItensCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgItensMAXDESCONTO: TdxDBGridMaskColumn;
    dbgItensOLDQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensCUSTOCONTABIL: TdxDBGridMaskColumn;
    dbgItensColumn185: TdxDBGridMaskColumn;
    dbgItensQTDMONTAGEM: TdxDBGridMaskColumn;
    dbgItensFATOR: TdxDBGridMaskColumn;
    dbgItensOLDPRECO: TdxDBGridMaskColumn;
    dbgItensOLDUNIDADE: TdxDBGridMaskColumn;
    dbgItensDESCONTO: TdxDBGridMaskColumn;
    dbgItensColumn191: TdxDBGridMaskColumn;
    dbgItensPRECOSEMPROMOCAO: TdxDBGridMaskColumn;
    dbgItensColumn193: TdxDBGridMaskColumn;
    dbgItensColumn194: TdxDBGridMaskColumn;
    dbgItensColumn195: TdxDBGridMaskColumn;
    dbgItensREDUCAOCST: TdxDBGridMaskColumn;
    dbgItensColumn197: TdxDBGridMaskColumn;
    dbgItensColumn198: TdxDBGridMaskColumn;
    dbgItensColumn199: TdxDBGridMaskColumn;
    dbgItensColumn200: TdxDBGridMaskColumn;
    dbgItensVALORISENTASPROD: TdxDBGridMaskColumn;
    dbgItensColumn202: TdxDBGridMaskColumn;
    dbgItensColumn203: TdxDBGridMaskColumn;
    dbgItensColumn204: TdxDBGridMaskColumn;
    dbgItensColumn205: TdxDBGridMaskColumn;
    dbgItensPCOMISSAO: TdxDBGridMaskColumn;
    dbgItensDESCONTOMAXIMOGRUPO: TdxDBGridCurrencyColumn;
    dbgItensColumn208: TdxDBGridMaskColumn;
    dbgItensColumn209: TdxDBGridMaskColumn;
    dbgItensRATEIODESPESAS: TdxDBGridMaskColumn;
    dbgItensRATEIOFRETE: TdxDBGridMaskColumn;
    dbgItensRATEIOSEGURO: TdxDBGridMaskColumn;
    dbgItensColumn213: TdxDBGridMaskColumn;
    dbgItensColumn214: TdxDBGridMaskColumn;
    dbgItensN_USOTIPOITEM: TdxDBGridMaskColumn;
    dbgItensColumn216: TdxDBGridMaskColumn;
    dbgItenslkCSTIPI: TdxDBGridLookupColumn;
    dbgItenslkCSTPisCofins: TdxDBGridLookupColumn;
    dbgItensicUltPrecoCliente: TdxDBGridColumn;
    TS_Indicacao: TTS_Panel;
    TS_Label30: TTS_Label;
    TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        procedure FormCreate(Sender: TObject);
        procedure lbOperacaoSetParametrosForm(Sender: TObject);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure btEstimatesClick(Sender: TObject);
        procedure dbgItensTS_BeforeDeleteAll(Sender: TObject;
            var CanDelete: Boolean);
        procedure FormShow(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
    procedure dfObsValidate(Sender: TObject; var ErrorText: String;
      var Accept: Boolean);
    procedure btnOficinaClick(Sender: TObject);
    private
        { Private declarations }
    protected
        procedure AtualizaDadosCliente; override;

    public
        { Public declarations }
    end;

var
    FrmSalesOrder: TFrmSalesOrder;

implementation
uses DM_Projeto, DM_SalesOrder, Funcoes, Dlg_MesclarMovimentos, DM_Saidas, Frm_Oficina;

{$R *.DFM}

procedure TFrmSalesOrder.FormCreate(Sender: TObject);
begin
    inherited;
    FrmSalesOrder := self;
    if DMProjeto.Parametro('ultprecocliente') = 'N' then begin
       dbgItensicUltPrecoCliente.Visible := False ;
    end;

end;

procedure TFrmSalesOrder.lbOperacaoSetParametrosForm(Sender: TObject);
begin
    DMProjeto.SetParametrosForm([DMSalesOrder.C_TabelaTIPOMOVIMENTO.asVariant, 2]);
end;

procedure TFrmSalesOrder.AtualizaDadosCliente;
begin
    inherited;
    if Application.Terminated then
        exit; //para não dar erro quando fechar a aplicação pelo X e esta tela estiver aberta;

    if DMSalesOrder.GetMovimentos('3') > 0 then
        btEstimates.Font.Color := clRed
    else
        btEstimates.Font.Color := clBlack;

end;

procedure TFrmSalesOrder.FormComponentEstado_Inicial(Sender: TObject; var bSkip: Boolean);

begin
    inherited;
    btEstimates.Font.Color := clBlack;

end;

procedure TFrmSalesOrder.dfFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    {Verificando se o cliente possui Estimates em aberto para aproveitamente}
    {A esta altura o método atualizadadoscliente já ocorreu, portanto o botão de estimates
     já deve indicar se existem ou não - dispensando uma nova consulta}
    if DMProjeto.Parametro('AlertasVenda') = 'S' then
        begin
            if (btEstimates.Font.Color = clred) and not DMSalesOrder.bAlteracao and (sTipoAbertura <> 'FATURAR OPERACAO') then
                begin
                    if DlgMsg.ShowMsg(2185) = 100 then
                        begin
                            btEstimatesclick(self);
                        end;
                end;
        end;
end;

procedure TFrmSalesOrder.btEstimatesClick(Sender: TObject);
begin
    inherited;
    if DMSalesOrder.C_TabelaSituacao.Value = 'C' then
        exit;

    if DMSalesOrder.C_tabelaFavorecido.Value = 0 then
        begin
            DlgMsg.ShowMsg(543);
            exit;
        end;

    DlgMesclarMovimentos := TDlgMesclarMovimentos.Create(self);
    DlgMesclarMovimentos.sTipos := '3';
    DlgMesclarMovimentos.DM := DMSalesOrder;
    DlgMesclarMovimentos.GridItens := dbgItens;
    DlgMesclarMovimentos.ShowModal;
    DlgMesclarMovimentos.Release;

    //Para Atualizar Ordem de digitação e sequencial;
    DMSalesOrder.C_TabelaAfterScroll(DMSalesOrder.C_Tabela);

    pgItens.ActivePageIndex := 0;
    ActiveControl := nil;

    PostMessage(Handle, PM_Foco, 0, 0);

end;

procedure TFrmSalesOrder.dbgItensTS_BeforeDeleteAll(Sender: TObject;
    var CanDelete: Boolean);
begin
    inherited;
    if not (DMSaida.C_Itens.State in [dsEdit, dsInsert]) then
        DMSaida.C_Itens.Edit;
    DMSaida.C_ItensSituacao.Value := 'C';
    CanDelete := DMProjeto.DlgAutorizacao.ExecuteX(DMSaida.sForm, 'CanItemVR', '', False,
        'Item:' + DMSaida.C_ItensDescricao.AsString + #13#10 + 'Preço:' + DMSaida.C_ItensPreco.AsString,
        DMSaida.C_ItensITEM.AsInteger, 'FrmItens');
    //    if (DMProjeto.nModeloECF <> 0) then
    //    begin
    //        if CanDelete then
    //            with DMSaida do
    //            begin
    //                if (DMProjeto.bECFAtivo) then
    //                begin
    //                    if not DMECF.ECF1.CancelaItem(C_ItensSEQUENCIA.AsString, C_ItensI_CODIGO.AsString, C_ItensSITUACAOECF.Value, FormatFloat(DMProjeto.sCasasDecimais, C_ItensALIQICMS.Value),
    //                        FormatFloat('0.000', C_ItensQUANTIDADE.Value), '$', '0000', FormatFloat(DMProjeto.sCasasDecimais, C_ItensPRECO.Value)) then
    //                    begin
    //                        ShowMessage('Item não pode ser cancelado');
    //                        CanDelete := false;
    //                        Exit;
    //                    end;
    //                end;
    //            end;
    //    end
    //    else
    //    begin if CanDelete then
    //     //     DMSaida.C_Itens.delete;
    //    end;

end;

procedure TFrmSalesOrder.FormShow(Sender: TObject);
var
    tipopadrao: integer;
begin
    inherited;
    tipopadrao := DMProjeto.TipoPadraoInicial(2, 'S', DMSaida.nTipoMovimento);
    if tipopadrao <> 0 then
        begin
            DMSaida.C_Tabela.Edit;
            DMSaida.C_TabelaTIPOMOVIMENTO.value := tipopadrao;
        end;
    if DMProjeto.Parametro('IndicacaoVendas') = 'S' then
        TS_Indicacao.Visible := True ;

    btnOficina.Visible := DMProjeto.bPermitirOficina;
end;

procedure TFrmSalesOrder.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;
    if ((DMSalesOrder.C_Tabela.FieldByName('STATUS').Value = 'F') or
        (DMSalesOrder.C_Tabela.FieldByName('TOTAL').Value = DMSalesOrder.C_Tabela.FieldByName('PAGOINVOICE').Value)) then
        begin
            dbgItens.Enabled := false;
            dfFavorecido.Enabled := false;
            cmbTipoFav.Enabled := false;
            cmbTipoMovimento.Enabled := false;
            pnData.Enabled := false;
            pnNumero.Enabled := false;
            pnCliente.Enabled := false;
            pnDataEntrega.Enabled := false;
            pnSomaTotal.Enabled := false;
            tsTermos.Enabled := false;
            dfStatus.Enabled := false;
            lbTermos.LinkTo := '';

            { Felipe - Parâmetro criado para bloquear/desbloquear o combobox do vendedor nas operações de saída (12/07/2016) }
            cmbVendedor.ReadOnly := DMSaida.bBloquearVendedor;
        end
    else
        begin
            dbgItens.Enabled := true;
            dfFavorecido.Enabled := true;
            cmbTipoFav.Enabled := true;
            cmbTipoMovimento.Enabled := true;
            pnCliente.Enabled := true;
            pnData.Enabled := true;
            pnNumero.Enabled := true;
            pnDataEntrega.Enabled := true;
            pnSomaTotal.Enabled := true;
            dfStatus.Enabled := true;
            tsTermos.Enabled := true;
            lbTermos.LinkTo := 'FrmPlanos_Pagamento';
            cmbVendedor.ReadOnly := False;
        end;
end;

procedure TFrmSalesOrder.dfObsValidate(Sender: TObject;
  var ErrorText: String; var Accept: Boolean);
begin
  inherited;
    if (dfObs.Text <> '') then
    begin
        dfObs.Text := Replace(dfObs.Text, #$D#$A, ' ');
    end;
end;

procedure TFrmSalesOrder.btnOficinaClick(Sender: TObject);
begin
  inherited;
    FrmOficina := TFrmOficina.Create(Self);
    FrmOficina.idSaida := DMSalesOrder.C_TabelaIDMESTRE.Value;

    if (DMSaida.idOficina > 0) then
        FrmOficina.idOficina := DMSaida.idOficina;

    FrmOficina.ShowModal;
    DMSaida.idOficina := FrmOficina.idOficina;
    FrmOficina.Release;
    FrmOficina := nil;
end;

end.

