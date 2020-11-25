unit Dlg_ConsultaPrecosSalao;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid,
  dxEditor, dxExEdtr, dxEdLib, dxDBELib, TS_DBButtonEdit, TS_DBEditItem,
  FormsComponent, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, TS_DBCheckBox, Db, TS_ButtonEdit, TS_EditItem,
  IBCustomDataSet, IBQuery, DBClient, Provider, DBText, TS_DBTextEffect,
  ComCtrls, TS_PageControl, dxDBTLCl, dxGrClms, TS_DBComboBox, TS_DBEdit,
  BTOdeum, Placemnt, TS_EditFavorecido, TransEff, teTimed, teBmpMsk, teForm,
  teMasked, teIntrlc, Mask, DBCtrls, TS_Shape, Math, TS_DBText, jpeg;

type
  TDlgConsultaPrecosSalao = class(TFrmModeloCadastros)
    C_ItensDS: TDataSource;
    C_ProdutosPrecoDS: TDataSource;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    Q_Itens: TIBQuery;
    Q_ProdutosPreco: TIBQuery;
    dfItem: TTS_EditItem;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensESTOQUE: TBCDField;
    C_ItensDESCRICAOGRUPO: TStringField;
    C_ItensTAXAVEL: TStringField;
    C_ItensDESCFABRIC: TStringField;
    C_ItensITEM: TIntegerField;
    C_ItensREFERENCIA: TStringField;
    btCalc: TTS_SpeedButton;
    C_ItensQTDEMINIMO: TBCDField;
    C_ItensDESCONTOMAXIMO: TBCDField;
    C_ItensCAMPO01: TStringField;
    C_ItensCAMPO02: TStringField;
    C_ItensCAMPO03: TStringField;
    C_ItensCAMPO04: TStringField;
    C_ItensCAMPO05: TStringField;
    C_ItensCAMPO06: TStringField;
    C_ItensCAMPO07: TStringField;
    C_ItensCAMPO08: TStringField;
    C_ItensCAMPO09: TStringField;
    C_ItensCAMPO10: TStringField;
    C_ItensFOTO: TStringField;
    C_ItensFATORLUCRO: TFloatField;
    C_ItensNOMEFORN: TStringField;
    P_ProdutosPreco: TDataSetProvider;
    btHistoricos: TTS_SpeedButton;
    C_ItensCUSTOMEDIO: TFloatField;
    C_ItensPRECOCOMPRA: TFloatField;
    C_ItensCUSTOCONTABIL: TFloatField;
    C_ItensPRECO: TBCDField;
    C_ItensPONTOPEDIDO: TBCDField;
    C_ItensTAXINCLUSO: TStringField;
    C_ItensSEMLUCRO: TFloatField;
    C_ItensFATORUNDVENDA: TFloatField;
    C_ItensDESCMAXGRUPO: TBCDField;
    Q_Unidades: TIBQuery;
    C_Unidades: TClientDataSet;
    C_UnidadesUNIDADE: TStringField;
    C_UnidadesDESCRICAO: TStringField;
    P_Unidades: TDataSetProvider;
    C_ItenslkUnidade: TStringField;
    ppmUnidades: TTS_PopupMenu;
    C_ItensicEstoque: TBCDField;
    C_ItensicMinimo: TBCDField;
    C_ItensicPontoPedido: TBCDField;
    Q_TabelasPreco: TIBQuery;
    Q_TabelasPrecoTABELAPRECO: TIntegerField;
    Q_TabelasPrecoDESCRICAO: TIBStringField;
    Q_TabelasPrecoPERCENTUAL: TIBBCDField;
    Q_TabelasPrecoDESATIVADO: TIBStringField;
    Q_TabelasPrecoBASEADA: TIBStringField;
    C_TabelasPreco: TClientDataSet;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    C_TabelasPrecoPERCENTUAL: TBCDField;
    C_TabelasPrecoDESATIVADO: TStringField;
    C_TabelasPrecoBASEADA: TStringField;
    P_TabelasPreco: TDataSetProvider;
    C_ProdutosPreco: TClientDataSet;
    C_ProdutosPreco_icSelecionado: TIntegerField;
    C_ProdutosPrecoPRODUTOPRECO: TIntegerField;
    C_ProdutosPrecoITEM: TIntegerField;
    C_ProdutosPrecoTABELAPRECO: TIntegerField;
    C_ProdutosPrecoPRECOMANUAL: TStringField;
    C_ProdutosPrecoPrecoMinimo: TCurrencyField;
    C_ProdutosPrecoUNIDADE: TStringField;
    C_ProdutosPrecoPERCENTUAL: TBCDField;
    C_ProdutosPrecoBASEADA: TStringField;
    C_ProdutosPrecolkTabela: TStringField;
    C_ItensicCustoMedio: TStringField;
    C_ItensicMPV: TStringField;
    TS_SpeedButton2: TTS_SpeedButton;
    C_ItensFatorCorrente: TFloatField;
    C_ProdutosPrecoicFatorUnidade: TFloatField;
    FormTransitions: TFormTransitions;
    TranList: TTransitionList;
    T_FormShow: TBmpMaskTransition;
    DBEdit1: TDBEdit;
    C_ItensicPreco: TBCDField;
    C_ItensicPromocao: TStringField;
    C_ProdutosPrecoPRECOPROMOCAO: TBCDField;
    C_ItensFilhos: TClientDataSet;
    C_ItensFilhosIDFILHO: TIntegerField;
    C_ItensFilhosITEM: TIntegerField;
    C_ItensFilhosSUBITEM: TIntegerField;
    C_ItensFilhosQUANTIDADE: TBCDField;
    C_ItensFilhosUNIDADE: TStringField;
    C_ItensFilhosFATOR: TFloatField;
    C_ItensFilhosCODIGO: TStringField;
    C_ItensFilhosDESCRICAO: TStringField;
    C_ItensFilhosCUSTOMEDIO: TFloatField;
    C_ItensFilhosPRECO: TBCDField;
    C_ItensFilhosDS: TDataSource;
    Q_ItensFilhos: TIBQuery;
    P_ItensFilhos: TDataSetProvider;
    C_ItensFilhosESTOQUEATUAL: TFloatField;
    C_ItensFilhosPRECOPROMOCAO: TBCDField;
    C_ItensFilhosPRECOMANUAL: TStringField;
    C_ItensFilhosTABELAPRECO: TIntegerField;
    DBEdit2: TDBEdit;
    TS_SpeedButton1: TTS_SpeedButton;
    ExibirMenorPreo1: TMenuItem;
    N1: TMenuItem;
    C_ProdutosPrecoPRECO_NORMAL: TBCDField;
    C_ProdutosPrecoPRECO: TCurrencyField;
    C_ItensINDEXADOR: TIntegerField;
    Q_SQL: TIBQuery;
    C_ItensLOCALIZACAO: TIntegerField;
    C_ItensESTOQUEFISCAL: TBCDField;
    C_ItensicDIFESTOQUE: TFloatField;
    C_ItensicESTOQUEFISCAL: TFloatField;
    C_ItensLOCALIZA: TStringField;
    pnInformacoes: TPanel;
    TS_Label4: TTS_Label;
    lblLocalizacao: TTS_DBTextEffect;
    TS_Label7: TTS_Label;
    lblUnidade: TTS_DBTextEffect;
    lbEstoque: TTS_Label;
    lblEstoque: TTS_DBTextEffect;
    lbEstoqueFiscal: TTS_Label;
    lblEstoqueFiscal: TTS_DBTextEffect;
    lbDifEstoque: TTS_Label;
    lblDifEstoque: TTS_DBTextEffect;
    lblCodigo: TTS_DBTextEffect;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    lblReferencia: TTS_DBTextEffect;
    Panel1: TPanel;
    Panel2: TPanel;
    dbtPrecoVenda: TTS_DBTextEffect;
    Image1: TImage;
    tTempo: TTimer;
    dbtDescricao: TTS_DBTextEffect;
    C_ItensULTIMOFORNECEDOR: TIntegerField;
    C_ItensEMPRESA: TIntegerField;
    C_ItensFORNECPREFERENCIA: TIntegerField;
    C_ItensDESCRICAOTECNICA: TStringField;
    procedure btGravarClick(Sender: TObject);
    procedure dfItemSelecionou(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btComando2Click(Sender: TObject);
    procedure TS_SpeedButton1Click(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btFecharCadastroClick(Sender: TObject);
    procedure lblUnidadeClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dbgTabelaPrecoCustomDrawColumnHeader(Sender: TObject;
      AColumn: TdxTreeListColumn; ACanvas: TCanvas; ARect: TRect;
      var AText: String; var AColor: TColor; AFont: TFont;
      var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
      var ADone: Boolean);
    procedure btCalcClick(Sender: TObject);
    procedure C_ItensCalcFields(DataSet: TDataSet);
    procedure C_ProdutosPrecoCalcFields(DataSet: TDataSet);
    procedure DBEdit1Change(Sender: TObject);
    procedure dfClienteSelecionou(Sender: TObject);
    procedure C_ItensicPromocaoChange(Sender: TField);
    procedure dbgTabelaPrecoDblClick(Sender: TObject);
    procedure C_ProdutosPrecoFilterRecord(DataSet: TDataSet;
      var Accept: Boolean);
    procedure dfItemIniciarLocalizar(Sender: TObject; var Value: String;
      var bSkip: Boolean);
    procedure TS_SpeedButton2Click(Sender: TObject);
    procedure ExibirMenorPreo1Click(Sender: TObject);
    procedure df_FotoDblClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dfItemEnter(Sender: TObject);
    procedure dfItemNaoAchou(Sender: TObject);
    procedure tTempoTimer(Sender: TObject);
  private
    bLancar: boolean;
    nSeq, nTabelaCliente : Integer;
    sCodigoCusto : String;
    nTabelaCorrente : Integer;

    procedure LerCamposDefinidos;
    procedure PopulaCampo(obj:TTS_DBComboBox;nCampo:integer);
    procedure MostrarTabelaPreco( sUnidade : string );
    procedure CriarUnidades( nItem : integer );
    procedure miUnidadeClick(Sender : TObject);

  public
    { Public declarations }
  end;

var
  DlgConsultaPrecosSalao: TDlgConsultaPrecosSalao;

implementation
uses DM_Projeto, Variants, funcoes, Dlg_EstatVendasProduto, Dlg_UltimasVendasProd,
     Dlg_UltimosFornecimentos, DLG_VisialuzadorImagem;

{$R *.DFM}

procedure TDlgConsultaPrecosSalao.btGravarClick(Sender: TObject);
begin
  inherited;
  if bLancar then
    ModalResult := C_ItensItem.value
  else
    ModalResult := -1;
end;

procedure TDlgConsultaPrecosSalao.dfItemSelecionou(Sender: TObject);
var
  i : Integer;
  s : String;
begin
  inherited;
  tTempo.Enabled := False;
  dfItem.Text := '';
  dbtDescricao.DataSource := C_ItensDS;
  dbtDescricao.DataField := 'Descricao';
  dbtPrecoVenda.DataSource := C_ItensDS;
  dbtPrecoVenda.DataField := 'icPreco';
  dbtDescricao.Font.Color :=  clNavy;
  dbtPrecoVenda.Font.Color :=  clNavy;
  CriarUnidades( dfItem.ID );

  if not C_Itens.locate('item',dfItem.ID,[]) then
    C_Itens.append
  else
    C_Itens.edit;

  C_ItensItem.value          := dfItem.ID;

  C_ItensEstoqueFiscal.Value := DMProjeto.C_LocalizarItens.FieldByName('icEstoqueFiscal').Value;
//  C_ItensEstoqueFiscal.asVariant := DMProjeto.C_LocalizarItens.FieldByName('icDifEstoque').Value;


  C_ItensDescFabric.asVariant := DMProjeto.C_LocalizarItens.FieldByName('DescFabricante').Value;
  C_ItensDescricaoGrupo.asVariant := DMProjeto.C_LocalizarItens.FieldByName('DescricaoGrupo').Value;
  C_ItensDescMaxGrupo.value  := DMProjeto.C_LocalizarItens.FieldByName('DESCONTOMAXIMOGrupo').asFloat;
  If DMProjeto.C_LocalizarItens.FieldByName('DescLocalizacao').IsNull Then
     C_ItensLOCALIZA.VALUE := 'Padrao.'
  Else
     C_ItensLOCALIZA.VALUE := DMProjeto.C_LocalizarItens.FieldByName('DescLocalizacao').Value;

  for i := 0 to C_Itens.FieldCount - 1 do begin
    s := C_Itens.Fields[i].FieldName;

    try
      if DMProjeto.C_LocalizarItens.FindField(s) <> nil then

        C_Itens.FieldByName(s).Value := DMProjeto.C_LocalizarItens.FieldByName(s).Value;
    except
    end;

  end;
  //paulo
  C_ItensFORNECPREFERENCIA.Value := -9;
  C_ItensULTIMOFORNECEDOR.Value := -9;
  C_ItensEMPRESA.Value := -9;
  C_Itens.post;

  DBEdit1Change(self);
  tTempo.Enabled := True;

end;

procedure TDlgConsultaPrecosSalao.btComando1Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX('FrmItens','EV') then
    exit;
  DlgEstatVendasProduto := TDlgEstatVendasProduto.Create(self,dfItem.id,0,dfItem.text);
  DlgEstatVendasProduto.free;
end;

procedure TDlgConsultaPrecosSalao.btComando2Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX('FrmItens','ULTVENDAS') then
    exit;
  DlgUltimasVendasProd := TDlgUltimasVendasProd.Create(self,dfItem.ID,dfItem.text);
  DlgUltimasVendasProd.free;
end;

procedure TDlgConsultaPrecosSalao.TS_SpeedButton1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([dfItem.ID]);
  DMProjeto.CriarForm('FrmItens',self,true);
end;

procedure TDlgConsultaPrecosSalao.btLimparClick(Sender: TObject);
begin
  inherited;
  C_Itens.close;
  C_Itens.open;
  C_ProdutosPreco.close;
  C_ItensFilhos.close;
  dfItem.text := '';
  ActiveControl := dfItem;
end;

procedure TDlgConsultaPrecosSalao.FormCreate(Sender: TObject);
begin
  inherited;

  bLancar := Owner.name <> 'MDIProjeto';
  if bLancar then
    btGravar.caption := 'Lançar';


  nTabelaCorrente := DMProjeto.nTabelaPadraoFunc;

  LerCamposDefinidos;
  C_Itens.open;

  nSeq := -10;

  CriarUnidades(-8888);
end;

procedure TDlgConsultaPrecosSalao.LerCamposDefinidos;
var i:integer;
    sCampo,sTitulo,sTipo,sCamposDef,sCamposTit,sCamposTipo: string;
begin
end;

procedure TDlgConsultaPrecosSalao.PopulaCampo;
var xCampo: string;
begin
  xCampo := 'campo'+AdicionarStr(IntToStr(nCampo),'0',2);
  TTS_DBComboBox(obj).Items.Clear;
  DMProjeto.Q_SQL.close;
  DMProjeto.Q_SQL.SQL.Text := 'select distinct '+xCampo+' from itens where '+xCampo+' is not null order by 1';
  DMProjeto.Q_SQL.open;

  while not DMProjeto.Q_SQL.eof do begin
    TTS_DBComboBox(obj).Items.add(DMProjeto.Q_SQL.fieldbyname(xCampo).asstring);
    DMProjeto.Q_SQL.next;
  end;
end;

procedure TDlgConsultaPrecosSalao.btFecharCadastroClick(Sender: TObject);
begin
  inherited;
  ModalResult := -1;
end;

procedure TDlgConsultaPrecosSalao.lblUnidadeClick(Sender: TObject);
begin
  inherited;
  ppmUnidades.PopupFromCursorPos;
end;

procedure TDlgConsultaPrecosSalao.miUnidadeClick(Sender: TObject);
begin
  {Mostrando dados na nova Unidade}
  MostrarTabelaPreco(TMenuItem(Sender).Hint);

end;

procedure TDlgConsultaPrecosSalao.FormShow(Sender: TObject);
Var
 sMostrar: String;
 i:Integer;
begin
  {Verificando se os clientes possuem tabelas de preço associadas - Antes do inherited por causa do ClearParams}
  lbEstoqueFiscal.Visible := False;
  lblEstoqueFiscal.Visible := False;
  lbDifEstoque.Visible := False;
  lblDifEstoque.Visible := False;
  if DMProjeto.Parametro('BaixaEstoqueFiscal') = 'S' then begin
   lbEstoqueFiscal.Visible := True;
   lblEstoqueFiscal.Visible := True;
   lbDifEstoque.Visible := True;
   lblDifEstoque.Visible := True;
  end;
  sMostrar:= DMProjeto.Parametro('MostrarEmConsultaPrecos');
  For i:=0 to ComponentCount -1 do begin
    If (Components[i] is TTS_Label) and (TTS_Label(Components[i]).TagStr <> '') Then
      If Pos(TTS_Label(Components[i]).TagStr,sMostrar) > 0 Then
          TTS_Label(Components[i]).Visible := True
      Else
          TTS_Label(Components[i]).Visible := False;
    If (Components[i] is TTS_DBTextEffect) and (TTS_DBTextEffect(Components[i]).TagStr <> '') Then
      If Pos(TTS_DBTextEffect(Components[i]).TagStr,sMostrar) > 0 Then
          TTS_DBTextEffect(Components[i]).Visible := True
      Else
          TTS_DBTextEffect(Components[i]).Visible := False;
  end;


  with DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'Select Count(TabelaPreco) as ExisteTabAssoc from Favorecidos where TipoFavorecido = 1 and Desativado = ''N''';
    Open;
    Last;
    Close;

  end;

  inherited;

  sCodigoCusto := DMProjeto.Parametro('CodigoCusto');

  dbtDescricao.DataSource := Nil;
  dbtPrecoVenda.DataSource := Nil;
  dbtDescricao.Font.Color :=  clMaroon;
  dbtPrecoVenda.Font.Color :=  clMaroon;
  dbtDescricao.Refresh;
  dbtDescricao.Caption := 'Passe o Produto no Leitor.';
  dbtPrecoVenda.Caption := 'Consulta de Preços';


end;

procedure TDlgConsultaPrecosSalao.dbgTabelaPrecoCustomDrawColumnHeader(
  Sender: TObject; AColumn: TdxTreeListColumn; ACanvas: TCanvas;
  ARect: TRect; var AText: String; var AColor: TColor; AFont: TFont;
  var AAlignment: TAlignment; var ASorted: TdxTreeListColumnSort;
  var ADone: Boolean);
begin
  inherited;
  if C_ProdutosPreco.Tag = 0 then
    AColor := $00EBEBEB
  else
    AColor := $00BFFFFF;
end;

procedure TDlgConsultaPrecosSalao.MostrarTabelaPreco(sUnidade: string);
var
  nFatorUndVendaCorrente, nFatorNovaUnidade : double;
  xPreco, Minimo, PrecoCusto : currency;
begin
  with C_ProdutosPreco do begin
    if not Active then
    	Exit;

    DisableControls;
  	Filtered := False;
    //
    try
      if not Locate('Unidade',sUnidade,[]) then begin
        C_TabelasPreco.Close;
        C_TabelasPreco.Open;

        {Capturando o Fator da Unidade de venda atual}
        nFatorUndVendaCorrente := C_ItensFatorUndVenda.Value;
        nFatorUndVendaCorrente := IIF(nFatorUndVendaCorrente > 0, nFatorUndVendaCorrente, 1);

        {Capturando o Fator da nova unidade solicitada pelo usuário}
        nFatorNovaUnidade := DMProjeto.GetFatorUnidade(C_ItensItem.Value, sUnidade);
        if nFatorNovaUnidade <= 0 then
          nFatorNovaUnidade := 1;

        xPreco := C_ItensPreco.asCurrency; //Preco na unidade de venda atual;

        {Calculando o Preco na Nova Unidade}
        xPreco := (xPreco / nFatorUndVendaCorrente) * nFatorNovaUnidade;

        while not C_TabelasPreco.EOF do begin
          C_ProdutosPreco.Append;
          dec(nSeq);
          C_ProdutosPrecoProdutoPreco.Value := nSeq;
          C_ProdutosPrecoUnidade.Value	    := sUnidade;
          C_ProdutosPrecoTabelaPreco.Value  := C_TabelasPrecoTabelaPreco.asInteger;
          C_ProdutosPrecoPercentual.Value   := C_TabelasPrecoPercentual.Value;
          C_ProdutosPrecoBaseada.Value      := C_TabelasPrecoBaseada.Value;

          if (C_ProdutosPrecoBaseada.Value = 'N') and (C_TabelasPrecoTabelaPreco.asInteger <> 0) then
            C_ProdutosPrecoPreco.asCurrency := xPreco;

          C_ProdutosPrecoPrecoManual.Value := 'N'; 

          if (FieldByName('PrecoManual').value = 'N') and (C_TabelasPrecoBaseada.AsString = 'S') then
            FieldByName('Preco_Normal').value := xPreco * (1 + (C_ProdutosPrecoPercentual.value/100))
          else
            FieldByName('Preco_Normal').value := xPreco;

          C_ProdutosPrecoicFatorUnidade.Value := nFatorNovaUnidade;

          C_TabelasPreco.Next;
        end;

      end;
    finally
      Filter := 'Unidade = '+QuotedStr( sUnidade );
      Filtered := True;
      First;
      Locate('TabelaPreco', 0, []);

      C_ProdutosPreco.Tag := IIF(C_ProdutosPrecoProdutoPreco.Value > 0, 0, 1);  //Para modificar a cor de Header do Grid de Precos

      EnableControls;

      C_Itens.Edit;
      nFatorNovaUnidade := DMProjeto.GetFatorUnidade(C_ItensItem.Value, sUnidade);
      if nFatorNovaUnidade <= 0 then
        nFatorNovaUnidade := 1;
      //C_ProdutosPrecoicFatorUnidade.Value := nFatorNovaUnidade;
      //C_ItensFatorCorrente.Value := C_ProdutosPrecoicFatorUnidade.Value;
      C_ItensFatorCorrente.Value := nFatorNovaUnidade;
      C_ItensUnidade.Value := sUnidade;

      Locate('TabelaPreco', nTabelaCorrente, []);

      if DMProjeto.Parametro('PesquisaMultiUnidade') = 'S' then begin
        C_ItensicPreco.Value := DMProjeto.PrecoMultiUnidade( C_ItensITEM.AsInteger,
                                                             C_ProdutosPrecoTabelaPreco.Value,
                                                             sUnidade, Minimo, PrecoCusto );
        C_ItensicPromocao.Value := 'N';
      end
      else begin
        if C_ProdutosPrecoPrecoPromocao.Value > 0 then begin
          C_ItensicPreco.Value := C_ProdutosPrecoPrecoPromocao.Value;
          C_ItensicPromocao.Value := 'S';
        end else begin
          C_ItensicPreco.Value := C_ProdutosPrecoPreco.Value;
          C_ItensicPromocao.Value := 'N';
        end;
      end;
    end;

  end;

end;

procedure TDlgConsultaPrecosSalao.btCalcClick(Sender: TObject);
begin
  inherited;
  WinExec('Calc.exe',sw_Show);
end;

procedure TDlgConsultaPrecosSalao.C_ItensCalcFields(DataSet: TDataSet);
var
  nFator, FC, FN : double;
begin
  inherited;

  nFator := (100 - C_ItensSEMLUCRO.Value)/100;
  if nFator <= 0 then
    nFator := 1;

  FC := IIF(C_ItensFatorUndVenda.Value > 0, C_ItensFatorUndVenda.Value, 1);
  FN := IIF(C_ItensFatorCorrente.Value > 0, C_ItensFatorCorrente.Value, 1);

  C_ItensicEstoque.Value := (C_ItensEstoque.Value / FN) * FC;
  C_ItensicESTOQUEFISCAL.Value := ((C_ItensEstoqueFiscal.Value / FN) * FC);
  C_ItensicDIFESTOQUE.Value := ((C_ItensEstoque.Value / FN) * FC) - ((C_ItensEstoqueFiscal.Value / FN) * FC);
  C_ItensicMinimo.Value  := (C_ItensQTDEMINIMO.Value / FN) * FC;
  C_ItensicPontoPedido.Value := (C_ItensPONTOPEDIDO.Value / FN ) * FC;
  C_ItensicCustoMedio.Value := CustoSimbolico((C_ItensCUSTOMEDIO.Value * FC), sCodigoCusto);
  C_ItensicMPV.Value := CustoSimbolico((C_ItensCUSTOMEDIO.Value/nFator) * FC, sCodigoCusto);
end;

procedure TDlgConsultaPrecosSalao.C_ProdutosPrecoCalcFields(DataSet: TDataSet);
var
  nDescMax : currency;
begin
  inherited;

  if C_ItensDescontoMaximo.Value >= 0 then
    nDescMax := C_ItensDescontoMaximo.Value
  else if C_ItensDescMaxGrupo.Value >= 0 then
    nDescMax := C_ItensDescMaxGrupo.Value
  else
    nDescMax := DMProjeto.nMaxDescontoFunc;


  if nDescMax > 0 then
    DataSet.FieldByName('PrecoMinimo').asCurrency := ( DataSet.FieldByName('Preco').asCurrency * (1- (nDescMax/100)) )
  else
    DataSet.FieldByName('PrecoMinimo').asCurrency := 0;

  if DataSet.FieldByName('PrecoPromocao').AsCurrency > 0 then
    DataSet.FieldByName('Preco').AsCurrency := DataSet.FieldByName('PrecoPromocao').AsCurrency
  else
    DataSet.FieldByName('Preco').AsCurrency := DataSet.FieldByName('Preco_Normal').AsCurrency;

  // Adicionando as cotações dos indexadores mais atualizados...
  if (C_Itens.Active) and (C_Itens.FieldByName('Indexador').AsVariant <> null) then begin
    with Q_SQL do begin
      Close;
      SQL.Text := 'select valor from cotacoes ' +
                  'where data = (select max(data) from cotacoes where indexador = :i) ' +
                  'and indexador = :i ';
      ParamByName('i').AsInteger := C_Itens.FieldByName('Indexador').AsInteger;
      Open;
      if (RecordCount > 0) and (Fields[0].AsFloat > 0) then begin
        DataSet.FieldByName('Preco').AsCurrency := RoundTo( DataSet.FieldByName('Preco').AsCurrency / Fields[0].AsFloat, -2 );
      end;
      Close;
    end;
  end;

end;

procedure TDlgConsultaPrecosSalao.DBEdit1Change(Sender: TObject);
begin
  inherited;
  if (C_ItensItem.value <= 0) then
    exit;

  C_ProdutosPreco.Close;
  C_ProdutosPreco.FetchParams;
  C_ProdutosPreco.params[0].asinteger := C_ItensItem.value;
  C_ProdutosPreco.open;

  C_ItensFilhos.close;
  C_ItensFilhos.FetchParams;
  C_ItensFilhos.params[0].asinteger := C_ItensItem.value;
  C_ItensFilhos.params[1].asinteger := nTabelaCorrente;
  C_ItensFilhos.open;

  if (C_ItensUnidade.Value <> '') then
    MostrarTabelaPreco(C_ItensUnidade.Value);

end;

procedure TDlgConsultaPrecosSalao.dfClienteSelecionou(Sender: TObject);
begin
  inherited;
  if DMProjeto.C_LocalizarFavTabelaPreco.asVariant <> null then begin
    nTabelaCliente := DMProjeto.C_LocalizarFavTabelaPreco.Value;
    nTabelaCorrente := nTabelaCliente;

    MostrarTabelaPreco(C_ItensUnidade.Value);

  end else
    nTabelaCliente := -1;

end;

procedure TDlgConsultaPrecosSalao.C_ItensicPromocaoChange(Sender: TField);
begin
  inherited;
  if Sender.asString = 'S' then
    dbtPrecoVenda.Font.Color := clBlue
  else
    dbtPrecoVenda.Font.Color := clNavy;
end;

procedure TDlgConsultaPrecosSalao.dbgTabelaPrecoDblClick(Sender: TObject);
var Minimo, PrecoCusto : currency;
begin
  inherited;
end;

procedure TDlgConsultaPrecosSalao.C_ProdutosPrecoFilterRecord(DataSet: TDataSet;
  var Accept: Boolean);
begin
  inherited;
  Accept := DMProjeto.PermissoesTabelasPreco( DataSet.FieldByName('TabelaPreco').asInteger );
end;

procedure TDlgConsultaPrecosSalao.dfItemIniciarLocalizar(Sender: TObject;
  var Value: String; var bSkip: Boolean);
begin
  inherited;
//  dfItem.TabelaPreco := nTabelaCorrente;
  dfItem.TabelaPreco := 0;
end;

procedure TDlgConsultaPrecosSalao.TS_SpeedButton2Click(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX('FrmItens','UFORNEC') then
    exit;

  DlgUltimosFornecimentos := TDlgUltimosFornecimentos.Create(self,dfItem.ID,dfItem.text);
  DlgUltimosFornecimentos.free;
end;

procedure TDlgConsultaPrecosSalao.ExibirMenorPreo1Click(Sender: TObject);
var Minimo, Custo : currency;
begin
  inherited;
end;

procedure TDlgConsultaPrecosSalao.CriarUnidades( nItem : integer );
var aMenu : TMenuItem;
    i : integer;
begin
  {Criando MenuItens para as Unidades}
  with C_Unidades do begin
    Close;
    Q_Unidades.ParamByName('item').AsInteger := nItem;
    Open;

    ppmUnidades.Items.Clear;
//    for i:= 0 to ppmUnidades.ComponentCount - 1 do begin
//      if (ppmUnidades.Components[i] is TMenuItem) then
//        ppmUnidades.RemoveComponent( TMenuItem(ppmUnidades.Components[i]) );
//    end;

    while not EOF do begin
      aMenu := TMenuItem.Create(ppmUnidades);
      aMenu.Caption  := FieldByName('Descricao').asString;
      //aMenu.Name := 'mi_'+FieldByName('Descricao').asString;
      aMenu.Hint := FieldByName('Unidade').asString;
      aMenu.OnClick  := miUnidadeClick;
      ppmUnidades.Items.Add( aMenu );

      Next;
    end;

  end;

end;

procedure TDlgConsultaPrecosSalao.df_FotoDblClick(Sender: TObject);
begin
  inherited;
  DLGVisialuzadorImagem := TDLGVisialuzadorImagem.Create(Self, DMProjeto.ImgPath + C_ItensFoto.Value, C_ItensDescricaoTecnica.Value);
  DLGVisialuzadorImagem.Free;
end;

procedure TDlgConsultaPrecosSalao.FormKeyDown(Sender: TObject;
  var Key: Word; Shift: TShiftState);
begin
  inherited;
  if (Shift = [ssCtrl]) and (key = ord('F')) then
     Close;
  if (Shift = [ssCtrl]) and (key = ord('I')) then
     pnInformacoes.Visible := Not (pnInformacoes.Visible);

end;

procedure TDlgConsultaPrecosSalao.dfItemEnter(Sender: TObject);
begin
  inherited;
  dfItem.SelectAll;
end;

procedure TDlgConsultaPrecosSalao.dfItemNaoAchou(Sender: TObject);
begin
  inherited;
  dfItem.SetFocus;
  dfItem.SelectAll;
end;

procedure TDlgConsultaPrecosSalao.tTempoTimer(Sender: TObject);
begin
  inherited;
  tTempo.Enabled := False;
  pnInformacoes.Visible := False;
  dbtDescricao.DataSource := Nil;
  dbtPrecoVenda.DataSource := Nil;
  dbtDescricao.Font.Color :=  clMaroon;
  dbtPrecoVenda.Font.Color :=  clMaroon;
  dbtDescricao.Refresh;
  dbtDescricao.Caption := 'Passe o Produto no Leitor.';
  dbtPrecoVenda.Caption := 'Consulta de Preços';
end;

end.







