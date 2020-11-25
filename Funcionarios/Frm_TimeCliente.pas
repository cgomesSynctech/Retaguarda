unit Frm_TimeCliente;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_PADRAO, FormComponent, ImgList, TS_LastDataObject, DlgMsg,
  StdCtrls, TS_Label, ExtCtrls, TS_Image, dxfLabel, TS_MaxPanel, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, dxTLClms, dxTL, dxCntner, DB,
  TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel, dxExEdtr,
  dxEdLib, dxDBELib, TS_DBEditDate, dxEditor, TS_DBButtonEdit,
  TS_DBEditFavorecido, TS_CheckBox, TS_Shape, dxDBTLCl, dxGrClms, Menus,
  TS_PopupMenu, Variants, BTOdeum, Placemnt, dxfProgressBar;

type
  TFrmTimeCliente = class(TFrmPadrao)
    dbgProducao: TTS_QDBGrid;
    dbgProducaoPRODUCAO: TdxDBGridMaskColumn;
    dbgProducaoQTDHORAS: TdxDBGridMaskColumn;
    dbgProducaoVALORHORA: TdxDBGridMaskColumn;
    dbgProducaoVALORCONTRATO: TdxDBGridMaskColumn;
    dbgProducaoNUMINVOICE: TdxDBGridMaskColumn;
    dbgProducaoDESC_PAYROLL: TdxDBGridMaskColumn;
    dbgProducaoItem: TdxDBGridLookupColumn;
    dbgProducaoPayItem: TdxDBGridLookupColumn;
    GridCHAVECLIENTE: TdxDBGridMaskColumn;
    GridFAVORECIDO: TdxDBGridMaskColumn;
    GridDATAINICIO: TdxDBGridDateColumn;
    GridDATAFIM: TdxDBGridDateColumn;
    GridNOME: TdxDBGridMaskColumn;
    dbgProducaoColumn12: TdxDBGridColumn;
    dbgProducaoColumn13: TdxDBGridColumn;
    ppmGridProd: TTS_PopupMenu;
    AlterarInvoice1: TMenuItem;
    AdicionarnaInvoice1: TMenuItem;
    AdicionarparaContratosdoCliente1: TMenuItem;
    dbgProducaoSAIDAITEM: TdxDBGridColumn;
    dbgProducaoSAIDA: TdxDBGridColumn;
    N4: TMenuItem;
    NovoFuncionrio1: TMenuItem;
    NovoItemdeServio1: TMenuItem;
    dbgProducaoFunc: TdxDBGridButtonColumn;
    dbgProducaoAgrupamento: TdxDBGridColumn;
    ppmUltimo: TTS_PopupMenu;
    ltimaProduo1: TMenuItem;
    N5: TMenuItem;
    ltimaparaoCliente1: TMenuItem;
    dbgProducaoMetodoCliente: TdxDBGridColumn;
    TS_SpeedButton3: TTS_SpeedButton;
    dbgProducaoColumn19: TdxDBGridColumn;
    AlterarInvoice2: TMenuItem;
    pnBarra: TTS_Panel;
    cbInvoices: TTS_CheckBox;
    cbPayroll: TTS_CheckBox;
    cbAtualizarContrato: TTS_CheckBox;
    TS_Panel1: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_SpeedButton1: TTS_SpeedButton;
    TS_SpeedButton2: TTS_SpeedButton;
    btLoadContratos: TTS_SpeedButton;
    dfCliente: TTS_DBEditFavorecido;
    dfDataI: TTS_DBEditDate;
    cbLockDates: TTS_CheckBox;
    dfDataF: TTS_DBEditDate;
    TS_Panel3: TTS_Panel;
    btLoadUltimaProducao: TTS_SpeedButton;
    dbgProducaoQtdHoras_User: TdxDBGridMaskColumn;
    cbImprimir: TTS_CheckBox;
    btImprimir: TTS_SpeedButton;
    dbgProducaoDESPESAS: TdxDBGridMaskColumn;
    N6: TMenuItem;
    ProduessemInvoiceGerada1: TMenuItem;
    ProduessemPayrollGerado1: TMenuItem;
    procedure btLoadContratosClick(Sender: TObject);
    procedure dbgProducaoEnter(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure cbLockDatesChange(Sender: TObject);
    procedure dfDataIExit(Sender: TObject);
    procedure dfDataFExit(Sender: TObject);
    procedure dbgProducaoPayItemEditButtonClick(Sender: TObject);
    procedure dbgProducaoPayItemCloseUp(Sender: TObject;
      var Value: Variant; var Accept: Boolean);
    procedure dfClienteSelecionou(Sender: TObject);
    procedure dbgProducaoTS_AfterNewRecord(Sender: TObject);
    procedure ppmGridProdPopup(Sender: TObject);
    procedure FormComponentEstado_Inicial(Sender: TObject;
      var bSkip: Boolean);
    procedure FormComponentEstado_Navegacao(Sender: TObject;
      var bSkip: Boolean);
    procedure AlterarInvoice1Click(Sender: TObject);
    procedure AdicionarnaInvoice1Click(Sender: TObject);
    procedure AdicionarparaContratosdoCliente1Click(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure FormComponentGravou(Sender: TObject);
    procedure dbgProducaoTS_AfterDeleteAll(Sender: TObject);
    procedure NovoFuncionrio1Click(Sender: TObject);
    procedure NovoItemdeServio1Click(Sender: TObject);
    procedure FormComponentRefresh(Sender: TObject; var bSkip: Boolean);
    procedure dbgProducaoTS_BeforeDeleteAll(Sender: TObject;
      var CanDelete: Boolean);
    procedure dbgProducaoFuncButtonClick(Sender: TObject;
      AbsoluteIndex: Integer);
    procedure dbgProducaoCustomDrawFooter(Sender: TObject;
      ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
      AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
      AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
    procedure ltimaProduo1Click(Sender: TObject);
    procedure ltimaparaoCliente1Click(Sender: TObject);
    procedure dbgProducaoCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure TS_SpeedButton3Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure AlterarInvoice2Click(Sender: TObject);
    procedure dbgProducaoColumnClick(Sender: TObject;
      Column: TdxDBTreeListColumn);
    procedure btLoadUltimaProducaoClick(Sender: TObject);
    procedure cbAtualizarContratoClick(Sender: TObject);
    procedure FormComponentBeforeClearParams(Sender: TObject);
    procedure dbgProducaoDblClick(Sender: TObject);
    procedure btImprimirClick(Sender: TObject);
    procedure FormComponentAfterScroll(Sender: TObject);
    procedure dbgProducaoEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure ProduessemInvoiceGerada1Click(Sender: TObject);
    procedure ProduessemPayrollGerado1Click(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    function LastKeyFor(Tipo: String): String;
    procedure GeraPayroll;

  public
    { Public declarations }
  end;

var
  FrmTimeCliente: TFrmTimeCliente;

implementation
  uses DM_Projeto, DM_TimeCliente, Funcoes, dlg_LegendaProd;

{$R *.DFM}

procedure TFrmTimeCliente.btLoadContratosClick(Sender: TObject);
begin
  inherited;
  ActiveControl := dbgProducao;
  if (ActiveControl = dbgProducao) then 
    if DMTimeCliente.bAlteracao then
      dbgProducao.ShowEditor; //Para burlar erro de type convertion

  with DMTimeCliente do begin

    C_Contratos.Close;
    C_Contratos.Open;

    if C_Contratos.IsEmpty then
      Exit;

    // C_Producoes.EmptyDataSet;

    C_Contratos.First;
    while not C_Contratos.EOF do begin
      //if C_ContratosFuncPayItem.Value <> 0 then begin
        if not C_Producoes.Locate('Contrato', C_ContratosContrato.Value, []) then begin
          	C_Producoes.Append;
          	C_ProducoesContrato.Value := C_ContratosContrato.Value;
          	C_Producoes.Post;
        end;
      //end;

      C_Contratos.Next;
    end;

  end;
  DMTimeCliente.C_Producoes.First;
  if dbgProducaoQtdHoras_User.Visible then
  	dbgProducao.TS_SelectedColumn := 'QTDHORAS_USER'
  else
	  dbgProducao.TS_SelectedColumn := 'QTDHORAS';
end;

procedure TFrmTimeCliente.dbgProducaoEnter(Sender: TObject);
begin
  inherited;

  if DMTimeCliente.C_TabelaFavorecido.Value = 0 then begin
    DlgMsg.ShowMsg(543);
    ActiveControl := dfCliente;
    Raise Exception.Create('@@');
  end;


  {Verificando se a Produção já está cadastrada}
{
  with DMTimeCliente do
    if not bAlteracao and (C_TabelaFavorecido.Value <> 0) then with Q_SQL do begin
      Close;
      SQL.Text := 'Select ChaveCliente From ProducoesChaveCli '+
                  'where Favorecido = :F and DataInicio = :DI and DataFim = :DF ';
      Params[0].asInteger := C_TabelaFavorecido.Value;
      Params[1].asDate    := Trunc(C_TabelaDataInicio.Value);
      Params[2].asDate    := Trunc(C_TabelaDataFim.Value);
      Open;

      if (RecordCount > 0) and (DlgMsg.ShowMsg(1995) = 100) then
        Self.Localizar('',' where pf.ChaveCliente = '+FieldByName('ChaveCliente').asString );

      Close;

    end;
}
end;

procedure TFrmTimeCliente.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  ActiveControl := dfDataI;

  DMTimeCliente.C_Tabela.Edit;
  DMTimeCliente.C_TabelaDataInicio.Value := DMTimeCliente.C_TabelaDataInicio.Value - 7;
  DMTimeCliente.C_TabelaDataFim.Value := DMTimeCliente.C_TabelaDataFim.Value - 7;
end;

procedure TFrmTimeCliente.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;

  ActiveControl := dfDataI;

  DMTimeCliente.C_Tabela.Edit;
  DMTimeCliente.C_TabelaDataInicio.Value := DMTimeCliente.C_TabelaDataInicio.Value + 7;
  DMTimeCliente.C_TabelaDataFim.Value := DMTimeCliente.C_TabelaDataFim.Value + 7;
end;

procedure TFrmTimeCliente.cbLockDatesChange(Sender: TObject);
begin
  inherited;
  if cbLockDates.Checked then begin
    DMTimeCliente.dDataI := DMTimeCliente.C_TabelaDataInicio.Value;
    DMTimeCliente.dDataF := DMTimeCliente.C_TabelaDataFim.Value;
    end
  else begin
    DMTimeCliente.dDataI := PrimeiroDiaDaSemana(DMProjeto.dDataSistema);
    DMTimeCliente.dDataF := DMTimeCliente.dDataI + 6;
  end;
end;

procedure TFrmTimeCliente.dfDataIExit(Sender: TObject);
begin
  inherited;
  if cbLockDates.Checked and (DMTimeCliente.C_TabelaDataInicio.Value > 0) then
    DMTimeCliente.dDataI := DMTimeCliente.C_TabelaDataInicio.Value;
end;

procedure TFrmTimeCliente.dfDataFExit(Sender: TObject);
begin
  inherited;
  if cbLockDates.Checked and (DMTimeCliente.C_TabelaDataFim.Value > 0) then
    DMTimeCliente.dDataF := DMTimeCliente.C_TabelaDataFim.Value;
end;

procedure TFrmTimeCliente.dbgProducaoPayItemEditButtonClick(
  Sender: TObject);
begin
  inherited;
{
  if DMTimeCliente.C_ProducoesFuncionario.asString <> '' then
    DMTimeCliente.C_PayrollItens.Filter := ' FUNCIONARIO = '+DMTimeCliente.C_ProducoesFuncionario.asString
  else
    DMTimeCliente.C_PayrollItens.Filter := ' FUNCIONARIO = 0 ';
  DMTimeCliente.C_PayrollItens.Filtered := true;
}
end;

procedure TFrmTimeCliente.dbgProducaoPayItemCloseUp(Sender: TObject;
  var Value: Variant; var Accept: Boolean);
begin
  inherited;
//  Accept := true;
//  DMTimeCliente.C_PayrollItens.Filtered := False;
end;

procedure TFrmTimeCliente.dfClienteSelecionou(Sender: TObject);
begin
  inherited;
  btLoadContratos.Enabled :=  DMTimeCliente.C_Contratos.RecordCount > 0;
  btLoadUltimaProducao.Enabled := true;
  DMTimeCliente.C_TabelaCodigoCliente.Value := DMProjeto.C_LocalizarFavCodigo.AsString;
end;

procedure TFrmTimeCliente.dbgProducaoTS_AfterNewRecord(Sender: TObject);
begin
  inherited;
  dbgProducao.TS_SelectedColumn := 'Nome';
end;

procedure TFrmTimeCliente.ppmGridProdPopup(Sender: TObject);
begin
  inherited;
  AlterarInvoice1.Enabled 		:= DMTimeCliente.bAlteracao and (DMTimeCliente.C_ProducoesSAIDAITEM.Value <> 0);
  AdicionarnaInvoice1.Enabled := DMTimeCliente.bAlteracao;
  AdicionarparaContratosdoCliente1.Enabled := (DMTimeCliente.C_ProducoesITEM.Value <> 0) and
                                              (DMTimeCliente.C_ProducoesFuncPayItem.Value <> 0);
end;

procedure TFrmTimeCliente.FormComponentEstado_Inicial(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  btComando1.Visible := false;
  btComando2.Visible := false;
  btImprimir.Visible := false;
  pnBarra.Visible := true;
  dbgProducao.TS_ShowSelectionColumn := false;
  btLoadContratos.Enabled := false;
  btLoadUltimaProducao.Enabled := false;
  cbAtualizarContrato.Checked  := false;
end;

procedure TFrmTimeCliente.FormComponentEstado_Navegacao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  pnBarra.Visible    := false;

  btComando1.Visible := true;
  btComando2.Visible := true;
  btImprimir.Visible := true;
  dbgProducao.TS_ShowSelectionColumn := True;
  if dbgProducao.FindColumnByFieldName('_icSelecionado') <> nil then
  	dbgProducao.FindColumnByFieldName('_icSelecionado').ColIndex := 0;
  btLoadContratos.Enabled :=  DMTimeCliente.C_Contratos.RecordCount > 0;
  btLoadUltimaProducao.Enabled := true;
  cbAtualizarContrato.Checked  := false;
end;

procedure TFrmTimeCliente.AlterarInvoice1Click(Sender: TObject);
var
  sSaidasItems, sInvoice : String;
begin
  inherited;
  if dbgProducao.nQuantidadeSelecionada = 0 then
    dbgProducao.Selecionar;

  btGravarClick(self);

  if dbgProducao.nQuantidadeSelecionada = 0 then
    exit;

  sSaidasItems := dbgProducao.Distinct('NUMINVOICE', True);
  if ContaStrings(sSaidasItems,',') > 1 then begin
    DlgMsg.ShowMsg(1899);
    exit;
  end;

  sSaidasItems := dbgProducao.Distinct('SAIDAITEM', True);
  sInvoice     := dbgProducao.Distinct('SAIDA', True);
  if ContaStrings(sInvoice,',') > 1 then
    sInvoice := SeparaStrings(sInvoice,',',1);

  {Escolhendo nova Invoice}
  {A Invoice escolhida é retornada atravez de LastDataObject}
  DMProjeto.SetParametrosForm( [DMTimeCliente.C_TabelaFavorecido.Value, 1, DMTimeCliente.C_ProducoesSaida.Value] );
  DMProjeto.CriarForm('DlgEscolherSaida', self, true );

  if LastDataObject.TableName = 'SAIDA-ESCOLHIDA' then begin
    {Chamando a tela de Invoice para realizar a troca e atualizar a contabilidade}
    DMProjeto.SetParametrosForm( [StrToIntDef(sInvoice,0), 1,
                                  'TROCA DE INVOICE',
                                  sSaidasItems,
                                  LastDataObject.ObjectKey]);
    DMProjeto.CriarForm('FrmInvoices', self, true );
  end;

  dbgProducao.LimparSelecionados;

  Localizar('', ' where ChaveCliente = ' + DMTimeCliente.C_TabelaChaveCliente.asString );

end;

procedure TFrmTimeCliente.AdicionarnaInvoice1Click(Sender: TObject);
var
  s : String;
begin
  inherited;

  if dbgProducao.nQuantidadeSelecionada = 0 then
    dbgProducao.Selecionar;

  btGravarClick(self);

  if dbgProducao.nQuantidadeSelecionada = 0 then
    exit;

  s:= dbgProducao.Distinct('NUMINVOICE', True);
  if ContaStrings(s,',') > 0 then begin
    DlgMsg.ShowMsg(1994);
    exit;
  end;

  s := dbgProducao.Selecionados;

  {Escolhendo nova Invoice}
  {A Invoice escolhida é retornada atravez de LastDataObject}
  DMProjeto.SetParametrosForm( [DMTimeCliente.C_TabelaFavorecido.Value, 1] );
  DMProjeto.CriarForm('DlgEscolherSaida', self, true);

  if LastDataObject.TableName = 'SAIDA-ESCOLHIDA' then begin
    {Chamando a tela de Invoice para realizar a troca e atualizar a contabilidade}
    DMProjeto.SetParametrosForm( [LastDataObject.ObjectKey, 1,
                                  'ADICIONAR NA INVOICE', s ] );
    DMProjeto.CriarForm('FrmInvoices', self, true );
  end;

  dbgProducao.LimparSelecionados;

  Localizar('', ' where ChaveCliente = ' + DMTimeCliente.C_TabelaChaveCliente.asString );
end;

procedure TFrmTimeCliente.AdicionarparaContratosdoCliente1Click(
  Sender: TObject);
begin
  inherited;
  if dbgProducao.nQuantidadeSelecionada = 0 then
    dbgProducao.Selecionar;

  if dbgProducao.nQuantidadeSelecionada = 0 then
    exit;

  if DlgMsg.ShowMsg(1898) <> 100 then
    exit;

  DMTimeCliente.AdicionarParaContratos(dbgProducao.Selecionados);

  dbgProducao.LimparSelecionados;
  btLoadContratos.Enabled :=  DMTimeCliente.C_Contratos.RecordCount > 0;

end;

procedure TFrmTimeCliente.btComando1Click(Sender: TObject);
var
  sTipoGeracao : String;
  sUpdates : String;
begin
  inherited;
  btGravarClick(self);

  sUpdates := dbgProducao.Selecionados(' saidaitem is not null ');

  sTipoGeracao := 'GERAR INVOICE';
  if dbgProducao.nQuantidadeSelecionada = 0 then begin
    dbgProducao.SelectAll( ' SAIDAITEM is null ' );
    sTipoGeracao := 'GERAR INVOICE NP';
  end;

  if sUpdates = '' then begin
    if sTipoGeracao = 'GERAR INVOICE' then
      DMProjeto.SetParametrosForm( [null, 1, sTipoGeracao, DMTimeCliente.C_TabelaFavorecido.Value,
                                   dbgProducao.Selecionados ] )
    else
      DMProjeto.SetParametrosForm( [null, 1, sTipoGeracao, DMTimeCliente.C_TabelaFavorecido.Value,
                                    DMtimeCliente.C_TabelaChaveCliente.Value ] );
  end else begin
    DMProjeto.SetParametrosForm( [null, 1, 'UPDATE PRODUCOES', DMTimeCliente.C_TabelaFavorecido.Value,
                                  sUpdates + ',' + dbgProducao.Selecionados ] );
  end;

  DMProjeto.CriarForm('FrmInvoices', self, true );

  dbgProducao.LimparSelecionados;
  Localizar('', ' where ChaveCliente = ' + DMTimeCliente.C_TabelaChaveCliente.asString );
end;

procedure TFrmTimeCliente.FormComponentGravou(Sender: TObject);
begin
  inherited;
  if not DMTimeCliente.bAlteracao then begin

    if cbImprimir.Checked then begin
    	DMProjeto.SetParametrosForm([null,'0',dfDataI.Date,dfDataF.Date,IntToStr(dfCliente.ID)]);
      DMProjeto.CriarForm('RptConferProducoes',self,true);
    end;

    if cbInvoices.Checked then begin
      DMProjeto.SetParametrosForm( [null, 1, 'GERAR INVOICE NP', DMTimeCliente.C_TabelaFavorecido.Value,
                                    DMtimeCliente.C_TabelaChaveCliente.Value ] );
      DMProjeto.CriarForm('FrmInvoices', self, true );
    end;

    if cbPayroll.Checked then
    	GeraPayroll;

  end;
end;

procedure TFrmTimeCliente.GeraPayroll;
var sFuncionarios, sPayrollItens : string;
begin

			if DMTimeCliente.C_ProducoesPayroll.AsInteger <> 0 then begin
      	DlgMsg.ShowMsg(3200);
        Exit;
      end;
      sPayrollItens := '';
      sFuncionarios := '';
      with DMTimeCliente.C_Producoes do begin
      	DisableControls;
        First;
        while not EOF do begin
        	sFuncionarios := CExp(sFuncionarios,',') + FieldByName('Funcionario').AsString;
          sPayrollItens := CExp(sPayrollItens,',') + FieldByName('FuncPayItem').AsString;
          Next;
        end;
        First;
        EnableControls;
      end;
      DMProjeto.SetParametrosForm( [null, DMTimeCliente.C_TabelaCodigoCliente.Asstring+' - '+DMTimeCliente.C_TabelaDataInicio.AsString+' a '+DMTimeCliente.C_TabelaDataFim.AsString,
                                    DMTimeCliente.C_TabelaFavorecido.Value,
                                    DMtimeCliente.C_TabelaDataInicio.Value,
                                    DMtimeCliente.C_TabelaDataFim.Value,
                                    sFuncionarios,
                                    sPayrollItens] );
      DMProjeto.CriarForm('FrmPayrolls', self, true );
end;

procedure TFrmTimeCliente.dbgProducaoTS_AfterDeleteAll(Sender: TObject);
begin
  inherited;
  if DMTimeCliente.bAlertarInvoice then
    DlgMsg.ShowMsg(1895);

  if DMTimeCliente.bAlertarPayroll then
    DlgMsg.ShowMsg(1896);
end;

procedure TFrmTimeCliente.NovoFuncionrio1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.CriarForm('FrmFuncionarios', self, true);
end;

procedure TFrmTimeCliente.NovoItemdeServio1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([null,3]);
  DMProjeto.CriarForm('FrmItens', self, true);
end;

procedure TFrmTimeCliente.FormComponentRefresh(Sender: TObject;
  var bSkip: Boolean);
var
  sID : String;
begin
  inherited;
  sID := IIF(DMTimeCliente.C_TabelaChaveCliente.Value > 0, DMTimeCliente.C_TabelaChaveCliente.asString, '');

  if (sID <> '') and ((LastDataObject.TableName = 'SAIDAS') or (LastDataObject.TableName = 'RETIRADAS'))then
    Localizar('', ' where ChaveCliente = ' + sID );

  if (ActiveControl = dfCliente) and (LastDataObject.TableName = 'FAVORECIDOS') then
    dfCliente.ID := LastDataObject.ObjectKey;

  if (ActiveControl <> dfCliente) and (LastDataObject.TableName = 'FAVORECIDOS') then
    dbgProducao.TS_ID := LastDataObject.ObjectKey;

  if LastDataObject.TableName = 'PAYROLLITENS' then begin
    DMTimeCliente.C_PayrollItens.Close;
    DMTimeCliente.C_PayrollItens.Open;
    if (DMTimeCliente.C_Producoes.State in [dsBrowse]) then
    	DMTimeCliente.C_Producoes.Edit;
    DMTimeCliente.C_ProducoesFuncPayItem.Value := LastDataObject.ObjectKey;
  end;

  if UpperCase(LastDataObject.TableName) = 'ITENS' then begin
    if (DMTimeCliente.C_Producoes.State in [dsBrowse]) then
    	DMTimeCliente.C_Producoes.Edit;
    DMTimeCliente.C_Itens.Close;
    DMTimeCliente.C_Itens.Open;
  	DMTimeCliente.C_ProducoesItem.Value := LastDataObject.ObjectKey;
  end;
end;

procedure TFrmTimeCliente.dbgProducaoTS_BeforeDeleteAll(Sender: TObject;
  var CanDelete: Boolean);
begin
  inherited;
  DMTimeCliente.bAlertarInvoice := false;
  DMTimeCliente.bAlertarPayroll := false;
end;

procedure TFrmTimeCliente.dbgProducaoFuncButtonClick(Sender: TObject;
  AbsoluteIndex: Integer);
begin
  inherited;
  if AbsoluteIndex = 1 then begin
    DMProjeto.SetParametrosForm([ DMTimeCliente.C_ProducoesFuncionario.asVariant, 3 ]);
    DMProjeto.CriarForm('FrmFuncionarios', self, true);
  end;

end;

procedure TFrmTimeCliente.dbgProducaoCustomDrawFooter(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; var AText: String; var AColor: TColor;
  AFont: TFont; var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;

  if TdxDBGridColumn(AColumn).FieldName = 'TotalPgto' then
    AFont.Color := clRed;
  if TdxDBGridColumn(AColumn).FieldName = 'TotalCobrar' then
    AFont.Color := clBlue;

end;

Function TFrmTimeCliente.LastKeyFor(Tipo : String) : String;
begin
  with DMTimeCliente.Q_SQL do begin
    Close;
    SQL.Text := 'Select max(ChaveCliente) as LastKey from ProducoesChaveCli where ';
    if Tipo = 'Last' then
      SQL.Text := SQL.Text + ' ChaveCliente > 0 '
    else if Tipo = 'Client' then
      SQL.Text := SQL.Text + ' Favorecido = '+IntToStr(dfCliente.ID);
                          //   ' DataINICIO = (Select Max(DataINICIO) from ProducoesChaveCli where Favorecido = '+DMTimeCliente.C_TabelaFavorecido.asString+') ';



    try
      Open;
      Result := FieldByName('LastKey').asString;

      if Result = '' then
        Result := '0';
    except
      Result := '0';
    end;

    Close;

  end;

end;

procedure TFrmTimeCliente.ltimaProduo1Click(Sender: TObject);
begin
  inherited;
  Estado_Inicial;
  Localizar('',' where ChaveCliente = '+LastKeyFor('Last') );
end;

procedure TFrmTimeCliente.ltimaparaoCliente1Click(Sender: TObject);
begin
  inherited;
  Localizar('',' where ChaveCliente = '+LastKeyFor('Client') );
end;

procedure TFrmTimeCliente.dbgProducaoCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
var
  sMtdFunc, sMtdCliente : String;
  bFaturado, bPago : Boolean;
begin
  inherited;

  sMtdFunc    := dbgProducao.GetFieldValue(ANode, 'MetodoFunc', 'H');
  sMtdCliente := dbgProducao.GetFieldValue(ANode, 'MetodoCliente', 'H');

  bFaturado   := dbgProducao.GetFieldValue(ANode, 'NUMINVOICE', '', True) <> '';
  bPago       := dbgProducao.GetFieldValue(ANode, 'DESC_PAYROLL', '', True) <> '';

  if bFaturado then
    AColor := $00F5EBDE;

  if bPago then
    AFont.Style := AFont.Style + [fsItalic];

  if sMtdCliente = 'V' then begin
    if (TdxDBGridColumn(AColumn).FieldName <> 'VALORHORA') AND
       (TdxDBGridColumn(AColumn).FieldName <> 'VALORCONTRATO') AND
       (TdxDBGridColumn(AColumn).FieldName <> 'TotalPgto') AND
       (TdxDBGridColumn(AColumn).FieldName <> 'TotalCobrar') then
      AFont.Color := clFuchsia;
    if TdxDBGridColumn(AColumn).FieldName = 'VALORCONTRATO' then
      AText := '(V) '+AText;
  end else
    if TdxDBGridColumn(AColumn).FieldName = 'VALORCONTRATO' then
      AText := '(H) '+AText;

  if (sMtdFunc = 'V') and (TdxDBGridColumn(AColumn).FieldName = 'VALORHORA') then
    AText := '(V) '+AText;

end;

procedure TFrmTimeCliente.TS_SpeedButton3Click(Sender: TObject);
begin
  inherited;
  dlgLegendaProd := TdlgLegendaProd.Create(Self);
  dlgLegendaProd.ShowModal;
  dlgLegendaProd.Release;
end;

procedure TFrmTimeCliente.btComando2Click(Sender: TObject);
begin
  inherited;
  btGravarClick(self);
	GeraPayroll;
end;

procedure TFrmTimeCliente.AlterarInvoice2Click(Sender: TObject);
begin
  inherited;
	if not DMTimeCliente.C_ProducoesSaida.IsNull then begin
  	with DMProjeto do begin
    	SetParametrosForm([DMTimeCliente.C_ProducoesSaida.AsInteger]);
      CriarForm('FrmInvoices',self,true);
    end;
  end;
end;

procedure TFrmTimeCliente.dbgProducaoColumnClick(Sender: TObject;
  Column: TdxDBTreeListColumn);
begin
  inherited;
  if TdxDBGridColumn(Column).FieldName = 'lkItem' then begin
    DMProjeto.SetParametrosForm([DMTimeCliente.C_ProducoesItem.asVariant, 3]);
    DMProjeto.CriarForm('FrmItens', Self, true);
  end;
  if TdxDBGridColumn(Column).FieldName = 'lkPayItem' then begin
    LastDataObject.TableName := '';
    DMProjeto.SetParametrosForm([ DMTimeCliente.C_ProducoesFuncPayItem.asVariant, 1 ]);
    DMProjeto.CriarForm('FrmPayrollItems', self, true);
  end;
end;

procedure TFrmTimeCliente.btLoadUltimaProducaoClick(Sender: TObject);
begin
  inherited;
  with DMTimeCliente do begin
  	C_Producoes.DisableControls;
  	C_Producoes.First;
  	while not C_Producoes.EOF do
  		C_Producoes.Delete;
  	C_Producoes.EnableControls;
  end;
	with DMTimeCliente.Q_SQLi do begin
  	Close;
    SQL.Text := 'select pf.*, f.nome from producoesfunc pf, favorecidos f '+
    						'where ChaveCliente = '+LastKeyFor('Client')+' and pf.funcionario = f.favorecido';
    Open;
    First;
    while not eof do begin
      DMTimeCliente.C_Producoes.Append;
      DMTimeCliente.C_ProducoesFuncionario.Value := fieldbyname('funcionario').AsInteger;
    	DMTimeCliente.C_ProducoesNome.Value 			 := fieldbyname('nome').AsString;
      DMTimeCliente.C_ProducoesFuncPayItem.Value := fieldbyname('funcpayitem').AsInteger;
      DMTimeCliente.C_ProducoesItem.Value				 := fieldbyname('item').AsInteger;
      DMTimeCliente.C_ProducoesQtdHoras.Value		 := fieldbyname('qtdhoras').AsCurrency;
      DMTimeCliente.C_ProducoesValorHora.Value	 := fieldbyname('valorhora').AsCurrency;
      DMTimeCliente.C_ProducoesValorContrato.Value := fieldbyname('valorcontrato').AsCurrency;
      DMTimeCliente.C_ProducoesContrato.OnChange := nil;
      DMTimeCliente.C_ProducoesContrato.Value		 := fieldbyname('contrato').AsInteger;
      DMTimeCliente.C_ProducoesContrato.OnChange := DMTimeCliente.C_ProducoesContratoChange;
      DMTimeCliente.C_ProducoesAgrupamento.Value := fieldbyname('agrupamento').AsInteger;
      DMTimeCliente.C_Producoes.Post;
      Next;
    end;
    Close;
  end;
end;

procedure TFrmTimeCliente.cbAtualizarContratoClick(Sender: TObject);
begin
  inherited;
	DMTimeCliente.bAtualizarContrato := cbAtualizarContrato.Checked;
end;

procedure TFrmTimeCliente.FormComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then begin
    dbgProducaoQtdHoras_User.Visible := false;
    dbgProducaoQtdHoras.Visible := true;
  end else begin
    dbgProducaoQtdHoras.Visible := false;
    dbgProducaoQtdHoras_User.Visible := true;
  end;
end;

procedure TFrmTimeCliente.dbgProducaoDblClick(Sender: TObject);
begin
  inherited;
	if dbgProducao.TS_SelectedColumn = 'DESC_PAYROLL' then begin
  	DMProjeto.SetParametrosForm([DMTimeCliente.C_ProducoesPayroll.AsVariant]);
    DMProjeto.CriarForm('FrmPayrolls',self,true);
  end else if dbgProducao.TS_SelectedColumn = 'NUMINVOICE' then begin
  	DMProjeto.SetParametrosForm([DMTimeCliente.C_ProducoesSaida.AsVariant]);
    DMProjeto.CriarForm('FrmInvoices',self,true);
  end;
end;

procedure TFrmTimeCliente.btImprimirClick(Sender: TObject);
begin
  inherited;
 	DMProjeto.SetParametrosForm([null,'0',dfDataI.Date,dfDataF.Date,IntToStr(dfCliente.ID)]);
  DMProjeto.CriarForm('RptConferProducoes',self,true);
end;

procedure TFrmTimeCliente.FormComponentAfterScroll(Sender: TObject);
begin
  inherited;
  cbAtualizarContrato.Checked := false;
end;

procedure TFrmTimeCliente.dbgProducaoEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;
  if dbgProducao.TS_SelectedColumn = 'DESPESAS' then begin
    if not dbgProducao.IsEOF then
       dbgProducao.GotoNext(false);
    if dbgProducaoQTDHORAS.Visible then
      dbgProducao.TS_SelectedColumn := 'QTDHORAS'
    else
     dbgProducao.TS_SelectedColumn := 'QTDHORAS_USER';
    abort;
  end;
end;

procedure TFrmTimeCliente.ProduessemInvoiceGerada1Click(Sender: TObject);
var
  sProds : String;
begin
  inherited;
  with DMTimeCliente.Q_SQL do begin
    Close;
    SQL.Text := 'Select Distinct ChaveCliente from ProducoesFunc where SaidaItem is null ';
    Open;

    sProds := '';
    while not EOF do begin
      sProds := CExp(sProds, ',') + FieldByName('ChaveCliente').asString;
      Next;
    end;

    Close;

    if sProds <> '' then
      Localizar('',' where ChaveCliente in ('+sProds+ ') ' );
  end;
end;

procedure TFrmTimeCliente.ProduessemPayrollGerado1Click(Sender: TObject);
var
  sProds : String;
begin
  inherited;
  with DMTimeCliente.Q_SQL do begin
    Close;
    SQL.Text := 'Select Distinct ChaveCliente from ProducoesFunc where Payroll is null ';
    Open;

    sProds := '';
    while not EOF do begin
      sProds := CExp(sProds, ',') + FieldByName('ChaveCliente').asString;
      Next;
    end;

    Close;

    if sProds <> '' then
      Localizar('',' where ChaveCliente in ('+sProds+ ') ' );
  end;

end;

procedure TFrmTimeCliente.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if ( Shift = [ssCtrl, ssAlt]) and (Key = Ord('P')) then
    ProduessemPayrollGerado1Click(self);
  if ( Shift = [ssCtrl, ssAlt]) and (Key = Ord('I')) then
    ProduessemInvoiceGerada1Click(self);
end;

end.
