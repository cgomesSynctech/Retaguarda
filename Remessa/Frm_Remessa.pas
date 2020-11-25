unit Frm_Remessa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, DlgMsg, Menus, TS_PopupMenu,
  TS_ScrollBox, ComCtrls, StdCtrls, Buttons,
  TS_BitBtn, TS_SpeedButton, ExtCtrls, TS_Label, 
  TS_DBLookupComboBox, TS_DBRadioGroup, Mask, TS_DBEdit, TS_GroupBox,
  ppCtrls, ppDB, Provider, DBClient, Db, IBCustomDataSet,
  IBQuery, ppReport, TS_Bevel, printers,
  TS_LastDataObject, CheckLst, TS_CheckListBox, TS_DBEditFavorecido,
  TS_DBLookupTipoFav, TS_CheckBox, TS_DBCheckBox, TS_DBEditDate, TS_DBEditNumber,
  TS_DBMemo, dxExEdtr, dxEdLib, dxDBELib, TS_DBButtonEdit, dxCntner,
  dxEditor, dxDBEdtr, TS_Image, dxfLabel, TS_MaxPanel, dxTL,
  dxDBCtrl, dxDBGrid, TS_QDBGrid,
  teCtrls, TS_EffectsPanel, dxTLClms, TS_DBText, TS_Shape, dxDBTLCl,
  dxGrClms, ppBands, ppPrnabl, ppClass, ppStrtch, ppRegion, ppCache,
  ppProd, ppComm, ppRelatv, ppDBPipe, DBCtrls;

type
  TFrmRemessa = class(TFrmPadrao)
    TS_DBLookupMoedaRemente: TTS_DBLookupComboBox;
    TS_Label3: TTS_Label;
    TS_DBEdEnviar: TTS_DBEditNumber;
    TS_Label9: TTS_Label;
    TS_Label10: TTS_Label;
    TS_DBEdDataPrevisao: TTS_DBEditDate;
    TS_DBEdDataEnvio: TTS_DBEditDate;
    TS_Label8: TTS_Label;
    TS_DBLookupStatus: TTS_DBLookupComboBox;
    TS_lbRemetente: TTS_Label;
    TS_DBLookupEmpresa: TTS_DBLookupComboBox;
    Label7: TTS_Label;
    TS_DBEdTaxaEmp: TTS_DBEditNumber;
    Label8: TTS_Label;
    TS_DBEdPercEmp: TTS_DBEditNumber;
    tslbCambioEmp: TTS_Label;
    TS_DBEdCambioEmp: TTS_DBEditNumber;
    TS_Label2: TTS_Label;
    TS_DBLookupMoedaAgente: TTS_DBLookupComboBox;
    TS_Label4: TTS_Label;
    TS_DBEdRecebido: TTS_DBEditNumber;
    TS_lbLocalDeposito: TTS_Label;
    TS_lbAgente: TTS_Label;
    TS_DBLookupAgente: TTS_DBLookupComboBox;
    TS_Label7: TTS_Label;
    TS_DBEdAgente: TTS_DBEditNumber;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    C_StatusRemessaRel: TClientDataSet;
    PStatusRemessaRel: TDataSetProvider;
    Q_StatusRemessaRel: TIBQuery;
    Q_Relatorio: TIBQuery;
    Q_RelatorioFAVORECIDO: TIntegerField;
    Q_RelatorioCODIGO: TIBStringField;
    c: TIBStringField;
    Q_RelatorioREMESSA: TIntegerField;
    Q_RelatorioDATA_PREVISAO: TDateField;
    Q_RelatorioDATA_ENVIO: TDateField;
    Q_RelatorioCLIENTE: TIntegerField;
    Q_RelatorioMOEDA_REMETENTE: TIntegerField;
    Q_RelatorioVALOR_CLIENTE: TIBBCDField;
    Q_RelatorioEMPRESA: TIntegerField;
    Q_RelatorioTAXA_EMP: TIBBCDField;
    Q_RelatorioPERC_EMP: TIBBCDField;
    Q_RelatorioCAMBIO_EMP: TIBBCDField;
    Q_RelatorioVALOR_EMPRESA: TIBBCDField;
    Q_RelatorioLUCRO_EMPRESA: TIBBCDField;
    Q_RelatorioLOCAL_DEPOSITO: TIntegerField;
    Q_RelatorioVALOR_LOCAL: TIBBCDField;
    Q_RelatorioMOEDA_LOCAL: TIntegerField;
    Q_RelatorioCAMBIO_LOCAL: TIBBCDField;
    Q_RelatorioINDCLIENT: TIntegerField;
    Q_RelatorioDESC_INDCLIENT: TIBStringField;
    Q_RelatorioINDLOCAL: TIntegerField;
    Q_RelatorioDESC_INDLOCAL: TIBStringField;
    Q_RelatorioDesc_Status: TStringField;
    Q_RelatorioSTATUS: TIntegerField;
    dsRelatorio: TDataSource;
    ppPipeRelatorio: TppDBPipeline;
    ppRelatorio: TppReport;
    ppTituloRel: TppHeaderBand;
    ppRegEmpresa: TppRegion;
    ppDetailBand1: TppDetailBand;
    ppShape1: TppShape;
    ppLabel1: TppLabel;
    ppLine1: TppLine;
    ppLabel2: TppLabel;
    ppDBText1: TppDBText;
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
    ppLabel9: TppLabel;
    ppDBText9: TppDBText;
    ppLabel12: TppLabel;
    ppDBText12: TppDBText;
    ppLabel13: TppLabel;
    ppDBText13: TppDBText;
    ppLabel11: TppLabel;
    ppDBText11: TppDBText;
    ppLine2: TppLine;
    ppLabel14: TppLabel;
    ppDBText14: TppDBText;
    ppLabel17: TppLabel;
    ppDBText15: TppDBText;
    ppLabel18: TppLabel;
    ppDBText18: TppDBText;
    ppLabel19: TppLabel;
    ppFooterBand1: TppFooterBand;
    TS_DBLookupTipoFav: TTS_DBLookupTipoFav;
    ckImprimir: TTS_CheckBox;
    ppDBText19: TppDBText;
    Q_RelatorioVALOR_PERC: TIBBCDField;
    ppRegionCliente: TppRegion;
    ppRegionEntrega: TppRegion;
    Q_RelatorioVALOR_ENVIAR_DOLAR: TIBBCDField;
    Q_RelatorioENDERECO: TIBStringField;
    Q_RelatorioCEP: TIBStringField;
    Q_RelatorioCIDADE: TIBStringField;
    Q_RelatorioEMAIL: TIBStringField;
    Q_RelatorioCELULAR: TIBStringField;
    ppLabel10: TppLabel;
    ppDBText16: TppDBText;
    ppLabel15: TppLabel;
    ppDBText17: TppDBText;
    Q_RelatorioFONE1: TIBStringField;
    ppDBText20: TppDBText;
    ppLabel16: TppLabel;
    ppLabel22: TppLabel;
    ppDBTxEmail: TppDBText;
    TS_DBEdAbertura: TTS_DBEditDate;
    TS_Label11: TTS_Label;
    Q_RelatorioNOME_FAV: TIBStringField;
    Q_RelatorioOBS: TIBStringField;
    TS_DBEdCliente: TTS_DBEditFavorecido;
    TS_Label12: TTS_Label;
    TS_DBLookup: TTS_DBLookupComboBox;
    TS_DBTxAgencia: TTS_DBText;
    Q_RelatorioAGENCIA: TIBStringField;
    Q_RelatorioCONTA: TIBStringField;
    Q_RelatorioNOMEBANCO: TIBStringField;
    ppLabel23: TppLabel;
    ppLabel24: TppLabel;
    ppLabel25: TppLabel;
    ppDBText10: TppDBText;
    ppDBText21: TppDBText;
    ppDBText22: TppDBText;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
    TS_Shape6: TTS_Shape;
    GridVALOR_CLIENTE: TdxDBGridMaskColumn;
    GridTAXA_EMP: TdxDBGridMaskColumn;
    GridPERC_EMP: TdxDBGridMaskColumn;
    GridLUCRO_AGENTE: TdxDBGridMaskColumn;
    GridVALOR_LOCAL: TdxDBGridMaskColumn;
    GridNOME: TdxDBGridMaskColumn;
    GridDATA_PREVISAO: TdxDBGridDateColumn;
    GridDATA_ENVIO: TdxDBGridDateColumn;
    GridcbDesc_Status: TdxDBGridLookupColumn;
    ppLine3: TppLine;
    ppShape2: TppShape;
    ppShape5: TppShape;
    ppLabel21: TppLabel;
    ppLine4: TppLine;
    ppShape6: TppShape;
    ppShape3: TppShape;
    ppShape4: TppShape;
    ppLabel20: TppLabel;
    ppLine5: TppLine;
    ppLabel26: TppLabel;
    ppDBText23: TppDBText;
    Q_RelatorioDATAABERTURA: TDateField;
    TS_DBLookupLocalDeposito: TTS_DBEditFavorecido;
    Q_RelatorioDESCLOCALDEPOSITO: TIBStringField;
    ppLabel27: TppLabel;
    Q_RelatorioEnderecoCompleto: TStringField;
    Q_RelatorioUF: TIBStringField;
    TS_Label14: TTS_Label;
    DF_Codigo: TTS_DBButtonEdit;
    Q_RelatorioCODIGOREMESSA: TIBStringField;
    TS_Label13: TTS_Label;
    TS_Label15: TTS_Label;
    TS_lbCambioAG: TTS_Label;
    TS_DBEdTaxaAG: TTS_DBEditNumber;
    TS_DBEdPercAG: TTS_DBEditNumber;
    TS_DBEdCambioAG: TTS_DBEditNumber;
    TS_lbLocal: TTS_Label;
    TS_DBEdCambioRemessa: TTS_DBEditNumber;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    TS_Label17: TTS_Label;
    btOperacoes: TTS_SpeedButton;
    ppmUltimo: TTS_PopupMenu;
    UltimoGravado: TMenuItem;
    N6: TMenuItem;
    ltimoparaoCliente1: TMenuItem;
    ltimoparaaData1: TMenuItem;
    ltimoparaoTipoRemessa1: TMenuItem;
    ltimoparaoAgente1: TMenuItem;
    TS_DBRadioGroup1: TTS_DBRadioGroup;
    TS_SpeedButton1: TTS_SpeedButton;
    procedure FormShow(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure ppDetailBand1BeforeGenerate(Sender: TObject);
    procedure btApagarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure TS_DBLookupAgenteKeyPress(Sender: TObject; var Key: Char);
    procedure TS_lbLocalDepositoSetParametrosForm(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure ppLabel27GetText(Sender: TObject; var Text: String);
    procedure Q_RelatorioCalcFields(DataSet: TDataSet);
    procedure DF_CodigoButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure TS_DBEdClienteSelecionou(Sender: TObject);
    procedure TS_DBLookupEnter(Sender: TObject);
    procedure ppLabel11GetText(Sender: TObject; var Text: String);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure btOperacoesMouseUp(Sender: TObject; Button: TMouseButton;
      Shift: TShiftState; X, Y: Integer);
    procedure UltimoGravadoClick(Sender: TObject);
    procedure ltimoparaoCliente1Click(Sender: TObject);
    procedure ltimoparaaData1Click(Sender: TObject);
    procedure ltimoparaoTipoRemessa1Click(Sender: TObject);
    procedure ltimoparaoAgente1Click(Sender: TObject);
    procedure TS_DBLookupMoedaRementeChange(Sender: TObject);
    procedure TS_DBLookupEmpresaChange(Sender: TObject);
    procedure TS_DBLookupMoedaAgenteChange(Sender: TObject);
    procedure TS_DBLookupAgenteChange(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
  private
    function LastKeyFor (Tipo:String): String;
    procedure AtualizaCamposCambios;
  public
  end;

var
  FrmRemessa: TFrmRemessa;

implementation

uses DM_Remessa, DM_Projeto, funcoes;

{$R *.DFM}

procedure TFrmRemessa.FormShow(Sender: TObject);
begin
  inherited;
  DMRemessa.OcorreCalculo := False;
end;

procedure TFrmRemessa.FormComponentGravou(Sender: TObject);
begin
  inherited;
  if (ckImprimir.Checked) then begin
      Q_Relatorio.Close;
      Q_Relatorio.ParamByName('CodRemessa').AsInteger :=
            DmRemessa.C_Tabela.FieldByName('Remessa').AsInteger;
      Q_Relatorio.Open;
      Dmprojeto.ImprimirCabecalho(ppRegEmpresa);
      ppRelatorio.Print;
      Q_Relatorio.Close;
  end;
end;

procedure TFrmRemessa.ppDetailBand1BeforeGenerate(Sender: TObject);
begin
  inherited;
  ppRegionCliente.Visible := not (DMRemessa.C_Tabela.FieldByName('Cambio_Emp').AsFloat = 1);
  ppRegionEntrega.Visible := not (DMRemessa.C_Tabela.FieldByName('Cambio_Local').AsFloat = 1);
end;

procedure TFrmRemessa.btApagarClick(Sender: TObject);
begin
  if (DmJanela.C_Tabela.FieldByName('Status').AsInteger=3) then
     DlgMsg.ShowMsg(3016)
  else
     inherited;
end;

procedure TFrmRemessa.FormCreate(Sender: TObject);
begin
  FrmRemessa := Self;
  inherited;
end;

procedure TFrmRemessa.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
	TS_DBLookupLocalDeposito.WhereAdicional := ' and vendedor = '+IntToStr(TS_DBEdCliente.ID);

  AtualizaCamposCambios;

  DmRemessa.C_LocalDeposito.Close;
  DmRemessa.C_LocalDeposito.Params.ParamByName('favorecido').AsInteger :=
     DMJanela.C_tabela.FieldByName('cliente').AsInteger ;
  DmRemessa.C_LocalDeposito.Open;
  DMRemessa.C_LocalDep.close;
  DMRemessa.C_LocalDep.open;
  btComando1.Visible := DMRemessa.C_Tabela.State in [dsBrowse];
end;

procedure TFrmRemessa.TS_DBLookupAgenteKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if (key = #32) then begin
     if DmJanela.C_Tabela.State = dsBrowse then
          DmJanela.C_Tabela.Edit;
     DmJanela.C_Tabela.FieldByName('Agente').AsInteger := 0;
  end;
end;


procedure TFrmRemessa.TS_lbLocalDepositoSetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([DMRemessa.C_TabelaLocal_Deposito.value,DMRemessa.C_TabelaCliente.value]);
end;

procedure TFrmRemessa.btComando1Click(Sender: TObject);
begin
  inherited;
  Q_Relatorio.Close;
  Q_Relatorio.ParamByName('CodRemessa').AsInteger := DMRemessa.C_Tabela.FieldByName('Remessa').AsInteger;
  Q_Relatorio.Open;
  DMProjeto.ImprimirCabecalho(ppRegEmpresa);
  ppRelatorio.Print;
  Q_Relatorio.Close;
end;

procedure TFrmRemessa.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	btComando1.Visible := false;
end;

procedure TFrmRemessa.ppLabel27GetText(Sender: TObject; var Text: String);
begin
  inherited;
	Text := DMProjeto.sNomeEmpresa;
end;

procedure TFrmRemessa.Q_RelatorioCalcFields(DataSet: TDataSet);
begin
  inherited;
	DataSet['EnderecoCompleto'] := DataSet['Endereco']+iif(DataSet['Cidade']<>'',' - '+DataSet['Cidade']+'-'+DataSet['UF'],'')+' '+DataSet['CEP'];
end;

procedure TFrmRemessa.DF_CodigoButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
	DMRemessa.GeraCodigo;
end;

procedure TFrmRemessa.TS_DBEdClienteSelecionou(Sender: TObject);
begin
  inherited;
	TS_DBLookupLocalDeposito.WhereAdicional := ' and vendedor = '+IntToStr(TS_DBEdCliente.ID);
end;

procedure TFrmRemessa.TS_DBLookupEnter(Sender: TObject);
begin
  inherited;
   with DMRemessa do
    C_LocalDeposito.Locate('Favorecido',C_TabelaLocal_Deposito.Value,[]);
end;

procedure TFrmRemessa.ppLabel11GetText(Sender: TObject; var Text: String);
begin
  inherited;
  if Q_RelatorioCodigoRemessa.Value = '' then
    Text := '';
end;

procedure TFrmRemessa.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if LastDataObject.TableName = 'FAVORECIDOS' then begin
    if ActiveControl = TS_DBLookupLocalDeposito then
      TS_DBLookupLocalDeposito.ID := LastDataObject.ObjectKey
    else if ActiveControl = TS_DBEdCliente then
      TS_DBEdCliente.ID := LastDataObject.ObjectKey
    else if ActiveControl = TS_DBLookupAgente then
      TS_DBLookupAgenteChange(self);
  end
  else if LastDataObject.TableName = 'AGENCIAS' then begin
    if ActiveControl = TS_DBLookupEmpresa then
      TS_DBLookupEmpresaChange(self);
  end;
end;

procedure TFrmRemessa.btOperacoesMouseUp(Sender: TObject;
  Button: TMouseButton; Shift: TShiftState; X, Y: Integer);
begin
  inherited;
  ppmUltimo.PopupFromCursorPos;
end;

procedure TFrmRemessa.UltimoGravadoClick(Sender: TObject);
begin
  inherited;
  Localizar('',' where R.Remessa = '+LastKeyFor('Last') );
end;

function TFrmRemessa.LastKeyFor;
begin
  with TIBQuery.Create(nil) do begin
    try
      DataBase := DmJanela.Q_tabela.DataBase;
      Transaction := DmJanela.Q_tabela.Transaction;
      Close;
      SQL.Text := 'Select max(Remessa) as LastKey from Remessas where DESATIVAR_REMESSA = '+QuotedStr('N');
      if Tipo = 'Client' then
        SQL.Text := SQL.Text + ' and cliente = '+IntToStr(TS_DBEdCliente.ID)
      else if Tipo = 'Date' then
        SQL.Text := SQL.Text + ' and DataAbertura = :Data'
      else if Tipo = 'TipoRemessa' then
        SQL.Text := SQL.Text + ' and Empresa = '+IntToStr(TS_DBLookupEmpresa.LookUpkeyValue)
      else if Tipo = 'Date' then
        SQL.Text := SQL.Text + ' and agente = '+IntToStr(TS_DBLookupAgente.LookUpkeyValue);

      if Tipo = 'Date' then
        Params[0].asDateTime := DMJanela.C_Tabela.FieldByName('DataAbertura').AsDateTime;

      try
        Open;
        Result := FieldByName('LastKey').asString;

        if Result = '' then
          Result := '0';
      except
        Result := '0';
      end;

      Close;
    finally
      Free;
    end;
  end;
end;

procedure TFrmRemessa.ltimoparaoCliente1Click(Sender: TObject);
begin
  inherited;
  Localizar('',' where R.Remessa = '+LastKeyFor('Client') );
end;

procedure TFrmRemessa.ltimoparaaData1Click(Sender: TObject);
begin
  inherited;
  Localizar('',' where R.Remessa = '+LastKeyFor('Date') );
end;

procedure TFrmRemessa.ltimoparaoTipoRemessa1Click(Sender: TObject);
begin
  inherited;
  Localizar('',' where R.Remessa = '+LastKeyFor('TipoRemessa') );
end;

procedure TFrmRemessa.ltimoparaoAgente1Click(Sender: TObject);
begin
  inherited;
  Localizar('',' where R.Remessa = '+LastKeyFor('Agente') );
end;

procedure TFrmRemessa.TS_DBLookupMoedaRementeChange(Sender: TObject);
begin
  inherited;
  DMRemessa.AtualizaCambios;
  AtualizaCamposCambios;
end;


procedure TFrmRemessa.TS_DBLookupEmpresaChange(Sender: TObject);
begin
  inherited;
  DMRemessa.AtualizaCambios;
  AtualizaCamposCambios;
end;

procedure TFrmRemessa.TS_DBLookupMoedaAgenteChange(Sender: TObject);
begin
  inherited;
  DMRemessa.AtualizaCambios;
  AtualizaCamposCambios;
end;

procedure TFrmRemessa.AtualizaCamposCambios;
begin
  TS_DBEdCambioEmp.Visible := not (DMRemessa.C_Tabela.FieldByName('Cambio_Emp').AsFloat = 1);
  tslbCambioEmp.Visible := TS_DBEdCambioEmp.Visible;
  TS_DBEdCambioRemessa.Visible := not (DMRemessa.C_Tabela.FieldByName('Cambio_Local').AsFloat = 1);
  TS_lbLocal.Visible := TS_DBEdCambioRemessa.Visible;
  TS_DBEdCambioag.Visible := not (DMRemessa.C_Tabela.FieldByName('Cambio_Ag').AsFloat = 1);
  TS_lbCambioAG.Visible := TS_DBEdCambioag.Visible;
end;

procedure TFrmRemessa.TS_DBLookupAgenteChange(Sender: TObject);
begin
  inherited;
  AtualizaCamposCambios;
end;

procedure TFrmRemessa.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DMRemessa.C_Tabela.edit;
  DMRemessa.C_TabelaAgente.value := DMRemessa.MelhorAgente;
  TS_DBLookupAgente.LookupKeyValue := DMRemessa.C_TabelaAgente.value;
end;

end.


