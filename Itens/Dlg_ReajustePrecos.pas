unit Dlg_ReajustePrecos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, IBCustomDataSet, IBUpdateSQL, Db, DBClient,
  Provider, IBQuery, StdCtrls, TS_CheckBox,
  ExtCtrls, TS_RadioGroup, DBCtrls, TS_DBLookupComboBox,
  TS_Label, TS_LastDataObject, DlgMsg, Menus,
  TS_PopupMenu, TS_Bevel, Buttons, TS_SpeedButton, TS_BitBtn,
  dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr, dxDBELib,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, dxDBGrid, dxTL,
  dxDBCtrl, TS_QDBGrid, dxDBTLCl, dxGrClms, TS_LookupComboBox, 
  teCtrls, TS_EffectsPanel, TS_CalcEdit, TS_Shape, Variants, TS_ImageEdit,
  TS_GroupBox, BTOdeum, Placemnt;

type
  TDlgReajustePrecos = class(TFrmModeloCadastros)
    TS_PopupMenu1: TTS_PopupMenu;
    MenuItem1: TMenuItem;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    lblValor: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    cmbTipoItem: TTS_LookupComboBox;
    cmbGrupo: TTS_LookupComboBox;
    rgTipoReajuste: TTS_RadioGroup;
    dfValor: TTS_CalcEdit;
    dfCentavos: TTS_CalcEdit;
    cmbTabela: TTS_LookupComboBox;
    cbPrecoManual: TTS_CheckBox;
    cmbFabricante: TTS_LookupComboBox;
    Q_PrecosDS: TDataSource;
    Q_Precos: TIBQuery;
    P_Precos: TDataSetProvider;
    C_Precos: TClientDataSet;
    C_PrecosCODIGO: TStringField;
    C_PrecosDESCRICAO: TStringField;
    C_PrecosUNIDADE: TStringField;
    C_PrecosITEM: TIntegerField;
    C_PrecosTIPOITEM: TIntegerField;
    C_PrecosGRUPO: TIntegerField;
    C_PrecosPRECOMANUAL: TStringField;
    C_PrecosPRECOATUAL: TBCDField;
    C_PrecosTABELAPRECO: TIntegerField;
    C_PrecosFABRICANTE: TIntegerField;
    C_PrecosPrecoCalc: TIBBCDField;
    Q_TiposItens: TIBQuery;
    Q_TiposItensTIPOITEM: TIntegerField;
    Q_TiposItensDESCRICAO: TIBStringField;
    Q_TiposItensProvider: TDataSetProvider;
    C_TiposItens: TClientDataSet;
    C_TiposItensTIPOITEM: TIntegerField;
    C_TiposItensDESCRICAO: TStringField;
    C_TiposItensQ_Grupos: TDataSetField;
    C_TiposItensDS: TDataSource;
    Q_Grupos: TIBQuery;
    Q_GruposGRUPO: TIntegerField;
    Q_GruposCODIGO: TIBStringField;
    Q_GruposDESCRICAOGRUPO: TIBStringField;
    Q_GruposTIPOITEM: TIntegerField;
    C_Grupos: TClientDataSet;
    C_GruposGRUPO: TIntegerField;
    C_GruposCODIGO: TStringField;
    C_GruposDESCRICAOGRUPO: TStringField;
    C_GruposTIPOITEM: TIntegerField;
    C_GruposDS: TDataSource;
    Q_Master2DS: TDataSource;
    ppmPrecos: TPopupMenu;
    EstatsticasdeVendas1: TMenuItem;
    ltimosFornecimentos1: TMenuItem;
    PreoCalculado1: TMenuItem;
    Q_TabelasPreco: TIBQuery;
    Q_TabelasPrecoTABELAPRECO: TIntegerField;
    Q_TabelasPrecoDESCRICAO: TIBStringField;
    Q_TabelasPrecoPERCENTUAL: TIBBCDField;
    Q_TabelasPrecoDESATIVADO: TIBStringField;
    Q_TabelasPrecoBASEADA: TIBStringField;
    Q_TabelasPrecoProvider: TDataSetProvider;
    C_TabelasPreco: TClientDataSet;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_TabelasPrecoPERCENTUAL: TBCDField;
    C_TabelasPrecoDESATIVADO: TStringField;
    C_TabelasPrecoBASEADA: TStringField;
    Q_TabelasPrecoDS: TDataSource;
    U_Precos: TIBUpdateSQL;
    C_FabricantesDS: TDataSource;
    C_Fabricantes: TClientDataSet;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesDESCRICAO: TStringField;
    Q_FabricantesProvider: TDataSetProvider;
    Q_Fabricantes: TIBQuery;
    Q_Produtos: TIBQuery;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    rgArredondar: TTS_RadioGroup;
    C_Precos_icSelecionado: TIntegerField;
    dbgPrecos: TTS_QDBGrid;
    dbgPrecosCODIGO: TdxDBGridMaskColumn;
    dbgPrecosDESCRICAO: TdxDBGridMaskColumn;
    dbgPrecosUNIDADE: TdxDBGridMaskColumn;
    dbgPrecosPRECO: TdxDBGridMaskColumn;
    dbgPrecosITEM: TdxDBGridMaskColumn;
    dbgPrecosTIPOITEM: TdxDBGridMaskColumn;
    dbgPrecosCUSTOMEDIO: TdxDBGridMaskColumn;
    dbgPrecosGRUPO: TdxDBGridMaskColumn;
    dbgPrecosPRECOMANUAL: TdxDBGridMaskColumn;
    dbgPrecosPRECOATUAL: TdxDBGridMaskColumn;
    dbgPrecosTABELAPRECO: TdxDBGridMaskColumn;
    dbgPrecosFABRICANTE: TdxDBGridMaskColumn;
    dbgPrecosPrecoCalc: TdxDBGridColumn;
    TS_Label3: TTS_Label;
    cmbFornec: TTS_LookupComboBox;
    TS_Shape2: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape1: TTS_Shape;
    TS_Shape3: TTS_Shape;
    Q_Fornecedores: TIBQuery;
    P_Fornecedores: TDataSetProvider;
    C_Fornecedores: TClientDataSet;
    C_FornecedoresDS: TDataSource;
    C_FornecedoresFAVORECIDO: TIntegerField;
    C_FornecedoresNOME: TStringField;
    C_PrecosULTIMOFORNECEDOR: TIntegerField;
    btItensUp: TTS_SpeedButton;
    btItensDown: TTS_SpeedButton;
    gbComoAplicar: TTS_GroupBox;
    dfComoAplicar: TTS_ImageEdit;
    C_PrecosREFERENCIA: TStringField;
    C_PrecosTIPOUPDATE: TStringField;
    dbgPrecosReferencia: TdxDBGridColumn;
    C_PrecosCOMLUCRO: TFloatField;
    C_PrecosPRECO: TBCDField;
    C_PrecosCUSTOMEDIO: TFloatField;
    procedure C_PrecosAfterPost(DataSet: TDataSet);
    procedure C_PrecosPRECOChange(Sender: TField);
    procedure cbPrecoManualClick(Sender: TObject);
    procedure EstatsticasdeVendas1Click(Sender: TObject);
    procedure ltimosFornecimentos1Click(Sender: TObject);
    procedure ppmPrecosPopup(Sender: TObject);
    procedure PreoCalculado1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure rgArredondarClick(Sender: TObject);
    procedure cmbGrupoKeyPress(Sender: TObject; var Key: Char);
    procedure dbgPrecosSelection(Sender: TObject; bSelected: Boolean;
      var bCanSelect: Boolean);
    procedure cmbTabelaChange(Sender: TObject);
    procedure cmbTipoItemChange(Sender: TObject);
    procedure cmbGrupoChange(Sender: TObject);
    procedure cmbFabricanteChange(Sender: TObject);
    procedure dbgPrecosTS_OnSelection(Sender: TObject; bSelected: Boolean;
      var bCanSelect: Boolean);
    procedure dbgPrecosTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btItensUpClick(Sender: TObject);
    procedure btItensDownClick(Sender: TObject);
    procedure dfValorChange(Sender: TObject);
    procedure dfComoAplicarChange(Sender: TObject);
    procedure dfCentavosKeyPress(Sender: TObject; var Key: Char);
    procedure btLimparClick(Sender: TObject);
  private
    bCarregando: boolean;
    nLastHeight,nLastTop:integer;
    procedure RecalculaPrecos(bTodos:boolean);
    procedure Gravar;
    procedure AtivaFiltro;
    procedure StatusCampos;
  public
    { Public declarations }
  end;

var
  DlgReajustePrecos: TDlgReajustePrecos;

implementation
uses DM_Projeto, funcoes, Dlg_EstatVendasProduto, Dlg_UltimosFornecimentos,
  TDM_Projeto;

{$R *.DFM}

procedure TDlgReajustePrecos.C_PrecosAfterPost(DataSet: TDataSet);
begin
  inherited;
  if dbgPrecos.Selecionado and (C_PrecosPrecoManual.value = 'S') then
    dbgPrecos.RemoverSelecao;
end;

procedure TDlgReajustePrecos.C_PrecosPRECOChange(Sender: TField);
begin
  inherited;
  if (C_TabelasPrecoBaseada.value = 'S') and (C_PrecosPrecoAtual.value <> C_PrecosPreco.value) and (C_PrecosPrecoCalc.value <> C_PrecosPreco.value) and (C_PrecosPrecoManual.value = 'N') then
    C_PrecosPrecoManual.value := 'S'
  else if (C_TabelasPrecoBaseada.value = 'S') and (C_PrecosPrecoAtual.value = C_PrecosPreco.value) and (C_PrecosPrecoManual.value = 'S') then
    C_PrecosPrecoManual.value := 'N';
end;

procedure TDlgReajustePrecos.cbPrecoManualClick(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
end;

procedure TDlgReajustePrecos.EstatsticasdeVendas1Click(Sender: TObject);
begin
  inherited;
  DlgEstatVendasProduto := TDlgEstatVendasProduto.Create(self,C_PrecosItem.value,0,C_PrecosDescricao.value);
  DlgEstatVendasProduto.free;
end;

procedure TDlgReajustePrecos.ltimosFornecimentos1Click(Sender: TObject);
begin
  inherited;
  DlgUltimosFornecimentos := TDlgUltimosFornecimentos.Create(self,C_PrecosItem.value,C_PrecosDescricao.value);
  DlgUltimosFornecimentos.free;
end;                                          

procedure TDlgReajustePrecos.ppmPrecosPopup(Sender: TObject);
begin
  inherited;
  if C_PrecosPrecoManual.value = 'S' then
    PreoCalculado1.visible := true
  else
    PreoCalculado1.visible := false;
end;

procedure TDlgReajustePrecos.PreoCalculado1Click(Sender: TObject);
begin
  inherited;
  dbgPrecos.Selecionar;
  C_Precos.edit;
  C_PrecosPrecoManual.value := 'N';
  C_Precos.post;
  RecalculaPrecos(false);
end;

procedure TDlgReajustePrecos.btGravarClick(Sender: TObject);
begin
  Gravar;
end;

procedure TDlgReajustePrecos.rgArredondarClick(Sender: TObject);
begin
  inherited;
  RecalculaPrecos(true);
end;

procedure TDlgReajustePrecos.AtivaFiltro;
var sWhare: String;
begin
  sWhare := '';
  if bCarregando then
    exit;
  Q_Precos.Close;
  C_Precos.Close;
  if cmbGrupo.LookupKeyValue <> null then
    sWhare :=  sWhare + ' and grupo = '+IntToStr(cmbGrupo.LookupKeyValue);
  if cmbFabricante.LookupKeyValue <> null then
    sWhare :=  sWhare + ' and fabricante = '+IntToStr(cmbFabricante.LookupKeyValue);
  if cmbFornec.LookupKeyValue <> null then
    sWhare :=  sWhare + ' and ultimofornecedor = '+IntToStr(cmbFornec.LookupKeyValue);
  if cbPrecoManual.visible and cbPrecoManual.Checked then
    sWhare :=  sWhare + ' and precomanual = ''S''';
  Q_Precos.Sql.Text := 'select i.item,i.codigo, i.descricao, pp.unidade, pp.preco, pp.preco as precoatual, i.tipoitem, pp.tabelapreco, i.fabricante, i.ultimofornecedor, '+
                          ' i.customedio, i.grupo, pp.precomanual, i.Referencia, pp.TipoUpdate, i.ComLucro '+
                          ' from itens i, produtospreco pp '+
                          ' where i.item = pp.item and i.desativado = ''N'' '+
                          ' and pp.tabelapreco = '+IntToStr(cmbTabela.LookupKeyValue)+
                          ' and tipoitem = '+IntToStr(cmbTipoItem.LookupKeyValue)+
                          sWhare+
                          ' order by i.descricao ';
  C_Precos.FetchParams;
  C_Precos.open;
  StatusCampos;
end;

procedure TDlgReajustePrecos.cmbGrupoKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  AtivaFiltro;
  RecalculaPrecos(true);
end;

procedure TDlgReajustePrecos.dbgPrecosSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  if bSelected then begin
    if C_PrecosPrecoManual.value = 'S' then
      bCanSelect := false;
  end;
end;

procedure TDlgReajustePrecos.cmbTabelaChange(Sender: TObject);
//var bAceito: boolean;
begin
  inherited;
{  bAceito := true;
  if (C_TabelasPrecoBaseada.value = 'S') then
    bAceito := DlgMsg.ShowMsg(3123) = 100;

  if not bAceito then begin
    C_TabelasPreco.Locate('tabelapreco',0,[]);
    cmbTabela.LookupKeyValue := 0;
    exit;
  end;}


  if C_Precos.State in [dsEdit,dsInsert] then
    C_Precos.post;
  if C_Precos.ChangeCount > 0 then begin
    if DlgMsg.ShowMsg(1005) = 100 then
      btGravarClick(self);
  end;
  if C_TabelasPrecoBaseada.value = 'S' then begin
    cbPrecoManual.checked := false;
    cbPrecoManual.visible := true;
  end
  else
    cbPrecoManual.visible := false;

  C_Precos.close;
  C_Precos.FetchParams;
  C_Precos.params[0].asinteger := cmbTabela.LookupKeyValue;
  C_Precos.open;
  dfValor.value := 0;
  AtivaFiltro;
  bCarregando := true;

  bCarregando := false;
  RecalculaPrecos(true);
  dbgPrecos.GotoFirst;
end;

procedure TDlgReajustePrecos.cmbTipoItemChange(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
  RecalculaPrecos(true);
end;

procedure TDlgReajustePrecos.cmbGrupoChange(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
  RecalculaPrecos(true);
end;

procedure TDlgReajustePrecos.cmbFabricanteChange(Sender: TObject);
begin
  inherited;
  AtivaFiltro;
  RecalculaPrecos(true);
end;

procedure TDlgReajustePrecos.dbgPrecosTS_OnSelection(Sender: TObject;
  bSelected: Boolean; var bCanSelect: Boolean);
begin
  inherited;
  if bSelected then begin
    if bCarregando then begin
      if C_PrecosPrecoManual.value = 'S' then
        bCanSelect := false;
    end
    else begin
      C_Precos.edit;
      C_PrecosPrecoManual.value := 'N';
      C_Precos.post;
    end;
  end;
end;

procedure TDlgReajustePrecos.dbgPrecosTS_OnAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  RecalculaPrecos(false);
end;

procedure TDlgReajustePrecos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  bCarregando := true;
  C_TiposItens.open;
  C_TiposItens.first;
  cmbTipoItem.LookupKeyValue := 1;
  C_TabelasPreco.open;
  C_TabelasPreco.first;
  cmbTabela.LookupKeyValue := 0;
  C_Fabricantes.open;
  C_Fornecedores.open;
  bCarregando := false;
//  AtivaFiltro;
//  RecalculaPrecos(true);
//  bCarregando := true;
//  dbgPrecos.SelectAll;
//  bCarregando := false;
//  C_Precos.first;
//  dbgPrecos.GotoFirst;
end;

procedure TDlgReajustePrecos.btItensUpClick(Sender: TObject);
begin
  inherited;
  nLastHeight := dbgPrecos.Height;
  nLastTop    := dbgPrecos.Top;
  dbgPrecos.Height := pnDados.Height - (btItensDown.Top + btItensDown.Height);
  btItensDown.Visible := true;
end;

procedure TDlgReajustePrecos.btItensDownClick(Sender: TObject);
begin
  inherited;
  dbgPrecos.Height := nLastHeight;
  dbgPrecos.Top    := nLastTop;
  btItensDown.Visible := false;
end;

procedure TDlgReajustePrecos.dfValorChange(Sender: TObject);
begin
  inherited;
  RecalculaPrecos(true);
end;

procedure TDlgReajustePrecos.dfComoAplicarChange(Sender: TObject);
begin
  inherited;
//  if (dfComoAplicar.Text = 'RC') and (DMProjeto.Parametro('PrecosAutomaticos') <> 'S') then begin
//    DlgMsg.ShowMsg(2465);
//    dfComoAplicar.Text := 'PD';
//    exit;
//  end;

  lblValor.Caption := dfComoAplicar.Text+':';
  RecalculaPrecos(true);
end;

procedure TDlgReajustePrecos.RecalculaPrecos;
var nItem: integer;
    nPrecoBase: Currency;
    nFator : Double;
begin
  nItem := C_PrecosItem.value;

  with C_Precos do begin
    try
      if bTodos then begin
        DisableControls;
        first;
      end;
      while not eof do begin
        if dbgPrecos.Selecionado then begin

          Edit;

          if dfComoAplicar.Text <> 'RC' then begin
            C_PrecosTipoUpdate.Value := 'SFL';  //Sincronizar FatorLucro (Trigger)

            if dfComoAplicar.Text = 'PD' then
              nPrecoBase := C_PrecosPrecoAtual.value
            else if dfComoAplicar.Text = 'CD' then
              nPrecoBase := C_PrecosCustoMedio.value;

            if dfValor.Value > 0 then begin
              if rgTipoReajuste.itemindex = 0 then
                C_PrecosPrecoCalc.value := nPrecoBase + ((nPrecoBase * dfValor.Value)/100)
              else
                C_PrecosPrecoCalc.value := nPrecoBase + dfValor.Value;
            end
            else begin
              if rgTipoReajuste.itemindex = 0 then
                C_PrecosPrecoCalc.value := nPrecoBase - ((nPrecoBase * abs(dfValor.Value))/100)
              else
                C_PrecosPrecoCalc.value := nPrecoBase - abs(dfValor.Value);
            end;

            end // Acima está o procedimento normal de reajuste simples
          else begin //Abaixo está o reajuste de custo para calculo do preço de venda utilizando os fatores
            C_PrecosTipoUpdate.Value := 'SCC'; //Sincronizar CompensaCusto (Trigger)

            nPrecoBase := C_PrecosCustoMedio.value;

            if dfValor.Value > 0 then begin
              if rgTipoReajuste.itemindex = 0 then
                nPrecoBase := nPrecoBase + ((nPrecoBase * dfValor.Value)/100)
              else
                nPrecoBase := nPrecoBase + dfValor.Value;
              end
            else begin
              if rgTipoReajuste.itemindex = 0 then
                nPrecoBase := nPrecoBase - ((nPrecoBase * abs(dfValor.Value))/100)
              else
                nPrecoBase := nPrecoBase - abs(dfValor.Value);
            end;

            nFator := C_PrecosComLucro.Value;
            if nFator >= 100 then
              nFator := 99.99;

            nFator := (100 - nFator) / 100;

            C_PrecosPrecoCalc.Value := nPrecoBase / nFator;

          end;

          if rgArredondar.ItemIndex = 1 then
            C_PrecosPrecoCalc.value := Arredondar(C_PrecosPrecoCalc.value,DMProjeto.nCasasDecimais,true)
          else if rgArredondar.ItemIndex = 2 then
            C_PrecosPrecoCalc.value := Trunc(C_PrecosPrecoCalc.value)+dfCentavos.value
          else
            C_PrecosPrecoCalc.value := Truncar(C_PrecosPrecoCalc.value, DMProjeto.nCasasDecimais);

          C_PrecosPreco.value := C_PrecosPrecoCalc.value;
        end;
        if bTodos then
          next
        else
          break;
      end;
    finally
      if bTodos then begin
        locate('item',nItem,[]);
        EnableControls;
        dbgPrecos.GotoFirst;
      end;
    end;
  end;
end;

procedure TDlgReajustePrecos.Gravar;
var
  nPreco: currency;
  sWhare: String;
begin
  inherited;
  if C_Precos.State in [dsEdit,dsInsert] then
    C_Precos.post;

  sWhare := '';
  if cmbGrupo.LookupKeyValue <> null then
    sWhare :=  sWhare + ' and grupo = '+IntToStr(cmbGrupo.LookupKeyValue);
  if cmbFabricante.LookupKeyValue <> null then
    sWhare :=  sWhare + ' and fabricante = '+IntToStr(cmbFabricante.LookupKeyValue);
  if cmbFornec.LookupKeyValue <> null then
    sWhare :=  sWhare + ' and ultimofornecedor = '+IntToStr(cmbFornec.LookupKeyValue);


  if C_Precos.ChangeCount > 0 then begin
    C_Tabelaspreco.locate('tabelapreco',cmbTabela.LookupKeyValue,[]);
    if C_TabelasprecoBaseada.value = 'S' then begin
      try
        C_Precos.DisableControls;
        C_Precos.first;
        while not C_Precos.eof do begin
          if C_PrecosPrecoAtual.value <> C_PrecosPreco.value then begin
            C_Precos.edit;
            C_PrecosPrecoManual.value := 'S';
            C_Precos.post;
          end;
          C_Precos.next;
        end;
      finally
        C_Precos.first;
        C_Precos.EnableControls;
      end;
    end;

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    With C_Precos do Begin
      C_Precos.DisableControls;
      C_Precos.first;
      While Not Eof do Begin
        DMProjeto.Q_SQL2.SQL.text := 'update Itens set DATA_HORA_ALTERACAO = :data where item = :nproduto ';
        DMProjeto.Q_SQL2.params[0].asDateTime := DMProjeto.dDataSistema;
        DMProjeto.Q_SQL2.params[1].asinteger  := C_Precos.FieldByName('item').asinteger;
        DMProjeto.Q_SQL2.ExecSql;
        C_Precos.next;
      End;
      C_Precos.first;
      C_Precos.EnableControls;
    End;


    C_Precos.ApplyUpdates(0);

    DMProjeto.Q_SQL2.SQL.text := 'update produtospreco set preco = :preco, precomanual = ''N'' '+
                                 ' where item = :nproduto and '+
                                 ' tabelapreco = :tabela and precomanual = ''N''';

    if C_PrecosTabelaPreco.value = 0 then with DMProjeto.Q_SQL do begin
      close;
      SQL.Text := 'select * from tabelaspreco where tabelapreco > 0 and desativado = ''N'' and baseada = ''S''';
      open;
      while not eof do begin
        Q_Produtos.close;
        Q_Produtos.Sql.Text := 'select item, unidade from itens where item is not null '+sWhare;
        Q_Produtos.open;
        while not Q_Produtos.eof do begin
          nPreco := DMProjeto.PrecoNormal(Q_Produtos.FieldByName('item').asinteger,Q_Produtos.FieldByName('unidade').asstring);
          DMProjeto.Q_SQL2.close;
          if DMProjeto.Q_SQL.fieldbyname('percentual').asfloat > 0 then
            DMProjeto.Q_SQL2.params[0].asfloat := nPreco + ((nPreco * abs(DMProjeto.Q_SQL.fieldbyname('percentual').asfloat))/100)
          else
            DMProjeto.Q_SQL2.params[0].asfloat := nPreco - ((nPreco * abs(DMProjeto.Q_SQL.fieldbyname('percentual').asfloat))/100);

          DMProjeto.Q_SQL2.params[1].asinteger := Q_Produtos.FieldByName('item').asinteger;
          DMProjeto.Q_SQL2.params[2].asinteger := DMProjeto.Q_SQL.fieldbyname('tabelapreco').asinteger;
          DMProjeto.Q_SQL2.ExecSql;
          {Alterando Data Modificação}
          Q_Produtos.next;
        end;
        next;
      end;
    end;

    {Fator de Lucro ou Compensa Custo estão sendo atualizado no trigger em ProdutosPreco}

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    Application.MessageBox('Preços Atualizados.','Aviso',mb_ok);
    StatusCampos;
    try
      cmbTabelaChange(self);
    except
    end;
  end;

end;



procedure TDlgReajustePrecos.dfCentavosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key = #13 then
    RecalculaPrecos(True);
end;

procedure TDlgReajustePrecos.btLimparClick(Sender: TObject);
begin
  inherited;
  StatusCampos;
  try
   cmbTabelaChange(self);
  except
  end;
end;

procedure TDlgReajustePrecos.StatusCampos;
Begin
   cmbTabela.Enabled      := Not cmbTabela.Enabled;
   rgTipoReajuste.Enabled := Not rgTipoReajuste.Enabled;
   gbComoAplicar.Enabled  := Not gbComoAplicar.Enabled;
   rgArredondar.Enabled   := Not rgArredondar.Enabled;
   dfValor.Enabled        := Not dfValor.Enabled;
   dfCentavos.Enabled     := Not dfCentavos.Enabled;      

End;

end.
