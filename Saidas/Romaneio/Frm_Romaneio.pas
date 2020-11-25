unit Frm_Romaneio;

interface
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_PADRAO, dxExEdtr, dxCntner, dxEditor, dxDBEdtr, dxDBELib,
  TS_DBLookupComboBox, Placemnt, BTOdeum, FormComponent, ImgList, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, dxfProgressBar, dxTLClms, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxEdLib, TS_DBEditNumber, TS_DBEditDate,
  TS_DBEdit, dxDBTLCl, dxGrClms, TS_ButtonEdit, DB, IBCustomDataSet,
  IBQuery, ppCtrls, ppBands, ppClass, ppPrnabl, ppStrtch, ppRegion, ppDB,
  ppDBPipe, ppCache, ppComm, ppRelatv, ppProd, ppReport, DBClient,
  Provider, TS_CheckBox, TS_DBCurrencyEdit, ZRCtrls, ZReport, ppVar;

type
  TFrmRomaneio = class(TFrmPadrao)
    TS_DBLFuncionarios: TTS_DBLookupComboBox;
    TS_Label3: TTS_Label;
    TS_Label2: TTS_Label;
    TS_DBEObs: TTS_DBEdit;
    edData: TTS_DBEditDate;
    TS_Label1: TTS_Label;
    lblFicha: TTS_Label;
    dfFicha: TTS_DBEdit;
    TS_DBLVeiculos: TTS_DBLookupComboBox;
    TS_Label4: TTS_Label;
    dfCapacidade: TTS_DBEditNumber;
    TS_Label5: TTS_Label;
    TS_Panel1: TTS_Panel;
    GridROMANEIO: TdxDBGridMaskColumn;
    GridDATA: TdxDBGridDateColumn;
    GridOBSERVACAO: TdxDBGridMaskColumn;
    GridTOTALPESO: TdxDBGridCurrencyColumn;
    GridcmbUsuario: TdxDBGridLookupColumn;
    GridcmbVeiculos: TdxDBGridLookupColumn;
    TS_Label6: TTS_Label;
    dfSaida: TTS_ButtonEdit;
    Q_Aux: TIBQuery;
    dbgItens: TTS_QDBGrid;
    dbgItensROMANEIOSAIDA: TdxDBGridMaskColumn;
    dbgItensROMANEIO: TdxDBGridMaskColumn;
    dbgItensSAIDA: TdxDBGridMaskColumn;
    dbgItensNUMERO: TdxDBGridMaskColumn;
    dbgItensDATA: TdxDBGridDateColumn;
    dbgItensNOME: TdxDBGridMaskColumn;
    Q_Separacao: TIBQuery;
    Q_SeparacaoDs: TDataSource;
    ckbVisto: TTS_CheckBox;
    ppManifesto: TppReport;
    Q_Manifesto: TIBQuery;
    P_Manifesto: TDataSetProvider;
    C_Manifesto: TClientDataSet;
    C_ManifestoDS: TDataSource;
    ppHeaderBand2: TppHeaderBand;
    ppDetailBand2: TppDetailBand;
    ppFooterBand2: TppFooterBand;
    C_ManifestoROMANEIO: TIntegerField;
    C_ManifestoDATA: TDateField;
    C_ManifestoNOMEFUNC: TStringField;
    C_ManifestoDESCVEICULO: TStringField;
    C_ManifestoNUMERO: TStringField;
    C_ManifestoNOME: TStringField;
    C_ManifestoENDERECO: TStringField;
    C_ManifestoBAIRRO: TStringField;
    C_ManifestoCIDADE: TStringField;
    C_ManifestoUF: TStringField;
    C_ManifestoDESCZONA: TStringField;
    C_ManifestoPLANOPAG: TStringField;
    C_ManifestoicTotal: TCurrencyField;
    ppDBManifesto: TppDBPipeline;
    ppRegion1: TppRegion;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppDBText10: TppDBText;
    ppLabel13: TppLabel;
    ppLabel14: TppLabel;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppGroup2: TppGroup;
    ppGroupHeaderBand2: TppGroupHeaderBand;
    ppGroupFooterBand2: TppGroupFooterBand;
    ppGroup3: TppGroup;
    ppGroupHeaderBand3: TppGroupHeaderBand;
    ppGroupFooterBand3: TppGroupFooterBand;
    ppGroup4: TppGroup;
    ppGroupHeaderBand4: TppGroupHeaderBand;
    ppGroupFooterBand4: TppGroupFooterBand;
    ppLabel15: TppLabel;
    ppDBText13: TppDBText;
    ppLabel16: TppLabel;
    ppDBText14: TppDBText;
    ppLabel17: TppLabel;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    C_ManifestoDATASAIDA: TDateField;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppDBText20: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    ppDBText23: TppDBText;
    ppLine5: TppLine;
    ppLine2: TppLine;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLabel20: TppLabel;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLine3: TppLine;
    ppmGridRomaneio: TTS_PopupMenu;
    TS_Label7: TTS_Label;
    edPerc: TTS_DBCurrencyEdit;
    dbgItensENTREGUE: TdxDBGridCheckColumn;
    C_ManifestoVENDEDOR: TStringField;
    ppLabel25: TppLabel;
    ppLabel26: TppLabel;
    ppLabel27: TppLabel;
    ppDBText24: TppDBText;
    ppLine4: TppLine;
    ppLabel28: TppLabel;
    ppLabel29: TppLabel;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    zManifesto: TZReport;
    zManifestoDetail: TZRBand;
    zManifestoPageHeader: TZRBand;
    zrNomeEmpresa: TZRLabel;
    zrEndereco: TZRLabel;
    zrCidade: TZRLabel;
    zrFone1: TZRLabel;
    zrLinha1: TZRLabel;
    zrLinha2: TZRLabel;
    zrLinha3: TZRLabel;
    zrLinha4: TZRLabel;
    zManifestoGroupZona: TZRGroup;
    zrvROMANEIO: TZRField;
    zrvDATA: TZRField;
    zrvNOMEFUNC: TZRField;
    zrvDESCVEICULO: TZRField;
    zrvNUMERO: TZRField;
    zrvNOME: TZRField;
    zrvENDERECO: TZRField;
    zrvBAIRRO: TZRField;
    zrvCIDADE: TZRField;
    zrvUF: TZRField;
    zrvDESCZONA: TZRField;
    zrvPLANOPAG: TZRField;
    zrvPESOBRUTO: TZRField;
    zrvPESOLIQUIDO: TZRField;
    zrvTOTAL: TZRField;
    zrvDATASAIDA: TZRField;
    zrvicTotal: TZRField;
    zrvVENDEDOR: TZRField;
    zManifestoGroupZonaHeader: TZRBand;
    zManifestoGroupCidade: TZRGroup;
    zManifestoGroupBairro: TZRGroup;
    zManifestoGroupCidadeHeader: TZRBand;
    zManifestoGroupBairroHeader: TZRBand;
    zManifestoColumnHeader: TZRBand;
    ZRLabel1: TZRLabel;
    ZRLabel2: TZRLabel;
    ZRLabel3: TZRLabel;
    ZRLabel4: TZRLabel;
    ZRLabel5: TZRLabel;
    ZRLabel6: TZRLabel;
    ZRLabel7: TZRLabel;
    ZRLabel8: TZRLabel;
    ZRLabel9: TZRLabel;
    C_ManifestoVOLUMES: TStringField;
    zrvVOLUMES: TZRField;
    ZRLabel10: TZRLabel;
    ZRLabel11: TZRLabel;
    ZRLabel12: TZRLabel;
    ZRLabel13: TZRLabel;
    ZRLabel14: TZRLabel;
    ZRLabel15: TZRLabel;
    ZRLabel16: TZRLabel;
    ZRLabel17: TZRLabel;
    ZRLabel18: TZRLabel;
    ZRLabel19: TZRLabel;
    ZRLabel20: TZRLabel;
    ZRLabel21: TZRLabel;
    ZRLabel22: TZRLabel;
    ZRLabel23: TZRLabel;
    ZRLabel24: TZRLabel;
    ZRLabel25: TZRLabel;
    zManifestoGroupBairroFooter: TZRBand;
    ZRLabel27: TZRLabel;
    ZRLabel28: TZRLabel;
    ZRLabel29: TZRLabel;
    ZRLabel30: TZRLabel;
    ZRLabel31: TZRLabel;
    ZRLabel32: TZRLabel;
    ZRLabel33: TZRLabel;
    ZRLabel34: TZRLabel;
    ZRLabel35: TZRLabel;
    ZVisto: TZReport;
    ZRField1: TZRField;
    ZRField2: TZRField;
    ZRField3: TZRField;
    ZRField4: TZRField;
    ZRField5: TZRField;
    ZRField6: TZRField;
    ZRField7: TZRField;
    ZRField8: TZRField;
    ZRField9: TZRField;
    ZRField10: TZRField;
    ZRField11: TZRField;
    ZRField12: TZRField;
    ZRField13: TZRField;
    ZRField14: TZRField;
    ZRField15: TZRField;
    ZRField16: TZRField;
    ZRField17: TZRField;
    ZRField18: TZRField;
    ZRField19: TZRField;
    ZRGroup1: TZRGroup;
    ZRGroup2: TZRGroup;
    ZRGroup3: TZRGroup;
    ZRBand1: TZRBand;
    zrNomeEmpresa2: TZRLabel;
    zrEndereco2: TZRLabel;
    zrCidade2: TZRLabel;
    zrFone12: TZRLabel;
    zrLinha12: TZRLabel;
    zrLinha22: TZRLabel;
    zrLinha32: TZRLabel;
    zrLinha42: TZRLabel;
    ZRLabel43: TZRLabel;
    ZRLabel44: TZRLabel;
    ZRLabel45: TZRLabel;
    ZRLabel46: TZRLabel;
    ZRLabel47: TZRLabel;
    ZRLabel48: TZRLabel;
    ZRLabel49: TZRLabel;
    ZRLabel50: TZRLabel;
    ZRLabel51: TZRLabel;
    ZRBand2: TZRBand;
    ZRLabel52: TZRLabel;
    ZRLabel53: TZRLabel;
    ZRLabel54: TZRLabel;
    ZRLabel55: TZRLabel;
    ZRLabel58: TZRLabel;
    ZRLabel59: TZRLabel;
    ZRLabel60: TZRLabel;
    ZRBand3: TZRBand;
    ZRLabel61: TZRLabel;
    ZRLabel62: TZRLabel;
    ZRBand4: TZRBand;
    ZRLabel63: TZRLabel;
    ZRLabel64: TZRLabel;
    ZRBand5: TZRBand;
    ZRLabel65: TZRLabel;
    ZRLabel66: TZRLabel;
    ZRBand6: TZRBand;
    ZRLabel67: TZRLabel;
    ZRLabel68: TZRLabel;
    ZRLabel69: TZRLabel;
    ZRLabel70: TZRLabel;
    ZRBand7: TZRBand;
    ZRLabel56: TZRLabel;
    ZRLabel57: TZRLabel;
    ZRLabel71: TZRLabel;
    ZVistoHeader: TZRBand;
    zrNomeEmpresa3: TZRLabel;
    zrEndereco3: TZRLabel;
    zrCidade3: TZRLabel;
    zrFone13: TZRLabel;
    zrLinha43: TZRLabel;
    zrLinha33: TZRLabel;
    zrLinha23: TZRLabel;
    zrLinha13: TZRLabel;
    ZRLabel72: TZRLabel;
    ZRLabel73: TZRLabel;
    ZRLabel74: TZRLabel;
    ZRLabel75: TZRLabel;
    ZRLabel76: TZRLabel;
    ZRLabel77: TZRLabel;
    ZRLabel78: TZRLabel;
    ZRLabel79: TZRLabel;
    ZRLabel80: TZRLabel;
    zManifestoHeader: TZRBand;
    zrNomeEmpresa4: TZRLabel;
    zrEndereco4: TZRLabel;
    zrCidade4: TZRLabel;
    zrFone14: TZRLabel;
    zrLinha14: TZRLabel;
    zrLinha24: TZRLabel;
    zrLinha34: TZRLabel;
    zrLinha44: TZRLabel;
    ZRLabel81: TZRLabel;
    ZRLabel82: TZRLabel;
    ZRLabel83: TZRLabel;
    ZRLabel84: TZRLabel;
    ZRLabel85: TZRLabel;
    ZRLabel86: TZRLabel;
    ZRLabel87: TZRLabel;
    ZRLabel88: TZRLabel;
    ZRLabel89: TZRLabel;
    Q_SeparacaoROMANEIO: TIntegerField;
    Q_SeparacaoDATA: TDateField;
    Q_SeparacaoVEICULO: TIBStringField;
    Q_SeparacaoLOCALIZACAO: TIBStringField;
    Q_SeparacaoDESCRICAOGRUPO: TIBStringField;
    Q_SeparacaoITEM: TIBStringField;
    Q_SeparacaoFATOR: TFloatField;
    Q_SeparacaoUNIDADE: TIBStringField;
    Q_SeparacaoCODIGO: TIBStringField;
    Q_SeparacaoNOME: TIBStringField;
    ckbSeparacao: TTS_CheckBox;
    ZSeparacao: TZReport;
    ZSeparacaoGroup: TZRGroup;
    ZSeparacaoGroup0: TZRGroup;
    zrvDATA0: TZRField;
    zrvVEICULO: TZRField;
    zrvNOME0: TZRField;
    zrvLOCALIZACAO: TZRField;
    zrvROMANEIO0: TZRField;
    zrvDESCRICAOGRUPO: TZRField;
    zrvITEM: TZRField;
    zrvFATOR: TZRField;
    zrvUNIDADE: TZRField;
    zrvCODIGO: TZRField;
    zrvQTDITEM: TZRField;
    ZSeparacaoDetail: TZRBand;
    ZSeparacaoGroupHeader: TZRBand;
    ZSeparacaoGroup0Header: TZRBand;
    ZRLabel26: TZRLabel;
    ZRLabel36: TZRLabel;
    ZRLabel37: TZRLabel;
    ZRLabel38: TZRLabel;
    ZRLabel39: TZRLabel;
    ZRDescricaoItens: TZRLabel;
    ZRLabelDescricaoFator: TZRLabel;
    ZRLabel42: TZRLabel;
    ZRLabel90: TZRLabel;
    ZRLabel91: TZRLabel;
    ZRLabel92: TZRLabel;
    ZRLabel_Fator: TZRLabel;
    ZRLabel94: TZRLabel;
    ZRLabel95: TZRLabel;
    ZSeparacaoPageHeader: TZRBand;
    zrNomeEmpresa223: TZRLabel;
    zrEndereco223: TZRLabel;
    zrCidade223: TZRLabel;
    zrFone1223: TZRLabel;
    ZRLabel109: TZRLabel;
    ZRLabel110: TZRLabel;
    ZRLabel111: TZRLabel;
    ZRLabel112: TZRLabel;
    ZRLabel113: TZRLabel;
    ZRLabel114: TZRLabel;
    ZRLabel115: TZRLabel;
    ZRLabel116: TZRLabel;
    zrLinha4223: TZRLabel;
    zrLinha3223: TZRLabel;
    zrLinha2223: TZRLabel;
    zrLinha1223: TZRLabel;
    ZRLabel121: TZRLabel;
    ZSeparacaoGroup0Footer: TZRBand;
    zrvTotalQTDITEM: TZRAggregator;
    zrvTotalITEM: TZRAggregator;
    ZRTotalLabel1: TZRTotalLabel;
    ZRTotalLabel2: TZRTotalLabel;
    ZRLabel96: TZRLabel;
    ZRLabel97: TZRLabel;
    ZRLabel98: TZRLabel;
    ZSeparacaoGroupFooter: TZRBand;
    ZRTotalLabel3: TZRTotalLabel;
    ZRLabel99: TZRLabel;
    ZRLabel100: TZRLabel;
    ZRLabel101: TZRLabel;
    ZRTotalLabel4: TZRTotalLabel;
    ckbManifesto: TTS_CheckBox;
    ZRLabel102: TZRLabel;
    ZSeparacaoFooter: TZRBand;
    ZRLabel103: TZRLabel;
    ZRTotalLabel5: TZRTotalLabel;
    ZRLabel104: TZRLabel;
    ZRTotalLabel6: TZRTotalLabel;
    Q_SeparacaoDESCRICAO: TIBStringField;
    zrvDESCRICAO: TZRField;
    ZRAlmox: TZRLabel;
    ZRLabel_Almox: TZRLabel;
    Q_SeparacaoQTDEMBALAGEM: TFloatField;
    Q_SeparacaoREFERENCIA: TIBStringField;
    zrvReferencia: TZRField;
    zrvQTDEMBALAGEM: TZRField;
    ZRLabel_Referencia: TZRLabel;
    ZRLabel_embalagem: TZRLabel;
    ZRReferencia: TZRLabel;
    ZREmbalagem: TZRLabel;
    ZRLabel40: TZRLabel;
    ZRLabel41: TZRLabel;
    ZRLabel93: TZRLabel;
    ZRLabel105: TZRLabel;
    ZRLabel106: TZRLabel;
    ZRLabel107: TZRLabel;
    ZRLabel108: TZRLabel;
    CBEntrega: TTS_CheckBox;
    cb40Colunas: TTS_CheckBox;
    TS_Panel2: TTS_Panel;
    TS_Panel3: TTS_Panel;
    ppDBSeparacao: TppDBPipeline;
    ppSeparacao: TppReport;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppTitleBand1: TppTitleBand;
    ppGroup1: TppGroup;
    ppGroupHeaderBand1: TppGroupHeaderBand;
    ppGroupFooterBand1: TppGroupFooterBand;
    ppGroup5: TppGroup;
    ppGroupHeaderBand5: TppGroupHeaderBand;
    ppGroupFooterBand5: TppGroupFooterBand;
    ppLabel1: TppLabel;
    ppDBText1: TppDBText;
    ppLabel2: TppLabel;
    ppDBText2: TppDBText;
    ppLine1: TppLine;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppLabel9: TppLabel;
    ppRegion2: TppRegion;
    ppLabel30: TppLabel;
    ppDBText25: TppDBText;
    ppLabel32: TppLabel;
    ppDBText26: TppDBText;
    ppLabel33: TppLabel;
    ppLabel34: TppLabel;
    ppDBText27: TppDBText;
    ppDBText28: TppDBText;
    ppLabel35: TppLabel;
    ppLabel36: TppLabel;
    ppDBText29: TppDBText;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppSystemVariable1: TppSystemVariable;
    ppDBCalc2: TppDBCalc;
    ppDBCalc3: TppDBCalc;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDBCalc8: TppDBCalc;
    ppDBCalc9: TppDBCalc;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppDBCalc10: TppDBCalc;
    ppDBCalc11: TppDBCalc;
    ppDBCalc12: TppDBCalc;
    ppDBCalc13: TppDBCalc;
    ppLine13: TppLine;
    ppLabel31: TppLabel;
    ppLabel37: TppLabel;
    ppLabel38: TppLabel;
    C_ManifestoNRO: TStringField;
    C_ManifestoPESOBRUTO: TFloatField;
    C_ManifestoPESOLIQUIDO: TFloatField;
    C_ManifestoTOTAL: TFloatField;
    Q_SeparacaoQTDITEM: TFloatField;
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure TS_DBLVeiculosChange(Sender: TObject);
    procedure btPesquisarClick(Sender: TObject);
    procedure dfSaidaKeyPress(Sender: TObject; var Key: Char);
    procedure dfSaidaButtonClick(Sender: TObject; AbsoluteIndex: Integer);
    procedure btComando1Click(Sender: TObject);
    procedure C_ManifestoCalcFields(DataSet: TDataSet);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentGravou(Sender: TObject);
    procedure zrLabelBeforePrint(Sender: TObject;
      var DoPrint: Boolean);
    procedure ZSeparacaoBeforePrint(Sender: TObject; var DoPrint: Boolean);
    procedure ppDBText19GetText(Sender: TObject; var Text: String);
  private
    { Private declarations }
    procedure IncluirRomaneioSaidas;
    procedure GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4 : TZRLabel);
    procedure ImprimirRomaneio;
  public
    { Public declarations }
  end;

var
  FrmRomaneio: TFrmRomaneio;

implementation

uses DM_Projeto, DM_Romaneio, Form_RichEdit, funcoes;

{$R *.dfm}

procedure TFrmRomaneio.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  dfFicha.PasswordChar := #32;
  dfCapacidade.PasswordChar := #32;
  btComando1.Visible := False;
end;

procedure TFrmRomaneio.TS_DBLVeiculosChange(Sender: TObject);
begin
  inherited;
  dfCapacidade.PasswordChar := #0;
end;

procedure TFrmRomaneio.btPesquisarClick(Sender: TObject);
begin
  inherited;
  dfFicha.PasswordChar := #0;
 end;

procedure TFrmRomaneio.dfSaidaKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then begin
    IncluirRomaneioSaidas;
  end;
end;

procedure TFrmRomaneio.IncluirRomaneioSaidas;
Begin
End;



procedure TFrmRomaneio.dfSaidaButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
Var
  nOP: Integer;
  sSaidas: String;
begin
 inherited;
 sSaidas := '';
 nOP := DMProjeto.CriarForm('DlgEscolherSaidaRomaneio',self,true);
 if DMProjeto.QtdParametrosForm > 0 then
   sSaidas := DMProjeto.GetParametrosForm(0);
 if trim(sSaidas) <> '' then begin
   with Q_Aux do begin
     Close;
     Sql.Text := 'SELECT s.SAIDA FROM SAIDAS s WHERE s.SAIDA In ('+ sSaidas+') ';
     Sql.Text := Sql.Text + ' and s.saida not in (select r.saida from romaneiosaidas r WHERE r.SAIDA In ('+ sSaidas+') ) ';
     if cbEntrega.Checked Then
         Sql.Text := Sql.Text + ' and (s.campo01 IS NOT NULL) ';
     Open;
     while (not Q_Aux.Eof) do begin
       DMRomaneio.C_RomaneiosSaidas.Append;
       DMRomaneio.C_RomaneiosSaidasSaida.Value := Q_Aux.FieldByName('SAIDA').Value;
       DMRomaneio.C_RomaneiosSaidas.Post;
       Q_Aux.Next;
     end;
   end;
   btGravarClick(Sender);
   UltimoGravado1Click(Sender);
   dfSaida.SetFocus;

 end;
end;

procedure TFrmRomaneio.btComando1Click(Sender: TObject);
begin
  inherited;
  ImprimirRomaneio;
end;

procedure TFrmRomaneio.C_ManifestoCalcFields(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icTotal').AsCurrency := DataSet.FieldByName('TOTAL').AsCurrency *
  (( 100 - DMRomaneio.C_TabelaPERCENTUAL.AsCurrency ) / 100);
end;

procedure TFrmRomaneio.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Visible := True;
end;

procedure TFrmRomaneio.GeraCabecalho(zrNome, zrEnd, zrCid, zrFone, zrLin1, zrLin2, zrLin3, zrLin4 : TZRLabel);
var sLinha, sLadoEsquerdo, sLadoDireito: string;
    i: integer;
begin
    with DMProjeto.q_sql do
    begin
        close;
        sql.text := 'select esquerdo, direito from cabecalho';
        open;
        sLadoEsquerdo := fields[0].asString;
        sLadoDireito := fields[1].asString;
    end;

    FormRichEdit := TFormRichEdit.Create(self);
    DMProjeto.Interpreta(sLadoEsquerdo);
    DMProjeto.Interpreta(sLadoDireito);
    sLadoEsquerdo := DMProjeto.FormataCabecalho(FormRichEdit.RichEdit, sLadoEsquerdo);
    sLadoDireito := DMProjeto.FormataCabecalho(FormRichEdit.RichEdit, sLadoDireito);
    FormRichEdit.Free;

    {Lado Esquerdo}
    zrNome.Caption := '';
    zrEnd.Caption := '';
    zrCid.Caption := '';
    zrFone.Caption := '';
    i := 1;
    while i <= ContaStrings(sLadoEsquerdo, ';') do
    begin
        sLinha := SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 2);
        while (sLinha = SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 2)) and
            (i <= ContaStrings(sLadoEsquerdo, ';')) do
        begin
            if sLinha = '0' then
                zrNome.Caption := zrNome.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '1' then
                zrEnd.Caption := zrEnd.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '2' then
                zrCid.Caption := zrCid.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else if sLinha = '3' then
                zrFone.Caption := zrFone.Caption + SeparaStrings(SeparaStrings(sLadoEsquerdo, ';', i), '|', 1)
            else
                i := 1000;
            inc(i);
        end;
    end;
    zrNome.BeforePrint := ZRLabelBeforePrint;
    zrEnd.BeforePrint := ZRLabelBeforePrint;
    zrCid.BeforePrint := ZRLabelBeforePrint;
    zrFone.BeforePrint := ZRLabelBeforePrint;

    {Lado Direito}
    if zrLin1 <> nil then
    begin
        zrLin1.Caption := '';
        zrLin2.Caption := '';
        zrLin3.Caption := '';
        zrLin4.Caption := '';
        i := 1;
        while i <= ContaStrings(sLadoDireito, ';') do
        begin
            sLinha := SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2);
            while (sLinha = SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 2)) and
                (i <= ContaStrings(sLadoDireito, ';')) do
            begin
                if sLinha = '0' then
                    zrLin1.Caption := zrLin1.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '1' then
                    zrLin2.Caption := zrLin2.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '2' then
                    zrLin3.Caption := zrLin3.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else if sLinha = '3' then
                    zrLin4.Caption := zrLin4.Caption + Trim(SeparaStrings(SeparaStrings(sLadoDireito, ';', i), '|', 1))
                else
                    i := 1000;
                inc(i);
            end;
        end;
        zrLin1.BeforePrint := ZRLabelBeforePrint;
        zrLin2.BeforePrint := ZRLabelBeforePrint;
        zrLin3.BeforePrint := ZRLabelBeforePrint;
        zrLin4.BeforePrint := ZRLabelBeforePrint;
    end;
end;


procedure TFrmRomaneio.FormComponentGravou(Sender: TObject);
begin
  inherited;
  if (not DMRomaneio.bAlteracao) then ImprimirRomaneio;
end;

procedure TFrmRomaneio.ZRLabelBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
 TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption,'<NumeroPagina>',IntToStr(TZrLabel(Sender).Report.PageCount));
 TZrLabel(Sender).Caption := Replace(TZrLabel(Sender).Caption,'<TotalPaginas>',IntToStr(TZrLabel(Sender).Report.PageCount));
end;

procedure TFrmRomaneio.ImprimirRomaneio;
begin
  try
   If ckbManifesto.checked then Begin
     C_Manifesto.Close;
     Q_Manifesto.ParamByName('r').AsInteger := DMRomaneio.C_TabelaROMANEIO.Value;
     C_Manifesto.Open;
     if cb40Colunas.Checked Then Begin
       GeraCabecalho(zrNomeEmpresa, zrEndereco, zrCidade, zrFone1, zrLinha1, zrLinha2, zrLinha3, zrLinha4 );
       GeraCabecalho(zrNomeEmpresa4, zrEndereco4, zrCidade4, zrFone14, zrLinha14, zrLinha24, zrLinha34, zrLinha44 );
       zManifesto.Options.Font.Condensed := True;
       zManifesto.Preview;
     End Else Begin
       DMProjeto.ImprimirCabecalho( ppRegion1 );
       ppManifesto.Print;
     End;
   End;
   if ckbVisto.Checked then begin
      GeraCabecalho( zrNomeEmpresa2, zrEndereco2, zrCidade2, zrFone12, zrLinha12, zrLinha22, zrLinha32, zrLinha42 );
      GeraCabecalho( zrNomeEmpresa3, zrEndereco3, zrCidade3, zrFone13, zrLinha13, zrLinha23, zrLinha33, zrLinha43 );
      zVisto.Preview;
   end;
   if ckbSeparacao.Checked then begin
      with Q_Separacao do Begin
         Close;
         ParamByName('ROMANEIO').Value := DMRomaneio.C_TabelaROMANEIO.Value;
         Open;
      End;
      if cb40Colunas.Checked Then Begin
        GeraCabecalho( zrNomeEmpresa223, zrEndereco223, zrCidade223, zrFone1223, zrLinha1223, zrLinha2223, zrLinha3223, zrLinha4223 );
        zSeparacao.Preview;
      End Else Begin
        DMProjeto.ImprimirCabecalho( ppRegion2 );
        ppSeparacao.Print;
      End;
   end;
  finally
    Q_Separacao.Close;
    C_Manifesto.Close;
  end;
end;


procedure TFrmRomaneio.ZSeparacaoBeforePrint(Sender: TObject;
  var DoPrint: Boolean);
begin
  inherited;
  If DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' Then Begin
    ZRDescricaoItens.Width := 50;
    ZRAlmox.Visible := False;
    ZRLabel_Almox.Visible:= False;
    ZRLabelDescricaoFator.Visible := False;
    ZRLabel_Fator.Visible := False;
    ZREmbalagem.Visible := True;
    ZRLabel_embalagem.Visible := True;
    ZRLabel_Referencia.Visible := True;
    ZRReferencia.Visible := True;
    ZSeparacaoGroup0Header.Enabled := False;
    ZRLabel105.Visible := True;
    ZRLabel106.Visible := True;
    ZRLabel107.Visible := True;
    ZRLabel40.Visible := True;
    ZRLabel41.Visible := True;
    ZRLabel93.Visible := True;
  end;

end;

procedure TFrmRomaneio.ppDBText19GetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  Text := Text + ', '+C_ManifestoNRO.AsString;
end;

end.
