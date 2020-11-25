unit Frm_Estimates;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    Frm_Saidas, Db, IBCustomDataSet, IBQuery, ExtCtrls, teDrip, tePush,
    dxCntner, FormComponent, ImgList, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel,
    TS_MaxPanel, dxCalc, dxDBTLCl, dxGrClms, dxExEdtr, dxEdLib, dxDBELib,
    TS_DBEditNumber, TS_PopupEdit, TS_DBMemo, dxDBGrid, dxGrClEx, DBCtrls,
    TS_DBText, TS_Image, ComCtrls, TS_PageControl, StdCtrls, Mask,
    TS_DBButtonEdit, TS_DBEditFavorecido, TS_CheckBox, DBText,
    TS_DBTextEffect, TS_DBLookupTipoFav, TS_DBCheckBox, TS_DBEdit,
    TS_DBEditDate, dxEditor, dxDBEdtr, TS_DBLookupComboBox, TS_Label,
    TS_Shape, dxTLClms, dxTL, dxDBCtrl, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, TransEff, teTimed, BTOdeum,
    Placemnt, dxfProgressBar, TS_LookupComboBox;

type
    TFrmEstimates = class(TFrmSaidas)
        imgStatus: TImageList;
        EstimatesqueVencem1: TMenuItem;
        Amanha: TMenuItem;
        VencemHoje1: TMenuItem;
        VencidasOntem1: TMenuItem;
        odasasVencidas1: TMenuItem;
        tsOrcamento: TTS_TabSheet;
        tsLicitacao: TTS_TabSheet;
        TS_Label5: TTS_Label;
        TS_Label6: TTS_Label;
        TS_Label7: TTS_Label;
        TS_Label8: TTS_Label;
        TS_DBMemo2: TTS_DBMemo;
        TS_DBMemo3: TTS_DBMemo;
        TS_DBMemo4: TTS_DBMemo;
        TS_DBEdit7: TTS_DBEdit;
        TS_DBMemo5: TTS_DBMemo;
        TS_Label9: TTS_Label;
        TS_Label10: TTS_Label;
        TS_DBEdit8: TTS_DBEdit;
        TS_Label11: TTS_Label;
        TS_Label12: TTS_Label;
        TS_Label13: TTS_Label;
        TS_Label14: TTS_Label;
        TS_Label15: TTS_Label;
        TS_DBEdit9: TTS_DBEdit;
        TS_DBEdit10: TTS_DBEdit;
        TS_DBEdit11: TTS_DBEdit;
        TS_DBEdit12: TTS_DBEdit;
        TS_DBCheckBox1: TTS_DBCheckBox;
        TS_Label16: TTS_Label;
        TS_DBEditDate2: TTS_DBEditDate;
    dbgItensQUANTIDADEVOLUME: TdxDBGridMaskColumn;
        procedure lbOperacaoSetParametrosForm(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure AmanhaClick(Sender: TObject);
        procedure VencemHoje1Click(Sender: TObject);
        procedure VencidasOntem1Click(Sender: TObject);
        procedure odasasVencidas1Click(Sender: TObject);
        procedure cmbTipoMovimentoClick(Sender: TObject);
        procedure dfFavorecidoSelecionou(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure dfObsValidate(Sender: TObject; var ErrorText: string;
            var Accept: Boolean);
        procedure FormComponentAfterScroll(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmEstimates: TFrmEstimates;

implementation
uses DM_Projeto, DM_Estimates, Funcoes;

{$R *.DFM}

procedure TFrmEstimates.lbOperacaoSetParametrosForm(Sender: TObject);
begin
    DMProjeto.SetParametrosForm([DMEstimates.C_TabelaTIPOMOVIMENTO.asVariant, 3]);
end;

procedure TFrmEstimates.FormCreate(Sender: TObject);
begin
    inherited;
    FrmEstimates := self;
end;

procedure TFrmEstimates.AmanhaClick(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Validade = ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema + 1)));
end;

procedure TFrmEstimates.VencemHoje1Click(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Validade = ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)));
end;

procedure TFrmEstimates.VencidasOntem1Click(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Validade = ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema - 1)));
end;

procedure TFrmEstimates.odasasVencidas1Click(Sender: TObject);
begin
    inherited;
    Localizar('', ' where t.Validade <= ' + QuotedStr(MesDiaAno(DMProjeto.dDataSistema)));
end;

procedure TFrmEstimates.cmbTipoMovimentoClick(Sender: TObject);
begin
    inherited;
    if (DMEstimates.C_TiposMovimentoTipoImpressao_OP.Value = 'PL') then
        tsLicitacao.TabVisible := true
            //    pgCabecalho.ShowTab(2,false)
    else
        tsLicitacao.TabVisible := false;
    //    pgCabecalho.HideTab(2);
end;

procedure TFrmEstimates.dfFavorecidoSelecionou(Sender: TObject);
begin
    inherited;
    //fdsfsf
end;

procedure TFrmEstimates.FormShow(Sender: TObject);
begin
    inherited;
    DMSaida.C_Tabela.Edit;
    DMSaida.C_TabelaTIPOMOVIMENTO.Value := DMProjeto.TipoPadraoInicial(3, 'S', DMSaida.nTipoMovimento);
end;

procedure TFrmEstimates.dfObsValidate(Sender: TObject;
    var ErrorText: string; var Accept: Boolean);
begin
    inherited;
    if (dfObs.Text <> '') then
        begin
            dfObs.Text := Replace(dfObs.Text, #$D#$A, ' ');
        end;
end;

procedure TFrmEstimates.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;

    if ((DMEstimates.C_Tabela.FieldByName('STATUS').Value = 'F') or
        (DMEstimates.C_Tabela.FieldByName('TOTAL').Value = DMEstimates.C_Tabela.FieldByName('PAGOINVOICE').Value)) then
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

end.

