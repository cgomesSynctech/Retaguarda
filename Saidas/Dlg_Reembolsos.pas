unit Dlg_Reembolsos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, FormsComponent, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls, TS_Image,
  dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, ComCtrls, TS_PageControl, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, Db, DBClient, Provider, IBCustomDataSet,
  IBUpdateSQL, IBQuery, dxEditor, dxExEdtr, dxEdLib, TS_PopupEdit,
  TS_CheckBox, DBText, TS_DBTextEffect, dxDBTLCl, dxGrClms, Dlg_PopupContas,
  dxGrClEx, DM_Saidas, BTOdeum, Placemnt;

type
  TDlgReembolsos = class(TFrmModeloCadastros)
    TS_PageControl1: TTS_PageControl;
    TS_Panel1: TTS_Panel;
    tsProducoes: TTS_TabSheet;
    tsItens: TTS_TabSheet;
    tsDespesas: TTS_TabSheet;
    TS_Label1: TTS_Label;
    lbTotal: TTS_Label;
    dbgProd: TTS_QDBGrid;
    dbgItens: TTS_QDBGrid;
    dbgDesp: TTS_QDBGrid;
    Q_Producoes: TIBQuery;
    U_Producoes: TIBUpdateSQL;
    P_Producoes: TDataSetProvider;
    C_Producoes: TClientDataSet;
    C_ProducoesDS: TDataSource;
    Q_Itens: TIBQuery;
    U_Itens: TIBUpdateSQL;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_ItensDS: TDataSource;
    Q_Despesas: TIBQuery;
    U_Despesas: TIBUpdateSQL;
    P_Despesas: TDataSetProvider;
    C_Despesas: TClientDataSet;
    C_DespesasDS: TDataSource;
    dbtNumero: TTS_DBTextEffect;
    C_ProducoesPRODUCAO: TIntegerField;
    C_ProducoesDATAINICIO: TDateField;
    C_ProducoesDATAFIM: TDateField;
    C_ProducoesFAVORECIDO: TIntegerField;
    C_ProducoesFUNCIONARIO: TIntegerField;
    C_ProducoesCONTRATO: TIntegerField;
    C_ProducoesITEM: TIntegerField;
    C_ProducoesFUNCPAYITEM: TIntegerField;
    C_ProducoesVALORHORA: TBCDField;
    C_ProducoesVALORCONTRATO: TBCDField;
    C_ProducoesPAYROLL: TIntegerField;
    C_ProducoesSAIDAITEM: TIntegerField;
    C_ProducoesCHAVECLIENTE: TIntegerField;
    C_ProducoesCHAVEFUNC: TIntegerField;
    C_ProducoesAGRUPAMENTO: TIntegerField;
    C_ProducoesNAOCOBRAR: TStringField;
    C_ProducoesDESCRICAO: TStringField;
    C_ProducoesNOME: TStringField;
    C_Producoes_icSelecionado: TIntegerField;
    dbgProdDATAINICIO: TdxDBGridDateColumn;
    dbgProdDATAFIM: TdxDBGridDateColumn;
    dbgProdQTDHORAS: TdxDBGridMaskColumn;
    dbgProdVALORCONTRATO: TdxDBGridMaskColumn;
    dbgProdDESCRICAO: TdxDBGridMaskColumn;
    dbgProdNOME: TdxDBGridMaskColumn;
    dbgProdValorHora: TdxDBGridColumn;
    C_ProducoesicTotalCliente: TCurrencyField;
    dbgProdTotalCliente: TdxDBGridColumn;
    dbgProdNAOCOBRAR: TdxDBGridCheckColumn;
    C_ItensPRECO: TFloatField;
    C_ItensNAOCOBRAR: TStringField;
    C_ItensSAIDAITEM: TIntegerField;
    C_ItensDESCRICAO: TStringField;
    C_ItensREFERENCIA: TStringField;
    C_ItensCODIGO: TStringField;
    C_Itens_icSelecionado: TIntegerField;
    C_ItensicValor: TCurrencyField;
    C_ItensENTRADAITEM: TIntegerField;
    dbgItensQUANTIDADE: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensREFERENCIA: TdxDBGridMaskColumn;
    dbgItensCODIGO: TdxDBGridMaskColumn;
    dbgItensicValor: TdxDBGridColumn;
    C_ItensicTotalItem: TCurrencyField;
    dbgItensSubTotal: TdxDBGridColumn;
    dbgItensNAOCOBRAR: TdxDBGridCheckColumn;
    C_ItensITEM: TIntegerField;
    C_DespesasCONTAOPERACAO: TIntegerField;
    C_DespesasCONTA: TIntegerField;
    C_DespesasIDGERADOR: TIntegerField;
    C_DespesasORIGEM: TIntegerField;
    C_DespesasHISTORICO: TStringField;
    C_DespesasCLIENTEREF: TIntegerField;
    C_DespesasVALOR: TBCDField;
    C_DespesasSAIDAITEM: TIntegerField;
    C_DespesasNAOCOBRAR: TStringField;
    C_DespesasVALORCLIENTE: TBCDField;
    C_DespesasDESCRICAO: TStringField;
    dbgDespHISTORICO: TdxDBGridMaskColumn;
    dbgDespVALOR: TdxDBGridMaskColumn;
    dbgDespVALORCLIENTE: TdxDBGridMaskColumn;
    dbgDespDESCRICAO: TdxDBGridMaskColumn;
    C_Despesas_icSelecionado: TIntegerField;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasDESCTIPO: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCODIGOREDUZIDO: TStringField;
    C_ContasCODIGOCONTA: TStringField;
    C_ContasDS: TDataSource;
    dbgDespNAOCOBRAR: TdxDBGridCheckColumn;
    C_DespesasTAXAVEL: TStringField;
    C_DespesasCONTA_INCOME: TIntegerField;
    C_DespesaslkContaIncome: TStringField;
    dbgDespTax: TdxDBGridCheckColumn;
    dbgDespConta: TdxDBGridPopupColumn;
    C_ProducoesQTDHORAS: TFloatField;
    dbgProdQTDHORAS_USER: TdxDBGridMaskColumn;
    C_ProducoesQTDHORAS_USER: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensQUANTIDADE: TFloatField;
    C_ItensSUBTOTALITEM: TFloatField;
    procedure FormShow(Sender: TObject);
    procedure C_ProducoesAfterPost(DataSet: TDataSet);
    procedure C_ProducoesCalcFields(DataSet: TDataSet);
    procedure Q_ItensBeforeOpen(DataSet: TDataSet);
    procedure C_ItensCalcFields(DataSet: TDataSet);
    procedure FormCreate(Sender: TObject);
    procedure cmbContaInitPopup(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure btGravarClick(Sender: TObject);
    procedure dbgDespEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dbgDespTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure dbgProdTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure dbgItensTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure dbgItensEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure dbgProdEditing(Sender: TObject; Node: TdxTreeListNode;
      var Allow: Boolean);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    TempDS : TClientDataSet;
    DlgPopup :TDlgPopupContas;

    procedure TotalGeral;

  public
    { Public declarations }
    DM : TDMSaidas;
    GridItens : TTS_QDBGrid;
  end;

var
  DlgReembolsos: TDlgReembolsos;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDlgReembolsos.FormShow(Sender: TObject);
var
  sProds, sItens, sDesps : String;
begin
  inherited;

  TempDS := TClientDataSet.Create(self);
  with TempDS do begin
    CloneCursor(DM.C_Itens, true);
    First;
    While not EOF do begin
      if (FieldByName('Producao').asInteger <> 0) and (FieldByName('IDItem').asInteger < 0) then
        sProds := CExp(sProds,',') + FieldByName('Producao').asString;
      if (FieldByName('EntradaItem').asInteger <> 0) and (FieldByName('IDItem').asInteger < 0) then
        sItens := CExp(sItens,',') + FieldByName('EntradaItem').asString;
      if (FieldByName('Despesa').asInteger <> 0) and (FieldByName('IDItem').asInteger < 0) then
        sDesps:= CExp(sDesps,',') + FieldByName('Despesa').asString;

      Next;
    end;
  end;
  TempDS.Free;

  lbEstadoForm.Caption := lbEstadoForm.Caption + DM.C_TabelalkTipoMovimento.Value;

  if not DMProjeto.LerPermissao(Owner.Name, 'ALTVLRPROD') then begin
    dbgProdVALORCONTRATO.Color := FormsComponent.FormColor;
    dbgProdVALORCONTRATO.DisableEditor := true;
    dbgProdVALORCONTRATO.TabStop := false;
  end;

  if not DMProjeto.LerPermissao(Owner.Name, 'ALTVLRDESP') then begin
    dbgDespVALORCLIENTE.Color := FormsComponent.FormColor;
    dbgDespVALORCLIENTE.DisableEditor := true;
    dbgDespVALORCLIENTE.TabStop := false;
  end;

  C_Producoes.Open;
  C_Itens.Open;
  C_Despesas.Open;

  if not C_Itens.IsEmpty then with C_Itens do while not EOF do begin
    Edit;
    if DM.LocalizarTabelaItem( C_ItensITEM.Value, DM.C_TabelaTabelaPadrao.Value, C_ItensUnidade.Value) then
      C_ItensicValor.asCurrency := DM.C_ProdutosPrecoPreco.asCurrency
    else
      C_ItensicValor.asCurrency := C_ItensPreco.asCurrency;

    Post;
    Next
  end;
  if not C_Despesas.IsEmpty then with C_Despesas do While not EOF do begin
    if FieldByName('ValorCliente').asCurrency = 0 then begin
      Edit;
      FieldByName('ValorCliente').asCurrency := FieldByName('Valor').asCurrency;
      Post;
    end;
    Next;
  end;

  if sProds <> '' then
    dbgProd.SetSelecionados(sProds);
  if sItens <> '' then
    dbgItens.SetSelecionados(sItens);
  if sDesps <> '' then
    dbgDesp.SetSelecionados(sDesps);

end;

procedure TDlgReembolsos.C_ProducoesAfterPost(DataSet: TDataSet);
begin
  inherited;
  TotalGeral;
end;

procedure TDlgReembolsos.TotalGeral;
var
  N : Currency;
begin

  N := dbgProd.TotalSelecionado('icTotalCliente') +
       dbgItens.TotalSelecionado('icTotalItem') +
       dbgDesp.TotalSelecionado('ValorCliente');

  lbTotal.Caption := FormatCurr( '#,###,##0.00', N );

end;

procedure TDlgReembolsos.C_ProducoesCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ProducoesicTotalCliente.asCurrency := C_ProducoesQtdHoras.Value *
                                          C_ProducoesValorContrato.Value;
end;

procedure TDlgReembolsos.Q_ItensBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  TIBQuery(DataSet).Params[0].asInteger := DM.C_TabelaFavorecido.Value;
end;

procedure TDlgReembolsos.C_ItensCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ItensicTotalItem.Value := C_ItensQuantidade.Value *
                              C_ItensicValor.Value;
end;

procedure TDlgReembolsos.FormCreate(Sender: TObject);
begin
  inherited;
  DlgPopup := TDlgPopupContas.Create(Self,C_ContasDS, dbgDespConta,False);
end;

procedure TDlgReembolsos.cmbContaInitPopup(Sender: TObject);
begin
  inherited;
  dbgDespConta.PopupControl := DlgPopup.pnPopup;
  DlgPopup.SetDS(C_ContasDS);
end;

procedure TDlgReembolsos.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  DlgPopup.Free;
end;

procedure TDlgReembolsos.btGravarClick(Sender: TObject);
var
  s : String;
  i : Integer;
begin
  inherited;

  {Verificando se as contas para despesas (income) foram setadas}
  if dbgDesp.Selecionados <> '' then with C_Despesas do begin
    First;
    while not EOF do begin
      if (FieldByName('_icSelecionado').asInteger = 1) and (FieldByName('Conta_Income').asInteger = 0) then begin
        DlgMsg.ShowMsg(2145);
        Exit;
      end;
      Next;
    end;
  end;


  s := IIF(dbgProd.Selecionados <> '', tsProducoes.Caption, '');
  s := CExp(s, ',') + IIF(dbgItens.Selecionados <> '', tsItens.Caption, '');
  s := CExp(s, ',') + IIF(dbgDesp.Selecionados <> '', tsDespesas.Caption, '');

  if s = '' then begin
    DlgMsg.ShowMsg(2166);
    exit;
  end;

  if DlgMsg.ShowMsg(2146, [S]) = 100 then begin
    if not C_Producoes.IsEmpty then
      C_Producoes.ApplyUpdates(0);
    if not C_Itens.IsEmpty then
      C_Itens.ApplyUpdates(0);
    if not C_Despesas.IsEmpty then
      C_Despesas.ApplyUpdates(0);

    try
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    except
      On e:Exception do begin
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining ;

        DlgMsg.ShowMsg(2147,e.message, '');
      end;
    end;

    {Importando os Selecionados}
    {Apagando já importados}
    with DM.C_Itens do begin
      First;
      while not EOF do begin
        if (FieldByNAme('IDItem').asInteger < 0) and (
           (FieldByName('Producao').asInteger <> 0 ) or (FieldByName('EntradaItem').asInteger <> 0 ) or
           (FieldByName('Despesa').asInteger <> 0 ) ) then
          Delete
        else
          Next;
      end;
    end;

    {Producoes}
    if (dbgProd.Selecionados <> '') then with C_Producoes do begin
      dbgProd.FirstSelected;
      for i := 1 to dbgProd.nQuantidadeSelecionada do begin
        DM.C_Itens.Append;
        GridItens.TS_ID := FieldByName('Item').asInteger; //Localiza o Item

        DM.C_ItensQuantidade.Value := FieldByName('QtdHoras').asFloat;
        DM.C_ItensPreco.Value := FieldByName('ValorContrato').asCurrency;
        DM.C_ItensProducao.Value := FieldByName('Producao').asInteger;
        DM.C_ItensFuncProducao.Value := FieldByName('Funcionario').asInteger;

        DM.C_Itens.Post;

        if not dbgProd.NextSelected then
          break;
      end;
    end;

    {Items}
    if (dbgItens.Selecionados <> '') then with C_Itens do begin
      dbgItens.FirstSelected;
      for i := 1 to dbgItens.nQuantidadeSelecionada do begin
        DM.C_Itens.Append;
        GridItens.TS_ID := FieldByName('Item').asInteger; //Localiza o Item

        DM.C_ItensQuantidade.Value := FieldByName('Quantidade').asFloat;
        DM.C_ItensPreco.Value := FieldByName('icValor').asCurrency;
        DM.C_ItensEntradaItem.Value := FieldByName('EntradaItem').asInteger;

        DM.C_Itens.Post;

        if not dbgItens.NextSelected then
          break;
      end;
    end;


    {Despesas}
    if (dbgDesp.Selecionados <> '') then with C_Despesas do begin
      dbgDesp.FirstSelected;
      for i := 1 to dbgDesp.nQuantidadeSelecionada do begin
        DM.C_Itens.Append;
        GridItens.TS_ID := FieldByName('Item').asInteger; //Localiza o Item

        DM.C_ItensDescricao.Value := FieldByName('Descricao').asString;
        DM.C_ItensPreco.Value := FieldByName('ValorCliente').asCurrency;
        DM.C_ItensDespesa.Value := FieldByName('ContaOperacao').asInteger;
        DM.C_ItensContaVenda.Value := FieldByName('Conta_Income').asInteger;
        DM.C_ItensTaxavel.Value := FieldByName('Taxavel').asString;

        DM.C_Itens.Post;

        if not dbgDesp.NextSelected then
          break;
      end;
    end;

    ModalResult := mrok;
  end;

end;

procedure TDlgReembolsos.dbgDespEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var
  Col : Integer;
begin
  inherited;
  Col := dbgDesp.GetAbsoluteColumnIndex(dbgDesp.FocusedColumn);

  if dbgDesp.Columns[Col].FieldName = 'NAOCOBRAR' then
    Allow := not dbgDesp.Selecionado;

end;

procedure TDlgReembolsos.dbgDespTS_OnAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  {Não Cobrar x Selecionar}
  if bSelected then begin
    TempDS := TClientDataSet.Create(self);
    with TempDS do begin
      CloneCursor(C_Despesas, true);
      Locate('ContaOperacao', C_DespesasContaOperacao.Value, []);
      Edit;
      FieldByName('NaoCobrar').asString := 'N';
      Post;
    end;
    TempDS.Free;
  end;
end;

procedure TDlgReembolsos.dbgProdTS_OnAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  {Não Cobrar x Selecionar}
  if bSelected then begin
    TempDS := TClientDataSet.Create(self);
    with TempDS do begin
      CloneCursor(C_Producoes, true);
      Locate('Producao', C_ProducoesProducao.Value, []);
      Edit;
      FieldByName('NaoCobrar').asString := 'N';
      Post;
    end;
    TempDS.Free;
  end;
end;

procedure TDlgReembolsos.dbgItensTS_OnAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  if bSelected then begin
    TempDS := TClientDataSet.Create(self);
    with TempDS do begin
      CloneCursor(C_Itens, true);
      Locate('EntradaItem', C_ItensEntradaItem.Value, []);
      Edit;
      FieldByName('NaoCobrar').asString := 'N';
      Post;
    end;
    TempDS.Free;
  end;
end;

procedure TDlgReembolsos.dbgItensEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var
  Col : Integer;
begin
  inherited;
  Col := dbgItens.GetAbsoluteColumnIndex(dbgItens.FocusedColumn);

  if dbgItens.Columns[Col].FieldName = 'NAOCOBRAR' then
    Allow := not dbgItens.Selecionado;

end;

procedure TDlgReembolsos.dbgProdEditing(Sender: TObject;
  Node: TdxTreeListNode; var Allow: Boolean);
var
  Col : Integer;
begin
  inherited;
  Col := dbgProd.GetAbsoluteColumnIndex(dbgProd.FocusedColumn);

  if dbgProd.Columns[Col].FieldName = 'NAOCOBRAR' then
    Allow := not dbgProd.Selecionado;

end;

procedure TDlgReembolsos.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  if DMProjeto.Parametro('FormatoHorasProd') = 'H' then
  	dbgProdQtdHoras_User.Visible := false
  else
  	dbgProdQtdHoras.Visible := false;
end;

end.
