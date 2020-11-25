unit Dlg_ComparacaoContagens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, ExtCtrls, TS_Bevel, Buttons, TS_SpeedButton,
  StdCtrls, TS_BitBtn, IBCustomDataSet, IBUpdateSQL, Db, DBClient,
  Provider, IBQuery, TS_RadioGroup, TS_ComboBox, TS_GroupBox, TS_Label, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, dxDBEdtr,
  dxDBELib, TS_LookupComboBox, dxDBGrid, dxTL, dxDBCtrl, TS_QDBGrid,
  teCtrls, TS_EffectsPanel,
  ppDB, ppDBPipe, ppBands, ppCtrls, ppPrnabl, ppClass, ppStrtch, ppRegion,
  ppCache, ppComm, ppRelatv, ppProd, ppReport, Variants, BTOdeum, Placemnt,
  TS_Shape;

type
  TDlgComparacaoContagens = class(TFrmModeloCadastros)
    TS_PopupMenu1: TTS_PopupMenu;
    MenuItem1: TMenuItem;
    TS_Label1: TTS_Label;
    TS_Label4: TTS_Label;
    rgDiferenca: TTS_GroupBox;
    lbldaContagem: TTS_Label;
    lblcomContagem: TTS_Label;
    cmbContagem1: TTS_ComboBox;
    cmbContagem2: TTS_ComboBox;
    Q_Fichas: TIBQuery;
    Q_FichasProvider: TDataSetProvider;
    C_Fichas: TClientDataSet;
    C_FichasBALANCOFICHA: TIntegerField;
    C_FichasDATA: TDateField;
    C_FichasUSUARIO: TIntegerField;
    C_FichasSTATUS: TIntegerField;
    C_FichasDS: TDataSource;
    C_ContagensItens: TClientDataSet;
    C_ContagensItensITEM: TIntegerField;
    C_ContagensItensCODIGO: TStringField;
    C_ContagensItensDESCRICAO: TStringField;
    C_ContagensItensUNIDADE: TStringField;
    C_ContagensItensContagem1: TIBBCDField;
    C_ContagensItensContagem2: TIBBCDField;
    C_ContagensItensEstoque: TIBBCDField;
    C_ContagensItensDiferenca: TIBBCDField;
    C_ContagensItensBalancoFichaItem: TIntegerField;
    C_ContagensItensCusto: TIBBCDField;
    C_ContagensItensDS: TDataSource;
    Q_ContagensProvider: TDataSetProvider;
    Q_ContagensItens: TIBQuery;
    U_ContagensItens: TIBUpdateSQL;
    ppmFichas: TTS_PopupMenu;
    FecharFichadeBalano1: TMenuItem;
    U_Fichas: TIBUpdateSQL;
    Q_Aux: TIBQuery;
    Q_Check: TIBQuery;
    cmbFicha: TTS_LookupComboBox;
    dbgItens: TTS_QDBGrid;
    dbgItensITEM: TdxDBGridMaskColumn;
    dbgItensCODIGO: TdxDBGridMaskColumn;
    dbgItensDESCRICAO: TdxDBGridMaskColumn;
    dbgItensUNIDADE: TdxDBGridMaskColumn;
    dbgItensContagem1: TdxDBGridColumn;
    dbgItensContagem2: TdxDBGridColumn;
    dbgItensEstoque: TdxDBGridColumn;
    dbgItensDiferenca: TdxDBGridColumn;
    dbgItensBalancoFichaItem: TdxDBGridColumn;
    dbgItensCusto: TdxDBGridColumn;
    cmbTipoDiferenca: TTS_ComboBox;
    TS_Label2: TTS_Label;
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
    ppDetailBand1: TppDetailBand;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBContagem2: TppDBText;
    ppDBFichaBalanco: TppDBPipeline;
    TS_SpeedButton1: TTS_SpeedButton;
    ppDataFicha: TppLabel;
    ppEstoquista: TppLabel;
    C_Usuarios: TClientDataSet;
    Q_Usuarios: TIBQuery;
    Q_UsuariosProvider: TDataSetProvider;
    C_FichaslkEstoquista: TStringField;
    ppContagem1: TppLabel;
    ppContagem2: TppLabel;
    ppDBText1: TppDBText;
    ppDBContagem1: TppDBText;
    C_FichasNOME: TStringField;
    dbgItensReferencia: TdxDBGridColumn;
    C_ContagensItensREFERENCIA: TStringField;
    ppLabel4: TppLabel;
    ppDBText2: TppDBText;
    ppDescricaoFicha: TppLabel;
    C_FichasDESCRICAOFICHA: TStringField;
    ppFicha: TppReport;
    ppTitleBand2: TppTitleBand;
    ppCabecalho2: TppRegion;
    ppHeaderBand2: TppHeaderBand;
    ppLabel5: TppLabel;
    ppLabel8: TppLabel;
    ppLabel10: TppLabel;
    ppLabel11: TppLabel;
    ppLabel12: TppLabel;
    ppTitulo2: TppLabel;
    ppLabel14: TppLabel;
    ppLabel15: TppLabel;
    ppDataFicha2: TppLabel;
    ppEstoquista2: TppLabel;
    ppDescricaoFicha2: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText7: TppDBText;
    ppDBText8: TppDBText;
    ppDBText9: TppDBText;
    ppLinha: TppLine;
    ppDBFicha: TppDBPipeline;
    ppField1: TppField;
    ppField2: TppField;
    ppField3: TppField;
    ppField4: TppField;
    ppField5: TppField;
    ppField6: TppField;
    ppField7: TppField;
    ppField8: TppField;
    ppField9: TppField;
    ppField10: TppField;
    Q_Ficha: TIBQuery;
    P_Ficha: TDataSetProvider;
    C_Ficha: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    StringField2: TStringField;
    StringField3: TStringField;
    C_ContagensItensBALANCOFICHA: TIntegerField;
    C_ContagensItensCONTAGEM: TIntegerField;
    IntegerField2: TIntegerField;
    C_ContagensItensUSUARIO: TIntegerField;
    StringField4: TStringField;
    Q_FichaDS: TDataSource;
    C_ContagensItensFator: TFloatField;
    C_FichasALMOXARIFADO: TIntegerField;
    TS_Shape1: TTS_Shape;
    C_FichaQUANTIDADE: TFloatField;
    procedure btLimparClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure cmbFichaChange(Sender: TObject);
    procedure cmbTipoDiferencaChange(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure cmbContagem1Change(Sender: TObject);
    procedure cmbContagem2Change(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure dbgItensCustomDrawCell(Sender: TObject; ACanvas: TCanvas;
      ARect: TRect; ANode: TdxTreeListNode; AColumn: TdxTreeListColumn;
      ASelected, AFocused, ANewItemRow: Boolean; var AText: String;
      var AColor: TColor; AFont: TFont; var AAlignment: TAlignment;
      var ADone: Boolean);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure C_ContagensItensContagem1Change(Sender: TField);
  private
    function CheckItemContagem(nBalancoFichaItem,nContagem:integer):single;
    procedure CriaOrdenacao(nOrdenacao: integer);
  public
    { Public declarations }
  end;

var
  DlgComparacaoContagens: TDlgComparacaoContagens;

implementation

uses DM_Projeto, Dlg_FechamentoBalanco, funcoes;

{$R *.DFM}

procedure TDlgComparacaoContagens.CriaOrdenacao(nOrdenacao: integer);
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
  if sCampo = C_ContagensItens.IndexName then exit;

  C_ContagensItens.IndexDefs.Update;
  for i := 0 to C_ContagensItens.IndexDefs.Count - 1 do
    if lowercase(C_ContagensItens.IndexDefs.Items[i].name) = sCampo then
      sColumn := sCampo;

  if sColumn = 'DEFAULT ORDER' then
    try
      C_ContagensItens.AddIndex(sCampo,sCampo,[],'','',0);
    finally
      sColumn := sCampo;
    end;

  try
    C_ContagensItens.IndexName := sColumn;
  finally
  end;
end;

procedure TDlgComparacaoContagens.btLimparClick(Sender: TObject);
var nNovaContagem: integer;
    sOldCaption: string;
begin
  inherited;
  if ((cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyValue > 0)) then begin
    DlgMsg.ShowMsg(1023);
    exit;
  end;
  if (not C_ContagensItens.Active) or C_ContagensItensItem.IsNull then begin
    DlgMsg.ShowMsg(1028);
    exit;
  end;
  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  nNovaContagem := cmbContagem1.Items.count + 1;
  C_ContagensItens.DisableControls;
  C_ContagensItens.first;
  while not C_ContagensItens.eof do begin

    Q_Aux.close;
    Q_Aux.SQL.text := 'insert into balancocontagemitens(balancofichaitem,contagem,quantidade) '+
    'values (:balancofichaitem, '+IntToStr(nNovaContagem)+', 0 )';
    Q_Aux.ParamByName('balancofichaitem').asinteger := C_ContagensItensBalancoFichaItem.value;
    Q_Aux.execsql;

    C_ContagensItens.next;
  end;
  if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

  if DlgMsg.ShowMsg(6026) = 100 then begin
    C_Fichas.locate('balancoficha',cmbFicha.LookupKeyValue,[]);
    C_Ficha.FetchParams;
    C_Ficha.Params[0].asinteger := C_FichasBalancoFicha.value;
    C_Ficha.open;
    sOldCaption := ppTitulo2.caption;
    ppDataFicha2.caption := DateToStr(C_FichasData.value);
    ppEstoquista2.caption := C_FichaslkEstoquista.value;
    ppDescricaoFicha2.caption := C_FichasDescricaoFicha.value;
    ppTitulo2.caption := ppTitulo2.caption+' '+IntToStr(cmbFicha.LookupKeyValue);
    DMProjeto.ImprimirCabecalho( ppCabecalho2 );
    ppFicha.print;
    ppTitulo2.caption := sOldCaption;
  end;

  C_ContagensItens.first;
  C_ContagensItens.EnableControls;

  DlgMsg.ShowMsg(1030);
  cmbFichaChange(self);
end;

function TDlgComparacaoContagens.CheckItemContagem;
begin
  Q_Aux.close;
  Q_Aux.params[0].asinteger := nBalancoFichaItem;
  Q_Aux.params[1].asinteger := nContagem;
  Q_Aux.open;
  result := Q_Aux.FieldByName('quantidade').AsFloat;
end;

procedure TDlgComparacaoContagens.FormShow(Sender: TObject);
begin
  inherited;
  C_Fichas.open;
end;

procedure TDlgComparacaoContagens.btComando1Click(Sender: TObject);
var nQtde1, nQtde2, nEstoque: single;
begin
  inherited;
  if ((cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyValue > 0)) then begin
    DlgMsg.ShowMsg(1023);
    exit;
  end;
  if cmbTipoDiferenca.ItemIndex = 0 then begin
    if C_FichasBalancoFicha.value <= 0 then begin
      DlgMsg.ShowMsg(1023);
      exit;
    end;
    if (cmbContagem1.itemindex = -1) or (cmbContagem2.itemindex = -1) then begin
      DlgMsg.ShowMsg(1021);
      exit;
    end;
    if (cmbContagem1.itemindex = cmbContagem2.itemindex) then begin
      DlgMsg.ShowMsg(1022);
      exit;
    end;
    C_ContagensItens.close;
    C_ContagensItens.open;

    Q_Aux.close;
    Q_Aux.SQL.Text := 'select quantidade from balancocontagemitens where balancofichaitem = :balancofichaitem '+
    'and contagem = :contagem';
    Q_Aux.prepare;
    Q_Aux.open;
    with Q_Check do begin
      close;
      SQL.text := 'select bfi.balancofichaitem,i.item, i.codigo, i.descricao, i.unidade, i.estoque, i.FatorUndVenda, i.referencia '+
      'from balancofichasitens bfi, itens i '+
      'where bfi.balancoficha = :balancoficha and bfi.item = i.item order by i.descricao';
      params[0].asinteger := C_FichasBalancoFicha.value;
      open;
      while not eof do begin
        nQtde1 := CheckItemContagem(FieldByName('balancofichaitem').AsInteger,cmbContagem1.ItemIndex + 1);
        nQtde2 := CheckItemContagem(FieldByName('balancofichaitem').AsInteger,cmbContagem2.ItemIndex + 1);
//        if nQtde1 <> nQtde2 then begin
          C_ContagensItens.Append;
          C_ContagensItensbalancofichaitem.value := FieldByName('balancofichaitem').AsInteger;
          C_ContagensItensItem.value := FieldByName('item').AsInteger;
          C_ContagensItensCodigo.value := FieldByName('codigo').AsString;
          C_ContagensItensReferencia.value := FieldByName('referencia').AsString;
          C_ContagensItensDescricao.value := FieldByName('descricao').AsString;
          C_ContagensItensUnidade.value := FieldByName('unidade').AsString;
          C_ContagensItensEstoque.value := FieldByName('estoque').Asfloat / FieldByName('FatorUndVenda').asFloat;
          C_ContagensItensFator.Value := FieldByName('FatorUndVenda').asFloat;

          C_ContagensItensContagem1.value := nQtde1;
          C_ContagensItensContagem2.value := nQtde2;
          C_ContagensItensDiferenca.value := nQtde1 - nQtde2;
          C_ContagensItens.post;
//        end;
        next;
      end;
      C_ContagensItens.first;
    end;
    Q_Aux.close;
    Q_Aux.unprepare;
  end
  else if cmbTipoDiferenca.ItemIndex = 1 then begin
    if C_FichasBalancoFicha.value <= 0 then begin
      DlgMsg.ShowMsg(1023);
      exit;
    end;
    if (cmbContagem1.itemindex = -1) then begin
      DlgMsg.ShowMsg(1021);
      exit;
    end;
    C_ContagensItens.close;
    C_ContagensItens.open;

    Q_Aux.close;
    Q_Aux.SQL.Text := 'select quantidade from balancocontagemitens where balancofichaitem = :balancofichaitem '+
    'and contagem = :contagem';
    Q_Aux.prepare;
    Q_Aux.open;
    with Q_Check do begin
      close;
      if DMProjeto.Parametro('MultiAlmox') <> 'S' then
        SQL.text := 'select bfi.balancofichaitem,i.item, i.codigo, i.descricao, i.unidade, i.estoque, i.customedio, i.FatorUndVenda,  i.referencia '+
        'from balancofichasitens bfi, itens i '+
        'where bfi.balancoficha = :balancoficha and bfi.item = i.item order by i.descricao'
      else
        SQL.text := 'select bfi.balancofichaitem,i.item, i.codigo, i.descricao, i.unidade, ia.estoquealmox as estoque, i.customedio, i.FatorUndVenda,  i.referencia '+
        'from balancofichasitens bfi, itens i, itensalmox ia '+
        'where bfi.balancoficha = :balancoficha and bfi.item = i.item and i.item = ia.item and ia.almoxarifado = '+C_FichasAlmoxarifado.asstring+' '+
        'order by i.descricao';

      params[0].asinteger := C_FichasBalancoFicha.value;
      open;
      while not eof do begin
        nQtde1 := CheckItemContagem(FieldByName('balancofichaitem').AsInteger,cmbContagem1.ItemIndex + 1);
        nEstoque := FieldByName('estoque').Asfloat / FieldByName('FatorUndVenda').asFloat;

        if nQtde1 <> nEstoque then begin
          C_ContagensItens.Append;
          C_ContagensItensbalancofichaitem.value := FieldByName('balancofichaitem').AsInteger;
          C_ContagensItensItem.value := FieldByName('item').AsInteger;
          C_ContagensItensCodigo.value := FieldByName('codigo').AsString;
          C_ContagensItensReferencia.value := FieldByName('referencia').AsString;
          C_ContagensItensDescricao.value := FieldByName('descricao').AsString;
          C_ContagensItensUnidade.value := FieldByName('unidade').AsString;
          C_ContagensItensCusto.value := FieldByName('customedio').AsFloat*FieldByName('FatorUndVenda').asFloat;
          C_ContagensItensFator.Value := FieldByName('FatorUndVenda').asFloat;
          C_ContagensItensEstoque.value := nEstoque;
          C_ContagensItensContagem1.value := nQtde1;
          C_ContagensItensDiferenca.value := nQtde1 - nEstoque;
          C_ContagensItens.post;
        end;
        next;
      end;
      C_ContagensItens.first;
    end;
    Q_Aux.close;
    Q_Aux.unprepare;
  end;
end;

procedure TDlgComparacaoContagens.btGravarClick(Sender: TObject);
var nModal: integer;
begin
  inherited;
  if ((cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyValue > 0)) then begin
    DlgMsg.ShowMsg(1023);
    exit;
  end;
  if (cmbTipoDiferenca.ItemIndex = 0) then begin
    DlgMsg.ShowMsg(1027);
    exit;
  end;
  if (not C_ContagensItens.Active) or C_ContagensItensItem.IsNull then
    btComando1Click(self);

  DlgFechamentoBalanco := TDlgFechamentoBalanco.Create(self,C_FichasBalancoFicha.value,C_ContagensItens);
  nModal := DlgFechamentoBalanco.ShowModal;
  DlgFechamentoBalanco.Release;

  if nModal = 100 then begin
    Q_Fichas.close;
    Q_Fichas.open;

    C_Fichas.close;
    C_Fichas.open;

    C_ContagensItens.close;
    cmbFicha.LookupKeyValue := null;
  end;
end;

procedure TDlgComparacaoContagens.cmbFichaChange(
  Sender: TObject);
begin
  inherited;
  cmbContagem1.Items.Clear;
  cmbContagem2.Items.Clear;

  Q_Aux.close;
  Q_Aux.SQL.text := 'select distinct contagem from balancocontagemitens bci, balancofichasitens bfi '+
  'where bci.balancofichaitem = bfi.balancofichaitem and bfi.balancoficha = :balancoficha order by contagem';
  Q_Aux.ParamByName('balancoficha').asinteger := C_FichasBalancoFicha.value;
  Q_Aux.open;
  while not Q_Aux.eof do begin
    cmbContagem1.Items.Add(Q_Aux.FieldByName('contagem').AsString+'ª Contagem...');
    cmbContagem2.Items.Add(Q_Aux.FieldByName('contagem').AsString+'ª Contagem...');
    Q_Aux.next;
  end;

  if cmbContagem1.Items.count > 0 then
    cmbContagem1.ItemIndex := 0;

  if cmbContagem2.Items.count > 1 then
    cmbContagem2.ItemIndex := 1
  else if cmbContagem2.Items.count > 0 then
    cmbContagem2.ItemIndex := 0;

  C_ContagensItens.close;
end;

procedure TDlgComparacaoContagens.cmbTipoDiferencaChange(Sender: TObject);
begin
  inherited;
  if cmbTipoDiferenca.ItemIndex = 0 then begin
    cmbContagem2.visible := true;
    dbgItensContagem2.visible := true;
    dbgItensEstoque.visible := false;
    lblcomContagem.visible := true;
  end
  else begin
    cmbContagem2.visible := false;
    lblcomContagem.visible := false;
    dbgItensContagem2.visible := false;
    dbgItensEstoque.visible := true;
  end;
  C_ContagensItens.close;
//  btComando1Click(self);
end;

procedure TDlgComparacaoContagens.FormCreate(Sender: TObject);
begin
  inherited;
  cmbTipoDiferenca.ItemIndex := 1;
  cmbTipoDiferencaChange(Sender);
end;

procedure TDlgComparacaoContagens.cmbContagem1Change(Sender: TObject);
begin
  inherited;
  dbgItensContagem1.Caption := IntToStr(cmbContagem1.itemindex+1)+'ª Contagem';
//  btComando1Click(self);
end;

procedure TDlgComparacaoContagens.cmbContagem2Change(Sender: TObject);
begin
  inherited;
  dbgItensContagem2.Caption := IntToStr(cmbContagem2.itemindex+1)+'ª Contagem';
  btComando1Click(self);
end;

procedure TDlgComparacaoContagens.btComando2Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'CAN') then
    exit;

  if ((cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyValue > 0)) then begin
    DlgMsg.ShowMsg(1023);
    exit;
  end;

  if DlgMsg.ShowMsg(1020) = 100 then begin
    C_Fichas.edit;
    C_FichasStatus.value := 2;
    C_Fichas.post;

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    if C_Fichas.ChangeCount > 0 then
      C_Fichas.ApplyUpdates(0);

    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.text := 'update itens set balanco = ''N'' where item in '+
    '(select item from balancofichasitens bfi where balancoficha = '+C_FichasBalancoFicha.AsString+')';
    DMProjeto.Q_SQL.execsql;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    C_Fichas.close;
    C_Fichas.open;
    cmbFicha.LookupKeyValue := null;
  end;
end;

procedure TDlgComparacaoContagens.dbgItensCustomDrawCell(Sender: TObject;
  ACanvas: TCanvas; ARect: TRect; ANode: TdxTreeListNode;
  AColumn: TdxTreeListColumn; ASelected, AFocused, ANewItemRow: Boolean;
  var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ADone: Boolean);
begin
  inherited;
  if dbgItens.GetFieldValue(ANode,'Diferenca',0) <> 0 then begin
    AColor := clMaroon;
    AFont.Color := clWhite;
  end;
end;

procedure TDlgComparacaoContagens.TS_SpeedButton1Click(Sender: TObject);
var sOldCaption: string;
    nOrdenacao: integer;
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'IMP') then
    exit;
  if ((cmbFicha.LookupKeyvalue = null) or not (cmbFicha.LookupKeyValue > 0)) then begin
    DlgMsg.ShowMsg(1023);
    exit;
  end;
  if not C_ContagensItens.Active then begin
    DlgMsg.ShowMsg(1028);
    exit;
  end;
  C_Fichas.locate('balancoficha',cmbFicha.LookupKeyValue,[]);

  nOrdenacao := DlgMsg.ShowMsg(4027);
  CriaOrdenacao(nOrdenacao);

  sOldCaption := ppTitulo.caption;
  ppDataFicha.caption := DateToStr(C_FichasData.value);
  ppEstoquista.caption := C_FichasLkEstoquista.value;
  ppDescricaoFicha.caption := C_FichasDescricaoFicha.value;
  ppTitulo.caption := ppTitulo.caption+' '+IntToStr(cmbFicha.LookupKeyValue);
  ppContagem1.Caption := IntToStr(cmbContagem1.itemindex+1)+'ª Contagem';
  if dbgItensEstoque.visible then begin
    ppContagem2.Caption := 'Estoque';
    ppDBContagem2.datafield := 'estoque';
  end
  else begin
    ppContagem2.Caption := IntToStr(cmbContagem2.itemindex+1)+'ª Contagem';
    ppDBContagem2.datafield := 'contagem2';
  end;
  DMProjeto.ImprimirCabecalho( ppCabecalho );
  ppFichaBalanco.print;
  ppTitulo.caption := sOldCaption;
end;

procedure TDlgComparacaoContagens.C_ContagensItensContagem1Change(
  Sender: TField);
begin
  inherited;
  if cmbTipoDiferenca.ItemIndex = 0 then
    C_ContagensItensDiferenca.value := C_ContagensItensContagem1.value - C_ContagensItensContagem2.value
  else
    C_ContagensItensDiferenca.value := C_ContagensItensContagem1.value - C_ContagensItensEstoque.value;
end;

end.
