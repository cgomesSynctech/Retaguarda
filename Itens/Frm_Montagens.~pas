unit Frm_Montagens;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject, DlgMsg,
    StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxDBCtrl,
    dxDBGrid, TS_QDBGrid, dxTLClms, dxTL, dxCntner,
    TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxExEdtr,
    dxEdLib, dxDBELib, TS_DBMemo, TS_DBEditNumber, TS_DBButtonEdit,
    TS_DBEditItem, dxDBEdtr, TS_DBLookupComboBox, dxEditor, TS_DBEditDate,
    dxDBTLCl, dxGrClms, TS_DBCheckBox, DBCtrls, TS_DBRadioGroup, Menus,
    TS_PopupMenu, TS_DBText, Placemnt, BTOdeum, db, dxfProgressBar, ppProd,
    ppClass, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe, ppBands, ppStrtch,
    ppSubRpt, myChkBox, ppCtrls, ppPrnabl, ppCache, TS_CheckBox, ppRegion,
    TS_ButtonEdit, TS_EditItem, TS_DBEdit;

type
    TFrmMontagens = class(TFrmPadrao)
        TS_DBEditDate1: TTS_DBEditDate;
        TS_Label1: TTS_Label;
        TS_Label2: TTS_Label;
        lblItem: TTS_Label;
        TS_Label4: TTS_Label;
        TS_Label5: TTS_Label;
        TS_DBLookupComboBox1: TTS_DBLookupComboBox;
        TS_DBEditItem1apagado: TTS_DBEditItem;
        TS_DBEditNumber1: TTS_DBEditNumber;
        TS_DBMemo1: TTS_DBMemo;
        dbgSubItens: TTS_QDBGrid;
        dbgSubItensMONTAGEMFILHO: TdxDBGridMaskColumn;
        dbgSubItensMONTAGEM: TdxDBGridMaskColumn;
        dbgSubItensITEM: TdxDBGridMaskColumn;
        dbgSubItensQUANTIDADE: TdxDBGridMaskColumn;
        dbgSubItensCodigo: TdxDBGridButtonColumn;
        dbgSubItensDescricao: TdxDBGridButtonColumn;
        Grid_icSelecionado: TdxDBGridColumn;
        GridMONTAGEM: TdxDBGridMaskColumn;
        GridDATA: TdxDBGridDateColumn;
        GridMONTADOR: TdxDBGridMaskColumn;
        GridITEM: TdxDBGridMaskColumn;
        GridQTDESOLIC: TdxDBGridMaskColumn;
        GridQTDEPRODUZIDO: TdxDBGridMaskColumn;
        GridSTATUS: TdxDBGridMaskColumn;
        GridOBS: TdxDBGridMaskColumn;
        GridDATACONCLUSAO: TdxDBGridDateColumn;
        GridHORACONCLUSAO: TdxDBGridMaskColumn;
        GridPREVISAOCONCLUSAO: TdxDBGridDateColumn;
        GridDATAENTREGA: TdxDBGridDateColumn;
        GridlkMontador: TdxDBGridLookupColumn;
        GridCODIGO: TdxDBGridMaskColumn;
        GridDESCRICAO: TdxDBGridMaskColumn;
        GridQ_MontagensFilhos: TdxDBGridColumn;
        TS_DBCheckBox1: TTS_DBCheckBox;
        TS_DBRadioGroup1: TTS_DBRadioGroup;
        TS_Label3: TTS_Label;
        TS_DBText1: TTS_DBText;
        TS_Label6: TTS_Label;
        TS_DBButtonEdit1: TTS_DBButtonEdit;
        dbgSubItensUnidade: TdxDBGridColumn;
        dbgSubItensColumn9: TdxDBGridColumn;
        ppDBMontagens: TppDBPipeline;
        ppMontagens: TppReport;
        ppDBMontagensFilho: TppDBPipeline;
        ppHeaderBand1: TppHeaderBand;
        ppDetailBand1: TppDetailBand;
        ppFooterBand1: TppFooterBand;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
        ppDBText14: TppDBText;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        ppLabel5: TppLabel;
        ppLabel6: TppLabel;
        ppLabel7: TppLabel;
        ppLabel9: TppLabel;
        ppLabel10: TppLabel;
        ppLabel11: TppLabel;
        ppLabel12: TppLabel;
        ppLabel13: TppLabel;
        myDBCheckBox1: TmyDBCheckBox;
        ppLabel14: TppLabel;
        ppSubReport1: TppSubReport;
        ppChildReport1: TppChildReport;
        ppTitleBand1: TppTitleBand;
        ppDetailBand2: TppDetailBand;
        ppSummaryBand1: TppSummaryBand;
        ppDBText17: TppDBText;
        ppDBText18: TppDBText;
        ppDBText19: TppDBText;
        ppDBText20: TppDBText;
        ppDBText22: TppDBText;
        ppLabel15: TppLabel;
        ppLine1: TppLine;
        ppLabel16: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel20: TppLabel;
        ppLabel21: TppLabel;
        ppLabel22: TppLabel;
        ppLabel19: TppLabel;
        ppDBText15: TppDBText;
        regCab: TppRegion;
        ppLabel23: TppLabel;
        cbImprimir: TTS_CheckBox;
        ppLine2: TppLine;
        TS_DBEditItem: TTS_DBEditItem;
        ppLabel8: TppLabel;
        dbFabricante: TppDBText;
        spColunaAdicional: TppShape;
        ppLabel24: TppLabel;
        ppDBText9: TppDBText;
        ppDBCalc1: TppDBCalc;
        procedure dbgSubItensExit(Sender: TObject);
        procedure lblItemClick(Sender: TObject);
        procedure TS_DBButtonEdit1ButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure dbgSubItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
        procedure btComando2Click(Sender: TObject);
        procedure ppDBText15GetText(Sender: TObject; var Text: string);
        procedure btGravarClick(Sender: TObject);
        procedure FormShow(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure ConfigurarForm;
        procedure btPesquisarClick(Sender: TObject);
    private
        { Private declarations }
    public
        { Public declarations }
    end;

var
    FrmMontagens: TFrmMontagens;

implementation
uses DM_Montagens, DM_Projeto, funcoes, Form_Padrao;

{$R *.DFM}

procedure TFrmMontagens.dbgSubItensExit(Sender: TObject);
begin
    inherited;
    dbgSubItens.visible := false;
    btComando1.down := false;
end;

procedure TFrmMontagens.lblItemClick(Sender: TObject);
begin
    if not (DMMontagens.C_Tabela.state in [dsEdit, dsInsert]) then
        DMMontagens.C_Tabela.edit;
    inherited;
    dbgSubItens.visible := not dbgSubItens.visible;
    if dbgSubItens.visible then
        ActiveControl := dbgSubItens;
    if not (Sender is TTS_SpeedButton) then
        btComando1.down := dbgSubItens.visible;
end;

procedure TFrmMontagens.TS_DBButtonEdit1ButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    if not (DMMontagens.C_Tabela.state in [dsEdit, dsInsert]) then
        DMMontagens.C_Tabela.edit;
    inherited;
    DMMontagens.C_TabelaNumero.value := AdicionarStr(IntToStr(DMProjeto.NextID('RefMontagens')), '0', 8);
end;

procedure TFrmMontagens.dbgSubItensCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
var nEstoq, nQtde: double;
begin
    inherited;
    DMMontagens.C_TabelaEMPRESA.Value := -1;
    nEstoq := dbgSubItens.GetFieldValue(ANode, 'estoqueatual', 0);
    nQtde := dbgSubItens.GetFieldValue(ANode, 'quantidade', 0);
    if nEstoq < (DMMontagens.C_TabelaQtdeSolic.value * nQtde) then
        AColor := $00D5DBF7;
end;

procedure TFrmMontagens.btComando2Click(Sender: TObject);
begin
    inherited;
    if (DlgMsg.ShowMsg(6042, ['Deseja adicionar uma coluna vazia na impressão ?']) = 100) then
        begin
            dbFabricante.Width := 1.1458;
            spColunaAdicional.Visible := True;
        end
    else
        begin
            dbFabricante.Width := 2.1042;
            spColunaAdicional.Visible := False;
        end;
    DMProjeto.ImprimirCabecalho(regCab);
    ppMontagens.Print;
end;

procedure TFrmMontagens.ppDBText15GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if (DMMontagens.C_MontagensFilhosESTOQUEATUAL.Value <= 0) then
        begin
            Text := FormatFloat('###,##0', DMMontagens.C_MontagensFilhosQuantidade.Value * DMMontagens.C_MontagensFilhosQTDE.Value);
            Exit;
        end;

    { Felipe - Ajuste feito para informar a quantidade solicitar (18/11/2016) }
    //Text := FormatFloat('###,##0', (DMMontagens.C_MontagensFilhosQuantidade.Value * DMMontagens.C_MontagensFilhosQTDE.Value)) // - DMMontagens.C_MontagensFilhosESTOQUEATUAL.Value)
    if DMMontagens.C_MontagensFilhosESTOQUEATUAL.Value < (DMMontagens.C_MontagensFilhosQuantidade.Value * DMMontagens.C_MontagensFilhosQTDE.Value) then
        Text := FormatFloat('###,##0', (DMMontagens.C_MontagensFilhosQuantidade.Value * DMMontagens.C_MontagensFilhosQTDE.Value) - DMMontagens.C_MontagensFilhosESTOQUEATUAL.Value)
    else
        Text := FormatFloat('###,##0', 0);
end;

procedure TFrmMontagens.btGravarClick(Sender: TObject);
begin
    inherited;

    //    if cbImprimir.Checked then
    //        begin
    //            if (DMMontagens.C_TabelaSTATUS.Value <> 3) then
    //                begin
    //                    LocalizarUltimo;
    //                    DMProjeto.ImprimirCabecalho(regCab);
    //                    ppMontagens.Print;
    //                end;
    //        end;
end;

procedure TFrmMontagens.FormShow(Sender: TObject);
begin
    inherited;

    {
    if not (DMMontagens.C_Tabela.state in [dsEdit, dsInsert]) then
        DMMontagens.C_Tabela.edit;

    DMMontagens.C_TabelaNumero.value := AdicionarStr(IntToStr(DMProjeto.NextID('RefMontagens')), '0', 8);
    TS_DBLookupComboBox1.SetFocus;
    }
end;

procedure TFrmMontagens.btLimparClick(Sender: TObject);
begin
    {
    if not (DMMontagens.C_Tabela.state in [dsEdit, dsInsert]) then
        DMMontagens.C_Tabela.edit;

    DMMontagens.C_TabelaNumero.value := AdicionarStr(IntToStr(DMProjeto.NextID('RefMontagens')), '0', 8);
    TS_DBLookupComboBox1.SetFocus;
    }
    inherited;

    ConfigurarForm;
end;

procedure TFrmMontagens.ConfigurarForm();
var
    desabilitar: boolean;
begin
    try
        desabilitar := (DMMontagens.C_TabelaSTATUS.Value in [2, 3, 4]);
    except
        desabilitar := false;
    end;

    TS_DBButtonEdit1.ReadOnly := desabilitar; //  campo numero
    TS_DBEditDate1.ReadOnly := desabilitar; //  campo data
    TS_DBLookupComboBox1.ReadOnly := desabilitar; //  campo operador
    TS_DBEditItem.ReadOnly := desabilitar; //  campo item
    TS_DBEditNumber1.ReadOnly := desabilitar; //  campo qtd solicitada
    TS_DBMemo1.ReadOnly := desabilitar; //  campo obs
    TS_DBCheckBox1.ReadOnly := desabilitar; //  campo urgente

end;

procedure TFrmMontagens.btPesquisarClick(Sender: TObject);
begin
    inherited;
    ConfigurarForm;
end;

end.

