unit Frm_FactoryEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, dxExEdtr, dxEdLib, dxDBELib, TS_DBButtonEdit,
  TS_DBEditFavorecido, TS_DBEditDate, dxCntner, dxEditor, dxDBEdtr,
  TS_DBLookupTipoFav, dxDBTLCl, dxGrClms, dxDBCtrl, dxDBGrid,
  FormComponent, ImgList,
  Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxTLClms, dxTL, TS_QDBGrid,
  TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, Db,
  TS_DBEditNumber, TS_CheckBox, ppBands, ppDB, ppCtrls, ppReport, ppSubRpt,
  ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache, ppDBPipe, ppComm,
  ppRelatv, ppProd, Variants, BTOdeum, Placemnt, dxfProgressBar;

type
  TFrmFactoryEmpresa = class(TFrmPadrao)
    TS_Panel1: TTS_Panel;
    DBCheques: TTS_QDBGrid;
    DBChequesID: TdxDBGridMaskColumn;
    DBChequesFavorecido: TdxDBGridMaskColumn;
    DBChequesNumCheque: TdxDBGridMaskColumn;
    DBChequesVencimento: TdxDBGridDateColumn;
    DBChequesValor: TdxDBGridCurrencyColumn;
    DBChequesJuros: TdxDBGridCurrencyColumn;
    DBChequesTotalPagar: TdxDBGridCurrencyColumn;
    DBChequesDiasVencimento: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    dfData: TTS_DBEditDate;
    dfFavorecido: TTS_DBEditFavorecido;
    TS_Label3: TTS_Label;
    TS_DBEditNumber2: TTS_DBEditNumber;
    DBChequesNome: TdxDBGridButtonColumn;
    ckbFazerPagamento: TTS_CheckBox;
    DBChequesObs: TdxDBGridColumn;
    TS_Label4: TTS_Label;
    ppCheques: TppReport;
    dbpCheques: TppDBPipeline;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    regCabecalho: TppRegion;
    subCheques: TppSubReport;
    ppChildReport1: TppChildReport;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel5: TppLabel;
    ppDBText1: TppDBText;
    dbFactoryEmpresa: TppDBPipeline;
    ppDBText2: TppDBText;
    ppDBText4: TppDBText;
    ppTitleBand1: TppTitleBand;
    ppDetailBand2: TppDetailBand;
    ppSummaryBand1: TppSummaryBand;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppLabel8: TppLabel;
    ppLabel9: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    DBChequesBanco: TdxDBGridLookupColumn;
    ppLabel13: TppLabel;
    ppLine1: TppLine;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppLine4: TppLine;
    ppLine6: TppLine;
    ppLine7: TppLine;
    ppLine8: TppLine;
    ppLine9: TppLine;
    ppLine10: TppLine;
    ppLine11: TppLine;
    ppLine12: TppLine;
    ppLine13: TppLine;
    ppLine14: TppLine;
    ppLine15: TppLine;
    ppLine16: TppLine;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText10: TppDBText;
    ppDBText11: TppDBText;
    ppDBText12: TppDBText;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    dbtAPagar: TppDBCalc;
    ckbImprimir: TTS_CheckBox;
    btContabilidade: TTS_SpeedButton;
    ppLabel4: TppLabel;
    ppLine5: TppLine;
    DBChequesTAXA: TdxDBGridMaskColumn;
    ppDBText3: TppDBText;
    ppDBCalc3: TppDBCalc;
    ppSummaryBand2: TppSummaryBand;
    ppDBCalc4: TppDBCalc;
    ppDBCalc5: TppDBCalc;
    ppDBCalc6: TppDBCalc;
    ppDBCalc7: TppDBCalc;
    ppDFNome: TppDBText;
    ppDBText13: TppDBText;
    ppDBText14: TppDBText;
    ppDBText15: TppDBText;
    ppDBText16: TppDBText;
    ppDBText17: TppDBText;
    ppDBText18: TppDBText;
    ppDBText19: TppDBText;
    ppLabel10: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppLabel16: TppLabel;
    ppLabel17: TppLabel;
    ppLabel18: TppLabel;
    ppLabel19: TppLabel;
    ppLine17: TppLine;
    ppLine18: TppLine;
    ppLine19: TppLine;
    ppLine20: TppLine;
    ppLine21: TppLine;
    ppLine22: TppLine;
    ppLine23: TppLine;
    ppLine24: TppLine;
    ppLine25: TppLine;
    ppLine26: TppLine;
    ppLine27: TppLine;
    ppLine28: TppLine;
    ppLine29: TppLine;
    ppLine30: TppLine;
    ppLine31: TppLine;
    ppLabel20: TppLabel;
    ppLine32: TppLine;
    ppLabel21: TppLabel;
    ppLabel22: TppLabel;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppDBCalc8: TppDBCalc;
    ppLabel25: TppLabel;
    ppLine33: TppLine;
    procedure FormComponentGravou(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure DBChequesNomeButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentInclusao(Sender: TObject);
    procedure FormComponentPesquisar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure btContabilidadeClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure DBChequesTS_AposLocalizar(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure ppDFNomeGetText(Sender: TObject; var Text: String);
  private
    procedure Imprimir;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmFactoryEmpresa: TFrmFactoryEmpresa;

implementation

uses DM_Projeto, DM_FactoryEmpresa;

{$R *.DFM}

procedure TFrmFactoryEmpresa.Imprimir;
begin
  DMProjeto.ImprimirCabecalho( regCabecalho );
	ppCheques.Print;
end;

procedure TFrmFactoryEmpresa.FormComponentGravou(Sender: TObject);
begin
  inherited;
  if ckbFazerPagamento.Checked then begin
    DMProjeto.SetParametrosForm([	null, DMFactoryEmpresa.C_TabelaFavorecido.AsInteger,
    															DMFactoryEmpresa.C_TabelaIDAPagar.AsString] );
  	DMProjeto.CriarForm('DlgSangria',self, true);
  end;
  if ckbImprimir.Checked then
  	Imprimir;
end;

procedure TFrmFactoryEmpresa.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (LastDataObject.TableName = 'FAVORECIDOS') and
     (ActiveControl = dfFavorecido) and (LastDataObject.ObjectKey <> null) then
    dfFavorecido.ID := LastDataObject.ObjectKey
  else if (LastDataObject.TableName = 'FAVORECIDOS') and
          (ActiveControl = DBCheques) and
          (LastDataObject.ObjectKey <> null) then begin
    if (DMFactoryEmpresa.C_Cheques.State = dsInsert) or (DMFactoryEmpresa.C_ChequesCliente.asVariant = null) then
      DBCheques.TS_ID := LastDataObject.ObjectKey
    else if (DMFactoryEmpresa.C_Cheques.State <> dsInsert) then begin
      DMFactoryEmpresa.C_Cheques.Append;
      DBCheques.TS_ID := LastDataObject.ObjectKey;
    end;
  end;
end;

procedure TFrmFactoryEmpresa.DBChequesNomeButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if AbsoluteIndex = 1 then
    DMProjeto.CriarForm('FrmClientes', self, true );
end;

procedure TFrmFactoryEmpresa.btComando1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.DlgAutorizacao.ExecuteX( self.name, 'IMP' ) then
   	exit;
	Imprimir;
end;

procedure TFrmFactoryEmpresa.FormComponentInclusao(Sender: TObject);
begin
  inherited;
	btComando1.Visible := false;
end;

procedure TFrmFactoryEmpresa.FormComponentPesquisar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
	btComando1.Visible := true;
end;

procedure TFrmFactoryEmpresa.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'CONTABILID') then
    exit;

  DMFactoryEmpresa.Contabiliza;

  DMFactoryEmpresa.MostraContabilidade;
  ////////////////
end;

procedure TFrmFactoryEmpresa.FormCreate(Sender: TObject);
begin
  DMFactoryEmpresa.CriaContabilidade;
  inherited;
  if DMProjeto.bBrasil then
    btContabilidade.visible := false;
end;

procedure TFrmFactoryEmpresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Adriano
  if DMFactoryEmpresa.ContabilidadeAtivado then
    DMFactoryEmpresa.ContabilidadeDesativado;
  ////////////////////
end;

procedure TFrmFactoryEmpresa.DBChequesTS_AposLocalizar(Sender: TObject);
begin
  inherited;
  DBCheques.TS_SelectedColumn := 'NumCheque';
  DBCheques.ShowEditor;
end;

procedure TFrmFactoryEmpresa.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  with DMFactoryEmpresa do begin
	if key = '%' then begin
  	if DBCheques.TS_SelectedColumn = 'TAXA' then begin
   		if C_Cheques.State in [dsEdit,dsInsert] then
   			C_Cheques.Post;
    	C_Cheques.Edit;
    	C_ChequesTaxa.Value := Trunc((C_ChequesTaxa.Value/100)*C_ChequesValor.Value)+
       										 	 Trunc(Frac((C_ChequesTaxa.Value/100)*C_ChequesValor.Value)*100)/100;
      Key := #0;
    end else if DBCheques.TS_SelectedColumn = 'ENCARGOS' then begin
   		if C_Cheques.State in [dsEdit,dsInsert] then
   			C_Cheques.Post;
    	C_Cheques.Edit;
    	C_ChequesEncargos.Value := Trunc((C_ChequesEncargos.Value/100)*C_ChequesValor.Value)+
       										 			 Trunc(Frac((C_ChequesEncargos.Value/100)*C_ChequesValor.Value)*100)/100;
    	Key := #0;
    end;
	end;
  end;
end;

procedure TFrmFactoryEmpresa.ppDFNomeGetText(Sender: TObject;
  var Text: String);
begin
  inherited;
  If DMFactoryEmpresa.C_ChequesNOME.IsNull Then
    Text := DMFactoryEmpresa.C_ChequesOBS.AsString
  Else
    Text := DMFactoryEmpresa.C_ChequesNOME.AsString;
end;

end.
