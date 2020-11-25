unit frm_FormasPagamento;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, Menus, StdCtrls, Buttons, ComCtrls, DBCtrls, ExtCtrls, Mask,
    ImgList, T_AutorizacaoDialog, ExtDlgs, TS_PopupMenu,
    TS_ScrollBox, TS_SpeedButton, Dlg_PopupContas,
    TS_BitBtn, TS_DBLookupComboBox, TS_DBRadioGroup, TS_GroupBox,
    TS_DBCheckBox, TS_DBEdit, TS_Label, TS_Image, TS_Bevel, TS_PageControl,
    FormComponent, DlgMsg, TS_LastDataObject,
    CheckLst, TS_CheckListBox, TS_DBLookupTipoFav, TS_DBEditFavorecido,
    dxDBELib, dxExEdtr, dxEdLib, TS_DBButtonEdit, dxEditor, dxDBEdtr,
    dxCntner, dxfLabel, TS_MaxPanel, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, TS_DBEditNumber, teCtrls,
    TS_EffectsPanel, dxTLClms, TS_DBPopupEdit, TS_DBImageEdit, TS_Shape,
    dxDBTLCl, dxGrClms, Variants, Placemnt, BTOdeum, dxfProgressBar;

type
    TFrmFormasPagamento = class(TFrmPadrao)
        Label1: TTS_Label;
        dfDescricao: TTS_DBEdit;
        Label2: TTS_Label;
        dfSigla: TTS_DBEdit;
        dlgFoto: TOpenPictureDialog;
        ppmFoto: TTS_PopupMenu;
        CarregarFoto: TMenuItem;
        N4: TMenuItem;
        LimparFoto1: TMenuItem;
        lbTipoFormaPagamento: TTS_Label;
        cmbTipoFormaPagamento: TTS_DBLookupComboBox;
        Page: TTS_PageControl;
        tsCartao: TTS_TabSheet;
        Label4: TTS_Label;
        Label8: TTS_Label;
        Label11: TTS_Label;
        dfDias: TTS_DBEdit;
        cmbConta: TTS_DBPopupEdit;
        Label5: TTS_Label;
        tsCartaoEmpresa: TTS_TabSheet;
        TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
        dfVenc: TTS_DBEdit;
        TS_Label2: TTS_Label;
        dfMelhorDia: TTS_DBEdit;
        TS_Label3: TTS_Label;
        Label9: TTS_Label;
        dfDescontar: TTS_DBEditNumber;
        dfValorMinimo: TTS_DBEditNumber;
        dbFavorecido: TTS_DBEditFavorecido;
        TS_DBLookupTipoFav2: TTS_DBLookupTipoFav;
        dfForn: TTS_DBEditFavorecido;
        cmbContaCartao: TTS_DBPopupEdit;
        TS_Label1: TTS_Label;
        TS_Label4: TTS_Label;
        cmbContaReceber: TTS_DBPopupEdit;
        tsOutros: TTS_TabSheet;
        cmbContaReceber2: TTS_DBPopupEdit;
        TS_Label5: TTS_Label;
        cmbContaPagar2: TTS_DBPopupEdit;
        TS_Label6: TTS_Label;
        TS_Shape1: TTS_Shape;
        TS_Label7: TTS_Label;
        TS_Shape2: TTS_Shape;
        dfData: TTS_DBImageEdit;
        Grid_icSelecionado: TdxDBGridColumn;
        GridFORMAPAGAMENTO: TdxDBGridMaskColumn;
        GridDESCRICAO: TdxDBGridMaskColumn;
        GridREFCREDITO: TdxDBGridMaskColumn;
        GridCARENCIACREDITO: TdxDBGridMaskColumn;
        GridCONTALIBERACAO: TdxDBGridMaskColumn;
        GridDESATIVADO: TdxDBGridMaskColumn;
        GridESPECIE: TdxDBGridMaskColumn;
        GridSIGLA: TdxDBGridMaskColumn;
        GridCODIGOECF: TdxDBGridMaskColumn;
        GridMELHORDIACOMPRA: TdxDBGridMaskColumn;
        GridFORNECEDOR: TdxDBGridMaskColumn;
        GridDescEspecie: TdxDBGridLookupColumn;
        GridDescContaCart: TdxDBGridLookupColumn;
        GridMENORPARCELA: TdxDBGridMaskColumn;
        GridENCARGOS: TdxDBGridMaskColumn;
        GridNOME: TdxDBGridMaskColumn;
        GridTIPOFAVORECIDO: TdxDBGridMaskColumn;
        GridCONTA: TdxDBGridMaskColumn;
        GridDescContaCartao: TdxDBGridLookupColumn;
        GridCONTARECEBER: TdxDBGridMaskColumn;
        GridDescContaReceber: TdxDBGridLookupColumn;
        GridCONTAPAGAR: TdxDBGridMaskColumn;
        GridDescContaPagar: TdxDBGridLookupColumn;
        tsChequeEletronico: TTS_TabSheet;
        TS_Label8: TTS_Label;
        TS_Label9: TTS_Label;
        TS_Label10: TTS_Label;
        TS_Label11: TTS_Label;
        TS_Label12: TTS_Label;
        TS_Label13: TTS_Label;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBPopupEdit1: TTS_DBPopupEdit;
        TS_DBEditNumber1: TTS_DBEditNumber;
        TS_DBEditNumber2: TTS_DBEditNumber;
        TS_DBEditFavorecido1: TTS_DBEditFavorecido;
        TS_DBLookupTipoFav3: TTS_DBLookupTipoFav;
        TS_DBPopupEdit2: TTS_DBPopupEdit;
        TS_DBImageEdit1: TTS_DBImageEdit;
        TS_Label14: TTS_Label;
        TS_DBEdit2: TTS_DBEdit;
        TS_Label15: TTS_Label;
        TS_DBEdit3: TTS_DBEdit;
        cmbContaDespesa: TTS_DBPopupEdit;
        TS_Label16: TTS_Label;
        cbCartaoTEF: TTS_DBCheckBox;
        lblBandeiraCartao: TTS_Label;
        cmbBandeirasCartao: TTS_DBLookupComboBox;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormComponentEstado_Navegacao(Sender: TObject;
            var bSkip: Boolean);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure cmbTipoFormaPagamentoChange(Sender: TObject);
        procedure cmbContaInitPopup(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
        procedure cmbContaCartaoInitPopup(Sender: TObject);
        procedure cmbContaReceberInitPopup(Sender: TObject);
        procedure cmbContaReceber2InitPopup(Sender: TObject);
        procedure cmbContaPagar2InitPopup(Sender: TObject);
        procedure cmbContaDespesaInitPopup(Sender: TObject);
    protected
        DlgPopup: TDlgPopupContas;
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmFormasPagamento: TFrmFormasPagamento;

implementation

uses DM_FormasPagamento, DM_Projeto, db, DM_Financeiro;

{$R *.DFM}

procedure TFrmFormasPagamento.FormClose(Sender: TObject;
    var Action: TCloseAction);
begin
    inherited;
    FrmFormasPagamento := nil;
end;

procedure TFrmFormasPagamento.FormComponentEstado_Navegacao(
    Sender: TObject; var bSkip: Boolean);
begin
    inherited;
    Page.Visible := not (DMFormasPagamento.C_TabelaEspecie.Value in [5]) and not (DMFormasPagamento.C_TabelaFormaPagamento.Value = 2);
    if DMFormasPagamento.C_TabelaEspecie.Value in [2, 3, 10, 30] then
        Page.ActivePage := tsCartao
    else if DMFormasPagamento.C_TabelaEspecie.Value in [50] then
        Page.ActivePage := tsCartaoEmpresa
    else if not (DMFormasPagamento.C_TabelaEspecie.Value in [5]) then
        Page.ActivePage := tsOutros;

    DMFormasPagamento.Especie := DMFormasPagamento.C_TabelaEspecie.Value;
end;

procedure TFrmFormasPagamento.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    Page.Visible := false;
    cmbTipoFormaPagamento.Enabled := true;
    lbTipoFormaPagamento.Enabled := true;
end;

procedure TFrmFormasPagamento.FormComponentAfterScroll(Sender: TObject);
var xSkip: boolean;
begin
    inherited;
    if DMFormasPagamento.bAlteracao then
        begin
            cmbTipoFormaPagamento.Enabled := not (DMFormasPagamento.C_TabelaEspecie.Value in [1, 5, 20]);
            lbTipoFormaPagamento.Enabled := not (DMFormasPagamento.C_TabelaEspecie.Value in [1, 5, 20]);
        end;
    xSkip := false;
    FormComponentEstado_Navegacao(self, xSkip);
end;

procedure TFrmFormasPagamento.cmbTipoFormaPagamentoChange(Sender: TObject);
var xSkip: boolean;
begin
    inherited;
    xSkip := false;
    FormComponentEstado_Navegacao(self, xSkip);
end;

procedure TFrmFormasPagamento.cmbContaInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFinanceiro.C_ContasBcDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFormasPagamento.FormActivate(Sender: TObject);
begin
    inherited;
    cmbConta.PopupControl := DlgPopup.pnPopUp;
    cmbContaCartao.PopupControl := DlgPopup.pnPopUp;
    cmbContaReceber.PopupControl := DlgPopup.pnPopUp;
    cmbContaReceber2.PopupControl := DlgPopup.pnPopUp;
    cmbContaPagar2.PopupControl := DlgPopup.pnPopUp;
    cmbContaDespesa.PopupControl := DlgPopup.pnPopUp;
end;

procedure TFrmFormasPagamento.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);

    if DMProjeto.ExisteParametrosForm then
        begin

            if (DMProjeto.getParametrosForm(0) = null) or (DMProjeto.getParametrosForm(0) = 0) then
                begin
                    if DMProjeto.QtdParametrosForm > 1 then
                        DMFormasPagamento.Especie := DMProjeto.getParametrosForm(1)
                    else
                        DMFormasPagamento.Especie := 3;

                    if (DMFormasPagamento.bAlteracao) then
                        Estado_Inicial;

                    if DMFormasPagamento.Especie <> 0 then
                        DMFormasPagamento.C_TabelaEspecie.Value := DMFormasPagamento.Especie;

                    cmbTipoFormaPagamentoChange(sender);
                end;

        end
    else
        DMFormasPagamento.Especie := 3;

end;

procedure TFrmFormasPagamento.FormComponentRefresh(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if UpperCase(LastDataObject.tablename) = 'FAVORECIDOS' then
        begin
            if ActiveControl = dfForn then
                dfForn.ID := LastDataObject.ObjectKey
            else if ActiveControl = dbFavorecido then
                dbFavorecido.ID := LastDataObject.ObjectKey;
        end;
end;

procedure TFrmFormasPagamento.cmbContaDespesaInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFinanceiro.C_ContasDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFormasPagamento.cmbContaCartaoInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFinanceiro.C_ContasDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFormasPagamento.cmbContaReceberInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFormasPagamento.C_ContasDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFormasPagamento.cmbContaReceber2InitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFinanceiro.C_ContasDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFormasPagamento.cmbContaPagar2InitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDs(DMFinanceiro.C_ContasDS);
    DlgPopup.SetColuna(nil);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

end.

