unit Rpt_InventarioEstoque;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, dxCntner, dxEditor, dxExEdtr, dxEdLib,
    TS_DateTimePicker, Placemnt, FormsComponent, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
    TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, TS_RadioGroup, TS_Edit, TS_ImageEdit,
    TS_CheckBox, DB, IBCustomDataSet, IBQuery, DBTables, ppDB, ppDBPipe,
    ppDBBDE, ppBands, ppCtrls, ppClass, myChkBox, ppVar, ppReport, ppSubRpt,
    ppMemo, ppPrnabl, ppStrtch, ppRegion, ppCache, ppComm, ppRelatv, ppProd,
    TS_CalcEdit, TS_PopupEdit, TS_PopupFiltrarItens, DBCtrls, TS_DBRadioGroup,
    ComCtrls, ppModule, raCodMod;

type
    TRptInventarioEstoque = class(TFrmModeloCadastros)
        TS_Label1: TTS_Label;
        dtData: TTS_DateTimePicker;
        rgNivel: TTS_RadioGroup;
        dfSinal: TTS_ImageEdit;
        cbEstoque: TTS_CheckBox;
        dfEstoque: TTS_CalcEdit;
        Q_Gerar: TIBQuery;
        ppRelatDetalhado: TppReport;
        Q_MasterDS: TDataSource;
        Q_GruposDS: TDataSource;
        Q_SaidasDS: TDataSource;
        Q_EntradasDS: TDataSource;
        Q_Master: TIBQuery;
        Q_Grupos: TIBQuery;
        Q_Entradas: TIBQuery;
        Q_Saidas: TIBQuery;
        ppTituloRel: TppTitleBand;
        ppCabecalho2: TppRegion;
        ppHeaderBand1: TppHeaderBand;
        ppTitulo: TppMemo;
        ppPeriodo: TppLabel;
        ppSystemVariable2: TppSystemVariable;
        ppSystemVariable1: TppSystemVariable;
        ppDetailBand1: TppDetailBand;
        ppDBText1: TppDBText;
        ppDBText3: TppDBText;
        ppDBText7: TppDBText;
        ppDBText8: TppDBText;
        ppDBText9: TppDBText;
        ppDBText10: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppLabel18: TppLabel;
        ppLabel17: TppLabel;
        ppLabel19: TppLabel;
        ppRegion4: TppRegion;
        ppDBText12: TppDBText;
        ppLabel22: TppLabel;
        ppDBText13: TppDBText;
        ppLabel23: TppLabel;
        ppLabel24: TppLabel;
        ppDBText14: TppDBText;
        ppLine4: TppLine;
        ppLabel29: TppLabel;
        ppLabel30: TppLabel;
        lbNaoHouveS: TppLabel;
        ppRegion2: TppRegion;
        ppSubSaidas: TppSubReport;
        ppChildReport2: TppChildReport;
        ppDetailBand4: TppDetailBand;
        ppDBText15: TppDBText;
        ppDBText16: TppDBText;
        ppDBText17: TppDBText;
        ppDBText19: TppDBText;
        ppDBText20: TppDBText;
        ppSummaryBand3: TppSummaryBand;
        ppDBCalc7: TppDBCalc;
        ppLine2: TppLine;
        ppDBCalc8: TppDBCalc;
        ppLabel25: TppLabel;
        ppDBText21: TppDBText;
        ppLabel26: TppLabel;
        ppVariable1: TppVariable;
        myCheckS: TmyCheckBox;
        lbNaoHouveE: TppLabel;
        ppRegion3: TppRegion;
        ppSubEntradas: TppSubReport;
        ppChildReport3: TppChildReport;
        ppDetailBand3: TppDetailBand;
        ppDBText22: TppDBText;
        ppDBText23: TppDBText;
        ppDBText24: TppDBText;
        ppDBText25: TppDBText;
        ppDBText26: TppDBText;
        ppDBText27: TppDBText;
        ppSummaryBand2: TppSummaryBand;
        ppDBCalc9: TppDBCalc;
        ppLine3: TppLine;
        ppDBCalc10: TppDBCalc;
        ppLabel27: TppLabel;
        ppDBText28: TppDBText;
        ppLabel28: TppLabel;
        ppVariable2: TppVariable;
        myCheckE: TmyCheckBox;
        ppSummaryBand1: TppSummaryBand;
        ppSubConfiguracao: TppSubReport;
        ppChildReport1: TppChildReport;
        ppTitleBand1: TppTitleBand;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppLabel4: TppLabel;
        ppLabel5: TppLabel;
        lbOrdem: TppLabel;
        ppLabel6: TppLabel;
        lbEstoque: TppLabel;
        ppLabel7: TppLabel;
        lbGrupos: TppLabel;
        ppColumnHeaderBand1: TppColumnHeaderBand;
        ppDetailBand2: TppDetailBand;
        ppDBText2: TppDBText;
        myCheck: TmyCheckBox;
        ppColumnFooterBand1: TppColumnFooterBand;
        ppLine1: TppLine;
        ppRegion1: TppRegion;
        ppLabel11: TppLabel;
        ppLabel12: TppLabel;
        ppDBCalc2: TppDBCalc;
        ppDBCalc1: TppDBCalc;
        ppLabel10: TppLabel;
        ppLabel14: TppLabel;
        ppDBCalc3: TppDBCalc;
        ppGroup1: TppGroup;
        ppGroupHeaderBand1: TppGroupHeaderBand;
        ppShape1: TppShape;
        ppLabel1: TppLabel;
        ppLabel8: TppLabel;
        ppLabel9: TppLabel;
        ppLabel13: TppLabel;
        ppDBText6: TppDBText;
        ppLabel15: TppLabel;
        ppLabel16: TppLabel;
        ppGroupFooterBand1: TppGroupFooterBand;
        ppLabel20: TppLabel;
        ppDBText11: TppDBText;
        ppDBCalc4: TppDBCalc;
        ppDBCalc6: TppDBCalc;
        ppDBCalc5: TppDBCalc;
        ppLabel21: TppLabel;
        ppShape2: TppShape;
        ppShape3: TppShape;
        ppShape4: TppShape;
        ppShape5: TppShape;
        ppShape9: TppShape;
        ppRelatDetSimples: TppReport;
        ppTitleBand2: TppTitleBand;
        ppCabecalho3: TppRegion;
        ppHeaderBand2: TppHeaderBand;
        ppMemo1: TppMemo;
        ppPeriodo2: TppLabel;
        ppSystemVariable3: TppSystemVariable;
        ppSystemVariable4: TppSystemVariable;
        ppDetailBand5: TppDetailBand;
        ppDBText18: TppDBText;
        ppDBText29: TppDBText;
        ppDBText30: TppDBText;
        ppDBText31: TppDBText;
        ppDBText32: TppDBText;
        ppDBText33: TppDBText;
        ppDBText34: TppDBText;
        ppDBText35: TppDBText;
        ppLabel32: TppLabel;
        ppLabel33: TppLabel;
        ppDBText36: TppDBText;
        ppLabel34: TppLabel;
        ppDBText37: TppDBText;
        ppLabel35: TppLabel;
        ppDBText38: TppDBText;
        ppSummaryBand4: TppSummaryBand;
        ppSubReport1: TppSubReport;
        ppChildReport4: TppChildReport;
        ppTitleBand3: TppTitleBand;
        ppLabel36: TppLabel;
        ppLabel37: TppLabel;
        ppLabel38: TppLabel;
        ppLabel39: TppLabel;
        ppLabel40: TppLabel;
        ppLabel41: TppLabel;
        lbEstoque2: TppLabel;
        ppLabel43: TppLabel;
        lbGrupos2: TppLabel;
        ppColumnHeaderBand2: TppColumnHeaderBand;
        ppDetailBand6: TppDetailBand;
        ppDBText39: TppDBText;
        myCheckBox1: TmyCheckBox;
        ppColumnFooterBand2: TppColumnFooterBand;
        ppLine5: TppLine;
        ppRegion6: TppRegion;
        ppLabel45: TppLabel;
        ppLabel46: TppLabel;
        ppDBCalc11: TppDBCalc;
        ppDBCalc12: TppDBCalc;
        ppLabel47: TppLabel;
        ppLabel48: TppLabel;
        ppDBCalc13: TppDBCalc;
        ppGroup2: TppGroup;
        ppGroupHeaderBand2: TppGroupHeaderBand;
        ppShape6: TppShape;
        ppLabel49: TppLabel;
        ppLabel50: TppLabel;
        ppLabel51: TppLabel;
        ppLabel52: TppLabel;
        ppDBText40: TppDBText;
        ppLabel53: TppLabel;
        ppLabel54: TppLabel;
        ppLabel55: TppLabel;
        ppLabel56: TppLabel;
        ppGroupFooterBand2: TppGroupFooterBand;
        ppLabel57: TppLabel;
        ppDBText41: TppDBText;
        ppDBCalc14: TppDBCalc;
        ppDBCalc15: TppDBCalc;
        ppDBCalc16: TppDBCalc;
        ppLabel58: TppLabel;
        ppShape7: TppShape;
        ppShape8: TppShape;
        ppShape10: TppShape;
        ppShape11: TppShape;
        ppShape12: TppShape;
        ppLabel59: TppLabel;
        ppDBCalc17: TppDBCalc;
        ppDBCalc18: TppDBCalc;
        ppLabel60: TppLabel;
        ppLabel61: TppLabel;
        ppLabel62: TppLabel;
        ppRelatPadrao: TppReport;
        ppCabecalho: TppRegion;
        ppHeaderBand3: TppHeaderBand;
        ppMemo2: TppMemo;
        ppPeriodo3: TppLabel;
        ppSystemVariable5: TppSystemVariable;
        ppSystemVariable6: TppSystemVariable;
        ppDetailBand7: TppDetailBand;
        ppDBText42: TppDBText;
        ppDBText43: TppDBText;
        ppDBText44: TppDBText;
        ppDBText45: TppDBText;
        ppDBText46: TppDBText;
        ppDBText47: TppDBText;
        ppDBText48: TppDBText;
        ppDBText49: TppDBText;
        ppSummaryBand5: TppSummaryBand;
        ppSubReport2: TppSubReport;
        ppChildReport5: TppChildReport;
        ppTitleBand5: TppTitleBand;
        ppLabel65: TppLabel;
        ppLabel66: TppLabel;
        ppLabel67: TppLabel;
        ppLabel68: TppLabel;
        ppLabel69: TppLabel;
        ppLabel70: TppLabel;
        lbEstoque3: TppLabel;
        ppLabel72: TppLabel;
        lbGrupos3: TppLabel;
        ppColumnHeaderBand3: TppColumnHeaderBand;
        ppDetailBand8: TppDetailBand;
        ppDBText50: TppDBText;
        myCheckBox2: TmyCheckBox;
        ppColumnFooterBand3: TppColumnFooterBand;
        ppLine6: TppLine;
        ppRegion8: TppRegion;
        ppLabel74: TppLabel;
        ppLabel75: TppLabel;
        ppDBCalc19: TppDBCalc;
        ppDBCalc20: TppDBCalc;
        ppLabel76: TppLabel;
        ppLabel77: TppLabel;
        ppDBCalc21: TppDBCalc;
        ppGroup3: TppGroup;
        ppGroupHeaderBand3: TppGroupHeaderBand;
        ppShape13: TppShape;
        ppLabel78: TppLabel;
        ppLabel79: TppLabel;
        ppLabel80: TppLabel;
        ppLabel81: TppLabel;
        ppDBText51: TppDBText;
        ppLabel82: TppLabel;
        ppLabel83: TppLabel;
        ppLabel84: TppLabel;
        ppLabel85: TppLabel;
        ppLabel86: TppLabel;
        ppGroupFooterBand3: TppGroupFooterBand;
        ppLabel87: TppLabel;
        ppDBText52: TppDBText;
        ppDBCalc22: TppDBCalc;
        ppDBCalc23: TppDBCalc;
        ppDBCalc24: TppDBCalc;
        ppLabel88: TppLabel;
        ppShape14: TppShape;
        ppShape15: TppShape;
        ppShape16: TppShape;
        ppShape17: TppShape;
        ppShape18: TppShape;
        ppRelatTotalGrupo: TppReport;
        ppTitleBand8: TppTitleBand;
        ppCabecalho5: TppRegion;
        ppHeaderBand5: TppHeaderBand;
        ppMemo4: TppMemo;
        ppPeriodo5: TppLabel;
        ppSystemVariable9: TppSystemVariable;
        ppSystemVariable10: TppSystemVariable;
        ppColumnHeaderBand5: TppColumnHeaderBand;
        ppLabel101: TppLabel;
        ppLabel102: TppLabel;
        ppLabel103: TppLabel;
        ppLabel104: TppLabel;
        ppDetailBand11: TppDetailBand;
        ppDBText55: TppDBText;
        ppDBText56: TppDBText;
        ppDBText57: TppDBText;
        ppDBText58: TppDBText;
        ppColumnFooterBand5: TppColumnFooterBand;
        ppSummaryBand7: TppSummaryBand;
        ppSubReport4: TppSubReport;
        ppChildReport7: TppChildReport;
        ppTitleBand9: TppTitleBand;
        ppLabel105: TppLabel;
        ppLabel106: TppLabel;
        ppLabel107: TppLabel;
        ppLabel108: TppLabel;
        ppLabel109: TppLabel;
        ppLabel110: TppLabel;
        lbEstoque5: TppLabel;
        ppLabel112: TppLabel;
        lbGrupos5: TppLabel;
        ppColumnHeaderBand6: TppColumnHeaderBand;
        ppDetailBand12: TppDetailBand;
        ppDBText59: TppDBText;
        myCheckBox4: TmyCheckBox;
        ppColumnFooterBand6: TppColumnFooterBand;
        ppLine7: TppLine;
        ppRegion11: TppRegion;
        ppLabel114: TppLabel;
        ppLabel115: TppLabel;
        ppDBCalc25: TppDBCalc;
        ppDBCalc26: TppDBCalc;
        ppLabel116: TppLabel;
        ppLabel117: TppLabel;
        ppDBCalc27: TppDBCalc;
        InventrioBase1: TMenuItem;
        ppDBMaster: TppDBPipeline;
        ppDBGrupos: TppDBPipeline;
        ppDBEntradas: TppDBPipeline;
        ppDBSaidas: TppDBPipeline;
        FiltroItens: TTS_PopupFiltrarItens;
        Q_Inventarios: TIBQuery;
        Q_InventariosDs: TDataSource;
        Q_InventariosDATA: TDateField;
        rgInventario: TTS_RadioGroup;
        Q_GruposGRUPO: TIntegerField;
        Q_GruposCODIGO: TIBStringField;
        Q_GruposDESCRICAOGRUPO: TIBStringField;
        Q_GruposTIPOITEM: TIntegerField;
        Q_GruposIMPORTACAO: TIntegerField;
        Q_GruposFOTO: TIBStringField;
        Q_GruposDESCONTOMAXIMO: TIBBCDField;
        Q_GruposCOMISSAO: TIBBCDField;
        Q_GruposTAXINCLUSO: TIBStringField;
        Q_GruposPTAXINCLUSO: TIBBCDField;
        Q_GruposCUSTODESPESAS: TIBBCDField;
        Q_GruposFATORLUCRO: TIBBCDField;
        Q_GruposTAXAVEL: TIBStringField;
        Q_GruposDESATIVADO: TIBStringField;
        Q_GruposCST: TIBStringField;
        Q_GruposREDUCAOCST: TIBBCDField;
        Q_GruposALIQICMS: TIBBCDField;
        Q_GruposSITUACAOECF: TIBStringField;
        Q_GruposTVA: TIBBCDField;
        Q_GruposTVAFONTE: TIBBCDField;
        Q_MasterDESCGRUPO: TIBStringField;
        Q_MasterDESCRICAO: TIBStringField;
        Q_MasterREFERENCIA: TIBStringField;
        Q_MasterITEM: TIntegerField;
        Q_MasterDATA: TDateField;
        Q_MasterESTOQUE: TIBBCDField;
        Q_MasterCUSTOMEDIO: TIBBCDField;
        Q_MasterESTOQUEANTERIOR: TIBBCDField;
        Q_MasterENTRADAS: TIBBCDField;
        Q_MasterSAIDAS: TIBBCDField;
        Q_MasterINVENTARIO: TIntegerField;
        Q_MasterNOME: TIBStringField;
        Q_MasterDESCUNIDADE: TIBStringField;
        Q_MasterTOTALPRODUTO: TFloatField;
        raCodeModule2: TraCodeModule;
        raCodeModule3: TraCodeModule;
        Q_SaidasDATA: TDateField;
        Q_SaidasNOTAFISCAL: TIBStringField;
        Q_SaidasQUANTPRODUTO: TFloatField;
        Q_SaidasCUSTOMEDIO: TFloatField;
        Q_SaidasTIPOMOV: TIBStringField;
        ppSubCST: TppSubReport;
        ppChildReport6: TppChildReport;
        Q_ResumoCSTDs: TDataSource;
        ppResumoCST: TppDBPipeline;
        ppTitleBand6: TppTitleBand;
        ppDetailBand9: TppDetailBand;
        ppSummaryBand6: TppSummaryBand;
        ppLabel71: TppLabel;
        ppDBText53: TppDBText;
        ppDBText61: TppDBText;
        Q_ResumoCST: TIBQuery;
        Q_ResumoCSTDESCRICAO: TIBStringField;
        Q_ResumoCSTTOTALPRODUTO: TFloatField;
        ppLine8: TppLine;
        rgAgrupamento: TTS_RadioGroup;
        ppGroup4: TppGroup;
        ppGroupHeaderBand4: TppGroupHeaderBand;
        ppGroupFooterBand4: TppGroupFooterBand;
        ppFooterBand1: TppFooterBand;
        ppSubTotalPagina: TppVariable;
        ppLabel42: TppLabel;
        ppLine9: TppLine;
        ppLabel31: TppLabel;
        ppLine10: TppLine;
        raCodeModule4: TraCodeModule;
        raCodeModule1: TraCodeModule;
        ppAcumulado: TppVariable;
        Animate1: TAnimate;
    ppDBCalc28: TppDBCalc;
    RG_TipoCusto: TTS_RadioGroup;
    TS_MudancaTributacao: TTS_CheckBox;
    Q_MasterCODIGO: TIBStringField;
        procedure btLimparClick(Sender: TObject);
        procedure FormCreate(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btComando1Click(Sender: TObject);
        procedure ppTitleBand1BeforeGenerate(Sender: TObject);
        procedure ppTitleBand3BeforeGenerate(Sender: TObject);
        procedure ppTitleBand5BeforeGenerate(Sender: TObject);
        procedure ppTitleBand9BeforeGenerate(Sender: TObject);
        procedure Q_EntradasBeforeOpen(DataSet: TDataSet);
        procedure ppSummaryBand3BeforeGenerate(Sender: TObject);
        procedure ppSummaryBand2BeforeGenerate(Sender: TObject);
        procedure ppDetailBand1BeforeGenerate(Sender: TObject);
        procedure ppLabel22Print(Sender: TObject);
        procedure InventrioBase1Click(Sender: TObject);
        procedure btComando2Click(Sender: TObject);
        procedure rgInventarioClick(Sender: TObject);
        procedure ppFooterBand1AfterPrint(Sender: TObject);
        procedure ppDetailBand7AfterPrint(Sender: TObject);
        procedure ppSubTotalPaginaGetText(Sender: TObject; var Text: string);
        procedure ppAcumuladoGetText(Sender: TObject; var Text: string);
    private
        dData, UltInventario, FUltInventario, dInventarioBase: TDateTime;
        bUltInvent: boolean;
        nPrimeiroInvent: integer;
        sDataRG: string;
        XnTotPg, nTotPg, nAcumulaPg: Currency;
        procedure ExcluirInvent;
        procedure Imprimir(Data, UltInventario: TDateTime; Nivel: Integer; bEstoque: boolean; sSinalEstoque: string; nQtdeEstoque: single);
        procedure AtualizaRGInventario;
    public
    end;

var
    RptInventarioEstoque: TRptInventarioEstoque;

implementation
uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptInventarioEstoque.AtualizaRGInventario;
begin
    Q_Inventarios.Close;
    Q_Inventarios.open;
    rgInventario.Items.Clear;
    while not (Q_Inventarios.EOF) do
        begin
            rgInventario.Items.Add(Q_InventariosData.AsString);
            Q_Inventarios.Next;
        end;
    rgInventario.ItemIndex := rgInventario.Items.Count;
end;

procedure TRptInventarioEstoque.btLimparClick(Sender: TObject);
begin
    inherited;
    {  DlgFiltroItens := TDlgFiltroItens.Create(Self,DMProjeto.sItensSelec,DMProjeto.sGruposSelec,DMProjeto.sFabricSelec);
      DlgFiltroItens.ShowModal;
      DlgFiltroItens.free;}
    {  if DmProjeto.ExisteParametrosForm then begin
        sDescItensSelec := DmProjeto.GetParametrosForm(0);
        sDescGruposSelec := DmProjeto.GetParametrosForm(1);
        sDescFabrSelec := DmProjeto.GetParametrosForm(2);
      end;}
    DMProjeto.LimparParametrosForm;
end;

procedure TRptInventarioEstoque.FormCreate(Sender: TObject);
begin
    inherited;
    DMProjeto.sGruposSelec := '';
    dInventarioBase := 0;
    dtData.date := DMProjeto.dDataSistema;
    AtualizaRGInventario;
    nAcumulaPg := 0.00;
    nTOtPg := 0.00;
end;

procedure TRptInventarioEstoque.Imprimir;
var
    bSimples: boolean;
begin
    FUltInventario := UltInventario;

    {Carregando Template}
  {  case Nivel of
      2 : ppRelatorio.Template.FileName := DMProjeto.RelPath + 'Inventario\rpt_InventarioTG.rtm';
      3 : ppRelatorio.Template.FileName := DMProjeto.RelPath + 'Inventario\rpt_InventarioTPG.rtm';
      0 : ppRelatorio.Template.FileName := DMProjeto.RelPath + 'Inventario\rpt_InventarioPadrao.rtm';
      1 : if Application.MessageBox('Deseja visualizar as Entradas e Saídas?', 'Atenção', mb_yesno+ mb_iconquestion) = IDYES then
            ppRelatorio.Template.FileName := DMProjeto.RelPath + 'Inventario\rpt_InventarioDetalhe.rtm'
          else begin
            ppRelatorio.Template.FileName := DMProjeto.RelPath + 'Inventario\rpt_InventarioDetalheSimples.rtm';
            bSimples := true;
          end;
    end;
    ppRelatorio.Template.LoadFromFile;}

    ppPeriodo.Caption := 'Referente à Data: ' + FormatDateTime('dd/mm/yyyy', Data);
    ppPeriodo2.Caption := 'Referente à Data: ' + FormatDateTime('dd/mm/yyyy', Data);
    ppPeriodo3.Caption := 'Referente à Data: ' + FormatDateTime('dd/mm/yyyy', Data);
    ppPeriodo5.Caption := 'Referente à Data: ' + FormatDateTime('dd/mm/yyyy', Data);

    {Configuracao}
  //  lbOrdem.Caption := 'Descrição';

    if bEstoque then
        begin
            lbEstoque.Caption := sSinalEstoque + ' ' + FloatToStr(nQtdeEstoque);
            lbEstoque2.Caption := sSinalEstoque + ' ' + FloatToStr(nQtdeEstoque);
            lbEstoque3.Caption := sSinalEstoque + ' ' + FloatToStr(nQtdeEstoque);
            lbEstoque5.Caption := sSinalEstoque + ' ' + FloatToStr(nQtdeEstoque);
            if sSinalEstoque = 'Maior' then sSinalEstoque := '>';
            if sSinalEstoque = 'Menor' then sSinalEstoque := '<';
        end;

    {Compondo SQL}
    case Nivel of
        3:
            begin
                Q_Master.SQL.Text :=
                    'Select p.Grupo, g.DescricaoGrupo as Descricao, sum(i.Estoque * i.CustoMedio) as TotalGrupo, ' +
                    '       sum(i.Estoque) as TotalEstoque, Count(*) as TotalItens ' +
                    'From (Inventario i INNER JOIN Itens p ON i.Item = p.Item) ' +
                    '     LEFT JOIN Grupos g ON p.Grupo = g.Grupo ' +
                    'Where i.Data = :Data and p.tipoitem = 1 ';
                if bEstoque then
                    begin
                        Q_Master.SQL.Add('and i.estoque ' + sSinalEstoque + ' ' + FloatToStr(nQtdeEstoque));
                    end;

                if (Length(FiltroItens.getSQL) > 0) then
                    Q_Master.SQL.Text := Q_Master.SQL.Text; //+ ' and '+FiltroItens.getSQL;

                {        if DMProjeto.sGruposSelec <> '' then
                          Q_Master.SQL.Text := Q_Master.SQL.Text + ' and p.Grupo in (' + DMProjeto.sGruposSelec+')';
                        if DMProjeto.sFabricSelec <> '' then
                          Q_Master.SQL.Text := Q_Master.SQL.Text + ' and p.Fabricante in (' + DMProjeto.sFabricSelec+')';
                        if DMProjeto.sItensSelec <> '' then
                          Q_Master.SQL.Text := Q_Master.SQL.Text + ' and p.Item in (' + DMProjeto.sItensSelec+')';
                         }
                Q_Master.SQL.Text := Q_Master.SQL.Text + ' Group by p.Grupo, g.Descricaogrupo  order by 2 ';
            end;
        0:
            begin
                Q_Master.SQL.Text :=
                    'Select g.Descricaogrupo as DescGrupo, p.Codigo, p.Descricao, p.Referencia, i.*, f.descricao as Nome, ' +
                    '       p.unidade as DescUnidade, (i.Estoque * i.CustoMedio) as TotalProduto ' +
                    'From (((Inventario i ' +
                    '     INNER JOIN Itens p ON i.Item = p.Item) ' +
                    '     LEFT JOIN Grupos g ON p.Grupo = g.Grupo) ' +
                    '     LEFT JOIN Fabricantes f ON f.Fabricante = p.Fabricante) ' +
                    'Where i.Data = :Data and p.tipoitem = 1 ' ;
                if bEstoque then
                    Q_Master.SQL.Add('and i.estoque ' + sSinalEstoque + ' ' + FloatToStr(nQtdeEstoque));

                if (Length(FiltroItens.getSQL) > 0) then
                    Q_Master.SQL.Text := Q_Master.SQL.Text + ' and ' + replace(FiltroItens.getSQL, 'i.', 'p.');

                case rgAgrupamento.ItemIndex of
                    0:
                        begin
                            Q_Master.SQL.Text := Q_Master.SQL.Text + ' order by 3 ';
                        end;
                    1:
                        begin
                            Q_Master.SQL.Text := Q_Master.SQL.Text + ' order by 1,3,2 ';
                            ppRelatPadrao.GroupHeaderBand[0].Group.BreakName := 'DescGrupo';
                            ppDBText51.DataField := 'DescGrupo';
                            ppDBText52.DataField := 'DescGrupo';
                        end;
                    2:
                        begin
                            Q_Master.SQL.Text := Q_Master.SQL.Text + ' order by f.descricao, p.Descricao ';
                            ppRelatPadrao.GroupHeaderBand[0].Group.BreakName := 'Nome';
                            ppDBText51.DataField := 'Nome';
                            ppDBText52.DataField := 'Nome';
                        end;
                end;

                Q_ResumoCST.Sql.Text := 'Select c.descricao,Sum(((i.Estoque) * (i.CustoMedio))) as TotalProduto ' +
                    'From Inventario i  INNER JOIN Itens p ON i.Item = p.Item ' +
                    'Inner join SITUACOESECF c on  c.SITUACAOECF = i.SITUACAOECF ' +
                    'LEFT JOIN Grupos g ON p.Grupo = g.Grupo '+
                    'LEFT JOIN Fabricantes f ON f.Fabricante = p.Fabricante '+
                    'Where i.Data = :Data and p.tipoitem = 1 ';
                if bEstoque then
                    Q_ResumoCST.SQL.Add('and i.estoque ' + sSinalEstoque + ' ' + FloatToStr(nQtdeEstoque));

                if (Length(FiltroItens.getSQL) > 0) then
                    Q_ResumoCST.SQL.Text := Q_ResumoCST.SQL.Text + ' and ' + replace(FiltroItens.getSQL, 'i.', 'p.');
                Q_ResumoCST.Sql.Add('group by c.descricao ');
                Q_ResumoCST.Sql.Add('Order by c.descricao ');

            end;
        1, 2:
            begin
                if nPrimeiroInvent = 0 then
//                    Q_Master.SQL.Text :=
//                        'Select g.Descricaogrupo as DescGrupo, p.Codigo, p.Descricao, p.Referencia, i.*, f.descricao as Nome, ' +
//                        '       p.unidade as DescUnidade, (i.Estoque * i.CustoMedio) as TotalProduto, ' +
//                        '       io.CustoMedio as CustoAnterior, io.CustoMedio * i.EstoqueAnterior as CustoTotalAnterior ' +
//                        'From ((((Inventario i '+
//                        '     INNER JOIN Itens p ON i.Item = p.Item) ' +
//                        '     LEFT JOIN Inventario io ON io.Item = i.Item) ' +
//                        '     LEFT JOIN Grupos g ON p.Grupo = g.Grupo) ' +
//                        '     LEFT JOIN Fabricantes f ON f.Fabricante = p.Fabricante) ' +
//                        'Where io.Data = :UltInventario and i.Data = :Data and p.tipoitem = 1 '
                    Q_Master.SQL.Text :=
                        'Select g.Descricaogrupo as DescGrupo, '+
                        'p.Codigo, '+
                        'p.Descricao, '+
                        'p.Referencia, '+
                        'i.*, '+
                        'f.descricao as Nome, '+
                        'p.unidade as DescUnidade, '+
                        '(i.Estoque * i.CustoMedio) as TotalProduto, '+
                        'i.CustoMedio as CustoAnterior, '+
                        'i.CustoMedio * i.EstoqueAnterior as CustoTotalAnterior '+
                        'From (((Inventario i '+
                        '     INNER JOIN Itens p ON i.Item = p.Item) '+
                        '     LEFT JOIN Grupos g ON p.Grupo = g.Grupo) '+
                        '     LEFT JOIN Fabricantes f ON f.Fabricante = p.Fabricante) '+
                        'Where i.Data = :UltInventario '+
                        'and i.Data = :Data '+
                        'and p.tipoitem = 1 '



                else
//                    Q_Master.SQL.Text :=
//                        'Select g.Descricaogrupo as DescGrupo, p.Codigo, p.Descricao, p.Referencia, i.*, f.descricao as Nome, ' +
//                        '       p.unidade as DescUnidade, (i.Estoque * i.CustoMedio) as TotalProduto, ' +
//                        '       0.00 as CustoAnterior, 0.00 * i.EstoqueAnterior as CustoTotalAnterior ' +
//                        'From (((Inventario i INNER JOIN Itens p ON i.Item = p.Item) ' +
//                        '     LEFT JOIN Grupos g ON p.Grupo = g.Grupo) ' +
//                        '     LEFT JOIN Fabricantes f ON f.Fabricante = p.Fabricante) ' +
//                        'Where i.Data = :Data and p.tipoitem = 1 ';
                    Q_Master.SQL.Text :=
                        'Select g.Descricaogrupo as DescGrupo, '+
                        'p.Codigo, '+
                        'p.Descricao, '+
                        'p.Referencia, '+
                        'i.*, '+
                        'f.descricao as Nome, '+
                        'p.unidade as DescUnidade, '+
                        '(i.Estoque * i.CustoMedio) as TotalProduto, '+
                        'i.CustoMedio as CustoAnterior, '+
                        'i.CustoMedio * i.EstoqueAnterior as CustoTotalAnterior '+
                        'From (((Inventario i '+
                        '     INNER JOIN Itens p ON i.Item = p.Item) '+
                        '     LEFT JOIN Grupos g ON p.Grupo = g.Grupo) '+
                        '     LEFT JOIN Fabricantes f ON f.Fabricante = p.Fabricante) '+
                        'Where i.Data = :Data '+
                        'and p.tipoitem = 1 ' ;

                if bEstoque then
                    Q_Master.SQL.Add('and i.estoque ' + sSinalEstoque + ' ' + FloatToStr(nQtdeEstoque));

                if (Length(FiltroItens.getSQL) > 0) then
                    Q_Master.SQL.Text := Q_Master.SQL.Text; //+ ' and '+FiltroItens.getSQL;
                Q_Master.SQL.Text := Q_Master.SQL.Text + ' order by 1,3,2 ';
                if rgInventario.Itemindex > 0 then
                    UltInventario := StrTodate(rgInventario.Items[rginventario.itemindex - 1]);

                if nPrimeiroInvent = 0 then
                    Q_Master.ParamByName('UltInventario').asDateTime := UltInventario;

            end;
    end;

    if DMProjeto.sGruposSelec <> '' then
        begin
            Q_Grupos.SQL.Text := 'Select * from Grupos where Grupo in (' + DMProjeto.sGruposSelec + ') order by descricaogrupo ';
            myCheck.Visible := true;
        end
    else
        begin
            Q_Grupos.SQL.Text := 'Select * from Grupos where Grupo is null ';
            myCheck.Visible := false;
        end;

    Q_Entradas.Close;
    Q_Saidas.Close;


    if TS_MudancaTributacao.Checked then begin
      Q_Master.SQL.Text := ' Select g.Descricaogrupo as DescGrupo, p.Codigo, p.Descricao, p.Referencia, i.*, f.descricao as Nome, '+
                           ' p.unidade as DescUnidade, (i.Estoque * i.CustoMedio) as TotalProduto From (((Inventario i INNER JOIN Itens p ON i.Item = p.Item) '+
                           ' LEFT JOIN Grupos g ON p.Grupo = g.Grupo) LEFT JOIN Fabricantes f ON f.Fabricante = p.Fabricante) Where i.Data = ''12/31/2015'' '+
                           ' and p.tipoitem = 1 and i.estoque > 0 and ((p.desativado = ''N'') Or (p.desativado is Null))  and p.tipoinv = 2 order by 3 ';
    end;



    Q_Master.ParamByName('Data').asDateTime := Data;

    Q_Master.Open;

    Q_ResumoCST.Close;
    Q_ResumoCST.ParamByName('Data').asDateTime := Data;
    Q_ResumoCST.Open;

    Q_Grupos.Open;

    if (Nivel = 1) or (Nivel = 2) then
        begin
            Q_Entradas.Open;
            Q_Saidas.Open;
        end;

    if Nivel = 0 then
        begin
            DMProjeto.ImprimirCabecalho(ppCabecalho);
            case rgAgrupamento.ItemIndex of
                0:
                    begin
                        //          ppFooterBand1.Visible := True;
                        ppRelatPadrao.GroupHeaderBand[0].Group.BreakName := '';
                        ppRelatPadrao.GroupHeaderBand[0].visible := false;
                        ppRelatPadrao.GroupFooterBand[0].visible := false;
                    end;
                1:
                    begin
                        ppRelatPadrao.GroupHeaderBand[0].Group.BreakName := 'DescGrupo';
                        ppRelatPadrao.GroupHeaderBand[0].visible := true;
                        ppRelatPadrao.GroupFooterBand[0].visible := true;
                    end;
                2:
                    begin
                        ppRelatPadrao.GroupHeaderBand[0].Group.BreakName := 'Nome';
                        ppRelatPadrao.GroupHeaderBand[0].visible := true;
                        ppRelatPadrao.GroupFooterBand[0].visible := true;
                    end;
            end;
            ppRelatPadrao.print;
        end
    else if Nivel = 1 then
        begin
            DMProjeto.ImprimirCabecalho(ppCabecalho3);
            case rgAgrupamento.ItemIndex of
                0:
                    begin
                        ppRelatDetSimples.GroupHeaderBand[0].Group.BreakName := '';
                        ppRelatDetSimples.GroupHeaderBand[0].visible := false;
                    end;
                1:
                    begin
                        ppRelatDetSimples.GroupHeaderBand[0].Group.BreakName := 'DescGrupo';
                        ppRelatDetSimples.GroupHeaderBand[0].visible := true;
                    end;
                2:
                    begin
                    end;
            end;
            ppRelatDetSimples.print;
        end
    else if Nivel = 2 then
        begin
            DMProjeto.ImprimirCabecalho(ppCabecalho2);
            case rgAgrupamento.ItemIndex of
                0:
                    begin
                        ppRelatDetalhado.GroupHeaderBand[0].Group.BreakName := '';
                        ppRelatDetalhado.GroupHeaderBand[0].visible := false;
                    end;
                1:
                    begin
                        ppRelatDetalhado.GroupHeaderBand[0].Group.BreakName := 'DescGrupo';
                        ppRelatDetalhado.GroupHeaderBand[0].visible := true;
                    end;
                2:
                    begin
                    end;
            end;
            ppRelatDetalhado.print;
        end
    else if Nivel = 3 then
        begin
            DMProjeto.ImprimirCabecalho(ppCabecalho5);
            ppRelatTotalGrupo.print;
        end
end;

procedure TRptInventarioEstoque.btGravarClick(Sender: TObject);
begin
    inherited;
    nAcumulaPg:=0;
    nTotPg:=0;
    dData := StrToDateTime(sDataRG);
    Imprimir(dData, UltInventario, rgNivel.ItemIndex, cbEstoque.checked, dfSinal.text, dfEstoque.value);
end;

procedure TRptInventarioEstoque.btComando1Click(Sender: TObject);
var Inicio: TDateTime;
    PeloUltimoInventario: string;
begin
    inherited;
    Inicio := Now;

    dData := trunc(dtData.date);
    PeloUltimoInventario := 'N';
    try
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        if Application.MessageBox(pchar('Deseja Tomar como Base o Estoque Inicial do Ultimo Inventário?'), 'Pergunta', mb_YesNo) = id_yes then
            begin
                PeloUltimoInventario := 'S';
            end;
        Animate1.Visible := True;
        Animate1.Active := True;
        Application.ProcessMessages;
        Q_Gerar.SQL.Text := 'EXECUTE PROCEDURE pp_Inventario(:Data,:PeloUltimoInventario,:TIPOCUSTO) ';
        Q_Gerar.ParamByName('Data').AsDateTime := dData;
        Q_Gerar.ParamByName('PeloUltimoInventario').AsString := PeloUltimoInventario;
        Q_Gerar.ParamByName('TIPOCUSTO').AsInteger := RG_TipoCusto.ItemIndex ;
        Q_Gerar.ExecSQL;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        AtualizaRGInventario;
        Animate1.Active := False;
        Animate1.Visible := False;
        if Application.MessageBox(pchar('Inventario Gerado com Êxito. ' + #13 +
            'Tempo Decorrido: ' + FormatDateTime('hh:mm:ss', Now - Inicio) + #13 +
            'Deseja Imprimir agora?'),
            'Aviso', mb_YesNo) = id_yes then
            btGravarClick(Sender);

    except
        on E: Exception do
            begin
                Animate1.Active := False;
                Animate1.Visible := False;
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
                Application.MessageBox(pchar('Ocorreu um Erro Ao tentar Gerar o Inventario. ' + #13 +
                    'Reporte o Erro Seguinte a SyncTech: ' + #13 + e.message), 'Aviso', mb_Ok);
            end;
    end;
end;

procedure TRptInventarioEstoque.ppTitleBand1BeforeGenerate(
    Sender: TObject);
begin
    inherited;
    if Q_Grupos.Recordcount > 0 then
        lbGrupos.Caption := 'Restrito ao(s) grupo(s) abaixo.';
end;

procedure TRptInventarioEstoque.ppTitleBand3BeforeGenerate(
    Sender: TObject);
begin
    inherited;
    if Q_Grupos.Recordcount > 0 then
        lbGrupos2.Caption := 'Restrito ao(s) grupo(s) abaixo.';
end;

procedure TRptInventarioEstoque.ppTitleBand5BeforeGenerate(
    Sender: TObject);
begin
    inherited;
    if Q_Grupos.Recordcount > 0 then
        lbGrupos3.Caption := 'Restrito ao(s) grupo(s) abaixo.';
end;

procedure TRptInventarioEstoque.ppTitleBand9BeforeGenerate(
    Sender: TObject);
begin
    inherited;
    if Q_Grupos.Recordcount > 0 then
        lbGrupos5.Caption := 'Restrito ao(s) grupo(s) abaixo.';
end;

procedure TRptInventarioEstoque.Q_EntradasBeforeOpen(DataSet: TDataSet);
begin
    inherited;
    TIBQuery(DataSet).ParamByName('UltInventario').AsDateTime := FUltInventario;
end;

procedure TRptInventarioEstoque.ppSummaryBand3BeforeGenerate(
    Sender: TObject);
begin
    inherited;
    ppVariable1.asFloat := Q_Master.FieldByName('Saidas').asFloat *
        Q_Master.FieldByName('CustoMedio').asFloat;

    if Q_Master.FieldByName('Saidas').asFloat <> double(ppDBCalc7.Value) then
        myCheckS.Visible := true
    else
        myCheckS.Visible := false;

end;

procedure TRptInventarioEstoque.ppSummaryBand2BeforeGenerate(
    Sender: TObject);
begin
    inherited;
    ppVariable2.asFloat := Q_Master.FieldByName('Entradas').asFloat *
        Q_Master.FieldByName('CustoMedio').asFloat;

    if Q_Master.FieldByName('Entradas').asFloat <> double(ppDBCalc9.Value) then
        myCheckE.Visible := true
    else
        myCheckE.Visible := false;
end;

procedure TRptInventarioEstoque.ppDetailBand1BeforeGenerate(
    Sender: TObject);
begin
    inherited;
    lbNaoHouveE.Visible := not (Q_Entradas.Active and (Q_Entradas.RecordCount > 0));
    lbNaoHouveS.Visible := not (Q_Saidas.Active and (Q_Saidas.RecordCount > 0));
end;

procedure TRptInventarioEstoque.ppLabel22Print(Sender: TObject);
begin
    inherited;
    TppLabel(Sender).Visible := Q_Master.FieldByName('CustoMedio').asFloat = 0;
end;

procedure TRptInventarioEstoque.InventrioBase1Click(Sender: TObject);
var
    sData: string;
begin
    ShowMessage('Atenção: Informe a Data a seguir no Formato ' + ShortDateFormat + '.');
    while dInventarioBase = 0 do
        begin
            sData := InputBox('Inventário Base (' + ShortDateFormat + ')', 'Data:', '');

            if sData = '0' then
                break;

            try
                dInventarioBase := StrToDateTime(sData);
                Break;
            except
                dInventarioBase := 0;
                ShowMessage('Data Inválida!');
            end;
        end;

end;

procedure TRptInventarioEstoque.btComando2Click(Sender: TObject);
begin
    inherited;
    if DlgMsg.ShowMsg(8008) = 100 then
        ExcluirInvent;
end;

procedure TRptInventarioEstoque.ExcluirInvent;
begin
    if rgInventario.ItemIndex >= 0 then
        begin
            dtData.date := strTodate(rgInventario.Items[rgInventario.itemindex]);
            with Q_Gerar do
                begin
                    Close;
                    SQL.Text := 'Delete from Inventario where Data = :Data ';
                    ParamByName('Data').AsDateTime := trunc(dtData.date);
                    ExecSQL;
                end;
            //
            if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
            ShowMessage('Inventário excluído com Sucesso!');
        end
    else
        ShowMessage('Você deve Selecionar um Inventário!');
    AtualizaRGInventario;
end;

procedure TRptInventarioEstoque.rgInventarioClick(Sender: TObject);
begin
    inherited;
    sDataRG := rginventario.Items[rginventario.ItemIndex];
end;

procedure TRptInventarioEstoque.ppFooterBand1AfterPrint(Sender: TObject);
begin
    inherited;
    nTotPg := 0;
end;

procedure TRptInventarioEstoque.ppDetailBand7AfterPrint(Sender: TObject);
begin
    inherited;
    nTotPg := nTotPg + Q_MasterTOTALPRODUTO.Value;

end;

procedure TRptInventarioEstoque.ppSubTotalPaginaGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := FormatCurr('###,###,##0.00', nTotPg);
    nAcumulaPg := nAcumulaPg + nTotPg;
    nTotPg := 0;
end;

procedure TRptInventarioEstoque.ppAcumuladoGetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := FormatCurr('###,###,##0.00', nAcumulaPg);
end;

end.

