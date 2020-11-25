unit Frm_TiposMovimento;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject,
    DlgMsg, Menus, TS_PopupMenu, ComCtrls,
    StdCtrls, Buttons, TS_BitBtn, ExtCtrls, TS_Bevel, TS_SpeedButton,
    Mask, DBCtrls, TS_DBEdit, TS_Label, TS_ComboBox, TS_PageControl,
    TS_DBCheckBox, TS_Shape, TS_GroupBox, TS_Edit, TS_CheckBox,
    TS_Image, dxfLabel, TS_MaxPanel, CheckLst, TS_CheckListBox,
    dxEdLib, dxExEdtr, dxDBELib, dxCntner, dxEditor, dxTL,
    dxDBCtrl, dxDBGrid, TS_QDBGrid, dxDBTLCl, dxGrClms,
    dxDBEdtr, TS_DBLookupComboBox, TS_DBButtonEdit, teCtrls, TS_EffectsPanel,
    dxTLClms, TS_DBImageEdit, Variants, TS_DBEditFavorecido, BTOdeum,
    Placemnt, TS_DBPopupEdit, dxfProgressBar, TS_DBSpinEdit;

type
    TFrmTiposMovimento = class(TFrmPadrao)
        TS_Label1: TTS_Label;
        TS_Label3: TTS_Label;
        dfSigla: TTS_DBEdit;
        pcTiposOperacoes: TTS_PageControl;
        tsGeral: TTS_TabSheet;
        tsCampos: TTS_TabSheet;
        tsColunas: TTS_TabSheet;
        cb2: TTS_DBCheckBox;
        cb3: TTS_DBCheckBox;
        cb8: TTS_DBCheckBox;
        cb4: TTS_DBCheckBox;
        cb5: TTS_DBCheckBox;
        cb6: TTS_DBCheckBox;
        cb7: TTS_DBCheckBox;
        TS_DBEdit17: TTS_DBEdit;
        TS_DBEdit18: TTS_DBEdit;
        TS_DBEdit19: TTS_DBEdit;
        TS_DBEdit22: TTS_DBEdit;
        TS_CheckBox4: TTS_CheckBox;
        TS_DBCheckBox24: TTS_DBCheckBox;
        TS_DBEdit20: TTS_DBEdit;
        tsAdicionais: TTS_TabSheet;
        TS_DBEdit53: TTS_DBEdit;
        TS_DBEdit54: TTS_DBEdit;
        TS_DBEdit55: TTS_DBEdit;
        TS_DBEdit56: TTS_DBEdit;
        TS_DBEdit57: TTS_DBEdit;
        TS_Label7: TTS_Label;
        TS_Label13: TTS_Label;
        dfDescricao: TTS_DBEdit;
        dfColor: TTS_DBButtonEdit;
        TS_Label16: TTS_Label;
        TS_Label17: TTS_Label;
        dfTipoFav: TTS_DBLookupComboBox;
        DBEdit1: TDBEdit;
        TS_Label18: TTS_Label;
        cmbTipoPadrao: TTS_DBLookupComboBox;
        TS_Bevel1: TTS_Bevel;
        TS_Bevel2: TTS_Bevel;
        TS_Bevel4: TTS_Bevel;
        TS_Bevel5: TTS_Bevel;
        TS_CheckBox6: TTS_CheckBox;
        TS_DBEdit90: TTS_DBEdit;
        TS_DBCheckBox10: TTS_DBCheckBox;
        TS_DBEdit91: TTS_DBEdit;
        ScrollBox1: TScrollBox;
        TS_DBCheckBox12: TTS_DBCheckBox;
        TS_DBCheckBox13: TTS_DBCheckBox;
        TS_DBCheckBox14: TTS_DBCheckBox;
        cbComiss: TTS_DBCheckBox;
        TS_DBCheckBox16: TTS_DBCheckBox;
        TS_DBCheckBox17: TTS_DBCheckBox;
        TS_DBCheckBox18: TTS_DBCheckBox;
        TS_DBCheckBox19: TTS_DBCheckBox;
        TS_DBCheckBox20: TTS_DBCheckBox;
        TS_DBCheckBox21: TTS_DBCheckBox;
        TS_DBEdit3: TTS_DBEdit;
        TS_DBEdit4: TTS_DBEdit;
        TS_DBEdit5: TTS_DBEdit;
        TS_DBEdit6: TTS_DBEdit;
        TS_DBEdit7: TTS_DBEdit;
        TS_DBEdit8: TTS_DBEdit;
        TS_DBEdit9: TTS_DBEdit;
        TS_DBEdit10: TTS_DBEdit;
        TS_DBEdit11: TTS_DBEdit;
        TS_DBEdit12: TTS_DBEdit;
        TS_DBEdit13: TTS_DBEdit;
        TS_DBEdit14: TTS_DBEdit;
        TS_DBEdit15: TTS_DBEdit;
        TS_DBEdit16: TTS_DBEdit;
        TS_CheckBox1: TTS_CheckBox;
        TS_CheckBox2: TTS_CheckBox;
        TS_DBEdit23: TTS_DBEdit;
        TS_DBEdit24: TTS_DBEdit;
        TS_DBEdit25: TTS_DBEdit;
        TS_DBEdit26: TTS_DBEdit;
        TS_DBEdit27: TTS_DBEdit;
        TS_DBEdit28: TTS_DBEdit;
        TS_DBEdit29: TTS_DBEdit;
        TS_DBEdit30: TTS_DBEdit;
        TS_DBEdit31: TTS_DBEdit;
        TS_DBEdit32: TTS_DBEdit;
        TS_DBEdit33: TTS_DBEdit;
        TS_DBEdit34: TTS_DBEdit;
        TS_DBEdit35: TTS_DBEdit;
        TS_DBEdit36: TTS_DBEdit;
        TS_Label2: TTS_Label;
        TS_Label4: TTS_Label;
        TS_DBCheckBox11: TTS_DBCheckBox;
        TS_DBEdit93: TTS_DBEdit;
        TS_DBEdit94: TTS_DBEdit;
        TS_DBCheckBox23: TTS_DBCheckBox;
        TS_DBEdit96: TTS_DBEdit;
        TS_DBEdit97: TTS_DBEdit;
        TS_Shape4: TTS_Shape;
        TS_Shape2: TTS_Shape;
        TS_Label12: TTS_Label;
        TS_DBCheckBox25: TTS_DBCheckBox;
        TS_DBEdit99: TTS_DBEdit;
        TS_DBEdit100: TTS_DBEdit;
        TS_CheckBox7: TTS_DBCheckBox;
        TS_DBCheckBox26: TTS_DBCheckBox;
        TS_DBCheckBox27: TTS_DBCheckBox;
        TS_DBCheckBox28: TTS_DBCheckBox;
        TS_DBCheckBox29: TTS_DBCheckBox;
        TS_DBCheckBox30: TTS_DBCheckBox;
        TS_DBCheckBox31: TTS_DBCheckBox;
        TS_DBCheckBox32: TTS_DBCheckBox;
        TS_DBCheckBox33: TTS_DBCheckBox;
        dfValidade1: TTS_DBEdit;
        dfValidade2: TTS_DBEdit;
        DBEdit2: TDBEdit;
        GridDescTipoPadrao: TdxDBGridLookupColumn;
        GridDESCRICAO: TdxDBGridMaskColumn;
        GridColumn5: TdxDBGridColumn;
        GridFOTO: TdxDBGridCheckColumn;
        lbValidade: TTS_DBCheckBox;
        TS_Label14: TTS_Label;
        TS_Label5: TTS_Label;
        TS_DBEdit75: TTS_DBEdit;
        TS_DBEdit76: TTS_DBEdit;
        TS_DBEdit78: TTS_DBEdit;
        TS_DBEdit79: TTS_DBEdit;
        TS_DBEdit81: TTS_DBEdit;
        TS_DBEdit82: TTS_DBEdit;
        TS_DBEdit84: TTS_DBEdit;
        TS_DBEdit85: TTS_DBEdit;
        TS_Label10: TTS_Label;
        TS_Label9: TTS_Label;
        TS_DBEdit63: TTS_DBEdit;
        TS_DBEdit64: TTS_DBEdit;
        TS_DBEdit66: TTS_DBEdit;
        TS_DBEdit67: TTS_DBEdit;
        TS_DBEdit69: TTS_DBEdit;
        TS_DBEdit70: TTS_DBEdit;
        TS_DBEdit72: TTS_DBEdit;
        TS_DBEdit73: TTS_DBEdit;
        TS_Label19: TTS_Label;
        TS_Label20: TTS_Label;
        TS_DBEdit1: TTS_DBEdit;
        TS_DBCheckBox1: TTS_DBCheckBox;
        TS_DBEdit2: TTS_DBEdit;
        TS_DBCheckBox2: TTS_DBCheckBox;
        cb9: TTS_DBCheckBox;
        cmbStatus: TTS_DBLookupComboBox;
        lbStatus: TTS_Label;
        TS_Label22: TTS_Label;
        TS_DBImageEdit2: TTS_DBImageEdit;
        cb10: TTS_DBCheckBox;
        TS_Label24: TTS_Label;
        dfFavorecido: TTS_DBEditFavorecido;
        TS_Label25: TTS_Label;
        cmbMensagem: TTS_DBLookupComboBox;
        cb11: TTS_DBCheckBox;
        cmbTermoContrato: TTS_DBLookupComboBox;
        TS_Label27: TTS_Label;
        cbPrecoUnit: TTS_DBCheckBox;
        TS_DBCheckBox7: TTS_DBCheckBox;
        TS_Label28: TTS_Label;
        ckbDescricaoComplementar: TTS_DBCheckBox;
        ckbComposicaoItens: TTS_DBCheckBox;
        ckbPagamento: TTS_DBCheckBox;
        ckbSaldo: TTS_DBCheckBox;
        TS_DBEdit103: TTS_DBEdit;
        TS_DBEdit104: TTS_DBEdit;
        TS_DBEdit106: TTS_DBEdit;
        TS_DBEdit107: TTS_DBEdit;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        cmbAlmox: TTS_DBLookupComboBox;
        TS_Label30: TTS_Label;
        lbAlmox: TTS_Label;
        TS_Label31: TTS_Label;
        TS_DBImageEdit3: TTS_DBImageEdit;
        tsFiscal: TTS_TabSheet;
        cb1: TTS_DBCheckBox;
        TS_DBCheckBox3: TTS_DBCheckBox;
        TS_DBCheckBox6: TTS_DBCheckBox;
        lblCFOP: TTS_Label;
        dfCFOP: TTS_DBEdit;
        TS_Label26: TTS_Label;
        TS_DBEdit109: TTS_DBEdit;
        TS_Label32: TTS_Label;
        TS_DBEdit110: TTS_DBEdit;
        TS_DBCheckBox9: TTS_DBCheckBox;
        TS_DBCheckBox15: TTS_DBCheckBox;
        TS_DBEdit111: TTS_DBEdit;
        TS_DBEdit112: TTS_DBEdit;
        TS_DBEdit113: TTS_DBEdit;
        TS_DBEdit114: TTS_DBEdit;
        TS_DBCheckBox34: TTS_DBCheckBox;
        TS_DBEdit115: TTS_DBEdit;
        TS_DBEdit116: TTS_DBEdit;
        TS_Shape1: TTS_Shape;
        TS_Shape3: TTS_Shape;
        TS_Label33: TTS_Label;
        TS_Shape5: TTS_Shape;
        TS_Shape6: TTS_Shape;
        TS_Label34: TTS_Label;
        TS_Label35: TTS_Label;
        TS_Label36: TTS_Label;
        TS_DBCheckBox35: TTS_DBCheckBox;
        TS_DBEdit117: TTS_DBEdit;
        TS_DBEdit118: TTS_DBEdit;
        cbRegistro: TTS_DBCheckBox;
        cbNumeroItem: TTS_DBCheckBox;
        TS_DBEdit119: TTS_DBEdit;
        TS_DBEdit120: TTS_DBEdit;
        TS_DBCheckBox5: TTS_DBCheckBox;
        TS_DBEdit21: TTS_DBEdit;
        TS_DBEdit37: TTS_DBEdit;
        tsImpressao: TTS_TabSheet;
        TS_Label21: TTS_Label;
        TS_Bevel3: TTS_Bevel;
        TS_Bevel7: TTS_Bevel;
        TS_Bevel8: TTS_Bevel;
        TS_Bevel6: TTS_Bevel;
        lbTemplate: TTS_Label;
        TS_Label29: TTS_Label;
        cmbImprimirQuando: TTS_DBImageEdit;
        ckbFichaCliente: TTS_DBCheckBox;
        cmbTemplate: TTS_DBLookupComboBox;
        cmbTipoDoc: TTS_DBPopupEdit;
        cmbEnviarPara: TTS_DBImageEdit;
        cb14: TTS_DBCheckBox;
        cb13: TTS_DBCheckBox;
        TS_Bevel9: TTS_Bevel;
        ckbNotaFiscal: TTS_DBCheckBox;
        cmbTipoNotaFiscal: TTS_DBImageEdit;
        ckbDocumento: TTS_DBCheckBox;
        ckbDuplicata: TTS_DBCheckBox;
        ckbBoleto: TTS_DBCheckBox;
        ckbCarne: TTS_DBCheckBox;
        ckbRecibo: TTS_DBCheckBox;
        TS_Label23: TTS_Label;
        cmbTemplateNF: TTS_DBLookupComboBox;
        dbgImpressao: TTS_QDBGrid;
        dbgImpressaoDescricao: TdxDBGridMemoColumn;
        dbgImpressaoImagem: TdxDBGridGraphicColumn;
        dbgImpressaoColumn4: TdxDBGridColumn;
        TS_DBCheckBox4: TTS_DBCheckBox;
        TS_DBCheckBox8: TTS_DBCheckBox;
        TS_Label6: TTS_Label;
        cmbTemplateDup: TTS_DBLookupComboBox;
        lbTemplateBol: TTS_Label;
        cmbTemplateBol: TTS_DBLookupComboBox;
        lbDiasValidade: TTS_Label;
        dfDiasValidade: TTS_DBSpinEdit;
        lbTipoCob: TTS_Label;
        cmbTipoCob: TTS_DBLookupComboBox;
        cb16: TTS_DBCheckBox;
        lbCarteira: TTS_Label;
        cmbCarteira: TTS_DBLookupComboBox;
        ckbORDEM_IMP_ITENS: TTS_DBCheckBox;
        TS_DBCheckBox22: TTS_DBCheckBox;
        cb15: TTS_DBCheckBox;
        edDuplicataImpressa: TTS_DBImageEdit;
        spEstoqueFiscal: TTS_Shape;
        ckbSolicitacaoAlmox: TTS_DBCheckBox;
        TS_DBCheckBox36: TTS_DBCheckBox;
        TS_Label8: TTS_Label;
        dbgCFOPSCSTS: TTS_QDBGrid;
        dbgCFOPSCSTSCFOPCST: TdxDBGridMaskColumn;
        dbgCFOPSCSTSCFOPASSOCIADO: TdxDBGridMaskColumn;
        dbgCFOPSCSTSCST: TdxDBGridMaskColumn;
        dbgCFOPSCSTSTIPOMOVIMENTO: TdxDBGridMaskColumn;
        dbgCFOPSCSTSCFOPFORAESTADO: TdxDBGridColumn;
        TS_DBCheckBox37: TTS_DBCheckBox;
        TS_Shape7: TTS_Shape;
        TS_Label11: TTS_Label;
        TS_Shape8: TTS_Shape;
        TS_Label15: TTS_Label;
        TS_Shape9: TTS_Shape;
        TS_DBCheckBox38: TTS_DBCheckBox;
        TS_DBCheckBox39: TTS_DBCheckBox;
        TS_DBCheckBox40: TTS_DBCheckBox;
        cmbCstPadrao: TTS_DBLookupComboBox;
        TS_DBCheckBox41: TTS_DBCheckBox;
        TS_DBCheckBox42: TTS_DBCheckBox;
        lbl_Impressora: TTS_Label;
        cmbImpressoras: TComboBox;
        lbl_TipoPapel: TTS_Label;
        cmbTiposPapeis: TComboBox;
    TS_DBCheckBox43: TTS_DBCheckBox;
        procedure FormCreate(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure TS_SpeedButton1Click(Sender: TObject);
        procedure dfColorButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure DBEdit1Change(Sender: TObject);
        procedure TS_DBCheckBox13Click(Sender: TObject);
        procedure cbComissEnter(Sender: TObject);
        procedure DBEdit2Change(Sender: TObject);
        procedure cb6Enter(Sender: TObject);
        procedure cb3Click(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure cb8Click(Sender: TObject);
        procedure FormComponentBeforeLoadKey(Sendet: TObject;
            var Where: string);
        procedure cmbTermoContratoChange(Sender: TObject);
        procedure lbTemplateClick(Sender: TObject);
        procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
        procedure cb11Change(Sender: TObject);
        procedure dfFavorecidoExit(Sender: TObject);
        procedure cb6Change(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure cmbTipoDocCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
        procedure dbgImpressaoDblClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure FormComponentAfterScroll(Sender: TObject);
        procedure cmbTipoDocPopup(Sender: TObject; const EditText: string);
        procedure cmbTipoNotaFiscalChange(Sender: TObject);
        procedure TS_Label6Click(Sender: TObject);
        procedure lbTemplateBolClick(Sender: TObject);
        procedure TS_Label23Click(Sender: TObject);
        procedure tsImpressaoShow(Sender: TObject);
        procedure cmbTipoDocChange(Sender: TObject);
        procedure cmbTipoDocSelectionChange(Sender: TObject);
        procedure cmbTipoCobChange(Sender: TObject);
        //procedure cb15Change(Sender: TObject);
        //procedure cb16Change(Sender: TObject);
        procedure TS_DBCheckBox40Change(Sender: TObject);
        procedure SetInformacoesImpressora();
        procedure SetInformacoesPadrao();
        procedure GetPaperNames();
        procedure GetPrinterNames();
        procedure btGravarClick(Sender: TObject);
    private
        procedure MostraModelo;
        { Private declarations }

    public
        { Public declarations }
    end;

var
    FrmTiposMovimento: TFrmTiposMovimento;

implementation
uses DM_Projeto, DM_TiposMovimento, Funcoes, Dlg_LookupTiposMovimento, DB, Printers, WinSpool;

{$R *.DFM}

procedure TFrmTiposMovimento.FormCreate(Sender: TObject);
begin
    inherited;
    FrmTiposMovimento := self;
    pcTiposOperacoes.ActivePageIndex := 0;
end;

procedure TFrmTiposMovimento.btLimparClick(Sender: TObject);
begin
    inherited;
    pcTiposOperacoes.ActivePageIndex := 0;
end;

procedure TFrmTiposMovimento.TS_SpeedButton1Click(Sender: TObject);
var
    i: Integer;
begin
    inherited;
    DlgLookupTiposMovimento := TDlgLookupTiposMovimento.Create(self);
    DlgLookupTiposMovimento.DM := DMTiposMovimento;
    DlgLookupTiposMovimento.Tipo := 'S';
    DlgLookupTiposMovimento.ShowModal;
    DlgLookupTiposMovimento.Release;
    if DMJanela.C_Tabela.FieldByName('CorTitulos').Value <> null then
        begin
            dfColor.Color := DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger;
            dfColor.Font.Color := DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger;
        end
    else
        begin
            dfColor.Color := clWhite;
            dfColor.Font.Color := clWhite;
        end;
    DBEdit2Change(self);
end;

procedure TFrmTiposMovimento.dfColorButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
var
    DlgColor: TColorDialog;
begin
    inherited;
    DlgColor := TColorDialog.Create(self);
    DlgColor.Color := dfColor.Color;

    if DlgColor.Execute then
        begin
            dfColor.Color := DlgColor.Color;
            dfColor.Font.Color := dfColor.Color;
            DMJanela.C_Tabela.Edit;
            DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger := dfColor.Color;
        end;

    DlgColor.Free;
end;

procedure TFrmTiposMovimento.DBEdit1Change(Sender: TObject);
begin
    inherited;
    if DMJanela.C_Tabela.FieldByName('CorTitulos').Value <> null then
        begin
            dfColor.Color := DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger;
            dfColor.Font.Color := DMJanela.C_Tabela.FieldByName('CorTitulos').asInteger;
        end
    else
        begin
            dfColor.Color := clWhite;
            dfColor.Font.Color := clWhite;
        end;
end;

procedure TFrmTiposMovimento.TS_DBCheckBox13Click(Sender: TObject);
begin
    inherited;
    if not TS_DBCheckBox13.Checked then
        begin
            DMTiposMovimento.C_Tabela.Edit;
            DMTiposMovimento.C_TabelaCB_Comissao.Value := 'N';
            cbComiss.DisableEdit := true;
        end
    else
        begin
            cbComiss.DisableEdit := false;
        end;
end;

procedure TFrmTiposMovimento.cbComissEnter(Sender: TObject);
begin
    inherited;
    if DMTiposMovimento.C_TabelaCB_Vendedor.Value <> 'S' then
        begin
            DMTiposMovimento.C_Tabela.Edit;
            DMTiposMovimento.C_TabelaCB_Comissao.Value := 'N';
            cbComiss.DisableEdit := true;
        end
    else
        begin
            cbComiss.DisableEdit := false;
        end;
end;

procedure TFrmTiposMovimento.DBEdit2Change(Sender: TObject);
var
    i: Integer;
    c: TComponent;
begin
    inherited;

    {  if not (DMTiposMovimento.C_TabelaTipoPadrao.Value in [1,5,6,7,8,40]) then
        pcTiposOperacoes.HideTab(1);
     }
    lbValidade.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 3; {Estimate}
    dfValidade1.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 3;
    dfValidade2.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 3;
    dfDiasValidade.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 3;
    lbDiasValidade.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 3;
    lbTipoCob.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 1;
    cmbTipoCob.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 1;
    //  lbCarteira.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 1;
    //  cmbCarteira.Visible := DMTiposMovimento.C_TabelaTipoPadrao.Value = 1;
    if (DMTiposMovimento.C_TabelaTipoPadrao.Value = 4) then
        begin
            lbValidade.Visible := True;
            dfValidade1.Visible := True;
            dfValidade2.Visible := True;
        end;
    lbDiasValidade.Visible := lbValidade.Visible;
    dfDiasValidade.Visible := lbValidade.Visible;

    {Configurando CB's}
    for i := 1 to 16 do
        begin
            c := FindComponent('cb' + inttostr(i));
            if c = nil then
                continue;

            if TTS_DBCheckBox(c).TagStr <> '' then
                TTS_DBCheckBox(c).DisableEdit := (pos(DMTiposMovimento.C_TabelaTipoPadrao.asString, TTS_DBCheckBox(c).TagStr) = 0);

            cmbTermoContrato.Enabled := not cb11.DisableEdit;
            if TTS_DBCheckBox(c).DisableEdit and
                (DMTiposMovimento.C_Tabela.FieldByName(TTS_DBCheckBox(c).DataField).asString = 'S') then
                begin
                    if DMTiposMovimento.C_Tabela.State = dsBrowse then
                        DMTiposMovimento.C_Tabela.Edit;
                    DMTiposMovimento.C_Tabela.FieldByName(TTS_DBCheckBox(c).DataField).asString := 'N';
                end;

        end;

end;

procedure TFrmTiposMovimento.cb6Enter(Sender: TObject);
begin
    inherited;
    if DMTiposMovimento.C_TabelaBaixaEstoque.Value <> 'S' then
        begin
            DMTiposMovimento.C_Tabela.Edit;
            DMTiposMovimento.C_TabelaBLOQUEARPORESTOQUE.Value := 'N';
            cb6.DisableEdit := true;
        end
    else
        begin
            cb6.DisableEdit := false;
        end;
end;

procedure TFrmTiposMovimento.cb3Click(Sender: TObject);
begin
    inherited;
    if not cb3.Checked then
        begin
            DMTiposMovimento.C_Tabela.Edit;
            DMTiposMovimento.C_TabelaBLOQUEARPORESTOQUE.Value := 'N';
            cb6.DisableEdit := true;
        end
    else
        begin
            cb6.DisableEdit := false;
        end;
end;

procedure TFrmTiposMovimento.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    DMTiposMovimento.nTipoPadraoFixo := 0;
    if (DMProjeto.GetParametrosForm(1) <> null) then
        begin
            DMTiposMovimento.nTipoPadraoFixo := DMProjeto.GetParametrosForm(1);
            cmbTipoPadrao.ReadOnly := true;

            if (DMProjeto.GetParametrosForm(0) = null) then
                begin
                    if DMTiposMovimento.C_Tabela.State = dsBrowse then
                        DMTiposMovimento.C_Tabela.Edit;
                    DMTiposMovimento.C_TabelaTipoPadrao.Value := DMTiposMovimento.nTipoPadraoFixo;
                end;
        end;
    lbStatus.Visible := cb8.Checked;
    cmbStatus.Visible := cb8.Checked;
end;

procedure TFrmTiposMovimento.cb8Click(Sender: TObject);
begin
    inherited;
    if cb8.Checked then
        begin
            lbStatus.Visible := True;
            cmbStatus.Visible := true;
            DMTiposMovimento.C_Tabela.Edit;
            DMTiposMovimento.C_TabelaStatusPadrao.Value := 'P';
        end
    else
        begin
            lbStatus.Visible := false;
            cmbStatus.Visible := false;
            DMTiposMovimento.C_Tabela.Edit;
            DMTiposMovimento.C_TabelaStatusPadrao.asVariant := null;
        end;
end;

procedure TFrmTiposMovimento.FormComponentBeforeLoadKey(Sendet: TObject;
    var Where: string);
begin
    inherited;
    DMTiposMovimento.nTipoPadraoFixo := 0;
end;

procedure TFrmTiposMovimento.cmbTermoContratoChange(Sender: TObject);
begin
    inherited;
    if DMTiposMovimento.C_Tabela.State = dsBrowse then
        DMTiposMovimento.C_Tabela.Edit;
    if not cb11.Checked then
        begin
            DMTiposMovimento.C_Tabela.FieldByName('CB_CONTRATO').asString := 'S';
            cb11.Checked := true;
        end
    else if cmbTermoContrato.Text = '' then
        begin
            DMTiposMovimento.C_Tabela.FieldByName('CB_CONTRATO').asString := 'N';
            cb11.Checked := false;
        end;
end;

procedure TFrmTiposMovimento.lbTemplateClick(Sender: TObject);
begin
    inherited;
    ActiveControl := cmbTemplate;
    DMProjeto.SetParametrosForm([null, 'PE', DMTiposMovimento.C_TabelaTemplate.AsInteger]);
    DMProjeto.CriarForm('DlgTemplates', self, true);
end;

procedure TFrmTiposMovimento.FormComponentRefresh(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if UpperCase(LastDataObject.TableName) = 'TEMPLATES' then
        begin
            with DMTiposMovimento do
                begin
                    if DMTiposMovimento.C_Tabela.State in [dsBrowse] then
                        DMTiposMovimento.C_Tabela.Edit;
                    if ActiveControl = cmbTemplate then
                        begin
                            C_Templates.Close;
                            C_Templates.Open;
                            DMTiposMovimento.C_TabelaTemplate.Value := LastDataObject.ObjectKey
                        end
                    else if ActiveControl = cmbTemplateNF then
                        begin
                            C_TemplatesNF.Close;
                            C_TemplatesNF.Open;
                            DMTiposMovimento.C_TabelaTemplateNotaFiscal.Value := LastDataObject.ObjectKey
                        end
                    else if ActiveControl = cmbTemplateDup then
                        begin
                            C_TemplateDup.Close;
                            C_TemplateDup.Open;
                            DMTiposMovimento.C_TabelaTemplateDuplicata.Value := LastDataObject.ObjectKey
                        end
                    else if ActiveControl = cmbTemplateBol then
                        begin
                            C_TemplateBol.Close;
                            C_TemplateBol.Open;
                            DMTiposMovimento.C_TabelaTemplateBoleto.Value := LastDataObject.ObjectKey;
                        end;
                end;
        end;
end;

procedure TFrmTiposMovimento.cb11Change(Sender: TObject);
begin
    inherited;
    if DMTiposMovimento.C_Tabela.State in [dsBrowse] then
        DMTiposMovimento.C_Tabela.Edit;
    if cb11.Checked then
        begin
            DMTiposMovimento.C_TabelaTemplate.value := 1;
        end
    else
        begin
            DMTiposMovimento.C_TabelaTemplate.value := 0;
        end;
end;

procedure TFrmTiposMovimento.dfFavorecidoExit(Sender: TObject);
begin
    inherited;
    if dfFavorecido.Text = '' then
        begin
            DMTiposMovimento.C_Tabela.Edit;
            DMTiposMovimento.C_TabelaFavorecidoPadrao.asVariant := null;
        end;
end;

procedure TFrmTiposMovimento.cb6Change(Sender: TObject);
begin
    inherited;
    if TTS_DBCheckBox(Sender).Checked then
        DlgMsg.ShowMsg(2775);
end;

procedure TFrmTiposMovimento.btComando2Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm(['S']);
    DMProjeto.CriarForm('FrmPerfisTiposMovimento', self, true);
    //  TreeListImagem.a
end;

procedure TFrmTiposMovimento.cmbTipoDocCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Accept := true;
    if DMTiposMovimento.C_Tabela.State in [dsBrowse] then
        DMTiposMovimento.C_Tabela.Edit;
    DMTiposMovimento.C_TabelaTipoImpressao_Op.Value := DMTiposMovimento.C_TiposImpressaoTipo.asString;
    Text := DMTiposMovimento.C_TiposImpressaoTitulo.asString;

    if DMTiposMovimento.C_TabelaTipoImpressao_Op.AsString = 'PL' then
        begin
            cb13.Font.Color := clWindowText;
            cb14.Font.Color := clWindowText;
            cb13.DisableEdit := false;
            cb14.DisableEdit := false;
        end
    else
        begin
            cb13.Font.Color := $00A2999D;
            cb14.Font.Color := $00A2999D;
            cb13.DisableEdit := true;
            cb14.DisableEdit := true;
        end;
    MostraModelo;
end;

procedure TFrmTiposMovimento.dbgImpressaoDblClick(Sender: TObject);
begin
    inherited;
    TdxPopupEditForm(GetParentForm(dbgImpressao)).ClosePopup(True);
end;

procedure TFrmTiposMovimento.FormShow(Sender: TObject);
begin
    inherited;
    cb15.Visible := False; {Reduz Estoque Fiscal}
    if DMProjeto.Parametro('BaixaEstoqueFiscal') = 'S' then
        begin
            cb15.Visible := True;
        end;
    spEstoqueFiscal.Visible := not (cb15.Visible);
    lbAlmox.Visible := False;
    cmbAlmox.Visible := False;
    ckbSolicitacaoAlmox.Visible := False;
    if (DMProjeto.Parametro('MultiAlmox') = 'S') then
        begin
            lbAlmox.Visible := True;
            cmbAlmox.Visible := True;
            ckbSolicitacaoAlmox.Visible := True;
        end;
    cmbCstPadrao.Visible := TS_DBCheckBox40.Checked;
end;

procedure TFrmTiposMovimento.MostraModelo;
begin
    lbTemplate.Visible := (Copy(DMTiposMovimento.C_TabelaTipoImpressao_Op.AsString, 1, 1) = 'N') or
        (Copy(DMTiposMovimento.C_TabelaTipoImpressao_Op.AsString, 1, 1) = 'E') or
        (Copy(DMTiposMovimento.C_TabelaTipoImpressao_Op.AsString, 1, 1) = 'P') or
        (DMTiposMovimento.C_TabelaTipoImpressao_Op.AsString = 'O');
    cmbTemplate.Visible := lbTemplate.Visible;
end;

procedure TFrmTiposMovimento.FormComponentAfterScroll(Sender: TObject);
begin
    inherited;

    MostraModelo;

    ckbSolicitacaoAlmox.DisableEdit := False;
    if (DMTiposMovimento.C_TabelaBAIXAESTOQUEFISCAL.AsString = 'S') or
        (DMTiposMovimento.C_TabelaBAIXAESTOQUE.AsString = 'S') then
        ckbSolicitacaoAlmox.Font.Color := clWindowText
    else
        ckbSolicitacaoAlmox.DisableEdit := true;

    if DMTiposMovimento.C_TabelaTipoImpressao_Op.AsString = 'PL' then
        begin
            cb13.Font.Color := clWindowText;
            cb14.Font.Color := clWindowText;
            cb13.DisableEdit := false;
            cb14.DisableEdit := false;
        end
    else
        begin
            cb13.Font.Color := $00A2999D;
            cb14.Font.Color := $00A2999D;
            cb13.DisableEdit := true;
            cb14.DisableEdit := true;
        end;
    lbCarteira.Visible := DMTiposMovimento.C_TabelaTIPOCOB_PADRAO.Value = 3;
    cmbCarteira.Visible := DMTiposMovimento.C_TabelaTIPOCOB_PADRAO.Value = 3;

    SetInformacoesImpressora;
    SetInformacoesPadrao;
end;

procedure TFrmTiposMovimento.cmbTipoDocPopup(Sender: TObject;
    const EditText: string);
begin
    inherited;
    if not DMTiposMovimento.C_TiposImpressao.Locate('TIPO', DMTiposMovimento.C_TabelaTipoImpressao_OP.value, []) then
        DMTiposMovimento.C_TiposImpressao.first;
end;

procedure TFrmTiposMovimento.cmbTipoNotaFiscalChange(Sender: TObject);
begin
    inherited;
    with DMTiposMovimento do
        begin
            C_TemplatesNF.Close;
            C_TemplatesNF.FetchParams;
            C_TemplatesNF.Params.ParamByName('Tipo').AsString := cmbTipoNotaFiscal.Text;
            C_TemplatesNF.Open;
            C_TemplatesNF.Locate('Template', C_TabelaTemplateNotaFiscal.AsInteger, []);
            cmbTemplateNF.LookUpKeyValue := C_TabelaTemplateNotaFiscal.AsInteger;
        end;
end;

procedure TFrmTiposMovimento.TS_Label6Click(Sender: TObject);
begin
    inherited;
    ActiveControl := cmbTemplateDup;
    DMProjeto.SetParametrosForm([null, 'DUP', DMTiposMovimento.C_TabelaTemplateDuplicata.AsInteger]);
    DMProjeto.CriarForm('DlgTemplates', self, true);
end;

procedure TFrmTiposMovimento.lbTemplateBolClick(Sender: TObject);
begin
    inherited;
    ActiveControl := cmbTemplateBol;
    DMProjeto.SetParametrosForm([null, 'BOL', DMTiposMovimento.C_TabelaTemplateBoleto.AsInteger]);
    DMProjeto.CriarForm('DlgTemplates', self, true);
end;

procedure TFrmTiposMovimento.TS_Label23Click(Sender: TObject);
begin
    inherited;
    ActiveControl := cmbTemplateNF;
    DMProjeto.SetParametrosForm([null, cmbTipoNotaFiscal.Text, DMTiposMovimento.C_TabelaTemplateNotaFiscal.AsInteger]);
    DMProjeto.CriarForm('DlgTemplates', self, true);
end;

procedure TFrmTiposMovimento.tsImpressaoShow(Sender: TObject);
begin
    inherited;
    DMTiposMovimento.C_TemplatesNF.Close;
    DMTiposMovimento.C_TemplatesNF.FetchParams;
    DMTiposMovimento.C_TemplatesNF.Params.ParamByName('tipo').AsString := cmbTipoNotaFiscal.Text;
    DMTiposMovimento.C_TemplatesNF.Open;
    DMTiposMovimento.C_TemplatesNF.Locate('Template', DMTiposMovimento.C_TabelaTemplateNotaFiscal.AsInteger, []);
    cmbTemplateNF.LookUpKeyValue := DMTiposMovimento.C_TabelaTemplateNotaFiscal.AsInteger;
end;

procedure TFrmTiposMovimento.cmbTipoDocChange(Sender: TObject);
begin
    inherited;
    MostraModelo;
end;

procedure TFrmTiposMovimento.cmbTipoDocSelectionChange(Sender: TObject);
begin
    inherited;
    MostraModelo;
end;

procedure TFrmTiposMovimento.cmbTipoCobChange(Sender: TObject);
begin
    inherited;
    lbCarteira.Visible := DMTiposMovimento.C_TabelaTIPOCOB_PADRAO.Value = 3;
    cmbCarteira.Visible := DMTiposMovimento.C_TabelaTIPOCOB_PADRAO.Value = 3;
end;

{   Felipe - Comentado para deixar os campos checkbox com a formatação normal

procedure TFrmTiposMovimento.cb15Change(Sender: TObject);
begin
    inherited;
    if cb15.Checked then
        cb15.Font.Color := clWindowText
    else
        cb15.Font.Color := $00A2999D;

end;

procedure TFrmTiposMovimento.cb16Change(Sender: TObject);
begin
    inherited;
    if cb16.Checked then
        cb16.Font.Color := clWindowText
    else
        cb16.Font.Color := $00A2999D;
end;
}

procedure TFrmTiposMovimento.TS_DBCheckBox40Change(Sender: TObject);
begin
    inherited;
    cmbCstPadrao.Visible := TS_DBCheckBox40.Checked;
end;

{Felipe - 22/05/2015    Chamada os métodos para atribuir aos combobox as impressoras instaladas no windows e o tipo de papel da impressora padrão}

procedure TFrmTiposMovimento.SetInformacoesImpressora();
begin
    GetPrinterNames;
    GetPaperNames;
end;

procedure TFrmTiposMovimento.SetInformacoesPadrao();
begin
    cmbImpressoras.ItemIndex := Integer(cmbImpressoras.Items.IndexOf(DMTiposMovimento.C_TabelaNOMEIMPRESSORA.Value));
    cmbTiposPapeis.ItemIndex := Integer(cmbTiposPapeis.Items.IndexOf(DMTiposMovimento.C_TabelaPAPELIMPRESSORA.Value));
end;

procedure TFrmTiposMovimento.GetPaperNames();
type
    TPaperName = array[0..63] of Char;
    TPaperNameArray = array[1..High(Integer) div
        Sizeof(TPaperName)] of TPaperName;
    PPapernameArray = ^TPaperNameArray;
var
    Device, Driver, Port: array[0..255] of Char;
    hDevMode: THandle;
    i, numPaperformats: Integer;
    pPaperFormats: PPapernameArray;
begin
    Printer.PrinterIndex := -1;
    Printer.GetPrinter(Device, Driver,
        Port, hDevmode);
    numPaperformats := WinSpool.DeviceCapabilities
        (Device, Port, DC_PAPERNAMES, nil, nil);
    if numPaperformats > 0 then
        begin
            GetMem(pPaperformats, numPaperformats * Sizeof(
                TPapername));
            try
                WinSpool.DeviceCapabilities(Device, Port,
                    DC_PAPERNAMES, Pchar(pPaperFormats), nil);

                for i := 1 to numPaperformats do
                    cmbTiposPapeis.Items.Add(pPaperformats^[i]);

            finally
                FreeMem(pPaperformats);
            end;
        end;
end;

procedure TFrmTiposMovimento.GetPrinterNames();
var
    i: integer;
    Printer: TPrinter;
begin
    Printer := TPrinter.Create;

    try
        for i := 0 to Printer.Printers.Count - 1 do
            cmbImpressoras.Items.Add(Printer.Printers.Strings[i]);

    finally
        Printer.Free;
    end;
end;

procedure TFrmTiposMovimento.btGravarClick(Sender: TObject);
begin
    if not (DMTiposMovimento.C_Tabela.State in [dsEdit, dsInsert]) then
        DMTiposMovimento.C_Tabela.Edit;

    DMTiposMovimento.C_TabelaNOMEIMPRESSORA.Value := cmbImpressoras.Text;
    DMTiposMovimento.C_TabelaPAPELIMPRESSORA.Value := cmbTiposPapeis.Text;
    inherited;
end;

end.

