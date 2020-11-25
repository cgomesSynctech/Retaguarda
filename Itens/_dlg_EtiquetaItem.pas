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
  ppBarCod;

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
    ppEtiquetas6089: TppReport;
    ppColumnHeaderBand2: TppColumnHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppColumnFooterBand2: TppColumnFooterBand;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppMonetario: TppLabel;
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
    ppEtiquetasRoupas: TppReport;
    pp5RIBON4inchmodel: TppReport;
    ppDetailBand4: TppDetailBand;
    ppShape1: TppShape;
    ppDBText17: TppDBText;
    ppEtiquetas08X04_2Col: TppReport;
    ppColumnHeaderBand4: TppColumnHeaderBand;
    ppDetailBand5: TppDetailBand;
    ppShape2: TppShape;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel9: TppLabel;
    ppColumnFooterBand4: TppColumnFooterBand;
    daDataModule2: TdaDataModule;
    ppEtiquetas08X25_2Col: TppReport;
    ppColumnHeaderBand5: TppColumnHeaderBand;
    ppDetailBand6: TppDetailBand;
    ppShape3: TppShape;
    ppDBText20: TppDBText;
    ppDBText22: TppDBText;
    ppLabel5: TppLabel;
    ppColumnFooterBand5: TppColumnFooterBand;
    daDataModule3: TdaDataModule;
    ppEtiquetas06X03_3Col: TppReport;
    ppColumnHeaderBand6: TppColumnHeaderBand;
    ppDetailBand7: TppDetailBand;
    ppShape4: TppShape;
    ppDBText23: TppDBText;
    ppDBText24: TppDBText;
    ppLabel6: TppLabel;
    ppColumnFooterBand6: TppColumnFooterBand;
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
    ppEtiqueta06X03_1Col: TppReport;
    ppDetailBand8: TppDetailBand;
    ppDBText25: TppDBText;
    ppDBText26: TppDBText;
    ppLabel7: TppLabel;
    ppDBText27: TppDBText;
    ppEtiquetas33X21_3Col: TppReport;
    ppDetailBand9: TppDetailBand;
    ppDBText28: TppDBText;
    ppDBText29: TppDBText;
    ppEtiqueta5ColMatricial: TppReport;
    ppColumnHeaderBand8: TppColumnHeaderBand;
    ppDetailBand10: TppDetailBand;
    ppDBText31: TppDBText;
    ppDBText32: TppDBText;
    ppLabel10: TppLabel;
    ppColumnFooterBand8: TppColumnFooterBand;
    ppDBText33: TppDBText;
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
    ppEtiquetasJoias: TppReport;
    ppDetailBand13: TppDetailBand;
    ppDBText43: TppDBText;
    ppDBText44: TppDBText;
    ppDBText45: TppDBText;
    ppDBText46: TppDBText;
    ppDBText37: TppDBText;
    ppDBBarCode1: TppDBBarCode;
    ppColumnHeaderBand7: TppColumnHeaderBand;
    ppColumnFooterBand7: TppColumnFooterBand;
    pp5ColPrecoGrandeMatricial: TppReport;
    ppColumnHeaderBand11: TppColumnHeaderBand;
    ppDetailBand14: TppDetailBand;
    ppDBText47: TppDBText;
    ppDBText48: TppDBText;
    ppColumnFooterBand11: TppColumnFooterBand;
    ppGondolaMatricial: TppReport;
    ppColumnHeaderBand12: TppColumnHeaderBand;
    ppDetailBand15: TppDetailBand;
    ppDBText49: TppDBText;
    ppDBText50: TppDBText;
    ppLabel13: TppLabel;
    ppColumnFooterBand12: TppColumnFooterBand;
    ppDBText30: TppDBText;
    ppDBText51: TppDBText;
    ppDBText52: TppDBText;
    cbComPreco: TTS_CheckBox;
    ppBolsa2Col: TppReport;
    ppColumnHeaderBand13: TppColumnHeaderBand;
    ppDetailBand16: TppDetailBand;
    ppDBText53: TppDBText;
    ppDBText54: TppDBText;
    ppLabel12: TppLabel;
    ppColumnFooterBand13: TppColumnFooterBand;
    daDataModule4: TdaDataModule;
    ppDBBarCode2: TppDBBarCode;
    ppLabel14: TppLabel;
    ppDBText56: TppDBText;
    ppLine1: TppLine;
    ppDBBarCode3: TppDBBarCode;
    ppDBText55: TppDBText;
    ppGondolasRIBON: TppReport;
    ppDetailBand17: TppDetailBand;
    ppDBText57: TppDBText;
    ppDBText59: TppDBText;
    ppDBText58: TppDBText;
    C_GerarEtiquetas: TClientDataSet;
    P_GerarEtiquetas: TDataSetProvider;
    C_GerarEtiquetasITEM: TIntegerField;
    C_GerarEtiquetasCODIGO: TStringField;
    C_GerarEtiquetasREFERENCIA: TStringField;
    C_GerarEtiquetasDESCRICAO: TStringField;
    C_GerarEtiquetasESTOQUE: TBCDField;
    C_GerarEtiquetasFABRICANTE: TStringField;
    Q_EtiquetasQTDEMBALAGEM: TFloatField;
    ppLabel15: TppLabel;
    ppDBText60: TppDBText;
    ppDBText61: TppDBText;
    ppLabel16: TppLabel;
    ppColumnHeaderBand3: TppColumnHeaderBand;
    ppDetailBand3: TppDetailBand;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppColumnFooterBand3: TppColumnFooterBand;
    raCodeModule1: TraCodeModule;
    ppGondola_Media: TppReport;
    ppDetailBand18: TppDetailBand;
    ppDBText62: TppDBText;
    ppDBText64: TppDBText;
    ppDBText65: TppDBText;
    spImprimirDireto: TTS_SpeedButton;
    ppDBText63: TppDBText;
    ppEtiquetas33X21_3Col_Argox: TppReport;
    ppColumnHeaderBand14: TppColumnHeaderBand;
    ppDetailBand19: TppDetailBand;
    ppDBText66: TppDBText;
    ppDBText67: TppDBText;
    ppDBBarCode4: TppDBBarCode;
    ppColumnFooterBand14: TppColumnFooterBand;
    ppDBText21: TppDBText;
    ppDBText16: TppDBText;
    ppEtiquetasRoupa2Col: TppReport;
    ppColumnHeaderBand15: TppColumnHeaderBand;
    ppDetailBand20: TppDetailBand;
    ppDBText68: TppDBText;
    ppDBText69: TppDBText;
    ppDBText70: TppDBText;
    ppDBText71: TppDBText;
    ppDBText72: TppDBText;
    ppDBText73: TppDBText;
    ppColumnFooterBand15: TppColumnFooterBand;
    ppGondolaHorizontal: TppReport;
    ppDetailBand21: TppDetailBand;
    ppDBText74: TppDBText;
    ppDBText75: TppDBText;
    ppDBBarCode5: TppDBBarCode;
    ppDBText76: TppDBText;
    ppEtiquetasRoupas3Colunas: TppReport;
    ppColumnHeaderBand16: TppColumnHeaderBand;
    ppDetailBand22: TppDetailBand;
    ppDBText77: TppDBText;
    ppDBText78: TppDBText;
    ppDBText79: TppDBText;
    ppDBText80: TppDBText;
    ppDBText81: TppDBText;
    ppDBText82: TppDBText;
    ppColumnFooterBand16: TppColumnFooterBand;
    raCodeModule2: TraCodeModule;
    ppEtiquetasRoupas3ColunasStillo: TppReport;
    ppColumnHeaderBand17: TppColumnHeaderBand;
    ppDetailBand23: TppDetailBand;
    ppDBText83: TppDBText;
    ppDBText84: TppDBText;
    ppDBText85: TppDBText;
    ppDBText86: TppDBText;
    ppDBText88: TppDBText;
    ppColumnFooterBand17: TppColumnFooterBand;
    raCodeModule3: TraCodeModule;
    ppEtiquetasRoupas3ColunasFashion: TppReport;
    ppColumnHeaderBand18: TppColumnHeaderBand;
    ppDetailBand24: TppDetailBand;
    ppDBText89: TppDBText;
    ppDBText90: TppDBText;
    ppDBText91: TppDBText;
    ppColumnFooterBand18: TppColumnFooterBand;
    ppDBText92: TppDBText;
    ppDBText87: TppDBText;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure PopupFiltroItensSelecionou(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure Q_EtiquetasCalcFields(DataSet: TDataSet);
    procedure cbUmaEtiquetaChange(Sender: TObject);
    procedure cbTipoEtiquetaChange(Sender: TObject);
    procedure ppMonetarioPrint(Sender: TObject);
    procedure ppLabel4Print(Sender: TObject);
    procedure ppDBText12GetText(Sender: TObject; var Text: String);
    procedure ppLabel8GetText(Sender: TObject; var Text: String);
    procedure ppDBText21GetText(Sender: TObject; var Text: String);
    procedure ppDBText6GetText(Sender: TObject; var Text: String);
    procedure ppDBText7GetText(Sender: TObject; var Text: String);
    procedure ppLabel9GetText(Sender: TObject; var Text: String);
    procedure ppLabel5GetText(Sender: TObject; var Text: String);
    procedure ppLabel6GetText(Sender: TObject; var Text: String);
    procedure ppDBText27GetText(Sender: TObject; var Text: String);
    procedure ppDBText30GetText(Sender: TObject; var Text: String);
    procedure ppLabel10GetText(Sender: TObject; var Text: String);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure ppDBText40GetText(Sender: TObject; var Text: String);
    procedure ppDBText43GetText(Sender: TObject; var Text: String);
    procedure ppDBText37GetText(Sender: TObject; var Text: String);
    procedure cbComPrecoChange(Sender: TObject);
    procedure ppDBText10GetText(Sender: TObject; var Text: String);
    procedure ppDBText15GetText(Sender: TObject; var Text: String);
    procedure spImprimirDiretoClick(Sender: TObject);
    procedure ppDBText17GetText(Sender: TObject; var Text: String);
    procedure ppDBText70GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    nIndex : double;
    sArq: TStringList;
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
  If FileExists(DMPRojeto.ProgPath+'TipoEtiqueta.txt') Then Begin
   sArq.LoadFromFile(DMPRojeto.ProgPath+'TipoEtiqueta.txt');
   cbTipoEtiqueta.ItemIndex := StrToInt(copy(sArq.Text,1,Pos('|',sArq.Text) -1 ) );
   edtTitulo.Text := Trim(copy(sArq.Text, Pos('|',sArq.Text) + 1, 100));
  End;
  cbLogo.Checked := False;
  cbLogo.Visible := False;
  cbBorda.Checked := False;
  cbBorda.Visible := False;
  lbTitulo.Visible := False;
  EdtTitulo.Visible := False;
  If cbTipoEtiqueta.ItemIndex in [1,4,12] Then
   Begin
    cbBorda.Checked := False;
    cbBorda.Visible  := True;
    If cbTipoEtiqueta.ItemIndex in [1,4] Then
     Begin
      cbLogo.Visible   := True;
      cbLogo.Checked   := False;
     End;
    If cbTipoEtiqueta.ItemIndex in [12] Then
     Begin
      cbBorda.Checked := True;
      lbTitulo.Visible := True;
      EdtTitulo.Visible := True;
     End;
   End;
  C_Indexadores.Close;
  C_Indexadores.Open;
  btLimparClick(Sender);
end;

procedure TdlgEtiquetaItem.PopupFiltroItensSelecionou(Sender: TObject);
begin
  inherited;
  with Q_Itens do Begin
    Close;
    Sql.Text := ' SELECT I.ITEM, I.CODIGO, I.REFERENCIA, I.DESCRICAO, I.estoque, '+
                ' f.descricao AS FABRICANTE FROM ITENS I LEFT JOIN fabricantes F '+
                ' ON F.fabricante = I.fabricante '+
                'where '+PopupFiltroItens.getSQL+' order by i.descricao';
    Open;
    btGravar.Enabled := (RecordCount > 0);
    spImprimirDireto.Enabled := btGravar.Enabled;
  End;
end;

procedure TdlgEtiquetaItem.btGravarClick(Sender: TObject);
Var i,nRec: Integer;
begin
  // Selecionando o valor da cotação escolhida,
  // se não foi escolhida nenhuma o valor é 1 (hum).
  nIndex := 1;
  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
  if cmbIndex.LookupKeyValue <> null then begin
    with Q_SQL do begin
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
  C_GerarEtiquetas.Execute ;
  C_GerarEtiquetas.Close;
  Q_GerarEtiquetas.SQL.Text := ' INSERT INTO ETIQUETASITENS (ITEM, MAQUINA) VALUES (:ITEM, :MAQUINA) ';
  While not Q_Itens.Eof do Begin
    Q_GerarEtiquetas.Prepare;
    For i:= 1 to Q_ItensESTOQUE.AsInteger do Begin
      Q_GerarEtiquetas.Parambyname('ITEM').Value := Q_ItensItem.Value;
      Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
      Q_GerarEtiquetas.Prepare;
      C_GerarEtiquetas.FetchParams;
      C_GerarEtiquetas.Execute ;
    End;
    Q_Itens.Next;
    Barra.Position := Barra.Position + 1;
  End;
  Barra.Visible := False;
  Q_Etiquetas.Close;
  Q_Etiquetas.SQL.Text := 'select i.codigo, i.referencia, i.descricao, f.descricao as fabricante, i.item, '+
                          'case when (i.codigo is null) or (i.codigo = '''') Then i.codigobarras '+
                          'else i.codigo end  as codigobarras ,  '+
                          ' i.localizacao, i.estoque, ' +
                          'i.percentual, i.fatorundvenda, p.preco as precotemp, p.precopromocao, ' +
                          'iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
                          'i.unidade as undvenda, pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
                          'i.indexador,iu.qtdembalagem ' +
                          'from etiquetasitens e ' +
                          'inner join itens i on i.item = e.item ' +
                          'inner join itensunidades iu on iu.item = i.item ' +
                          'left join fabricantes f on f.fabricante = i.fabricante ' +
                          'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade and p.tabelapreco = 0 ' +
                          'left join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade and pr.tabelapreco = 0 ' +
                          'WHERE E.MAQUINA = :MAQUINA '+
                          'Order by ' + Inttostr(rgOrdem.ItemIndex+1);
  Q_Etiquetas.pARAMbYnAME('MAQUINA').AsString := DMProjeto.Maquina;
  Q_Etiquetas.Open;
  If CbComPreco.Checked Then Begin
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
  End Else Begin
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
  End;

  Case cbTipoEtiqueta.ItemIndex Of
   0: zrEtiquetaItem.Preview; // '1 - PIMACO, 2 Col. Continuo';
   1: Begin // 2 - PIMACO, 6282 CARTA (GONDOLAS);
       ppImage1.Picture.LoadFromFile(DMProjeto.ImgPath+DMProjeto.sLogotipoEmpresa);
       ppImage1.Visible := False;
       ppBorda.Visible := False;
       If cbLogo.Checked Then
         ppImage1.Visible := True;
       If cbBorda.Checked Then
         ppBorda.Visible := True;
       ppEtiquetas6282.Print;
      End;
   2: Begin // 3 - PIMACO, 6089 4 COLUNAS
       ppEtiquetas6089.Print;
      End;
   3: Begin // 4 - Etiquetas Roupas;
       ppEtiquetasRoupas.Print;
      End;
   4: Begin // 5 - RIBON (4 inch model);
       ppShape1.Visible := False;
       If cbBorda.Checked Then
         ppShape1.Visible := True;
       pp5RIBON4inchmodel.Print;
      End;
   5: Begin
       ppShape1.Visible := False;
        If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas08X04_2Col.Print;
      End;
   6: Begin
       ppShape1.Visible := False;
        If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas08X25_2Col.Print;
      End;
   7: Begin
       ppShape1.Visible := False;
        If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas06X03_3Col.Print;
      End;
   8: Begin
       ppShape1.Visible := False;
       If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiqueta06X03_1Col.Print;
      End;
   9: Begin
       ppShape1.Visible := False;
       If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas33X21_3Col.Print;
      End;
   10: Begin
       ppEtiqueta5ColMatricial.Print;
      End;
   11: Begin
       ppEtiqueta2ColMatricial.Print;
      End;
   12: Begin
       ppShape5.Visible := False;
        If cbBorda.Checked Then
         ppShape5.Visible := True;
       ppEtiquetas6X4_A4.Print;
      End;
   13: Begin
        ppEtiquetasJoias.Print;
       End;
   14: Begin
        pp5ColPrecoGrandeMatricial.Print;
       end;
   15: Begin
        ppGondolaMatricial.Print;
       end;
   16: Begin
        ppBolsa2Col.Print;
       End;
   17: Begin
        ppGondolasRIBON.Print;
       End;
   18: Begin
        ppGondola_Media.Print;
       End;
   19: Begin
       ppShape1.Visible := False;
       If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas33X21_3Col_Argox.Print;
      End;
   20: Begin // Etiquetas Roupas 2 Col
       ppEtiquetasRoupa2Col.Print;
      End;
   21: Begin // Etiquetas Roupas 2 Col
       ppGondolaHorizontal.Print;
      End;
   22: Begin // Etiquetas Roupas 3 Col
       ppEtiquetasRoupas3Colunas.Print;
      End;
   23: Begin // Etiquetas Roupas 3 Col Stillo
       ppEtiquetasRoupas3ColunasStillo.Print;
      End;
   24: Begin // Etiquetas Roupas 3 Col Fashion
       ppEtiquetasRoupas3ColunasFashion.Print;
      End;
      

  End;
  Q_Itens.EnableControls;
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

 except
  on E: Exception do begin
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    end;
  end;


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
  C_GerarEtiquetas.Execute ;
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
  on E: Exception do begin
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    end;
  end;



end;

procedure TdlgEtiquetaItem.Q_EtiquetasCalcFields(DataSet: TDataSet);
var nPreco, nFatorVenda : currency;
begin
  inherited;
  Q_EtiquetasEmpresa.AsString := DMProjeto.sNomeEmpresa;
  // Calculando o preço....
  nFatorVenda := IIF(DataSet.FieldByName('FatorUndVenda').asFloat > 0, DataSet.FieldByName('FatorUndVenda').asFloat, 1);

  if DataSet.FieldByName('PrecoManUnd').AsCurrency > 0 then begin
    nPreco := DataSet.FieldByName('PrecoManUnd').AsCurrency;
  end
  else if DataSet.FieldByName('PrecoPromocao').asCurrency > 0 then begin
   nPreco := DataSet.FieldByName('PrecoPromocao').asCurrency;
  end
  else begin
    if DataSet.FieldByName('Percentual').asCurrency = 0 then begin
        nPreco := DataSet.FieldByName('PrecoTemp').asCurrency;
        if DataSet.FieldByName('Unidade').AsString <> DataSet.FieldByName('UndVenda').AsString then
          nPreco := (DataSet.FieldByName('PrecoNormal').AsCurrency / nFatorVenda ) * DataSet.FieldByName('FatorItemUnd').AsCurrency;
    end
    else
        nPreco := DataSet.FieldByName('Percentual').asCurrency;
  end;
  DataSet.FieldByName('PRECO').AsCurrency := RoundTo( nPreco, -2 );
  // Modificando a cotação para o indexador selecionado...
  if DataSet.FieldByName('Indexador').AsVariant <> null then begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'select valor from cotacoes ' +
                'where data = (select max(data) from cotacoes where indexador = :i) ' +
                'and indexador = :i ';
    Q_SQL.ParamByName('i').AsInteger := DataSet.FieldByName('Indexador').AsInteger;
    Q_SQL.Open;
    if (Q_SQL.RecordCount > 0) and (Q_SQL.Fields[0].AsFloat > 0) then begin
      DataSet.FieldByName('PRECO').AsCurrency  := RoundTo( (DataSet.FieldByName('PRECO').AsCurrency  / Q_SQL.Fields[0].AsFloat) * nIndex, -2 );
    end;
    Q_SQL.Close;
  end;
  //
end;

procedure TdlgEtiquetaItem.cbUmaEtiquetaChange(Sender: TObject);
begin
  inherited;
  If cbUmaEtiqueta.Checked Then
   Begin
    Q_Itens.First;
    Q_Itens.DisableControls;
    While not Q_Itens.Eof do Begin
      Q_Itens.Edit;
      Q_ItensESTOQUE.Value := 1;
      Q_Itens.Next;
    End;
    Q_Itens.EnableControls;
   End
  Else
   Begin
    with Q_Itens do Begin
      Close;
      Sql.Text := ' SELECT I.ITEM, I.CODIGO, I.REFERENCIA, I.DESCRICAO, I.estoque, '+
                  ' f.descricao AS FABRICANTE FROM ITENS I LEFT JOIN fabricantes F '+
                  ' ON F.fabricante = I.fabricante '+
                  'where '+PopupFiltroItens.getSQL+' order by i.descricao';
      Open;
    End;
   End;
   Q_Itens.First;
end;

procedure TdlgEtiquetaItem.cbTipoEtiquetaChange(Sender: TObject);
begin
  inherited;
  cbLogo.Checked := False;
  cbLogo.Visible := False;
  cbBorda.Checked := False;
  cbBorda.Visible := False;
  If cbTipoEtiqueta.ItemIndex in [1,4,12] Then
   Begin
    cbBorda.Checked := False;
    cbBorda.Visible  := True;
    If cbTipoEtiqueta.ItemIndex in [1,4] Then
     Begin
      cbLogo.Visible   := True;
      cbLogo.Checked   := False;
     End;
   End;
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
  var Text: String);
begin
  inherited;
// 4 - Etiquetas Roupas;
  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppLabel8GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppDBText21GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
//  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppDBText6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
// 2 - PIMACO, 6282 CARTA (GONDOLAS);
  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppDBText7GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
// Etiqueta para 3 - PIMACO, 6089 4 COLUNAS
  Text := '*'+Text+'*';

end;

procedure TdlgEtiquetaItem.ppLabel9GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppLabel5GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppLabel6GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.ppDBText27GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppDBText30GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppLabel10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
     Text := CurrencyString;
end;

procedure TdlgEtiquetaItem.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  sArq.Clear;
  sArq.Add(IntToStr(cbTipoEtiqueta.ItemIndex)+'|'+edtTitulo.Text);
  sArq.SaveTofile(DMPRojeto.ProgPath+'TipoEtiqueta.txt');
  sArq.Free;
end;

procedure TdlgEtiquetaItem.ppDBText40GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := edtTitulo.Text;
end;

procedure TdlgEtiquetaItem.ppDBText43GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppDBText37GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.cbComPrecoChange(Sender: TObject);
begin
  inherited;
  If CbComPreco.Checked Then Begin
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

  End Else Begin
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
  End;

end;

procedure TdlgEtiquetaItem.ppDBText10GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.ppDBText15GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := '*'+Text+'*';
end;

procedure TdlgEtiquetaItem.spImprimirDiretoClick(Sender: TObject);
var i: integer;
begin
  inherited;
  // Selecionando o valor da cotação escolhida,
  // se não foi escolhida nenhuma o valor é 1 (hum).
  nIndex := 1;
  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
  if cmbIndex.LookupKeyValue <> null then begin
    with Q_SQL do begin
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
  C_GerarEtiquetas.Execute ;
  C_GerarEtiquetas.Close;
  Q_GerarEtiquetas.SQL.Text := ' INSERT INTO ETIQUETASITENS (ITEM, MAQUINA) VALUES (:ITEM, :MAQUINA) ';
  While not Q_Itens.Eof do Begin
    Q_GerarEtiquetas.Prepare;
    For i:= 1 to Q_ItensESTOQUE.AsInteger do Begin
      Q_GerarEtiquetas.Parambyname('ITEM').Value := Q_ItensItem.Value;
      Q_GerarEtiquetas.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
      Q_GerarEtiquetas.Prepare;
      C_GerarEtiquetas.FetchParams;
      C_GerarEtiquetas.Execute ;
    End;
    Q_Itens.Next;
    Barra.Position := Barra.Position + 1;
  End;
  Barra.Visible := False;
  Q_Etiquetas.Close;
  Q_Etiquetas.SQL.Text := 'select i.codigo, i.referencia, i.descricao, f.descricao as fabricante, i.item, '+
                          'case when (i.codigo is null) or (i.codigo = '''') Then i.codigobarras '+
                          'else i.codigo end  as codigobarras ,  '+
                          ' i.localizacao, i.estoque, ' +
                          'i.percentual, i.fatorundvenda, p.preco as precotemp, p.precopromocao, ' +
                          'iu.percentual as percund, iu.precomanual as precomanund, iu.unidade, ' +
                          'i.unidade as undvenda, pr.preco as preconormal, iu.fator as FatorItemUnd, ' +
                          'i.indexador,iu.qtdembalagem ' +
                          'from etiquetasitens e ' +
                          'inner join itens i on i.item = e.item ' +
                          'inner join itensunidades iu on iu.item = i.item ' +
                          'left join fabricantes f on f.fabricante = i.fabricante ' +
                          'left join produtospreco p on p.Item = i.Item and p.Unidade = iu.Unidade and p.tabelapreco = 0 ' +
                          'left join produtospreco pr on pr.item = i.item and pr.unidade = i.unidade and pr.tabelapreco = 0 ' +
                          'WHERE E.MAQUINA = :MAQUINA '+
                          'Order by ' + Inttostr(rgOrdem.ItemIndex+1);
  Q_Etiquetas.pARAMbYnAME('MAQUINA').AsString := DMProjeto.Maquina;
  Q_Etiquetas.Open;
  If CbComPreco.Checked Then Begin
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
  End Else Begin
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
  End;

  Case cbTipoEtiqueta.ItemIndex Of
   0: zrEtiquetaItem.Preview; // '1 - PIMACO, 2 Col. Continuo';
   1: Begin // 2 - PIMACO, 6282 CARTA (GONDOLAS);
       ppImage1.Picture.LoadFromFile(DMProjeto.ImgPath+DMProjeto.sLogotipoEmpresa);
       ppImage1.Visible := False;
       ppBorda.Visible := False;
       If cbLogo.Checked Then
         ppImage1.Visible := True;
       If cbBorda.Checked Then
         ppBorda.Visible := True;
       ppEtiquetas6282.DeviceType := 'Printer';
       ppEtiquetas6282.Print;
      End;
   2: Begin // 3 - PIMACO, 6089 4 COLUNAS
       ppEtiquetas6089.DeviceType := 'Printer';
       ppEtiquetas6089.Print;
      End;
   3: Begin // 4 - Etiquetas Roupas;
       ppEtiquetasRoupas.DeviceType := 'Printer';
       ppEtiquetasRoupas.Print;
      End;
   4: Begin // 5 - RIBON (4 inch model);
       ppShape1.Visible := False;
       If cbBorda.Checked Then
         ppShape1.Visible := True;
       pp5RIBON4inchmodel.DeviceType := 'Printer';
       pp5RIBON4inchmodel.Print;
      End;
   5: Begin
       ppShape1.Visible := False;
        If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas08X04_2Col.DeviceType := 'Printer';
       ppEtiquetas08X04_2Col.Print;
      End;
   6: Begin
       ppShape1.Visible := False;
        If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas08X25_2Col.DeviceType := 'Printer';
       ppEtiquetas08X25_2Col.Print;
      End;
   7: Begin
       ppShape1.Visible := False;
        If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas06X03_3Col.DeviceType := 'Printer';
       ppEtiquetas06X03_3Col.Print;
      End;
   8: Begin
       ppShape1.Visible := False;
       If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiqueta06X03_1Col.DeviceType := 'Printer';
       ppEtiqueta06X03_1Col.Print;
      End;
   9: Begin
       ppShape1.Visible := False;
       If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas33X21_3Col.DeviceType := 'Printer';
       ppEtiquetas33X21_3Col.Print;
      End;
   10: Begin
       ppEtiqueta5ColMatricial.DeviceType := 'Printer';
       ppEtiqueta5ColMatricial.Print;
      End;
   11: Begin
       ppEtiqueta2COlMatricial.DeviceType := 'Printer';
       ppEtiqueta2ColMatricial.Print;
      End;
   12: Begin
       ppShape5.Visible := False;
        If cbBorda.Checked Then
         ppShape5.Visible := True;
       ppEtiquetas6X4_A4.DeviceType := 'Printer';
       ppEtiquetas6X4_A4.Print;
      End;
   13: Begin
        ppEtiquetasJoias.DeviceType := 'Printer';
        ppEtiquetasJoias.Print;
       End;
   14: Begin
        pp5ColPrecoGrandeMatricial.DeviceType := 'Printer';
        pp5ColPrecoGrandeMatricial.Print;
       end;
   15: Begin
        ppGondolaMatricial.DeviceType := 'Printer';
        ppGondolaMatricial.Print;
       end;
   16: Begin
        ppBolsa2Col.DeviceType := 'Printer';
        ppBolsa2Col.Print;
       End;
   17: Begin
        ppGondolasRIBON.DeviceType := 'Printer';
        ppGondolasRIBON.Print;
       End;
   18: Begin
        ppGondola_Media.DeviceType := 'Printer';
        ppGondola_Media.Print;
       End;
   19: Begin
       ppEtiquetas33X21_3Col_Argox.DeviceType := 'Printer';
       ppShape1.Visible := False;
       If cbBorda.Checked Then
         ppShape1.Visible := True;
       ppEtiquetas33X21_3Col_Argox.Print;
      End;
   20: Begin // Etiquetas Roupas 2 Col
       ppEtiquetasRoupa2Col.DeviceType := 'Printer';
       ppEtiquetasRoupa2Col.Print;
      End;
   21: Begin // Etiquetas Roupas 2 Col
       ppGondolaHorizontal.Print;
      End;
   22: Begin // Etiquetas Roupas 3 Col
       ppEtiquetasRoupas3Colunas.DeviceType := 'Printer';
       ppEtiquetasRoupas3Colunas.Print;
      End;
   23: Begin // Etiquetas Roupas 3 Col Stillo
       ppEtiquetasRoupas3ColunasStillo.DeviceType := 'Printer';
       ppEtiquetasRoupas3ColunasStillo.Print;
      End;
   24: Begin // Etiquetas Roupas 3 Col Fashion
       ppEtiquetasRoupas3ColunasFashion.DeviceType := 'Printer';
       ppEtiquetasRoupas3ColunasFashion.Print;
      End;
  End;
  Q_Itens.EnableControls;
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

 except
  on E: Exception do begin
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
     DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    end;
  end;



end;

procedure TdlgEtiquetaItem.ppDBText17GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := 'R$ '+ Text;
end;

procedure TdlgEtiquetaItem.ppDBText70GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
    Text := '*'+Text+'*';
end;

end.
