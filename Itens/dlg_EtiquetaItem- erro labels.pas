unit dlg_EtiquetaItem;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
    TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
    ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
    teCtrls, TS_EffectsPanel, dxCntner, dxEditor, dxExEdtr, dxEdLib,
    TS_PopupEdit, TS_PopupFiltrarItens, TS_ComboBox, dxDBGrid, dxDBCtrl,
    dxTL, dxDBTLCl, dxGrClms, TS_QDBGrid, DB, IBCustomDataSet, IBUpdateSQL,
    IBQuery, ZRCtrls, ZReport, dxfProgressBar, TS_CheckBox, ppCtrls,
    ppPrnabl, ppClass, ppBands, ppCache, ppProd, ppReport, ppComm, ppRelatv,
    ppDB, ppDBPipe, TS_RadioGroup, ppModule, daDataModule, Math, dxDBEdtr,
    dxDBELib, TS_LookupComboBox, DBClient, Provider, TS_Edit, raCodMod,
    ppBarCod, jpeg;

type
    TdlgEtiquetaItem = class(TFrmModeloCadastros)
        PopupFiltroItens: TTS_PopupFiltrarItens;
        TS_Label1: TTS_Label;
        dbgItens: TTS_QDBGrid;
        TS_Panel1: TTS_Panel;
        TS_ComboBox1: TTS_ComboBox;
        TS_Label2: TTS_Label;
        cbTipoEtiqueta: TTS_ComboBox;
        Q_ItensDs: TDataSource;
        Q_Itens: TIBQuery;
        U_itens: TIBUpdateSQL;
        Q_ItensITEM: TIntegerField;
        Q_ItensCODIGO: TIBStringField;
        Q_ItensREFERENCIA: TIBStringField;
        Q_ItensDESCRICAO: TIBStringField;
        Q_ItensESTOQUE: TIBBCDField;
        Q_ItensFABRICANTE: TIBStringField;
        dbgItensITEM: TdxDBGridMaskColumn;
        dbgItensCODIGO: TdxDBGridMaskColumn;
        dbgItensREFERENCIA: TdxDBGridMaskColumn;
        dbgItensDESCRICAO: TdxDBGridMaskColumn;
        dbgItensESTOQUE: TdxDBGridCurrencyColumn;
        dbgItensFABRICANTE: TdxDBGridMaskColumn;
        Q_GerarEtiquetas: TIBQuery;
        Q_Etiquetas: TIBQuery;
        Q_GerarEtiquetasDs: TDataSource;
        Barra: TdxfProgressBar;
        Q_EtiquetasEmpresa: TStringField;
        cbUmaEtiqueta: TTS_CheckBox;
        ppDBEtiquetas: TppDBPipeline;
        Q_EtiquetasDs: TDataSource;
        ppEtiquetas6282: TppReport;
        ppDetailBand1: TppDetailBand;
        ppImage1: TppImage;
        ppDBText1: TppDBText;
        ppDBText2: TppDBText;
        ppLabel1: TppLabel;
        ppLabel2: TppLabel;
        ppLabel3: TppLabel;
        ppDBText3: TppDBText;
        ppDBText4: TppDBText;
        ppDBText5: TppDBText;
        ppDBText6: TppDBText;
        cbLogo: TTS_CheckBox;
        rgOrdem: TTS_RadioGroup;
        ppLabel4: TppLabel;
        ppBorda: TppShape;
        cbBorda: TTS_CheckBox;
        ppColumnHeaderBand1: TppColumnHeaderBand;
        ppColumnFooterBand1: TppColumnFooterBand;
        daDataModule1: TdaDataModule;
        zrEtiquetaItem: TZReport;
        zrvITEM: TZRField;
        zrvCODIGO: TZRField;
        zrvREFERENCIA: TZRField;
        zrvDESCRICAO: TZRField;
        zrvESTOQUE: TZRField;
        zrvFABRICANTE: TZRField;
        zrvNOMEEMPRESA: TZRField;
        zrvEmpresa: TZRField;
        zrEtiquetaItemDetail: TZRBand;
        ZRLabel1: TZRLabel;
        Empresa: TZRLabel;
        ZRLabel3: TZRLabel;
        ZRLabel5: TZRLabel;
        ZRLabel6: TZRLabel;
        ZRLabel7: TZRLabel;
        ZRLabel2: TZRLabel;
        ZRLabel4: TZRLabel;
        zrvLOCALIZACAO: TZRField;
        Q_EtiquetasCODIGO: TIBStringField;
        Q_EtiquetasREFERENCIA: TIBStringField;
        Q_EtiquetasDESCRICAO: TIBStringField;
        Q_EtiquetasFABRICANTE: TIBStringField;
        Q_EtiquetasITEM: TIntegerField;
        Q_EtiquetasCODIGOBARRAS: TIBStringField;
        Q_EtiquetasESTOQUE: TIBBCDField;
        Q_EtiquetasPERCENTUAL: TIBBCDField;
        Q_EtiquetasFATORUNDVENDA: TFloatField;
        Q_EtiquetasPRECOTEMP: TIBBCDField;
        Q_EtiquetasPRECOPROMOCAO: TIBBCDField;
        Q_EtiquetasPERCUND: TIBBCDField;
        Q_EtiquetasPRECOMANUND: TIBBCDField;
        Q_EtiquetasUNIDADE: TIBStringField;
        Q_EtiquetasUNDVENDA: TIBStringField;
        Q_EtiquetasPRECONORMAL: TIBBCDField;
        Q_EtiquetasFATORITEMUND: TFloatField;
        Q_EtiquetasPRECO: TCurrencyField;
        ppEtiqueta2ColMatricial: TppReport;
        ppColumnHeaderBand9: TppColumnHeaderBand;
        ppDetailBand11: TppDetailBand;
        ppDBText34: TppDBText;
        ppDBText35: TppDBText;
        ppLabel11: TppLabel;
        ppColumnFooterBand9: TppColumnFooterBand;
        ppDBText36: TppDBText;
        Q_EtiquetasINDEXADOR: TIntegerField;
        C_IndexadoresDS: TDataSource;
        Q_Indexadores: TIBQuery;
        P_Indexadores: TDataSetProvider;
        C_Indexadores: TClientDataSet;
        C_IndexadoresINDEXADOR: TIntegerField;
        C_IndexadoresDESCRICAO: TStringField;
        TS_Label3: TTS_Label;
        cmbIndex: TTS_LookupComboBox;
        Q_SQL: TIBQuery;
        Q_EtiquetasLOCALIZACAO: TIntegerField;
        ppEtiquetas6X4_A4: TppReport;
        ppColumnHeaderBand10: TppColumnHeaderBand;
        ppDetailBand12: TppDetailBand;
        ppDBText38: TppDBText;
        ppDBText39: TppDBText;
        ppDBText40: TppDBText;
        ppDBText41: TppDBText;
        ppDBText42: TppDBText;
        ppColumnFooterBand10: TppColumnFooterBand;
        ppShape5: TppShape;
        edtTitulo: TTS_Edit;
        lbTitulo: TTS_Label;
        ppDBText37: TppDBText;
        ppGondolaMatricial: TppReport;
        ppColumnHeaderBand12: TppColumnHeaderBand;
        ppDetailBand15: TppDetailBand;
        ppDBText49: TppDBText;
        ppDBText50: TppDBText;
        ppLabel13: TppLabel;
        ppColumnFooterBand12: TppColumnFooterBand;
        ppDBText51: TppDBText;
        ppDBText52: TppDBText;
        cbComPreco: TTS_CheckBox;
        C_GerarEtiquetas: TClientDataSet;
        P_GerarEtiquetas: TDataSetProvider;
        C_GerarEtiquetasITEM: TIntegerField;
        C_GerarEtiquetasCODIGO: TStringField;
        C_GerarEtiquetasREFERENCIA: TStringField;
        C_GerarEtiquetasDESCRICAO: TStringField;
        C_GerarEtiquetasESTOQUE: TBCDField;
        C_GerarEtiquetasFABRICANTE: TStringField;
        Q_EtiquetasQTDEMBALAGEM: TFloatField;
        ppGondola_Media: TppReport;
        ppDetailBand18: TppDetailBand;
        ppDBText62: TppDBText;
        ppDBText64: TppDBText;
        ppDBText65: TppDBText;
        spImprimirDireto: TTS_SpeedButton;
        ppDBText63: TppDBText;
        ppGondolaHorizontal: TppReport;
        ppDetailBand21: TppDetailBand;
        ppDBText74: TppDBText;
        ppDBText75: TppDBText;
        ppDBBarCode5: TppDBBarCode;
        ppDBText76: TppDBText;
        Q_EtiquetasPRECO2: TIBBCDField;
        ppGondolaHorizontal100: TppReport;
        ppDetailBand25: TppDetailBand;
        ppDBText95: TppDBText;
        ppDBText96: TppDBText;
        ppDBBarCode6: TppDBBarCode;
        ppDBText97: TppDBText;
        ppEtiquetaPimaco6283: TppReport;
        ppHeaderBand1: TppHeaderBand;
        ppDetailBand26: TppDetailBand;
        ppFooterBand1: TppFooterBand;
        ppColumnHeaderBand19: TppColumnHeaderBand;
        ppColumnFooterBand19: TppColumnFooterBand;
        Q_SAIDAS: TIBQuery;
        Q_SAIDASDS: TDataSource;
        C_SAIDAS: TClientDataSet;
        P_SAIDAS: TDataSetProvider;
        C_SAIDASSAIDAITEM: TIntegerField;
        C_SAIDASSAIDA: TIntegerField;
        C_SAIDASCODIGO: TStringField;
        C_SAIDASDESCRICAO: TStringField;
        C_SAIDASUNIDADE: TStringField;
        C_SAIDASQUANTIDADE: TBCDField;
        C_SAIDASPRECO: TFloatField;
        C_SAIDASSUBTOTALITEM: TBCDField;
        C_SAIDASNOMECLIENTE: TStringField;
        C_SAIDASDATA: TDateField;
        C_SAIDASNUMERO: TStringField;
        C_SAIDASFAVORECIDO: TIntegerField;
        C_SAIDASENDERECO: TStringField;
        C_SAIDASCIDADE: TStringField;
        C_SAIDASBAIRRO: TStringField;
        C_SAIDASUF: TStringField;
        edNumeroSaida: TTS_Edit;
        ppShape6: TppShape;
        ppDBText98: TppDBText;
        ppDBText100: TppDBText;
        ppLabel8: TppLabel;
        ppLabel17: TppLabel;
        ppLabel18: TppLabel;
        ppLabel19: TppLabel;
        ppPimaco_A4225: TppReport;
        ppDetailBand27: TppDetailBand;
        ppDBText99: TppDBText;
        ppDBText101: TppDBText;
        ppDBBarCode7: TppDBBarCode;
        ppColumnHeaderBand20: TppColumnHeaderBand;
        ppColumnFooterBand20: TppColumnFooterBand;
        Q_EtiquetasCODIGOVENDA: TIBStringField;
    ppEtiquetas6089: TppReport;
    ppColumnHeaderBand22: TppColumnHeaderBand;
    ppDetailBand30: TppDetailBand;
    ppDBText109: TppDBText;
    ppDBText110: TppDBText;
    ppDBText111: TppDBText;
    ppLabel20: TppLabel;
    ppColumnFooterBand22: TppColumnFooterBand;
    ppLabel23: TppLabel;
    LInhaInicial: TTS_Edit;
    Label1: TLabel;
    C_IndexadoresCIFRAO: TStringField;
    ppGondolaPequena: TppReport;
    ppDetailBand47: TppDetailBand;
    ppDBText158: TppDBText;
    ppDBText159: TppDBText;
    ppDBBarCode16: TppDBBarCode;
    ppDBText160: TppDBText;
    ppLabel32: TppLabel;
    TS_Edit1: TTS_Edit;
    Label2: TLabel;
    ppDBText161: TppDBText;
    ppDBText164: TppDBText;
    ppDBEtiquetasppField25: TppField;
    Q_EtiquetasPRECODESCONTO: TFloatField;
    ppGondolaHorizontalLote: TppReport;
    ppDetailBand51: TppDetailBand;
    ppDBText170: TppDBText;
    ppDBBarCode19: TppDBBarCode;
    Label3: TLabel;
    Label4: TLabel;
    TS_Validade: TTS_Edit;
    TS_Lote: TTS_Edit;
    ppDBEtiquetasppField26: TppField;
    ppDBEtiquetasppField27: TppField;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    ppLabel40: TppLabel;
    ppLabel41: TppLabel;
    ppLoja: TppReport;
    ppColumnHeaderBand37: TppColumnHeaderBand;
    ppDetailBand52: TppDetailBand;
    ppDBText171: TppDBText;
    ppDBText173: TppDBText;
    ppDBText174: TppDBText;
    ppColumnFooterBand37: TppColumnFooterBand;
    ppDBText175: TppDBText;
    ppDBEtiquetasppField28: TppField;
    Q_Etiquetasultimacompra: TDateField;
    TS_Edit2: TTS_Edit;
    Label5: TLabel;
    ppPimaco3ColunasLogo: TppReport;
    ppColumnHeaderBand42: TppColumnHeaderBand;
    ppDetailBand58: TppDetailBand;
    ppDBText189: TppDBText;
    ppDBBarCode25: TppDBBarCode;
    ppColumnFooterBand42: TppColumnFooterBand;
    ppImage7: TppImage;
    ppLabel43: TppLabel;
    ppDBText190: TppDBText;
    pp3ColunasLogo: TppReport;
    ppColumnHeaderBand43: TppColumnHeaderBand;
    ppDetailBand59: TppDetailBand;
    ppDBText191: TppDBText;
    ppDBBarCode26: TppDBBarCode;
    ppImage8: TppImage;
    ppLabel44: TppLabel;
    ppDBText192: TppDBText;
    ppColumnFooterBand43: TppColumnFooterBand;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure PopupFiltroItensSelecionou(Sender: TObject);
        procedure btGravarClick(Sender: TObject);
        procedure btLimparClick(Sender: TObject);
        procedure Q_EtiquetasCalcFields(DataSet: TDataSet);
        procedure cbUmaEtiquetaChange(Sender: TObject);
        procedure cbTipoEtiquetaChange(Sender: TObject);
        procedure ppMonetarioPrint(Sender: TObject);
        procedure ppLabel4Print(Sender: TObject);
        procedure ppDBText12GetText(Sender: TObject; var Text: string);
        procedure ppLabel8GetText(Sender: TObject; var Text: string);
        procedure ppDBText21GetText(Sender: TObject; var Text: string);
        procedure ppDBText6GetText(Sender: TObject; var Text: string);
        procedure ppDBText7GetText(Sender: TObject; var Text: string);
        procedure ppLabel9GetText(Sender: TObject; var Text: string);
        procedure ppLabel5GetText(Sender: TObject; var Text: string);
        procedure ppLabel6GetText(Sender: TObject; var Text: string);
        procedure ppDBText27GetText(Sender: TObject; var Text: string);
        procedure ppDBText30GetText(Sender: TObject; var Text: string);
        procedure ppLabel10GetText(Sender: TObject; var Text: string);
        procedure btFecharCadastroClick(Sender: TObject);
        procedure ppDBText40GetText(Sender: TObject; var Text: string);
        procedure ppDBText43GetText(Sender: TObject; var Text: string);
        procedure ppDBText37GetText(Sender: TObject; var Text: string);
        procedure cbComPrecoChange(Sender: TObject);
        procedure ppDBText10GetText(Sender: TObject; var Text: string);
        procedure ppDBText15GetText(Sender: TObject; var Text: string);
        procedure spImprimirDiretoClick(Sender: TObject);
        procedure ppDBText17GetText(Sender: TObject; var Text: string);
        procedure ppDBText70GetText(Sender: TObject; var Text: string);
        procedure edNumeroSaidaKeyDown(Sender: TObject; var Key: Word;
            Shift: TShiftState);
        procedure ppLabel8Print(Sender: TObject);
        procedure ppLabel18Print(Sender: TObject);
        procedure ppLabel19Print(Sender: TObject);
        procedure ppDBBarCode7Print(Sender: TObject);
        function RetornaCampoImpressao(index: integer): string;
    private
        { Private declarations }
        nIndex: double;
        sArq: TStringList;
        sSequenciaCarga, sTotalItens: integer;
        sCliente, SNumeroNota: string;
    public
        { Public declarations }
    end;

var
    dlgEtiquetaItem: TdlgEtiquetaItem;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TdlgEtiquetaItem.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    sArq := TStringList.Create;
    cbTipoEtiqueta.ItemIndex := 0;
    edtTitulo.Text := '';
    if FileExists(DMPRojeto.ProgPath + 'TipoEtiqueta.txt') then
        begin
            sArq.LoadFromFile(DMPRojeto.ProgPath + 'TipoEtiqueta.txt');
            cbTipoEtiqueta.ItemIndex := StrToInt(copy(sArq.Text, 1, Pos('|', sArq.Text) - 1));
            edtTitulo.Text := Trim(copy(sArq.Text, Pos('|', sArq.Text) + 1, 100));
        end;
    cbLogo.Checked := False;
    cbLogo.Visible := False;
    cbBorda.Checked := False;
    cbBorda.Visible := False;
    lbTitulo.Visible := False;
    EdtTitulo.Visible := False;

    if cbTipoEtiqueta.ItemIndex in [1, 4, 12] then
        begin
            cbBorda.Checked := False;
            cbBorda.Visible := True;
            if cbTipoEtiqueta.ItemIndex in [1, 4] then
                begin
                    cbLogo.Visible := True;
                    cbLogo.Checked := False;
                end;
            if cbTipoEtiqueta.ItemIndex in [12] then
                begin
                    cbBorda.Checked := True;
                    lbTitulo.Visible := True;
                end;
        end;
    C_Indexadores.Close;
    C_Indexadores.Open;
    btLimparClick(Sender);
end;

procedure TdlgEtiquetaItem.PopupFiltroItensSelecionou(Sender: TObject);
begin
    inherited;
    with Q_Itens do
        begin
            Close;
            Sql.Text := ' SELECT I.ITEM, I.CODIGO, I.REFERENCIA, I.DESCRICAO, I.estoque, ' +
                ' f.descricao AS FABRICANTE FROM ITENS I LEFT JOIN fabricantes F ' +
                ' ON F.fabricante = I.fabricante ' +
                'where ' + PopupFiltroItens.getSQL + ' order by i.descricao';
            Open;
            btGravar.Enabled := (RecordCount > 0);
            spImprimirDireto.Enabled := btGravar.Enabled;
        end;
end;

procedure TdlgEtiquetaItem.btGravarClick(Sender: TObject);
var i, nRec: Integer;
lab1, lab2, lab3 : Double ;
c1, c2, c3 : Currency ;
begin
    // Selecionando o valor da cotação escolhida,
    // se não foi escolhida nenhuma o valor é 1 (hum).
    nIndex := 1;
    sSequenciaCarga := 0;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        if cmbIndex.LookupKeyValue <> null then
            begin
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'select valor from cotacoes ' +
                            'where data = (select max(data) from cotacoes where indexador = :i) ' +
                            'and indexador = :i ';
                        ParamByName('i').AsInteger := cmbIndex.LookupKeyValue;
                        Open;
                        if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                            nIndex := Fields[0].AsFloat;
                        Close;
                    end;
            end;

        Barra.Visible := True;
        Barra.Max := Q_Itens.RecordCount;
        Barra.Position := 0;
        Q_Itens.First;
        Q_Itens.DisableControls;
        Q_GerarEtiquetas.SQL.Text := ' Delete from ETIQUETASITENS WHERE MAQUINA = :MAQUINA ';
        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
        Q_GerarEtiquetas.Prepare;
        C_GerarEtiquetas.FetchParams;
        C_GerarEtiquetas.Execute;
        C_GerarEtiquetas.Close;
        Q_GerarEtiquetas.SQL.Text := ' INSERT INTO ETIQUETASITENS (ITEM, MAQUINA) VALUES (:ITEM, :MAQUINA) ';
        while not Q_Itens.Eof do
            begin
                Q_GerarEtiquetas.Prepare;
                for i := 1 to Q_ItensESTOQUE.AsInteger do
                    begin
                        Q_GerarEtiquetas.Parambyname('ITEM').Value := Q_ItensItem.Value;
                        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
                        Q_GerarEtiquetas.Prepare;
                        C_GerarEtiquetas.FetchParams;
                        C_GerarEtiquetas.Execute;
                    end;
                Q_Itens.Next;
                Barra.Position := Barra.Position + 1;
            end;
        Barra.Visible := False;
        Q_Etiquetas.Close;
        Q_Etiquetas.SQL.Text := 'select i.codigo, i.referencia, i.descricao, f.descricao as fabricante, i.item, ' +
            //'case when (i.codigo is null) or (i.codigo = '''') Then i.codigobarras else i.codigo end  as codigobarras ,  ' +
        ' i.codigobarras, i.codigovenda,' +
            ' i.localizacao, i.estoque, ' +
            'i.percentual, i.fatorundvenda, p.preco as precotemp, '+
//            'i.percentual, i.fatorundvenda, cast(p.preco - ((p.preco *  cast((:DESCONTO) as numeric(15,3)) ))/100 as numeric(15,3)) as precotemp, '+
            'cast(p.preco - ((p.preco *  cast((:DESCONTO) as numeric(15,3)) ))/100 as numeric(15,3))as PRECOPROMOCAO, ' +
            'cast(p.preco - ((p.preco *  cast((:ATACADO) as numeric(15,3)) ))/100 as float)as PRECODESCONTO, ' +
//            'cast(p.preco - cast((:DESCONTO) as numeric(15,3)) AS numeric(15,3))as PRECOPROMOCAO, ' +
            'iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
            'i.unidade as undvenda, pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
            'i.indexador,iu.qtdembalagem, ' +
            //'cast((P.PRECO) as float) AS PRECODESCONTO, '+
            '(select Max(px.preco) from produtospreco px where px.item = i.item and px.Unidade = iu.Unidade and px.tabelapreco > 0 ) as Preco2,  ' +
//            ' :lote as Lote, :Validade as Validade '+
            ' i.ultimacompra '+
            'from etiquetasitens e ' +
            'inner join itens i on i.item = e.item ' +
            'inner join itensunidades iu on iu.item = i.item ' +
            'left join fabricantes f on f.fabricante = i.fabricante ' +
            'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade and p.tabelapreco = 0 ' +
            'left join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade and pr.tabelapreco = 0 ' +
            'WHERE E.MAQUINA = :MAQUINA ' +
            'Order by ' + Inttostr(rgOrdem.ItemIndex + 1);
        Q_Etiquetas.ParamByName('MAQUINA').AsString := DMProjeto.Maquina;
        Q_Etiquetas.ParamByName('DESCONTO').AsCurrency := StrToCurr( TS_Edit1.Text);
        Q_Etiquetas.ParamByName('ATACADO').AsCurrency := StrToCurr( TS_Edit2.Text);
  //      Q_Etiquetas.ParamByName('lote').AsString :=  TS_lote.Text ;
    //    Q_Etiquetas.ParamByName('Validade').AsString := TS_Validade.Text;

        try
        Q_Etiquetas.Open;
    except on E: Exception do
            raise Exception.Create('Erro ao verificar o MD5 da tabela de Itens!!!' + #13 + e.Message);
    end;
        if CbComPreco.Checked then
            begin
                ppDBText47.Visible := True;
                ppDBText50.Visible := True;
                ppDBText2.Visible := True;
                ppDBText8.Visible := True;
                ppDBText11.Visible := True;
                ppDBText17.Visible := True;
                ppDBText32.Visible := True;
                ppDBText35.Visible := True;
                ppDBText19.Visible := True;
                ppDBText22.Visible := True;
                ppDBText24.Visible := True;
                ppDBText26.Visible := True;
                ppDBText29.Visible := True;
                ppDBText38.Visible := True;
                ppDBText46.Visible := True;
                ppDBText69.Visible := True;
                ppDBText72.Visible := True;
            end
        else
            begin
                ppDBText47.Visible := False;
                ppDBText50.Visible := False;
                ppDBText2.Visible := False;
                ppDBText8.Visible := False;
                ppDBText11.Visible := False;
                ppDBText17.Visible := False;
                ppDBText32.Visible := False;
                ppDBText35.Visible := False;
                ppDBText19.Visible := False;
                ppDBText22.Visible := False;
                ppDBText24.Visible := False;
                ppDBText26.Visible := False;
                ppDBText29.Visible := False;
                ppDBText38.Visible := False;
                ppDBText46.Visible := False;
                ppDBText69.Visible := False;
                ppDBText72.Visible := False;
            end;

        case cbTipoEtiqueta.ItemIndex of
            0: zrEtiquetaItem.Preview; // '1 - PIMACO, 2 Col. Continuo';
            1:
                begin // 2 - PIMACO, 6282 CARTA (GONDOLAS);
                    ppImage1.Picture.LoadFromFile(DMProjeto.ImgPath + DMProjeto.sLogotipoEmpresa);
                    ppImage1.Visible := False;
                    ppBorda.Visible := False;
                    if cbLogo.Checked then
                        ppImage1.Visible := True;
                    if cbBorda.Checked then
                        ppBorda.Visible := True;
                    ppEtiquetas6282.Print;
                end;
            2:
                begin // 3 - PIMACO, 6089 4 COLUNAS
                      ppEtiquetas6089.Print;
                end;
            3:
                begin // 4 - Etiquetas Roupas;
                    ppEtiquetasRoupas.Print;
                end;
            4:
                begin // 5 - RIBON (4 inch model);
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    pp5RIBON4inchmodel.Print;
                end;
            5:
                begin   //6 - 08 Cm X 04 Cm 2 Colunas
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas08X04_2Col.Print;
                end;
            6:
                begin   // 7 - 08 Cm X 2.5 Cm 2 Colunas
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas08X25_2Col.Print;
                end;
            7:
                begin  //8 - 06 Cm X 03 Cm 3 Colunas
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas06X03_3Col.Print;
                end;
            8:
                begin // 9 - 06 Cm X 03 Cm 1 Coluna (Ribon)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiqueta06X03_1Col.Print;
                end;
            9:
                begin // A - 03.3 Cm X 02.1 3 Colunas (Ribon)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppDBBarCode1.DataField := RetornaCampoImpressao(rgCodigoImpressao.ItemIndex);
                    ppEtiquetas33X21_3Col.Print;
                end;
            10:
                begin  // B - 05 Col. Matricial
                    ppEtiqueta5ColMatricial.Print;
                end;
            11:
                begin  //C - 02 Col. Matricial
                    ppEtiqueta2ColMatricial.Print;
                end;
            12:
                begin // D - 06 X 04 (A4-Gondolas)
                    ppShape5.Visible := False;
                    if cbBorda.Checked then
                        ppShape5.Visible := True;
                    ppEtiquetas6X4_A4.Print;
                end;
            13:
                begin // E - ETIQUETAS JOIAS
                    ppEtiquetasJoias.Print;
                end;
            14:
                begin  // F - 5 Colunas Preço Grande (Matricial)
                    pp5ColPrecoGrandeMatricial.Print;
                end;
            15:
                begin // G - Gondolas (Matricial)
                    ppGondolaMatricial.Print;
                end;
            16:
                begin // H - RIBON (4 inch model) Bolsa
                    ppBolsa2Col.Print;
                end;
            17:
                begin  // I  - RIBON (Gondolas 5 x 10 CM).
                    ppGondolasRIBON.Print;
                end;
            18:
                begin  // J - RIBON (Gondolas Média 5 x 7 CM).
                    ppGondola_Media.Print;
                end;
            19:
                begin  // K - 03.3 Cm X 02.1 3 Colunas (Ribon - Argox)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col_Argox.Print;
                end;

            20:
                begin // L - ETIQUETAS ROUPAS 2 COLUNAS
                    ppEtiquetasRoupa2Col.Print;
                end;
            21:
                begin // M - Gondolas Horizontal (11 X 2.8 CM)
                    ppGondolaHorizontal.Print;
                end;
            22:
                begin // N - ETIQUETAS ROUPAS 3 COL.
                    ppEtiquetasRoupas3Colunas.Print;
                end;
            23:
                begin // O - ETIQUETAS ROUPAS 3 COL. STILLO
                    ppEtiquetasRoupas3ColunasStillo.Print;
                end;
            24:
                begin // P - Etiquetas Roupas 3 Col Fashion
                    ppEtiquetasRoupas3ColunasFashion.Print;
                end;
            25:
                begin // Q - Gondola Horizontal ( 10 X 2.8 CM )
                    ppGondolaHorizontal100.Print;
                end;
            26:
                begin // R - ETIQUETAS PIMACO 6283 50,8 X 101,6
                    ppEtiquetaPimaco6283.Print;
                end;
            27:
                begin // S - ETIQUETAS PIMACO A4255 3 COLUNAS
                    //i := rgCodigoImpressao.ItemIndex;
                    ppDBBarCode7.DataField := RetornaCampoImpressao(rgCodigoImpressao.ItemIndex);
                    ppPimaco_A4225.Print;
                end;
            28:
                begin // T - Etiqueta 2,5 X 1,5  Uma Colula Ribbon
                    ppModeloT25x15.Print;
                end;
            29:
                begin // U - Etiqueta Roupa com Logo
                   if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                   ppImage2.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                   ppEtiquetaRoupaLogomarca.Print;
                end;
            30:
                Begin // V - Etiqueta Pino Joia --> deve ser colocada com o Drive Argox e não DR label
                ppEtiquetaJoiaPino.Print;
                end ;
            31:
                Begin // Z - Etiqueta Joia Imp Jato de Tinta -->
                ppEtiquetaJoiaJatoTinta.MainReport.PrinterSetup.MarginTop := 1.3 + (StrToInt(LInhaInicial.Text)*12.7);
                ppEtiquetaJoiaJatoTinta.Print;
                end ;
            32:
                begin// E1 - ETIQUETA JOIA - 30X30X12
                  if (cmbIndex.Text <> '' ) then begin
                    ppCifrao.Caption := C_IndexadoresCIFRAO.Value ;
                    ppDBText121.DisplayFormat := '#,0.00;-#,0.00'
                  end
                  else
                    ppDBText121.DisplayFormat := '#R$,0.00;-R$#,0.00' ;
                    ppEtiquetasJoias2.Print;
                end;
            33:
                begin // E2 - ETIQUETA JOIA - 30X30X12 ( logo )
                   if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                   ppImage3.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                   ppEtiquetaJoiaLogo.Print;
                end;

            34:
               begin // A.1 - 03.3 Cm X 02.1 3 Colunas (Ribon)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                        ppImage4.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                    ppEtiquetaA1.Print;
                end;
            35:
               begin // A.1 - 03.3 Cm X 02.1 3 Colunas (Ribon)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                        ppImage5.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                    ppDuasColunas.Print;
                end;

            36:
               begin // L2 - Etiqueta Duas Colunas Elgin L42
                     ppReport5.Print;
                end;

            37:
                begin // E2 - ETIQUETA JOIA - 30X30X12 ( logo )
//                   if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
//                   ppImage7.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                   ppReport10.Print;
                end;

            38:
                begin // G1 - Etiqueta Gondola ( 7cm x 3cm )
//                   if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
//                   ppImage7.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
//                   c1 := StrTofloat( TS_Edit1.Text);
//                   c2 := Q_EtiquetasPRECOTEMP.Value - (Q_EtiquetasPRECOTEMP.Value * (c1/100));
 //                  ppLabel33.Text := CurrToStr(c2);
                   ppGondolaPequena.Print;


                end;
            39:
                begin // G2 - Etiqueta Gondola ( 7cm x 3cm )  - Modelo 2
                   ppGondolaPequenaModelo2.Print;
                end;

            40:
                begin  // K1 - 03.3 Cm X 02.1 3 Colunas (Ribon - Elgin)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col_Elgin.Print;
                end;

            41:
                Begin // Z - Etiqueta Joia Imp Jato de Tinta -->
                ppEtiquetaJoiaJatoTinta2.MainReport.PrinterSetup.MarginTop := 1.3 + (StrToInt(LInhaInicial.Text)*12.7);
                ppEtiquetaJoiaJatoTinta2.Print;
                end ;
            42 : // Q1 - Gondola Horizontal - Lote e Validade
                Begin
                   ppLabel40.Caption := TS_Lote.Text ;
                   ppLabel41.Caption := TS_Validade.Text ;
                   ppGondolaHorizontalLote.Print;
                end ;
            43:
                begin // A1 - Colunas loja
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppLoja.Print;
                end;
            44:
                begin // A2 - 03.3 Cm X 02.1 3 Colunas Com Data de entrada
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col_DataEntrada.Print;
                end;
            45:
                begin // G3 - Etiqueta Gondola ( 7cm x 3cm )  - Modelo 3
                   ppGondolaPequenaModelo3.Print;
                end;

            46:
               begin // A.2 - 03.3 Cm X 02.1 3 Colunas (Ribon) ( sem Preco)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetaA1sempreco.Print;
                end;
             47:
               begin  // K2 - 03.3 Cm X 02.1 3 Colunas sem Preco (Ribon - Elgin)
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col_Elgin_Sem_Preco.Print;
                end;
               48:
                begin // S1 - ETIQUETAS PIMACO A4255 3 COLUNAS
                    //i := rgCodigoImpressao.ItemIndex;
                    ppPimaco3Colunas.MainReport.PrinterSetup.MarginTop := 14 + (StrToInt(LInhaInicial.Text)*25.1)- 25.1;
//                    ppDBBarCode7.DataField := RetornaCampoImpressao(rgCodigoImpressao.ItemIndex);
                    ppPimaco3Colunas.Print;
                end;
               49:
                begin // S2 - ETIQUETAS PIMACO A4255 3 COLUNAS Com Logo
                    //i := rgCodigoImpressao.ItemIndex;
                    if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                        ppImage7.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                    ppPimaco3ColunasLogo.MainReport.PrinterSetup.MarginTop := 14 + (StrToInt(LInhaInicial.Text)*25.1)- 25.1;
//                    ppDBBarCode7.DataField := RetornaCampoImpressao(rgCodigoImpressao.ItemIndex);
                    ppPimaco3ColunasLogo.Print;
                end;
                50:
                begin // S3 - ETIQUETAS 3 COLUNAS Com Logo
                    //i := rgCodigoImpressao.ItemIndex;
                    if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
                        ppImage8.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg');
                    pp3ColunasLogo.MainReport.PrinterSetup.MarginTop := 12 + (StrToInt(LInhaInicial.Text)*30.1)- 30.1;
//                    ppDBBarCode7.DataField := RetornaCampoImpressao(rgCodigoImpressao.ItemIndex);
                    pp3ColunasLogo.Print;
                end;
                51:
                begin // M - Gondolas Horizontal (11 X 2.8 CM)
                    ppGondolaHorizontalElgin.Print;
                end;




        end;
        Q_Itens.EnableControls;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    except
        on E: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
            end;
    end;

end;

function TdlgEtiquetaItem.RetornaCampoImpressao(index: integer): string;
var
    campoImpresso: string;
begin
    campoImpresso := 'CODIGO';

    if (index = 1) and (Q_EtiquetasCODIGOBARRAS.Value <> null) and (Q_EtiquetasCODIGOBARRAS.Value <> '') then
        campoImpresso := 'CODIGOBARRAS';

    if (index = 2) and (Q_EtiquetasCODIGOVENDA.Value <> null) and (Q_EtiquetasCODIGOVENDA.Value <> '') then
        campoImpresso := 'CODIGOVENDA';

    Result := campoImpresso;
end;

procedure TdlgEtiquetaItem.btLimparClick(Sender: TObject);
begin
    inherited;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        Q_Itens.Close;
        Q_GerarEtiquetas.SQL.Text := ' Delete from ETIQUETASITENS WHERE MAQUINA = :MAQUINA ';
        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
        Q_GerarEtiquetas.Prepare;
        C_GerarEtiquetas.FetchParams;
        C_GerarEtiquetas.Execute;
        //  Q_GerarEtiquetas.ExecSql;
        PopupFiltroItens.TS_ItensSelecionados := '';
        PopupFiltroItens.TS_GruposSelecionados := '';
        PopupFiltroItens.TS_FabricantesSelecionados := '';
        PopupFiltroItens.TS_PossuiEstoque := False;
        PopupFiltroItens.TS_NaoPossuiEstoque := False;
        PopupFiltroItens.TS_EstoqueMinimo := False;
        PopupFiltroItens.TS_EstoqueMaximo := False;
        PopupFiltroItens.TS_EstoquePontoPedido := False;
        PopupFiltroItens.TS_EstoqueNegativo := False;
        PopupFiltroItens.TS_ItensDesativado := False;
        btGravar.Enabled := False;
        spImprimirDireto.Enabled := btGravar.Enabled;
        cbUmaEtiqueta.checked := False;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    except
        on E: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
            end;
    end;

end;

procedure TdlgEtiquetaItem.Q_EtiquetasCalcFields(DataSet: TDataSet);
var nPreco, nFatorVenda: currency;
begin
    inherited;
    Q_EtiquetasEmpresa.AsString := DMProjeto.sNomeEmpresa;
    // Calculando o preço....
    nFatorVenda := IIF(DataSet.FieldByName('FatorUndVenda').asFloat > 0, DataSet.FieldByName('FatorUndVenda').asFloat, 1);

    if DataSet.FieldByName('PrecoManUnd').AsCurrency > 0 then
        begin
            nPreco := DataSet.FieldByName('PrecoManUnd').AsCurrency;
        end
//    else if DataSet.FieldByName('PrecoPromocao').asCurrency > 0 then
//        begin
//            nPreco := DataSet.FieldByName('PrecoPromocao').asCurrency;
//        end
    else
        begin
            if DataSet.FieldByName('Percentual').asCurrency = 0 then
                begin
                    nPreco := DataSet.FieldByName('PrecoTemp').asCurrency;
                    if DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString then
                        nPreco := (DataSet.FieldByName('PrecoNormal').AsCurrency / nFatorVenda) * DataSet.FieldByName('FatorItemUnd').AsCurrency;
                end
            else
                nPreco := DataSet.FieldByName('Percentual').asCurrency;
        end;
    DataSet.FieldByName('PRECO').AsCurrency := RoundTo(nPreco, -2);
    // Modificando a cotação para o indexador selecionado...
    if DataSet.FieldByName('Indexador').AsVariant <> null then
        begin
            Q_SQL.Close;
            Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
            Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
            Q_SQL.Open;
            if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then
                begin
                    DataSet.FieldByName('PRECO').AsCurrency := RoundTo((DataSet.FieldByName('PRECO').AsCurrency / Q_SQL.Fields[0].AsFloat) * nIndex, -2);
                end;
            Q_SQL.Close;
        end;
    //
end;

procedure TdlgEtiquetaItem.cbUmaEtiquetaChange(Sender: TObject);
begin
    inherited;
    if cbUmaEtiqueta.Checked then
        begin
            Q_Itens.First;
            Q_Itens.DisableControls;
            while not Q_Itens.Eof do
                begin
                    Q_Itens.Edit;
                    Q_ItensESTOQUE.Value := 1;
                    Q_Itens.Next;
                end;
            Q_Itens.EnableControls;
        end
    else
        begin
            with Q_Itens do
                begin
                    Close;
                    Sql.Text := ' SELECT I.ITEM, I.CODIGO, I.REFERENCIA, I.DESCRICAO, I.estoque, ' +
                        ' f.descricao AS FABRICANTE FROM ITENS I LEFT JOIN fabricantes F ' +
                        ' ON F.fabricante = I.fabricante ' +
                        'where ' + PopupFiltroItens.getSQL + ' order by i.descricao';
                    Open;
                end;
        end;
    Q_Itens.First;
end;

procedure TdlgEtiquetaItem.cbTipoEtiquetaChange(Sender: TObject);
begin
    inherited;
    cbLogo.Checked := False;
    cbLogo.Visible := False;
    cbBorda.Checked := False;
    cbBorda.Visible := False;
    if cbTipoEtiqueta.ItemIndex in [1, 4, 12] then
        begin
            cbBorda.Checked := False;
            cbBorda.Visible := True;
            if cbTipoEtiqueta.ItemIndex in [1, 4] then
                begin
                    cbLogo.Visible := True;
                    cbLogo.Checked := False;
                end;
        end;
end;

procedure TdlgEtiquetaItem.ppMonetarioPrint(Sender: TObject);
begin
    inherited;
    ppMonetario.Caption := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppLabel4Print(Sender: TObject);
begin
    inherited;
    ppLabel4.Caption := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppDBText12GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    // 4 - Etiquetas Roupas;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppLabel8GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppDBText21GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    //  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppDBText6GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    // 2 - PIMACO, 6282 CARTA (GONDOLAS);
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppDBText7GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    // Etiqueta para 3 - PIMACO, 6089 4 COLUNAS
    Text := '*' + Text + '*';

end;

procedure TdlgEtiquetaItem.ppLabel9GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppLabel5GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppLabel6GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppDBText27GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppDBText30GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppLabel10GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.btFecharCadastroClick(Sender: TObject);
begin
    inherited;
    sArq.Clear;
    sArq.Add(IntToStr(cbTipoEtiqueta.ItemIndex) + '|' + edtTitulo.Text);
    sArq.SaveTofile(DMPRojeto.ProgPath + 'TipoEtiqueta.txt');
    sArq.Free;
end;

procedure TdlgEtiquetaItem.ppDBText40GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := edtTitulo.Text;
end;

procedure TdlgEtiquetaItem.ppDBText43GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppDBText37GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.cbComPrecoChange(Sender: TObject);
begin
    inherited;
    if CbComPreco.Checked then
        begin
            ppDBText47.Visible := True;
            ppDBText50.Visible := True;
            ppDBText2.Visible := True;
            ppDBText8.Visible := True;
            ppDBText11.Visible := True;
            ppDBText17.Visible := True;
            ppDBText32.Visible := True;
            ppDBText35.Visible := True;
            ppDBText19.Visible := True;
            ppDBText22.Visible := True;
            ppDBText24.Visible := True;
            ppDBText26.Visible := True;
            ppDBText29.Visible := True;
            ppDBText38.Visible := True;
            ppDBText46.Visible := True;
            ppMonetario.Visible := True;
            ppLabel10.Visible := True;
            ppLabel11.Visible := True;
            ppLabel9.Visible := True;
            ppLabel5.Visible := True;
            ppLabel6.Visible := True;
            ppLabel7.Visible := True;

        end
    else
        begin
            ppDBText47.Visible := False;
            ppDBText50.Visible := False;
            ppDBText2.Visible := False;
            ppDBText8.Visible := False;
            ppDBText11.Visible := False;
            ppDBText17.Visible := False;
            ppDBText32.Visible := False;
            ppDBText35.Visible := False;
            ppDBText19.Visible := False;
            ppDBText22.Visible := False;
            ppDBText24.Visible := False;
            ppDBText26.Visible := False;
            ppDBText29.Visible := False;
            ppDBText38.Visible := False;
            ppDBText46.Visible := False;
            ppMonetario.Visible := False;
            ppLabel10.Visible := False;
            ppLabel11.Visible := False;
            ppLabel9.Visible := False;
            ppLabel5.Visible := False;
            ppLabel6.Visible := False;
            ppLabel7.Visible := False;
        end;

end;

procedure TdlgEtiquetaItem.ppDBText10GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.ppDBText15GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.spImprimirDiretoClick(Sender: TObject);
var i: integer;
begin
    inherited;
    // Selecionando o valor da cotação escolhida,
    // se não foi escolhida nenhuma o valor é 1 (hum).
    nIndex := 1;
    sSequenciaCarga := 0;
    try
        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
        if cmbIndex.LookupKeyValue <> null then
            begin
                with Q_SQL do
                    begin
                        Close;
                        SQL.Text := 'select valor from cotacoes ' +
                            'where data = (select max(data) from cotacoes where indexador = :i) ' +
                            'and indexador = :i ';
                        ParamByName('i').AsInteger := cmbIndex.LookupKeyValue;
                        Open;
                        if (RecordCount > 0) and (Fields[0].AsFloat > 0) then
                            nIndex := Fields[0].AsFloat;
                        Close;
                    end;
            end;

        Barra.Visible := True;
        Barra.Max := Q_Itens.RecordCount;
        Barra.Position := 0;
        Q_Itens.First;
        Q_Itens.DisableControls;
        Q_GerarEtiquetas.SQL.Text := ' Delete from ETIQUETASITENS WHERE MAQUINA = :MAQUINA ';
        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
        Q_GerarEtiquetas.Prepare;
        C_GerarEtiquetas.FetchParams;
        C_GerarEtiquetas.Execute;
        C_GerarEtiquetas.Close;
        Q_GerarEtiquetas.SQL.Text := ' INSERT INTO ETIQUETASITENS (ITEM, MAQUINA) VALUES (:ITEM, :MAQUINA) ';
        while not Q_Itens.Eof do
            begin
                Q_GerarEtiquetas.Prepare;
                for i := 1 to Q_ItensESTOQUE.AsInteger do
                    begin
                        Q_GerarEtiquetas.Parambyname('ITEM').Value := Q_ItensItem.Value;
                        Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
                        Q_GerarEtiquetas.Prepare;
                        C_GerarEtiquetas.FetchParams;
                        C_GerarEtiquetas.Execute;
                    end;
                Q_Itens.Next;
                Barra.Position := Barra.Position + 1;
            end;
        Barra.Visible := False;
        Q_Etiquetas.Close;
        Q_Etiquetas.SQL.Text := 'select i.codigo, i.referencia, i.descricao, f.descricao as fabricante, i.item, ' +
            'case when (i.codigo is null) or (i.codigo = '''') Then i.codigobarras ' +
            'else i.codigo end  as codigobarras ,  ' +
            ' i.localizacao, i.estoque, ' +
            'i.percentual, i.fatorundvenda, p.preco as precotemp, p.precopromocao, ' +
            'iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
            'i.unidade as undvenda, pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
            'i.indexador,iu.qtdembalagem, ' +
            '(select Max(px.preco) from produtospreco px where px.item = i.item and px.Unidade = iu.Unidade and px.tabelapreco > 0 ) as Preco2 ' +
            'from etiquetasitens e ' +
            'inner join itens i on i.item = e.item ' +
            'inner join itensunidades iu on iu.item = i.item ' +
            'left join fabricantes f on f.fabricante = i.fabricante ' +
            'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade and p.tabelapreco = 0 ' +
            'left join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade and pr.tabelapreco = 0 ' +
            'WHERE E.MAQUINA = :MAQUINA ' +
            'Order by ' + Inttostr(rgOrdem.ItemIndex + 1);
        Q_Etiquetas.pARAMbYnAME('MAQUINA').AsString := DMProjeto.Maquina;
        Q_Etiquetas.Open;
        if CbComPreco.Checked then
            begin
                ppDBText47.Visible := True;
                ppDBText50.Visible := True;
                ppDBText2.Visible := True;
                ppDBText8.Visible := True;
                ppDBText11.Visible := True;
                ppDBText17.Visible := True;
                ppDBText32.Visible := True;
                ppDBText35.Visible := True;
                ppDBText19.Visible := True;
                ppDBText22.Visible := True;
                ppDBText24.Visible := True;
                ppDBText26.Visible := True;
                ppDBText29.Visible := True;
                ppDBText38.Visible := True;
                ppDBText46.Visible := True;
                ppDBText69.Visible := True;
                ppDBText72.Visible := True;
            end
        else
            begin
                ppDBText47.Visible := False;
                ppDBText50.Visible := False;
                ppDBText2.Visible := False;
                ppDBText8.Visible := False;
                ppDBText11.Visible := False;
                ppDBText17.Visible := False;
                ppDBText32.Visible := False;
                ppDBText35.Visible := False;
                ppDBText19.Visible := False;
                ppDBText22.Visible := False;
                ppDBText24.Visible := False;
                ppDBText26.Visible := False;
                ppDBText29.Visible := False;
                ppDBText38.Visible := False;
                ppDBText46.Visible := False;
                ppDBText69.Visible := False;
                ppDBText72.Visible := False;
            end;

        case cbTipoEtiqueta.ItemIndex of
            0: zrEtiquetaItem.Preview; // '1 - PIMACO, 2 Col. Continuo';
            1:
                begin // 2 - PIMACO, 6282 CARTA (GONDOLAS);
                    ppImage1.Picture.LoadFromFile(DMProjeto.ImgPath + DMProjeto.sLogotipoEmpresa);
                    ppImage1.Visible := False;
                    ppBorda.Visible := False;
                    if cbLogo.Checked then
                        ppImage1.Visible := True;
                    if cbBorda.Checked then
                        ppBorda.Visible := True;
                    ppEtiquetas6282.DeviceType := 'Printer';
                    ppEtiquetas6282.Print;
                end;
            2:
                begin // 3 - PIMACO, 6089 4 COLUNAS
                    ppEtiquetas6089.DeviceType := 'Printer';
                    ppEtiquetas6089.Print;
                end;
            3:
                begin // 4 - Etiquetas Roupas;
                    ppEtiquetasRoupas.DeviceType := 'Printer';
                    ppEtiquetasRoupas.Print;
                end;
            4:
                begin // 5 - RIBON (4 inch model);
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    pp5RIBON4inchmodel.DeviceType := 'Printer';
                    pp5RIBON4inchmodel.Print;
                end;
            5:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas08X04_2Col.DeviceType := 'Printer';
                    ppEtiquetas08X04_2Col.Print;
                end;
            6:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas08X25_2Col.DeviceType := 'Printer';
                    ppEtiquetas08X25_2Col.Print;
                end;
            7:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas06X03_3Col.DeviceType := 'Printer';
                    ppEtiquetas06X03_3Col.Print;
                end;
            8:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiqueta06X03_1Col.DeviceType := 'Printer';
                    ppEtiqueta06X03_1Col.Print;
                end;
            9:
                begin
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col.DeviceType := 'Printer';
                    ppEtiquetas33X21_3Col.Print;
                end;
            10:
                begin
                    ppEtiqueta5ColMatricial.DeviceType := 'Printer';
                    ppEtiqueta5ColMatricial.Print;
                end;
            11:
                begin
                    ppEtiqueta2COlMatricial.DeviceType := 'Printer';
                    ppEtiqueta2ColMatricial.Print;
                end;
            12:
                begin
                    ppShape5.Visible := False;
                    if cbBorda.Checked then
                        ppShape5.Visible := True;
                    ppEtiquetas6X4_A4.DeviceType := 'Printer';
                    ppEtiquetas6X4_A4.Print;
                end;
            13:
                begin
                    ppEtiquetasJoias.DeviceType := 'Printer';
                    ppEtiquetasJoias.Print;
                end;
            14:
                begin
                    pp5ColPrecoGrandeMatricial.DeviceType := 'Printer';
                    pp5ColPrecoGrandeMatricial.Print;
                end;
            15:
                begin
                    ppGondolaMatricial.DeviceType := 'Printer';
                    ppGondolaMatricial.Print;
                end;
            16:
                begin
                    ppBolsa2Col.DeviceType := 'Printer';
                    ppBolsa2Col.Print;
                end;
            17:
                begin
                    ppGondolasRIBON.DeviceType := 'Printer';
                    ppGondolasRIBON.Print;
                end;
            18:
                begin
                    ppGondola_Media.DeviceType := 'Printer';
                    ppGondola_Media.Print;
                end;
            19:
                begin
                    ppEtiquetas33X21_3Col_Argox.DeviceType := 'Printer';
                    ppShape1.Visible := False;
                    if cbBorda.Checked then
                        ppShape1.Visible := True;
                    ppEtiquetas33X21_3Col_Argox.Print;
                end;
            20:
                begin // Etiquetas Roupas 2 Col
                    ppEtiquetasRoupa2Col.DeviceType := 'Printer';
                    ppEtiquetasRoupa2Col.Print;
                end;
            21:
                begin // Etiquetas Roupas 2 Col
                    ppGondolaHorizontal.Print;
                end;
            22:
                begin // Etiquetas Roupas 3 Col
                    ppEtiquetasRoupas3Colunas.DeviceType := 'Printer';
                    ppEtiquetasRoupas3Colunas.Print;
                end;
            23:
                begin // Etiquetas Roupas 3 Col Stillo
                    ppEtiquetasRoupas3ColunasStillo.DeviceType := 'Printer';
                    ppEtiquetasRoupas3ColunasStillo.Print;
                end;
            24:
                begin // Etiquetas Roupas 3 Col Fashion
                    ppEtiquetasRoupas3ColunasFashion.DeviceType := 'Printer';
                    ppEtiquetasRoupas3ColunasFashion.Print;
                end;
            25:
                begin // Etiquetas Roupas 2 Col
                    ppGondolaHorizontal100.DeviceType := 'Printer';
                    ppGondolaHorizontal100.Print;
                end;
            26:
                begin // Etiquetas Pimaco 6283 50,8 x 101,6
                    ppEtiquetaPimaco6283.DeviceType := 'Printer';
                    ppEtiquetaPimaco6283.Print;
                end;
            27:
                begin // Etiquetas Pimaco A4255 3 COLUNAS
                    ppPimaco_A4225.DeviceType := 'Printer';
                    ppPimaco_A4225.Print;
                end;
            28:
                begin // Modelo T
                    ppModeloT25x15.DeviceType := 'Printer';
                    ppModeloT25x15.Print;
                end;


        end;
        Q_Itens.EnableControls;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    except
        on E: Exception do
            begin
                if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
                    DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
            end;
    end;

end;

procedure TdlgEtiquetaItem.ppDBText17GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := 'R$ ' + Text;
end;

procedure TdlgEtiquetaItem.ppDBText70GetText(Sender: TObject;
    var Text: string);
begin
    inherited;
    Text := '*' + Text + '*';
end;

procedure TdlgEtiquetaItem.edNumeroSaidaKeyDown(Sender: TObject;
    var Key: Word; Shift: TShiftState);
begin
    inherited;
    sTotalItens := 0;
    if key = 13 then
        begin
            with Q_Itens do
                begin
                    Close;
                    Sql.Text := ' select i.item,i.codigo,S.NUMERO as referencia,i.descricao, ' +
                        ' cast((si.quantidade*cast(SI.FATOR as numeric(15,3))/i.fatorundvenda) as Numeric(15,3)) as estoque, ' +
                        ' f.nome as fabricante from ' +
                        ' Saidas s   inner join SaidasItens si on si.saida = s.saida ' +
                        ' inner join Itens i on i.item = si.item ' +
                        ' left join Favorecidos f on f.favorecido = s.favorecido ' +
                        ' left join Favorecidos v on v.favorecido = s.vendedor ' +
                        ' left join favorecidos m on m.favorecido = s.medico ' +
                        ' left join Favorecidos fn on fn.favorecido = i.ultimofornecedor ' +
                        ' left join Fabricantes fb on fb.fabricante = i.fabricante ' +
                        ' left join Grupos gi on gi.grupo = i.grupo ' +
                        ' left join gruposcomissoes gc on gc.grupocomissao = i.grupocomissao ' +
                        ' left Join TIPOTRIBUTACAOFEDERAL tf on si.IDTRIBFEDERAL = tf.IDTRIBFEDERAL ' +
                        ' where s.NUMERO = ''' + edNumeroSaida.Text + '''';
                    Open;
                    sCliente := FieldByName('fabricante').Asstring;
                    SNumeroNota := FieldByName('referencia').Asstring;
                    while not Eof do
                        begin
                            sTotalItens := sTotalItens + FieldByName('estoque').AsInteger;
                            next;
                        end;
                    btGravar.Enabled := (RecordCount > 0);
                    spImprimirDireto.Enabled := btGravar.Enabled;
                end;
        end;
end;

procedure TdlgEtiquetaItem.ppLabel8Print(Sender: TObject);
begin
    inherited;
    sSequenciaCarga := sSequenciaCarga + 1;
    ppLabel8.Text := inttostr(sSequenciaCarga) + '/' + inttostr(sTotalItens);
end;

procedure TdlgEtiquetaItem.ppLabel18Print(Sender: TObject);
begin
    inherited;
    ppLabel18.Text := sCliente;
end;

procedure TdlgEtiquetaItem.ppLabel19Print(Sender: TObject);
begin
    inherited;
    ppLabel19.Text := SNumeroNota;
end;

procedure TdlgEtiquetaItem.ppDBBarCode7Print(Sender: TObject);
begin
    inherited;
    Text := '*' + Text + '*';
end;

end.

procedure TdlgEtiquetaItem.ppImage3Print(Sender: TObject);
begin
    if FileExists(DMProjeto.ImgPath + 'etiqueta.jpg') then
        ppImage3.Picture.LoadFromFile(DMProjeto.ImgPath + 'etiqueta.jpg')
    else
        ppimage3.Clear;
end;
