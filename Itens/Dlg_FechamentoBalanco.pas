unit Dlg_FechamentoBalanco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, IBCustomDataSet, IBQuery, IBUpdateSQL, Db, Provider,
  DBClient, StdCtrls, DBCtrls, TS_DBCheckBox, TS_Edit, TS_DBText,
  TS_Label, TS_LastDataObject, DlgMsg, Menus, TS_PopupMenu,
  ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton, TS_BitBtn,
  dxExEdtr, dxEdLib, dxDBELib, dxCntner, dxEditor, FormsComponent, 
  TS_Image, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxDBGrid, dxTL,
  dxDBCtrl, TS_QDBGrid, Dlg_PopupContas, dxGrClEx, DM_Contabilidade,
  TS_DateTimePicker, teCtrls, TS_EffectsPanel, TS_DBEditDate, TS_DBEdit,
  BTOdeum, ppBands, ppDB, ppDBPipe, ppCtrls, ppPrnabl, ppClass, ppStrtch,
  ppRegion, ppCache, ppComm, ppRelatv, ppProd, ppReport, Placemnt;

type
  TDlgFechamentoBalanco = class(TFrmModeloCadastros)
    TS_PopupMenu1: TTS_PopupMenu;
    MenuItem1: TMenuItem;
    Bevel2: TBevel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_DBText1: TTS_DBText;
    TS_DBText2: TTS_DBText;
    TS_DBEdit1: TTS_DBEdit;
    C_AjustesItens: TClientDataSet;
    C_AjustesItensITEM: TIntegerField;
    C_AjustesItensNUMERO: TStringField;
    C_AjustesItensDATA: TDateField;
    C_AjustesItensQUANTIDADE: TBCDField;
    C_AjustesItensCONTA: TIntegerField;
    C_AjustesItensMOTIVO: TStringField;
    C_AjustesItensCODIGO: TStringField;
    C_AjustesItensDESCRICAO: TStringField;
    C_AjustesItensSubTotal: TIBBCDField;
    C_AjustesItenscmbConta: TStringField;
    Q_AjustesItensProvider: TDataSetProvider;
    C_AjustesItensDS: TDataSource;
    U_AjustesItens: TIBUpdateSQL;
    Q_AjustesItens: TIBQuery;
    Q_Contas: TIBQuery;
    Q_ContasProvider: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    Q_FichasProvider: TDataSetProvider;
    U_Fichas: TIBUpdateSQL;
    Q_Fichas: TIBQuery;
    C_Fichas: TClientDataSet;
    C_FichasBALANCOFICHA: TIntegerField;
    C_FichasDATA: TDateField;
    C_FichasUSUARIO: TIntegerField;
    C_FichasSTATUS: TIntegerField;
    C_FichasLOGINNAME: TStringField;
    C_FichasOPENBALANCE: TStringField;
    C_FichasDS: TDataSource;
    Q_Aux: TIBQuery;
    C_AjustesItensAJUSTEITEM: TIntegerField;
    dbgItens: TTS_QDBGrid;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensNUMERO: TdxDBGridMaskColumn;
    dbgItensDATA: TdxDBGridDateColumn;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensCUSTO: TdxDBGridMaskColumn;
    dbgItensCONTA: TdxDBGridMaskColumn;
    dbgItensMOTIVO: TdxDBGridMaskColumn;
    dbgItensCODIGO: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensUNIDADE: TdxDBGridMaskColumn;
    dbgItensSubTotal: TdxDBGridColumn;
    dbgItensAJUSTEITEM: TdxDBGridMaskColumn;
    C_ContasDS: TDataSource;
    dbgItenscmbConta: TdxDBGridPopupColumn;
    dtDataAjuste: TTS_DBEditDate;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasSALDO: TBCDField;
    C_ContasCODIGOREDUZIDO: TStringField;
    C_ContasTIPOCONTA: TIntegerField;
    C_AjustesItensREFERENCIA: TStringField;
    dbgItensReferencia: TdxDBGridColumn;
    TS_DBText3: TTS_DBText;
    C_FichasDESCRICAOFICHA: TStringField;
    TS_Panel1: TTS_Panel;
    TS_Label3: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    lblTotEntradas: TTS_Label;
    lblTotSaidas: TTS_Label;
    lblSaldo: TTS_Label;
    TS_SpeedButton1: TTS_SpeedButton;
    ppFichaBalanco: TppReport;
    ppTitleBand1: TppTitleBand;
    ppCabecalho: TppRegion;
    ppHeaderBand1: TppHeaderBand;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel6: TppLabel;
    ppLabel7: TppLabel;
    ppTitulo: TppLabel;
    ppLabel9: TppLabel;
    ppDataFicha: TppLabel;
    ppEstoquista: TppLabel;
    ppContagem1: TppLabel;
    ppContagem2: TppLabel;
    ppLabel4: TppLabel;
    ppDescricaoFicha: TppLabel;
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBContagem2: TppDBText;
    ppDBText1: TppDBText;
    ppDBContagem1: TppDBText;
    ppDBText2: TppDBText;
    ppDBFichaBalanco: TppDBPipeline;
    ppSummaryBand1: TppSummaryBand;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppTotEntradas: TppLabel;
    ppTotSaidas: TppLabel;
    ppLabel12: TppLabel;
    ppSaldo: TppLabel;
    C_AjustesItensCUSTO: TFloatField;
    C_AjustesItensUNIDADE: TStringField;
    C_AjustesItensFATOR: TFloatField;
    C_AjustesItensicCusto: TCurrencyField;
    C_FichasALMOXARIFADO: TIntegerField;
    C_Almoxarifados: TClientDataSet;
    C_AlmoxarifadosALMOXARIFADO: TIntegerField;
    C_AlmoxarifadosDESCRICAO: TStringField;
    P_Almoxarifados: TDataSetProvider;
    Q_Almoxarifados: TIBQuery;
    C_FichaslkAlmox: TStringField;
    lblAlmox: TTS_DBText;
    C_AjustesItensALMOXARIFADO: TIntegerField;
    C_AjustesItensEMPRESA: TIntegerField;
    C_AlmoxarifadosEMPRESA: TIntegerField;
    procedure C_AjustesItensCalcFields(
  DataSet: TDataSet);
    procedure btGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure C_AjustesItensNewRecord(DataSet: TDataSet);
    procedure dbgItensCalcSummary(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_AlmoxarifadosNewRecord(DataSet: TDataSet);
  protected
    DlgPopup: TDlgPopupContas;
    DMContabil: TDMContabilidade;
  private
    nBalancoFicha: integer;
    C_ItensSelec: TClientDataSet;
    procedure CriaOrdenacao(nOrdenacao: integer);
  public
    Constructor Create(AOwner: TComponent; xBalancoFicha: integer; C_ItensSel: TClientDataSet);
  end;

var
  DlgFechamentoBalanco: TDlgFechamentoBalanco;

implementation

uses DM_Projeto, funcoes, Frm_Contabilidade;

{$R *.DFM}

constructor TDlgFechamentoBalanco.Create;
begin
  nBalancoFicha := xBalancoFicha;
  C_ItensSelec := C_ItensSel;
  inherited Create(AOwner);
end;

procedure TDlgFechamentoBalanco.CriaOrdenacao(nOrdenacao: integer);
var sColumn,sCampo: string;
    i: integer;
begin
  sColumn := 'DEFAULT ORDER';
  if nOrdenacao = 100 then
    sCampo := 'codigo'
  else if nOrdenacao = 200 then
    sCampo := 'descricao'
  else if nOrdenacao = 300 then
    sCampo := 'referencia';

  // O Índice já está em uso
  if sCampo = C_AjustesItens.IndexName then exit;

  C_AjustesItens.IndexDefs.Update;
  for i := 0 to C_AjustesItens.IndexDefs.Count - 1 do
    if lowercase(C_AjustesItens.IndexDefs.Items[i].name) = sCampo then
      sColumn := sCampo;

  if sColumn = 'DEFAULT ORDER' then
    try
      C_AjustesItens.AddIndex(sCampo,sCampo,[],'','',0);
    finally
      sColumn := sCampo;
    end;

  try
    C_AjustesItens.IndexName := sColumn;
  finally
  end;
end;

procedure TDlgFechamentoBalanco.C_AjustesItensCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  C_AjustesItensicCusto.Value := C_AjustesItensCusto.Value * C_AjustesItensFator.Value;
  C_AjustesItensSubTotal.value := C_AjustesItensQuantidade.value * C_AjustesItensicCusto.value;
end;

procedure TDlgFechamentoBalanco.btGravarClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX('DlgComparacaoContagens','S') then
    exit;

  C_Fichas.edit;
  C_FichasStatus.value := 0;
  C_Fichas.post;

  DMProjeto.GenerateIDs(C_AjustesItens,'AjusteItem');

  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    C_Fichas.ApplyUpdates(0);

    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.text := 'update itens set balanco = ''N'' where item in '+
    '(select item from balancofichasitens bfi where balancoficha = '+C_FichasBalancoFicha.AsString+')';
    DMProjeto.Q_SQL.execsql;

{    if C_FichasOpenBalance.value = 'N' then begin
      // gerar contabilização
    end
    else begin}
      C_AjustesItens.ApplyUpdates(0);
      C_AjustesItens.DisableControls;
      C_AjustesItens.first;
      while not C_AjustesItens.eof do begin

        DMContabil.ContabilizaFechamentoBalanco(C_AjustesItensAjusteItem.value,C_AjustesItens);

        DMContabil.Salvar(C_AjustesItensAjusteItem.value);

        C_AjustesItens.next;
      end;
      C_AjustesItens.first;
      C_AjustesItens.EnableControls;
      // gerar contabilização
//    end;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DMProjeto.GeraLog('Fechamento Balanco',e.message);
    end;
  end;

  DlgMsg.ShowMsg(1033);
  ModalResult := 100;
end;

procedure TDlgFechamentoBalanco.FormCreate(Sender: TObject);
begin
  inherited;
  C_Fichas.FetchParams;
  C_Fichas.params[0].asinteger := nBalancoFicha;
  C_Fichas.open;
  //
  if C_FichasOpenBalance.value = 'S' then begin
    dbgItens.Columns[6].visible := false;
    dbgItens.Columns[7].visible := false;
  end;
  DlgPopup := TDlgPopupContas.Create(self,C_ContasDS,dbgItenscmbConta,true);
  DMContabil := TDMContabilidade.Create(self);
  dtDataAjuste.date := DMProjeto.dDataSistema;
end;

procedure TDlgFechamentoBalanco.FormShow(Sender: TObject);
var sNumero: string;
    nAjuste: integer;
begin
  inherited;
  sNumero := AdicionarStr(IntToStr(DMProjeto.NextID('ReferAjustes')),'0',6);
  C_AjustesItens.DisableControls;
  C_AjustesItens.open;

  C_ItensSelec.DisableControls;
  C_ItensSelec.first;
//  nAjuste := DMProjeto.NextIDGlobal;
  while not C_ItensSelec.eof do begin

    C_AjustesItens.Append;
    C_AjustesItens.FieldByName('ajusteitem').asinteger := DMProjeto.NextIDGlobal(False);
    C_AjustesItens.FieldByName('data').asdatetime := C_FichasData.value;
    C_AjustesItens.FieldByName('numero').asstring := sNumero;
    C_AjustesItens.FieldByName('conta').asinteger := DMProjeto.ContaPadrao(7);
    C_AjustesItens.FieldByName('item').asinteger  := C_ItensSelec.FieldByName('item').asinteger;
    C_AjustesItens.FieldByName('Fator').asFloat   := C_ItensSelec.FieldByName('Fator').asFloat;
    C_AjustesItens.FieldByName('custo').asfloat   := C_ItensSelec.FieldByName('custo').asfloat / C_ItensSelec.FieldByName('Fator').asFloat;
    C_AjustesItens.FieldByName('codigo').asstring := C_ItensSelec.FieldByName('codigo').asstring;
    C_AjustesItens.FieldByName('referencia').asstring := C_ItensSelec.FieldByName('referencia').asstring;
    C_AjustesItens.FieldByName('descricao').asstring := C_ItensSelec.FieldByName('descricao').asstring;
    C_AjustesItens.FieldByName('unidade').asstring := C_ItensSelec.FieldByName('unidade').asstring;
    C_AjustesItens.FieldByName('quantidade').asfloat := C_ItensSelec.FieldByName('diferenca').asfloat;
    C_AjustesItens.FieldByName('almoxarifado').asinteger := C_FichasAlmoxarifado.value;
    C_AjustesItens.post;

//    inc(nAjuste);
    C_ItensSelec.next;
  end;
  C_ItensSelec.first;
  C_ItensSelec.EnableControls;

  C_AjustesItens.first;
  C_AjustesItens.EnableControls;
end;

procedure TDlgFechamentoBalanco.TS_SpeedButton3Click(Sender: TObject);
var nAjuste: integer;
begin
  inherited;
  nAjuste := C_AjustesItensAjusteItem.value;

  DMContabil.ContabilizaFechamentoBalanco(nAjuste,C_AjustesItens);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;

  C_AjustesItens.Locate('ajusteitem',nAjuste,[]);
end;


procedure TDlgFechamentoBalanco.FormActivate(Sender: TObject);
begin
  inherited;
  dbgItenscmbConta.popupcontrol := DlgPopup.pnPopup;
end;

procedure TDlgFechamentoBalanco.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.free;
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
end;

procedure TDlgFechamentoBalanco.C_AjustesItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_AjustesItensData.value := DMProjeto.dDataSistema;
  C_AjustesItensEmpresa.Value := DMProjeto.nEmpresaLogada;
end;

procedure TDlgFechamentoBalanco.dbgItensCalcSummary(Sender: TObject);
var nTotEntradas, nTotSaidas: currency;
begin
  inherited;
  nTotEntradas := dbgItens.TotalGeral('subtotal','quantidade > 0');
  nTotSaidas   := dbgItens.TotalGeral('subtotal','quantidade < 0');
  lblTotEntradas.caption := FormatCurr('###,##0.00',nTotEntradas);
  lblTotSaidas.caption := FormatCurr('###,##0.00',nTotSaidas);
  lblSaldo.caption := FormatCurr('###,##0.00',nTotEntradas + nTotSaidas);
end;

procedure TDlgFechamentoBalanco.TS_SpeedButton1Click(Sender: TObject);
var nOrdenacao: integer;
begin
  inherited;
//  C_Fichas.locate('balancoficha',cmbFicha.LookupKeyValue,[]);
  if not DMProjeto.dlgAutorizacao.ExecuteX('DlgComparacaoContagens','IMP') then
    exit;

  nOrdenacao := DlgMsg.ShowMsg(4027);
  CriaOrdenacao(nOrdenacao);

  ppDataFicha.caption := DateToStr(C_FichasData.value);
  ppEstoquista.caption := C_FichasLoginName.value;
  ppDescricaoFicha.caption := C_FichasDescricaoFicha.value;
  ppTitulo.caption := ppTitulo.caption+' '+IntToStr(C_FichasBalancoFicha.value);

  ppTotEntradas.caption := lblTotEntradas.caption;
  ppTotSaidas.caption := lblTotSaidas.caption;
  ppSaldo.caption := lblSaldo.caption;
  DMProjeto.ImprimirCabecalho( ppCabecalho );
  ppFichaBalanco.print;
end;

procedure TDlgFechamentoBalanco.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  lblAlmox.visible := DMProjeto.Parametro('MultiAlmox') = 'S';
end;

procedure TDlgFechamentoBalanco.C_AlmoxarifadosNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  C_AlmoxarifadosEmpresa.Value := DMProjeto.nEmpresaLogada;
end;

end.
