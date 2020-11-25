unit Frm_MontagensProduto;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_PADRAO, dxExEdtr, Placemnt, BTOdeum, FormComponent, ImgList,
    Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms,
    dxTL, dxCntner, dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons,
    TS_SpeedButton, teCtrls, TS_EffectsPanel, dxDBTLCl, dxGrClms, dxEditor,
    dxEdLib, dxDBELib, TS_DBEdit, TS_Edit, ppDB, ppDBPipe, ppBands,
    ppCtrls, ppReport, ppSubRpt, myChkBox, ppPrnabl, ppClass, ppStrtch,
    ppRegion, ppCache, ppComm, ppRelatv, ppProd;

type
    TFrmMontagensProduto = class(TFrmPadrao)
        dbgSubItens: TTS_QDBGrid;
        dbgSubItensMONTAGEMFILHO: TdxDBGridMaskColumn;
        dbgSubItensMONTAGEM: TdxDBGridMaskColumn;
        dbgSubItensITEM: TdxDBGridMaskColumn;
        dbgSubItensQUANTIDADE: TdxDBGridCurrencyColumn;
        dbgSubItensUNIDADE: TdxDBGridMaskColumn;
        dbgSubItensFATOR: TdxDBGridMaskColumn;
        dbgSubItensEMPRESA: TdxDBGridMaskColumn;
        dbgSubItensORIGEMREPLIC: TdxDBGridMaskColumn;
        dbgSubItensCODIGO: TdxDBGridButtonColumn;
        dbgSubItensDESCRICAO: TdxDBGridButtonColumn;
        dbgSubItensCUSTOMEDIO: TdxDBGridMaskColumn;
        dbgSubItensPRECO: TdxDBGridMaskColumn;
        dbgSubItensSubTotal: TdxDBGridMaskColumn;
        ppmMontagensProduto: TTS_PopupMenu;
        ExcluirProduto1: TMenuItem;
        lblCancelado: TTS_Label;
        dfQtdSolicitada: TTS_DBEdit;
        lblQtdSolicitada: TTS_Label;
        dbgSubItensQTDE: TdxDBGridMaskColumn;
        dbgSubItensQTDTOTAL: TdxDBGridMaskColumn;
        lblItemProduzido: TTS_Label;
        lblNumero: TTS_Label;
        dfNumero: TTS_DBEdit;
        dfItemProduzido: TTS_Edit;
        dbgSubItensFABRICANTE: TdxDBGridMaskColumn;
        ppMontagens: TppReport;
        ppHeaderBand1: TppHeaderBand;
        regCab: TppRegion;
        ppLabel19: TppLabel;
        ppDetailBand1: TppDetailBand;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        ppDBText10: TppDBText;
        ppDBText11: TppDBText;
        ppDBText12: TppDBText;
        ppDBText13: TppDBText;
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
        ppLabel16: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel20: TppLabel;
        ppLabel22: TppLabel;
        ppDetailBand2: TppDetailBand;
        ppDBText15: TppDBText;
        ppDBText16: TppDBText;
        ppDBText17: TppDBText;
        ppDBText18: TppDBText;
        ppSummaryBand1: TppSummaryBand;
        ppLine2: TppLine;
        ppLabel8: TppLabel;
        ppDBCalc1: TppDBCalc;
        ppDBCalc2: TppDBCalc;
        ppLabel15: TppLabel;
        ppLine1: TppLine;
        ppFooterBand1: TppFooterBand;
        ppDBMontagens: TppDBPipeline;
        ppDBMontagensFilho: TppDBPipeline;
        dbTabelaPadrao: TppDBText;
        lblTabelaPreco: TppLabel;
        dbTabelaPreco1: TppDBText;
        lblTabela1: TppLabel;
        lblTabela2: TppLabel;
        dbTabelaPreco2: TppDBText;
        dbTabelaPreco3: TppDBText;
        lblTabela3: TppLabel;
        dbCalcTabelaPreco: TppDBCalc;
        dbCalcTabela1: TppDBCalc;
        dbCalcTabela2: TppDBCalc;
        dbCalcTabela3: TppDBCalc;
        ppLabel21: TppLabel;
        dbgSubItensCUSTOCONTABIL: TdxDBGridMaskColumn;
        ppDBCalc3: TppDBCalc;
        ppDBText14: TppDBText;
        ppLine3: TppLine;
        ppLine4: TppLine;
        ppLabel23: TppLabel;
        ppLabel24: TppLabel;
    dbgSubItensQTDSOLICITAR: TdxDBGridMaskColumn;
    ppLabel25: TppLabel;
    ppDBText19: TppDBText;
    ppDBMontagensppField25: TppField;
        procedure FormComponentBeforeClearParams(Sender: TObject);
        procedure dbgSubItensTS_AfterNewRecord(Sender: TObject);
        procedure dbgSubItensTS_AposLocalizar(Sender: TObject);
        procedure dbgSubItensTS_BeforeLocalizar(Sender: TObject; var Campo,
            Conteudo: string);
        procedure ConfigurarForm();
        procedure AdicionarColunasTabelaPreco();
        procedure btComando1Click(Sender: TObject);
        procedure dbTabelaPadraoGetText(Sender: TObject; var Text: string);
        procedure dbTabelaPreco1GetText(Sender: TObject; var Text: string);
        procedure dbTabelaPreco3GetText(Sender: TObject; var Text: string);
        procedure dbTabelaPreco2GetText(Sender: TObject; var Text: string);
        procedure dbgSubItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
            ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
            ASelected, AFocused, ANewItemRow: Boolean; var AText: string;
            var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
            var ADone: Boolean);
    private
        { Private declarations }
        LastItemColumn: string;
    public
        { Public declarations }
    end;

var
    FrmMontagensProduto: TFrmMontagensProduto;

implementation

uses DM_Projeto, DM_MontagensProduto, Form_Padrao, funcoes;

{$R *.dfm}

procedure TFrmMontagensProduto.FormComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    btPesquisar.Visible := False;
    pnAvancaRecua.Visible := False;
    DMMontagensProduto.idMontagem := IIF(DMProjeto.GetParametrosForm(0) <> null, DMProjeto.GetParametrosForm(0), 1);
    DMMontagensProduto.statusMontagem := IIF(DMProjeto.GetParametrosForm(1) <> null, DMProjeto.GetParametrosForm(1), 1);
    DMMontagensProduto.itemProduzido := IIF(DMProjeto.GetParametrosForm(2) <> null, DMProjeto.GetParametrosForm(2), 'ITEM ND');

    ConfigurarForm;
    AdicionarColunasTabelaPreco;
end;

procedure TFrmMontagensProduto.AdicionarColunasTabelaPreco();
var
    i, qtdTabelas, coluna: integer;
    sTabelas: string;
begin
    sTabelas := AllTrim(DMProjeto.sTabelasPreco);

    sTabelas := IIF(Length(sTabelas) > 0, '0;' + sTabelas, '0');
    qtdTabelas := ContaStrings(sTabelas, ';');

    coluna := 5;

    if (qtdTabelas > 4) then
        qtdTabelas := 4;

    for i := 0 to qtdTabelas - 1 do
        begin
            with DMProjeto.Q_SQL2 do
                begin
                    Close;
                    SQL.Text := 'select t.descricao from tabelaspreco t where t.tabelapreco = :tabela';
                    ParamByName('tabela').AsInteger := StrToInt(SeparaStrings(sTabelas, ';', i + 1));
                    Open;

                    case i of
                        0:
                            begin
                                lblTabelaPreco.Caption := FieldByName('descricao').AsString;
                                dbgSubItensPRECO.Caption := FieldByName('descricao').AsString;
                                dbgSubItensSubTotal.Caption := 'Total ' + FieldByName('descricao').AsString;
                                Continue;
                            end;
                        1:
                            begin
                                lblTabela1.Caption := FieldByName('descricao').AsString;
                                lblTabela1.Visible := True;
                                dbTabelaPreco1.Visible := True;
                                dbCalcTabela1.Visible := True;
                            end;
                        2:
                            begin
                                lblTabela2.Caption := FieldByName('descricao').AsString;
                                lblTabela2.Visible := True;
                                dbTabelaPreco2.Visible := True;
                                dbCalcTabela2.Visible := True;
                            end;
                        3:
                            begin
                                lblTabela3.Caption := FieldByName('descricao').AsString;
                                lblTabela3.Visible := True;
                                dbTabelaPreco3.Visible := True;
                                dbCalcTabela3.Visible := True;
                            end;
                    else
                    end;

                    // Adicionando os respectivos valores de acordo com a Tabela de Preço
                    with dbgSubItens.CreateColumn(TdxDBGridMaskColumn) as TdxDBGridMaskColumn do
                        begin
                            Inc(coluna);
                            Caption := FieldByName('descricao').AsString;
                            ColIndex := coluna; // Coluna 5 (Preço - Tabela Padrão 0). Adicionar após essa coluna as Tabelas Adicionais
                            FieldName := 'TABELAPRECO' + InttoStr(i);
                            HeaderAlignment := taCenter;
                            Visible := True;
                            DisableEditor := True;
                            DisableCustomizing := True;
                        end;

                end;
        end;

end;

// Felipe - Habilita/Desabilita algumas colunas do Grid de acordo com o Status da Montagem. Apenas Montagem com Status Pendente (igual a 1) pode ser editada. (22/10/2015)

procedure TFrmMontagensProduto.ConfigurarForm();
begin
    lblCancelado.Visible := DMMontagensProduto.statusMontagem = 3;

    dfItemProduzido.Text := DMMontagensProduto.itemProduzido;

    dbgSubItensCODIGO.DisableEditor := DMMontagensProduto.statusMontagem <> 1;
    dbgSubItensDESCRICAO.DisableEditor := DMMontagensProduto.statusMontagem <> 1;
    dbgSubItensUNIDADE.DisableEditor := DMMontagensProduto.statusMontagem <> 1;
    dbgSubItensQUANTIDADE.DisableEditor := DMMontagensProduto.statusMontagem <> 1;
    dbgSubItensQTDTOTAL.DisableEditor := DMMontagensProduto.statusMontagem <> 1;
end;

procedure TFrmMontagensProduto.dbgSubItensTS_AfterNewRecord(
    Sender: TObject);
begin
    inherited;
    dbgSubItens.TS_SelectedColumn := LastItemColumn;
end;

procedure TFrmMontagensProduto.dbgSubItensTS_AposLocalizar(
    Sender: TObject);
begin
    inherited;
    DMMontagensProduto.C_TabelaItem.AsInteger := DMProjeto.C_LocalizarItensItem.Value;
    dbgSubItens.TS_SelectedColumn := 'QUANTIDADE';
    dbgSubItens.ShowEditor;
end;

procedure TFrmMontagensProduto.dbgSubItensTS_BeforeLocalizar(
    Sender: TObject; var Campo, Conteudo: string);
begin
    inherited;
    if pos('CODIGO', Campo) > 0 then
        LastItemColumn := 'CODIGO'
    else if pos('REF', Campo) > 0 then
        LastItemColumn := 'Referencia'
    else
        LastItemColumn := 'DESCRICAO';
end;

procedure TFrmMontagensProduto.btComando1Click(Sender: TObject);
begin
    inherited;
    DMProjeto.ImprimirCabecalho(regCab);
    ppMontagens.Print;
end;

procedure TFrmMontagensProduto.dbTabelaPadraoGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('#,###,##0.00', DMMontagensProduto.C_ItensFilhosPRECO.AsCurrency);
end;

procedure TFrmMontagensProduto.dbTabelaPreco1GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('#,###,##0.00', DMMontagensProduto.C_ItensFilhosTABELAPRECO1.AsCurrency);
end;

procedure TFrmMontagensProduto.dbTabelaPreco2GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('#,###,##0.00', DMMontagensProduto.C_ItensFilhosTABELAPRECO2.AsCurrency);
end;

procedure TFrmMontagensProduto.dbTabelaPreco3GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := formatfloat('#,###,##0.00', DMMontagensProduto.C_ItensFilhosTABELAPRECO3.AsCurrency);
end;

procedure TFrmMontagensProduto.dbgSubItensCustomDrawCell(Sender: TObject;
    ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
    AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
    var AText: string; var AColor: TColor; AFont: TFont;
    var AAlignment: TAlignment; var ADone: Boolean);
begin
    inherited;
    if (dbgSubItens.GetFieldValue(ANode, 'QTDSOLICITAR', 0) > 0) then
        begin
            AColor := $00D5DBF7;
        end;
end;

end.

