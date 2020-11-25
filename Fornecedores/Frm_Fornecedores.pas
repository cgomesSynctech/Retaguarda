unit Frm_Fornecedores;

interface

uses
    Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
    FRM_PADRAO, StdCtrls, DBCtrls, TS_DBCheckBox, TS_DBLookupComboBox,
    TS_GroupBox, Mask, TS_DBEdit, TS_Label, FormComponent, ImgList, DlgMsg,
    Menus, TS_ScrollBox, ComCtrls,
    Buttons, TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_PageControl,
    TS_DBText, TS_DBMemo, TS_Bevel, TS_LastDataObject,
    CheckLst, TS_CheckListBox, Db, IBCustomDataSet, IBQuery,
    ppDB, ppDBPipe, ppCtrls, ppBands, ppStrtch, ppRegion, ppPrnabl, ppClass,
    ppCache, ppComm, ppRelatv, ppProd, ppReport, RxDBComb, TS_Image,
    dxfLabel, TS_MaxPanel, TS_Shape, dxExEdtr, dxEdLib, dxDBELib, dxEditor,
    dxDBEdtr, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_DBComboBox,
    TS_DBEditNumber, dxDBTLCl, dxGrClms,
    teCtrls, TS_EffectsPanel, TS_DBMaskEdit, TS_DBHyperLinkEdit,
    TS_DBButtonEdit, Dlg_PopupContas, TS_DBPopupEdit, dxTLClms, TS_PopupMenu, Variants,
    BTOdeum, Placemnt, DBText, TS_DBTextEffect, dxfProgressBar,
    TS_DBImageEdit, ppSubRpt, myChkBox;

type
    TFrmFornecedores = class(TFrmPadrao)
        pcAbas: TTS_PageControl;
        tsEndereco: TTS_TabSheet;
        tsCaracteristicas: TTS_TabSheet;
        TS_Label17: TTS_Label;
        TS_SpeedButton4: TTS_SpeedButton;
        TS_Label1: TTS_Label;
        TS_Label10: TTS_Label;
        TS_Label19: TTS_Label;
        DF_DataCad: TTS_DBText;
        DF_Nome: TTS_DBEdit;
        tsCustomizados: TTS_TabSheet;
        lblCampo1: TTS_Label;
        lblCampo2: TTS_Label;
        lblCampo3: TTS_Label;
        lblCampo4: TTS_Label;
        lblCampo5: TTS_Label;
        lblCampo6: TTS_Label;
        lblCampo7: TTS_Label;
        lblCampo8: TTS_Label;
        lblCampo9: TTS_Label;
        lblCampo10: TTS_Label;
        dfCampo1: TTS_DBEdit;
        dfCampo2: TTS_DBEdit;
        dfCampo3: TTS_DBEdit;
        dfCampo4: TTS_DBEdit;
        dfCampo5: TTS_DBEdit;
        dfCampo6: TTS_DBEdit;
        dfCampo7: TTS_DBEdit;
        dfCampo8: TTS_DBEdit;
        dfCampo9: TTS_DBEdit;
        dfCampo10: TTS_DBEdit;
        cbCampo1: TTS_DBCheckBox;
        cbCampo2: TTS_DBCheckBox;
        cbCampo3: TTS_DBCheckBox;
        cbCampo4: TTS_DBCheckBox;
        cbCampo5: TTS_DBCheckBox;
        cbCampo6: TTS_DBCheckBox;
        cbCampo7: TTS_DBCheckBox;
        cbCampo8: TTS_DBCheckBox;
        cbCampo9: TTS_DBCheckBox;
        cbCampo10: TTS_DBCheckBox;
        cmbCampo1: TTS_DBComboBox;
        cmbCampo2: TTS_DBComboBox;
        cmbCampo3: TTS_DBComboBox;
        cmbCampo4: TTS_DBComboBox;
        cmbCampo5: TTS_DBComboBox;
        cmbCampo6: TTS_DBComboBox;
        cmbCampo7: TTS_DBComboBox;
        cmbCampo8: TTS_DBComboBox;
        cmbCampo9: TTS_DBComboBox;
        cmbCampo10: TTS_DBComboBox;
        TS_BitBtn1: TTS_SpeedButton;
        TS_Label16: TTS_Label;
        TS_Label21: TTS_Label;
        TS_Label22: TTS_Label;
        TS_Label26: TTS_Label;
        TS_Label15: TTS_Label;
        DF_TipoAtividade: TTS_DBLookupComboBox;
        DF_LimiteCredito: TTS_DBEditNumber;
        DF_TipoEntrega: TTS_DBLookupComboBox;
        DF_PlanoPagto: TTS_DBLookupComboBox;
        DF_OBS: TTS_DBMemo;
        GridCODIGO: TdxDBGridMaskColumn;
        GridNOME: TdxDBGridMaskColumn;
        GridENDERECO: TdxDBGridMaskColumn;
        GridCIDADE: TdxDBGridMaskColumn;
        GridUF: TdxDBGridMaskColumn;
        GridCEP: TdxDBGridMaskColumn;
        GridPAIS: TdxDBGridMaskColumn;
        GridFONE1: TdxDBGridMaskColumn;
        GridFAX: TdxDBGridMaskColumn;
        GridCONTATO: TdxDBGridMaskColumn;
        GridEMAIL: TdxDBGridMaskColumn;
        GridcfSALDO: TdxDBGridColumn;
        btOutros: TTS_SpeedButton;
        TS_Label31: TTS_Label;
        DF_Conta: TTS_DBPopupEdit;
        TS_Label18: TTS_Label;
        DF_ContaPgto: TTS_DBPopupEdit;
        TS_Label20: TTS_Label;
        DF_ContaDespesas: TTS_DBPopupEdit;
        ppmOutros: TTS_PopupMenu;
        DF_Codigo: TTS_DBButtonEdit;
        TS_Label2: TTS_Label;
        TS_Label3: TTS_Label;
        TS_Label8: TTS_Label;
        TS_Label4: TTS_Label;
        TS_Label5: TTS_Label;
        TS_Label13: TTS_Label;
        TS_Label12: TTS_Label;
        TS_Label11: TTS_Label;
        TS_Label9: TTS_Label;
        TS_Label14: TTS_Label;
        DF_Endereco: TTS_DBEdit;
        DF_Cidade: TTS_DBEdit;
        DF_Fone1: TTS_DBEdit;
        DF_Contato: TTS_DBEdit;
        DF_UF: TTS_DBLookupComboBox;
        DF_CEP: TTS_DBMaskEdit;
        DF_Fone2: TTS_DBEdit;
        DF_Celular: TTS_DBEdit;
        DF_Email: TTS_DBButtonEdit;
        DF_Site: TTS_DBButtonEdit;
        Compromissos1: TMenuItem;
        Lembretes1: TMenuItem;
        Ocorrencias1: TMenuItem;
        Memorizar1: TMenuItem;
        Alertas1: TMenuItem;
        dfDiasEntrega: TTS_DBMaskEdit;
        TS_Label23: TTS_Label;
        TS_Label27: TTS_Label;
        ppmPagarConta: TMenuItem;
        N4: TMenuItem;
        TS_Shape3: TTS_Shape;
        TS_DBTextEffect3: TTS_DBTextEffect;
        TS_Shape1: TTS_Shape;
        TS_DBTextEffect1: TTS_DBTextEffect;
        FazerOperacao: TMenuItem;
        PedidosdeCompra1: TMenuItem;
        EntradadeItens1: TMenuItem;
        DevoluesdeItens1: TMenuItem;
        GridcfCREDITO: TdxDBGridMaskColumn;
        TS_Label25: TTS_Label;
        TS_Label24: TTS_Label;
        dfCNPJ: TTS_DBMaskEdit;
        TS_DBMaskEdit1: TTS_DBMaskEdit;
        TS_DBEdit1: TTS_DBEdit;
        TS_Label28: TTS_Label;
        TS_Label29: TTS_Label;
        TS_DBImageEdit1: TTS_DBImageEdit;
        TS_DBEdit2: TTS_DBEdit;
        TS_Label6: TTS_Label;
        TS_DBCheckBox1: TTS_DBCheckBox;
        TS_Label7: TTS_Label;
        TS_DBImageEdit2: TTS_DBImageEdit;
        TS_Label30: TTS_Label;
        dfFax: TTS_DBEdit;
        TS_Label157: TTS_Label;
        cmbMunicipios: TTS_DBLookupComboBox;
        TS_DBMaskEdit2: TTS_DBMaskEdit;
        TS_Label32: TTS_Label;
        TS_Label161: TTS_Label;
        dblPais: TTS_DBLookupComboBox;
        ppFornecedor: TppReport;
        ppHeaderBand1: TppHeaderBand;
        regCab: TppRegion;
        ppLabel23: TppLabel;
        ppDetailBand1: TppDetailBand;
        ppDBText1: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
        ppLabel1: TppLabel;
        ppLabel9: TppLabel;
        ppLabel11: TppLabel;
        ppLabel12: TppLabel;
        ppLabel13: TppLabel;
        ppLine1: TppLine;
        ppFooterBand1: TppFooterBand;
        ppDBFornecedor: TppDBPipeline;
        ppDBText2: TppDBText;
        ppLabel2: TppLabel;
        Imprimir1: TMenuItem;
        ppLabel3: TppLabel;
        ppDBText3: TppDBText;
        ppLabel4: TppLabel;
        ppDBText4: TppDBText;
        ppLabel5: TppLabel;
        ppDBText5: TppDBText;
        ppLabel6: TppLabel;
        ppDBText6: TppDBText;
        ppLabel7: TppLabel;
        ppDBText7: TppDBText;
        ppLabel8: TppLabel;
        ppDBText8: TppDBText;
        ppLine2: TppLine;
        ppLabel10: TppLabel;
        ppLabel15: TppLabel;
        ppDBText9: TppDBText;
        ppLabel16: TppLabel;
        ppDBText10: TppDBText;
        ppLabel17: TppLabel;
        ppDBText14: TppDBText;
        ppLabel18: TppLabel;
        ppDBText15: TppDBText;
        ppLabel19: TppLabel;
        ppDBText16: TppDBText;
        ppLabel20: TppLabel;
        ppDBText17: TppDBText;
        ppLabel21: TppLabel;
        ppDBText18: TppDBText;
        procedure FormClose(Sender: TObject; var Action: TCloseAction);
        procedure FormCreate(Sender: TObject);
        procedure TS_SpeedButton1Click(Sender: TObject);
        procedure TS_SpeedButton4Click(Sender: TObject);
        procedure TS_SpeedButton3Click(Sender: TObject);
        procedure ppDBText12GetText(Sender: TObject;
            var Text: string);
        procedure TS_BitBtn1Click(Sender: TObject);
        procedure btCompromissosClick(Sender: TObject);
        procedure btLembClick(Sender: TObject);
        procedure btOcorrClick(Sender: TObject);
        procedure btMemClick(Sender: TObject);
        procedure btAlertClick(Sender: TObject);
        procedure btOutrosMouseUp(Sender: TObject; Button: TMouseButton;
            Shift: TShiftState; X, Y: Integer);
        procedure DF_EmailButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure DF_SiteButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure rbSaldoAbertoPreviewFormCreate(Sender: TObject);
        procedure DF_ContaInitPopup(Sender: TObject);
        procedure DF_ContaPgtoInitPopup(Sender: TObject);
        procedure DF_ContaDespesasInitPopup(Sender: TObject);
        procedure FormActivate(Sender: TObject);
        procedure DF_CodigoButtonClick(Sender: TObject;
            AbsoluteIndex: Integer);
        procedure FormComponentEstado_Inicial(Sender: TObject;
            var bSkip: Boolean);
        procedure TS_Label16SetParametrosForm(Sender: TObject);
        procedure TS_Label21SetParametrosForm(Sender: TObject);
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure UltimoGravado1Click(Sender: TObject);
        procedure ppmPagarContaClick(Sender: TObject);
        procedure ppmOutrosPopup(Sender: TObject);
        procedure TS_DBTextEffect1Click(Sender: TObject);
        procedure TS_DBTextEffect3Click(Sender: TObject);
        procedure PedidosdeCompra1Click(Sender: TObject);
        procedure EntradadeItens1Click(Sender: TObject);
        procedure DevoluesdeItens1Click(Sender: TObject);
        procedure FormComponentBeforeSave(Sender: TObject; var bSkip: Boolean);
        procedure dfCNPJExit(Sender: TObject);
        procedure dfCNPJEnter(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure Imprimir1Click(Sender: TObject);
    protected
        DlgPopup: TDlgPopupContas;
    private
        nCodForm: Integer;
        sCamposDef, sCamposTit, sCamposTipo: string;
        procedure LerCamposDefinidos;
        procedure PopulaCampo(obj: TTS_DBComboBox; nCampo: integer);
    public
        { Public declarations }
    end;

var
    FrmFornecedores: TFrmFornecedores;

implementation

uses DM_Fornecedores, DM_Projeto, Dlg_DefinirCamposFav, funcoes, ShellApi;

{$R *.DFM}

procedure TFrmFornecedores.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    inherited;
    FrmFornecedores := nil;
end;

procedure TFrmFornecedores.FormCreate(Sender: TObject);
begin
    inherited;
    pcAbas.ActivePage := tsEndereco;
    nCodForm := 26;
    LerCamposDefinidos;
    DlgPopup := TDlgPopupContas.Create(Self, DMFornecedores.C_ContasDS, nil, False);
end;

procedure TFrmFornecedores.TS_SpeedButton1Click(Sender: TObject);
begin
    inherited;
    (*

      if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'QDROGERAL') then
        exit;
      if DMFornecedores.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg( 923 )
      else begin
        DMProjeto.SetParametrosForm( [DMFornecedores.C_TabelaFAVORECIDO.Value, 2{TipoFav}] );
        DMProjeto.CriarForm('DlgSitFornecedor', Self, true);
      end;

    *)
end;

procedure TFrmFornecedores.TS_SpeedButton4Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'EXTPARCELA') then
        exit;
    if DMFornecedores.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(923)
    else
        begin
            DMProjeto.ImprimirRelatorioFavorecido(self, 'SALDOEMABERTOFORNEC', DMFornecedores.C_TabelaFavorecido.Value);
        end;
end;

procedure TFrmFornecedores.TS_SpeedButton3Click(Sender: TObject);
begin
    inherited;
    if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name, 'ULTCOMPRA') then
        exit;
    if DMFornecedores.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(923)
    else
        begin
            DMProjeto.SetParametrosForm([DMFornecedores.C_TabelaFAVORECIDO.AsInteger, DMFornecedores.C_TabelaNOME.AsString, 2 {TipoFav}]);
            DMProjeto.CriarForm('DlgUltVendasFornecedor', Self, True);
        end;
end;

procedure TFrmFornecedores.ppDBText12GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    if Text = '' then Text := '0,00';
end;

procedure TFrmFornecedores.TS_BitBtn1Click(Sender: TObject);
begin
    inherited;
    DlgDefinirCamposFav := TDlgDefinirCamposFav.create(self);
    DlgDefinirCamposFav.free;

    LerCamposDefinidos;
end;

procedure TFrmFornecedores.LerCamposDefinidos;
var i: integer;
    sCampo, sTitulo, sTipo: string;
begin
    sCamposDef := DMProjeto.Parametro('FornCamposDefinidos');
    sCamposTit := DMProjeto.Parametro('FornCamposTitulos');
    sCamposTipo := DMProjeto.Parametro('FornCamposTipos');
    lblCampo1.visible := false;
    dfCampo1.visible := false;
    cbCampo1.visible := false;
    cmbCampo1.visible := false;
    lblCampo2.visible := false;
    dfCampo2.visible := false;
    cbCampo2.visible := false;
    cmbCampo2.visible := false;
    lblCampo3.visible := false;
    dfCampo3.visible := false;
    cbCampo3.visible := false;
    cmbCampo3.visible := false;
    lblCampo4.visible := false;
    dfCampo4.visible := false;
    cbCampo4.visible := false;
    cmbCampo4.visible := false;
    lblCampo5.visible := false;
    dfCampo5.visible := false;
    cbCampo5.visible := false;
    cmbCampo5.visible := false;
    lblCampo6.visible := false;
    dfCampo6.visible := false;
    cbCampo6.visible := false;
    cmbCampo6.visible := false;
    lblCampo7.visible := false;
    dfCampo7.visible := false;
    cbCampo7.visible := false;
    cmbCampo7.visible := false;
    lblCampo8.visible := false;
    dfCampo8.visible := false;
    cbCampo8.visible := false;
    cmbCampo8.visible := false;
    lblCampo9.visible := false;
    dfCampo9.visible := false;
    cbCampo9.visible := false;
    cmbCampo9.visible := false;
    lblCampo10.visible := false;
    dfCampo10.visible := false;
    cbCampo10.visible := false;
    cmbCampo10.visible := false;
    for i := 1 to ContaStrings(sCamposDef, ';') do
        begin
            sCampo := SeparaStrings(sCamposDef, ';', i);
            sTitulo := SeparaStrings(sCamposTit, ';', i);
            sTipo := SeparaStrings(sCamposTipo, ';', i);
            if sCampo = '1' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo1.visible := true;
                            lblCampo1.caption := sTitulo;
                            dfCampo1.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo1.visible := true;
                            lblCampo1.visible := true;
                            lblCampo1.caption := sTitulo;
                            PopulaCampo(cmbCampo1, 1);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo1.visible := true;
                            cbCampo1.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo01.IsNull or (DMFornecedores.C_TabelaCampo01.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo01.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '2' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo2.visible := true;
                            lblCampo2.caption := sTitulo;
                            dfCampo2.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo2.visible := true;
                            lblCampo2.visible := true;
                            lblCampo2.caption := sTitulo;
                            PopulaCampo(cmbCampo2, 2);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo2.visible := true;
                            cbCampo2.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo02.IsNull or (DMFornecedores.C_TabelaCampo02.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo02.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '3' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo3.visible := true;
                            lblCampo3.caption := sTitulo;
                            dfCampo3.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo3.visible := true;
                            lblCampo3.visible := true;
                            lblCampo3.caption := sTitulo;
                            PopulaCampo(cmbCampo3, 3);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo3.visible := true;
                            cbCampo3.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo03.IsNull or (DMFornecedores.C_TabelaCampo03.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo03.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '4' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo4.visible := true;
                            lblCampo4.caption := sTitulo;
                            dfCampo4.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo4.visible := true;
                            lblCampo4.visible := true;
                            lblCampo4.caption := sTitulo;
                            PopulaCampo(cmbCampo4, 4);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo4.visible := true;
                            cbCampo4.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo04.IsNull or (DMFornecedores.C_TabelaCampo04.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo04.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '5' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo5.visible := true;
                            lblCampo5.caption := sTitulo;
                            dfCampo5.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo5.visible := true;
                            lblCampo5.visible := true;
                            lblCampo5.caption := sTitulo;
                            PopulaCampo(cmbCampo5, 5);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo5.visible := true;
                            cbCampo5.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo05.IsNull or (DMFornecedores.C_TabelaCampo05.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo05.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '6' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo6.visible := true;
                            lblCampo6.caption := sTitulo;
                            dfCampo6.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo6.visible := true;
                            lblCampo6.visible := true;
                            lblCampo6.caption := sTitulo;
                            PopulaCampo(cmbCampo6, 6);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo6.visible := true;
                            cbCampo6.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo06.IsNull or (DMFornecedores.C_TabelaCampo06.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo06.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '7' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo7.visible := true;
                            lblCampo7.caption := sTitulo;
                            dfCampo7.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo7.visible := true;
                            lblCampo7.visible := true;
                            lblCampo7.caption := sTitulo;
                            PopulaCampo(cmbCampo7, 7);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo7.visible := true;
                            cbCampo7.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo07.IsNull or (DMFornecedores.C_TabelaCampo07.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo07.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '8' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo8.visible := true;
                            lblCampo8.caption := sTitulo;
                            dfCampo8.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo8.visible := true;
                            lblCampo8.visible := true;
                            lblCampo8.caption := sTitulo;
                            PopulaCampo(cmbCampo8, 8);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo8.visible := true;
                            cbCampo8.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo08.IsNull or (DMFornecedores.C_TabelaCampo08.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo08.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '9' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo9.visible := true;
                            lblCampo9.caption := sTitulo;
                            dfCampo9.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo9.visible := true;
                            lblCampo9.visible := true;
                            lblCampo9.caption := sTitulo;
                            PopulaCampo(cmbCampo9, 9);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo9.visible := true;
                            cbCampo9.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo09.IsNull or (DMFornecedores.C_TabelaCampo09.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo09.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end
            else if sCampo = '10' then
                begin
                    if sTipo = '0' then
                        begin
                            lblCampo10.visible := true;
                            lblCampo10.caption := sTitulo;
                            dfCampo10.visible := true;
                        end
                    else if sTipo = '1' then
                        begin
                            cmbCampo10.visible := true;
                            lblCampo10.visible := true;
                            lblCampo10.caption := sTitulo;
                            PopulaCampo(cmbCampo10, 10);
                        end
                    else if sTipo = '2' then
                        begin
                            cbCampo10.visible := true;
                            cbCampo10.caption := sTitulo;
                            if DMFornecedores.C_TabelaCampo10.IsNull or (DMFornecedores.C_TabelaCampo10.value <> 'S') then
                                begin
                                    DMFornecedores.C_Tabela.edit;
                                    DMFornecedores.C_TabelaCampo10.value := 'N';
                                    DMFornecedores.C_Tabela.UpdateRecord;
                                end;
                        end;
                end;
        end;
end;

procedure TFrmFornecedores.PopulaCampo;
var xCampo: string;
begin
    xCampo := 'campo' + AdicionarStr(IntToStr(nCampo), '0', 2);
    TTS_DBComboBox(obj).Items.Clear;
    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.Text := 'select distinct ' + xCampo + ' from favorecidos where ' + xCampo + ' is not null order by 1';
    DMProjeto.Q_SQL.open;

    while not DMProjeto.Q_SQL.eof do
        begin
            TTS_DBComboBox(obj).Items.add(DMProjeto.Q_SQL.fieldbyname(xCampo).asstring);
            DMProjeto.Q_SQL.next;
        end;
end;

procedure TFrmFornecedores.btCompromissosClick(Sender: TObject);
begin
    inherited;
    if DMFornecedores.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(923)
    else
        begin
            DMProjeto.SetParametrosForm(['Favorecidos', DMFornecedores.C_TabelaFAVORECIDO.Value, 'Compromissos com Favorecido [' + DMFornecedores.C_TabelaNOME.Value + ']']);
            DMProjeto.CriarForm('DlgDescricaoCompromissos', Self, true);
        end;
end;

procedure TFrmFornecedores.btLembClick(Sender: TObject);
begin
    inherited;
    DMProjeto.Lembrete(self, DMJanela.C_Tabela.FieldByName('Favorecido').AsInteger, 2, 923);
end;

procedure TFrmFornecedores.btOcorrClick(Sender: TObject);
begin
    inherited;
    DMProjeto.Ocorrencia(self, DMJanela.C_Tabela.FieldByName('Favorecido').AsInteger, 2, DMJanela.C_Tabela.FieldByName('Nome').AsString);
end;

procedure TFrmFornecedores.btMemClick(Sender: TObject);
begin
    inherited;
    DMProjeto.Memorize(self, nCodForm, DMFornecedores.C_TabelaFavorecido.Value,
        DMFornecedores.C_TabelaCODIGO.Value, DMFornecedores.C_TabelaNOME.Value, 2);
end;

procedure TFrmFornecedores.btAlertClick(Sender: TObject);
begin
    inherited;
    if DMFornecedores.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(923)
    else
        begin
            DMProjeto.SetParametrosForm([DMFornecedores.C_TabelaFavorecido.value, 2]);
            DMProjeto.CriarForm('FrmAlerta', Self, true);
        end;
end;

procedure TFrmFornecedores.btOutrosMouseUp(Sender: TObject;
    Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
    inherited;
    ppmOutros.PopupFromCursorPos;
end;

procedure TFrmFornecedores.DF_EmailButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if DF_Email.Text <> '' then SendMail('', '', '', '', '', DF_Nome.Text, DF_Email.Text);
end;

procedure TFrmFornecedores.DF_SiteButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    if DF_Site.Text <> '' then
        ShellExecute(Application.Handle, nil, PChar(DF_Site.Text), nil, nil, SW_SHOWNORMAL);
end;

procedure TFrmFornecedores.rbSaldoAbertoPreviewFormCreate(Sender: TObject);
begin
    inherited;
    Screen.Cursor := crDefault;
end;

procedure TFrmFornecedores.DF_ContaInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDS(DMFornecedores.C_ContasDS);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFornecedores.DF_ContaPgtoInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDS(DMFornecedores.C_ContasPagtoDS);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFornecedores.DF_ContaDespesasInitPopup(Sender: TObject);
begin
    inherited;
    DlgPopup.SetDS(DMFornecedores.C_ContaDespesasDS);
    DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
end;

procedure TFrmFornecedores.FormActivate(Sender: TObject);
begin
    inherited;
    DF_Conta.PopupControl := DlgPopup.pnPopup;
    DF_ContaPgto.PopupControl := DlgPopup.pnPopup;
    DF_ContaDespesas.PopupControl := DlgPopup.pnPopup;
end;

procedure TFrmFornecedores.DF_CodigoButtonClick(Sender: TObject;
    AbsoluteIndex: Integer);
begin
    inherited;
    DMFornecedores.GeraCodigo;
    ActiveControl := DF_Nome;
end;

procedure TFrmFornecedores.FormComponentEstado_Inicial(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    pcAbas.ActivePageIndex := 0;
end;

procedure TFrmFornecedores.TS_Label16SetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 2]); // tipofavorecido
end;

procedure TFrmFornecedores.TS_Label21SetParametrosForm(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 'E']); // tipofavorecido
end;

procedure TFrmFornecedores.FormComponentBeforeClearParams(Sender: TObject);
begin
    inherited;
    DF_LimiteCredito.ReadOnly := not DMProjeto.LerPermissao(self.name, 'ALTLIMCRE');
    tsCustomizados.TabVisible := DMProjeto.LerPermissao(self.name, 'CCUSTOM');
    tsCaracteristicas.TabVisible := DMProjeto.LerPermissao(self.name, 'CARAC');
    tsEndereco.TabVisible := DMProjeto.LerPermissao(self.name, 'ENDERECO');
end;

procedure TFrmFornecedores.UltimoGravado1Click(Sender: TObject);
begin
    with DMProjeto.Q_SQL do
        begin
            close;
            sql.text := 'select max(favorecido) from favorecidos where tipofavorecido = 2 ';
            open;
            Localizar('', ' where favorecido = ' + fields[0].AsString);
            close;
        end;
end;

procedure TFrmFornecedores.ppmPagarContaClick(Sender: TObject);
begin
    inherited;
    with DMProjeto do
        begin
            SetParametrosForm([null, DMFornecedores.C_TabelaFavorecido.AsInteger, '']);
            CriarForm('DlgSangria', self, true);
        end;
end;

procedure TFrmFornecedores.ppmOutrosPopup(Sender: TObject);
begin
    inherited;
    ppmPagarConta.Enabled := DMFornecedores.bAlteracao;
    FazerOperacao.Enabled := ppmPagarConta.Enabled;
end;

procedure TFrmFornecedores.TS_DBTextEffect1Click(Sender: TObject);
begin
    inherited;
    if DMFornecedores.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(543)
    else
        begin
            DMProjeto.ImprimirRelatorioFavorecido(self, 'CREDITOFORN', DMFornecedores.C_TabelaFavorecido.Value);
        end;
end;

procedure TFrmFornecedores.TS_DBTextEffect3Click(Sender: TObject);
begin
    inherited;
    if DMFornecedores.C_TabelaFavorecido.value <= 0 then
        DlgMsg.ShowMsg(923)
    else
        begin
            DMProjeto.ImprimirRelatorioFavorecido(self, 'SALDOEMABERTOFORNEC', DMFornecedores.C_TabelaFavorecido.Value);
        end;
end;

procedure TFrmFornecedores.PedidosdeCompra1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 102]);
    DMProjeto.CriarForm('FrmPedidosCompra', Self, false);
end;

procedure TFrmFornecedores.EntradadeItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 101]);
    DMProjeto.CriarForm('FrmCompras', Self, false);
end;

procedure TFrmFornecedores.DevoluesdeItens1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.SetParametrosForm([null, 6]);
    DMProjeto.CriarForm('FrmDevolucoesFornecedores', Self, False);
end;

procedure TFrmFornecedores.FormComponentBeforeSave(Sender: TObject;
    var bSkip: Boolean);
begin
    inherited;
    if DMFornecedores.C_TabelaCodigo.Value = '' then
        DMFornecedores.GeraCodigo;
end;

procedure TFrmFornecedores.dfCNPJExit(Sender: TObject);
begin
    inherited;
    if length(TTS_DBMaskEdit(Sender).Text) = 11 then
        begin
            DMFornecedores.C_TabelaCPF_CNPJ.EditMask := '999.999.999-99;0; ';
            DMFornecedores.C_TabelaPESSOA_FJ.Value := 'F';
        end
    else if length(TTS_DBMaskEdit(Sender).Text) = 14 then
        begin
            DMFornecedores.C_TabelaCPF_CNPJ.EditMask := '99.999.999/9999-99;0; ';
            DMFornecedores.C_TabelaPESSOA_FJ.Value := 'J';
        end;
end;

procedure TFrmFornecedores.dfCNPJEnter(Sender: TObject);
begin
    inherited;
    DMFornecedores.C_TabelaCPF_CNPJ.EditMask := '';
end;

procedure TFrmFornecedores.btGravarClick(Sender: TObject);
begin
    if (DMFornecedores.C_TabelaMUNICIPIO.IsNull) then
        DlgMsg.ShowMsg(50, ['O Campo IBGE é Obritório!!!'])
    else
        inherited;

end;

procedure TFrmFornecedores.Imprimir1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.ImprimirCabecalho(regCab);
    ppFornecedor.Print;
end;

end.

