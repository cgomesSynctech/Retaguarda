unit Dlg_InplacePgtos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FORM_PADRAO, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, ExtCtrls, TS_Shape, StdCtrls,
  TS_Label, teCtrls, TS_EffectsPanel, dxCntner, dxExEdtr, dxEdLib,
  TS_CheckBox, dxDBELib, TS_DBPopupEdit, DBCtrls, TS_DBRadioGroup,
  TS_DBSpinEdit, dxDBEdtr, TS_DBLookupComboBox, TS_DBText, dxDBTLCl,
  dxGrClms, dxDBGrid, dxTL, dxDBCtrl, TS_QDBGrid, dxEditor,
  TS_DBEditNumber, ComCtrls, TS_PageControl, Buttons, TS_SpeedButton,
  dxfCheckBox, TS_CalcEdit, Db, DBClient, TS_ImageEdit, TS_SpinEdit, Dlg_PopupContas,
  TS_DBImageEdit, TS_LookupComboBox, TS_PopupEdit, dxfLabel, TS_Image,
  TS_Edit, teForm, Variants, DM_Contabilidade, BTOdeum, Placemnt,
  TS_DBMaskEdit, TS_DBEdit, Math;

const
  PM_SetFocus = WM_User + 25000;

Type TMCartoes = Record
     Valor: Currency;
     Cartao:String;
End;

type
  TDlgInplacePgtos = class(TFormPadrao)
    pnCampo04: TTS_Panel;
    lbtTotal: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Panel1: TTS_Panel;
    lbtRecebido: TTS_Label;
    TS_Panel2: TTS_Panel;
    lbtTroco: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    spFormas: TTS_Shape;
    TS_Shape5: TTS_Shape;
    pgForma: TTS_PageControl;
    tabDinheiro: TTS_TabSheet;
    vg2Label1: TTS_Label;
    tabCheque: TTS_TabSheet;
    dbgCheques: TTS_QDBGrid;
    dbgChequesNumCheque: TdxDBGridColumn;
    dbgChequesVencimento: TdxDBGridDateColumn;
    dbgChequesValor: TdxDBGridColumn;
    dbgChequesDescBanco: TdxDBGridLookupColumn;
    dbgChequesAgencia: TdxDBGridColumn;
    dbgChequesBanco: TdxDBGridMaskColumn;
    dbgChequesChequeNominal: TdxDBGridColumn;
    tabCartao: TTS_TabSheet;
    vg2Label2: TTS_Label;
    TS_Label3: TTS_Label;
    lbParcelas: TTS_Label;
    lbParcelasDe: TTS_Label;
    cmbCartao: TTS_DBLookupComboBox;
    tabCredito: TTS_TabSheet;
    vg2Label3: TTS_Label;
    lbCredito: TTS_Label;
    tabTEF: TTS_TabSheet;
    TS_Label13: TTS_Label;
    TS_Label14: TTS_Label;
    tabOutros: TTS_TabSheet;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    lbContaOutro: TTS_Label;
    cbDinheiro: TdxfCheckBox;
    cbCheque: TdxfCheckBox;
    cbCartao: TdxfCheckBox;
    cbTEF: TdxfCheckBox;
    cbCreditos: TdxfCheckBox;
    cbOutraForma: TdxfCheckBox;
    lbValorAReceber: TTS_Label;
    lbRecebido: TTS_Label;
    dfDinheiro: TTS_CalcEdit;
    dfTEF: TTS_CalcEdit;
    dfCredito: TTS_CalcEdit;
    dfOutraForma: TTS_CalcEdit;
    C_Cheques: TClientDataSet;
    C_ChequesDS: TDataSource;
    C_Cartoes: TClientDataSet;
    C_CartoesDS: TDataSource;
    C_ChequesVencimento: TDateField;
    C_ChequesValor: TCurrencyField;
    C_ChequesAgencia: TStringField;
    C_ChequesBanco: TIntegerField;
    C_ChequesIDCheque: TIntegerField;
    C_CartoesCartao: TIntegerField;
    C_CartoesIDCartao: TIntegerField;
    C_CartoesValor: TCurrencyField;
    C_CartoesParcelas: TIntegerField;
    C_CartoesValorParcelas: TCurrencyField;
    C_CartoeslkCartao: TStringField;
    C_ChequeslkBanco: TStringField;
    dbgCartoes: TTS_QDBGrid;
    dbgCartoesIDCartao: TdxDBGridMaskColumn;
    dbgCartoesCartao: TdxDBGridMaskColumn;
    dbgCartoesValor: TdxDBGridCurrencyColumn;
    dbgCartoesValorParcelas: TdxDBGridCurrencyColumn;
    dbgCartoeslkCartao: TdxDBGridLookupColumn;
    btMaisCartoes: TTS_SpeedButton;
    dfCartao: TTS_DBEditNumber;
    dfNumParcelas: TTS_DBSpinEdit;
    dbValorParcela: TTS_DBText;
    dfTipo: TTS_DBImageEdit;
    dbgCartoesTipo: TdxDBGridImageColumn;
    lbCreditoDisponivel: TTS_Label;
    cmbContaTEF: TTS_PopupEdit;
    cmbContaOutra: TTS_PopupEdit;
    cmbOutraForma: TTS_LookupComboBox;
    imgRecebs: TTS_Image;
    dxfLabel1: TdxfLabel;
    dbgCartoesParcelas: TdxDBGridSpinColumn;
    ppmGridCartoes: TTS_PopupMenu;
    UmCartoapenas1: TMenuItem;
    C_ChequesChequeNominal: TStringField;
    ppmCheques: TTS_PopupMenu;
    TitulardoCheque1: TMenuItem;
    IncluirNovoBanco1: TMenuItem;
    IncluirNovoCarto1: TMenuItem;
    C_CartoesTipo: TIntegerField;
    C_ChequesNumCheque: TIntegerField;
    btUmCartao: TTS_SpeedButton;
    dfTroco: TTS_Edit;
    FormBkg: TFormTransitions;
    C_ChequesContaReceber: TIntegerField;
    C_CartoesContaCartao: TIntegerField;
    StyleForm: TdxEditStyleController;
    cbChequeEletronico: TdxfCheckBox;
    tabChequeEletronico: TTS_TabSheet;
    C_ChequesEletronico: TClientDataSet;
    C_ChequesEletronicoID: TIntegerField;
    C_ChequesEletronicoValor: TCurrencyField;
    C_ChequesEletronicoObs: TStringField;
    C_ChequesEletronicoConvenio: TIntegerField;
    C_ChequesEletronicoDescConvenio: TStringField;
    C_ChequesEletronicoContaReceber: TIntegerField;
    C_ChequesEletronicoVencimento: TDateTimeField;
    C_ChequesEletronicoDS: TDataSource;
    dbgChequesEletronico: TTS_QDBGrid;
    dbgChequesEletronicoDescConvenio: TdxDBGridLookupColumn;
    dbgChequesEletronicoValor: TdxDBGridCurrencyColumn;
    dbgChequesEletronicoVencimento: TdxDBGridDateColumn;
    dbgChequesEletronicoObs: TdxDBGridMaskColumn;
    TS_Label1: TTS_Label;
    dfNumeroCartao: TTS_DBEdit;
    TS_Label6: TTS_Label;
    dfValidade: TTS_DBMaskEdit;
    C_CartoesNumeroCartao: TStringField;
    C_CartoesValidade: TStringField;
    dbgCartoesNumeroCartao: TdxDBGridColumn;
    dbgCartoesValidade: TdxDBGridMaskColumn;
    ppmChequesElet: TTS_PopupMenu;
    Umchequeparacadaparcela1: TMenuItem;
    Gerarumchequeparacadaparcela1: TMenuItem;
    C_ChequesConta: TStringField;
    C_ChequesAgenciaDV: TStringField;
    C_ChequesContaDV: TStringField;
    C_ChequesChequeDV: TStringField;
    C_ChequesCPF_CNPJ: TStringField;
    dbgChequesConta: TdxDBGridMaskColumn;
    dbgChequesAgenciaDV: TdxDBGridMaskColumn;
    dbgChequesContaDV: TdxDBGridMaskColumn;
    dbgChequesChequeDV: TdxDBGridMaskColumn;
    dbgChequesCPF_CNPJ: TdxDBGridMaskColumn;
    C_ChequeslkCodBanco: TStringField;
    procedure tabOutrosShow(Sender: TObject);
    procedure cbDinheiroClick(Sender: TObject);
    procedure dbgCartoesTS_AfterNewRecord(Sender: TObject);
    procedure btMaisCartoesClick(Sender: TObject);
    procedure lbCreditoDisponivelClick(Sender: TObject);
    procedure cmbContaTEFInitPopup(Sender: TObject);
    procedure cmbContaOutraInitPopup(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure UmCartoapenas1Click(Sender: TObject);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure C_ChequesBeforePost(DataSet: TDataSet);
    procedure TitulardoCheque1Click(Sender: TObject);
    procedure IncluirNovoBanco1Click(Sender: TObject);
    procedure IncluirNovoCarto1Click(Sender: TObject);
    procedure TS_Label3SetParametrosForm(Sender: TObject);
    procedure C_CartoesNewRecord(DataSet: TDataSet);
    procedure dfDinheiroChange(Sender: TObject);
    procedure C_ChequesAfterPost(DataSet: TDataSet);
    procedure C_CartoesAfterPost(DataSet: TDataSet);
    procedure tabCartaoExit(Sender: TObject);
    procedure tabChequeExit(Sender: TObject);
    procedure dfNumParcelasChange(Sender: TObject);
    procedure dbgCartoesParcelasChange(Sender: TObject);
    procedure dbgCartoesValorChange(Sender: TObject);
    procedure dbgCartoesEdited(Sender: TObject; Node: TdxTreeListNode);
    procedure dfCartaoChange(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
    procedure dbgChequesColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure C_ChequesAfterDelete(DataSet: TDataSet);
    procedure dfTrocoExit(Sender: TObject);
    procedure dfTrocoKeyPress(Sender: TObject; var Key: Char);
    procedure FormCreate(Sender: TObject);
    procedure C_CartoesCartaoChange(Sender: TField);
    procedure C_ChequesEletronicoNewRecord(DataSet: TDataSet);
    procedure tabChequeEletronicoExit(Sender: TObject);
    procedure dbgChequesEletronicoColumnSorting(Sender: TObject;
      Column: TdxDBTreeListColumn; var Allow: Boolean);
    procedure C_ChequesEletronicoAfterPost(DataSet: TDataSet);
    procedure Umchequeparacadaparcela1Click(Sender: TObject);
    procedure Gerarumchequeparacadaparcela1Click(Sender: TObject);
    procedure cbCreditosExit(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private

    DMContabil: TDMContabilidade;

    CorGrid, CorLinhas, CorAlphaBlend, CorHeaders : TColor;

    nFaltaReceber, nValorAReceber, nRecebido, nTroco, nCreditoCliente : Currency;
    nIDFormas, nNumCheque, nLastBanco : Integer;

    nVlParcelas : Currency; //Para uso nos eventos do dbgCartoes;

    sChequeNominal, sAgencia, sAgenciaDV, sConta, sContaDV, sChequeDV, sCPF_CNPJ : String;



  	DlgPopup : TDlgPopupContas;

    procedure AtualizarRecebido;
    procedure SetFormaPagamento(nIndex: integer);

  protected
    procedure PMSetFocus(var Msg:TMessage); message PM_SetFocus;

  public
    { Public declarations }
    nCreditoDevolucao : currency;
    dtData : TDateTime;  //Data para os lançamentos;
    BitmapTela : TBitmap;
    pCorGrid, pCorLinhas, pCorAlphaBlend, pCorHeaders : TColor;
    RedeNSU, NSU, DataNSU, HoraNSU: string;
    C_Parcelas : TClientDataSet;
    nCliente, nConta : Integer;  //Conta padrão para os lançamentos em Depositos;
    sNomeCliente, sConsumidorFinal : String;
    bCartaoTEF: Boolean;
    Constructor Create(AOwner : TComponent); override;
    procedure UpdateValorReceber( nValor : Currency );
    procedure EstadoInicial( nDev : currency = 0 );
    procedure SetCliente(Cliente : Integer; NomeCliente : String; ConsumidorFinal: String = 'N');
    procedure SelecionarFPgto( Key : Word; nQtdVezes : Integer = 1; nValor : Currency = 0 );
    procedure ValoresPagos(var valores:array of currency; var HiperCard:boolean; Var MultCartao:array of TMCartoes);
    function Validar : boolean;
    function Gravar( TitulosSelecionados, Titulos : String; C_Titulos: TClientDataset ) : boolean;
    function GetRecebido : Currency;
    Function GetTroco : Currency;
    Function GetDinheiro : Currency;

    procedure Fechar;

  end;

implementation
  uses funcoes, DM_Projeto, DM_Financeiro;

{$R *.DFM}

procedure TDlgInplacePgtos.UpdateValorReceber(nValor: Currency);
var
  nDif : Currency;
begin
  nDif := nValor - nValorAReceber;

  nValorAReceber := nValor;

  lbValorAReceber.Caption := FormatCurr('#,###,##0.00', nValorAReceber);

  nFaltaReceber := nFaltaReceber + nDif;

  nTroco := nRecebido - nValorAReceber;
  if nTroco < 0 then
    nTroco := 0;

  dfTroco.Text := FormatCurr('#,###,##0.00', nTroco);

end;

procedure TDlgInplacePgtos.EstadoInicial( nDev : currency = 0 );
begin
  cbDinheiro.Checked := false;
  cbCheque.Checked := false;
  cbChequeEletronico.Checked := false;
  cbCartao.Checked := false;
  cbTef.Checked := false;
  cbCreditos.Checked := false;
  cbOutraForma.Checked := false;

  {Apenas para Forçar - os eventos acima já devem ter feito esta atribuição}
  nRecebido := 0;
  nTroco    := 0;

  lbRecebido.Caption := '0.00';
  dfTroco.Text := '0.00';
  {.}

  nCreditoDevolucao := nDev;

  

  if DMContabil <> nil then
    DMContabil.Iniciar;
end;

procedure TDlgInplacePgtos.dbgCartoesTS_AfterNewRecord(Sender: TObject);
begin
  inherited;
  dbgCartoes.TS_SelectedColumn := 'lkCartoes';
end;

procedure TDlgInplacePgtos.btMaisCartoesClick(Sender: TObject);
begin
  inherited;
  dbgCartoes.Visible := true;
  dbgCartoes.BringToFront;
  dbgCartoes.Align   := alClient;
  nVlParcelas := C_CartoesValorParcelas.Value;
  btUmCartao.Visible := true;
  btMaisCartoes.Visible := false;

  try
    dbgCartoes.SetFocus;
  except
  end;
end;

procedure TDlgInplacePgtos.lbCreditoDisponivelClick(Sender: TObject);
begin
  inherited;
  if (nValorAReceber <= (nCreditoCliente + nCreditoDevolucao)) Then
     dfCredito.Value := nValorAReceber
  else
     dfCredito.Value := nCreditoCliente + nCreditoDevolucao;
end;

procedure TDlgInplacePgtos.cmbContaTEFInitPopup(Sender: TObject);
begin
  inherited;
  TdxPopupEdit(Sender).PopupControl := DlgPopup.pnPopup;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
	DlgPopup.SetEventos( TdxPopupEdit(Sender) );
end;

procedure TDlgInplacePgtos.cmbContaOutraInitPopup(Sender: TObject);
begin
  inherited;
  TdxPopupEdit(Sender).PopupControl := DlgPopup.pnPopup;
  DlgPopup.SetDs( DMFinanceiro.C_ContasDS );
	DlgPopup.SetEventos( TdxPopupEdit(Sender) );
end;

procedure TDlgInplacePgtos.FormShow(Sender: TObject);
begin
  inherited;

  {Configurando Estilo Visual}
  if BitmapTela <> nil then
    FormBkg.BackgroundOptions.Picture.Bitmap := BitmapTela;

  if pCorGrid <> clBlack then begin
    CorAlphaBlend := pCorAlphaBlend;
    CorGrid       := pCorGrid;
    CorLinhas     := pCorLinhas;
    CorHeaders    := pCorHeaders;
  end;

  StyleForm.BorderColor := CorLinhas;
  spFormas.Brush.Color := CorGrid;
  lbtTotal.Color := CorHeaders;
  lbtRecebido.Color := CorHeaders;
  lbtTroco.Color := CorHeaders;
  pgForma.TabColor := CorGrid;
  pgForma.TabColorActive := CorHeaders;

  cbDinheiro.Color := CorGrid;
  cbCheque.Color := CorGrid;
  cbChequeEletronico.Color := CorGrid;
  cbCartao.Color := CorGrid;
  cbTEF.Color := CorGrid;
  cbCreditos.Color := CorGrid;
  cbOutraForma.Color := CorGrid;

  tabDinheiro.Color := CorGrid;
  tabCheque.Color := CorGrid;
  tabChequeEletronico.Color := CorGrid;
  tabCartao.Color := CorGrid;
  tabTEF.Color := CorGrid;
  tabCredito.Color := CorGrid;
  tabOutros.Color := CorGrid;

  {}

  nIDFormas := 0;

	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasCxBcDS, nil, false);

 	C_Cheques.CreateDataSet;
  C_ChequesEletronico.CreateDataSet;
  C_Cartoes.CreateDataSet;

  if XPClassMenu <> nil then with XPClassMenu do begin
    Gradient := true;
    DrawSelect := true;
    FlatMenu := true;
    SelectColor := $00F5EBDE;
    SelectBorderColor := $00E2BE92;
    UseSystemColors := false;
    IconBackColor := $00E2BE92;
    Active := not (DMProjeto.Parametro('MenuPadraoWindows') = 'S');
  end;

  with DMFinanceiro do begin
    C_Bancos.Open;
    C_OutrasForma.Open;
    C_CartoesCred.Open;
    C_ContasBc.Open;
    C_ContasCxBc.Open;
    C_ContasCxBc.Locate('Conta', DMFinanceiro.nContaPadrao , [] );
    nConta := nContaPadrao;
    dtData := C_ContasCxBcMovimentoCorrente.value;
  end;

  if DMProjeto.Parametro('ParcelarCartao') <> 'S' then begin
    lbParcelas.Visible 		:= false;
    dfNumParcelas.Visible := false;
    lbParcelasDe.Visible 	:= false;
    dbValorParcela.Visible:= false;
    dbgCartoesParcelas.Visible := false;
    dbgCartoesValorParcelas.Visible := false;
    dbgCartoes.HeaderPanelRowCount := 1;
    dbgCartoes.LarguraAutomatica(true);
  end;
//  if DMProjeto.ParametroTEF('TEF') = 'S' then begin
//    btMaisCartoes.Visible := False;
//    btUmCartao.Visible := False;
//  end;
  if DMProjeto.ParametroTEF('ConsultaCheque') = 'N' then begin
    dbgChequesAgencia.Visible := False;
    dbgChequesAgenciaDV.Visible := False;
    dbgChequesConta.Visible := False;
    dbgChequesContaDV.Visible := False;
    dbgChequesChequeDV.Visible := False;
    dbgChequesCPF_CNPJ.Visible := False;
  end;
  pgForma.Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;

end;

procedure TDlgInplacePgtos.UmCartoapenas1Click(Sender: TObject);
begin
  inherited;
  with C_Cartoes do begin
    First;
    Next;
    While RecordCount > 1 do
      Delete;

  end;

  dbgCartoes.Visible := false;
  btUmCartao.Visible := false;
  btMaisCartoes.Visible := True;

  try
    cmbCartao.SetFocus;
  except
  end;
end;

procedure TDlgInplacePgtos.cbDinheiroClick(Sender: TObject);
var
  bSomeVisible : boolean;
  i : integer;
begin
  inherited;
  if Not cbCreditos.Checked Then
    dfCredito.Value := 0;
  if cbCartao.Checked then begin
    cbChequeEletronico.Checked := False;
    cbChequeEletronico.Enabled := False;
  end
  else cbChequeEletronico.Enabled := True;
  if cbChequeEletronico.Checked then begin
    cbCartao.Checked := False;
    cbCartao.Enabled := False;
  end
  else cbCartao.Enabled := True;

  bSomeVisible := cbDinheiro.Checked or cbCheque.Checked or cbCartao.Checked or cbTEF.Checked or
                  cbCreditos.Checked or cbOutraForma.Checked or cbChequeEletronico.Checked;

  {Se não está visível é pq nenhuma forma de pgto está marcada, logo...}
  if not pgForma.Visible then
    nFaltaReceber := nValorAReceber;

  pgForma.Visible := bSomeVisible;

  if TdxfCheckBox(Sender).Checked then begin
    pgForma.ShowTab(StrToInt(TdxfCheckBox(Sender).Hint));
    TdxfCheckBox(Sender).Font.Color := clRed;
    end
  else begin
  	pgForma.HideTab(StrToInt(TdxfCheckBox(Sender).Hint));
    TdxfCheckBox(Sender).Font.Color := clWindowText;
  end;

  Application.ProcessMessages;

  //AtualizarRecebido;  Deu problema ao checar os cbcheques.

  {Verifica se o valor total a receber está em uma forma de pagamento,
   Caso esteja, será desmarcado e colocado nesta nova forma de pagamento }
  if (nValorAReceber = nRecebido) and (TdxfCheckBox(Sender).Checked) then
    for i:=0 to ComponentCount-1 do begin
      if Components[i] is TdxfCheckBox then
        if Components[i].Tag = 1 then
          if TComponent(Sender).Name <> Components[i].Name then
      			TdxfCheckBox(Components[i]).Checked := false;
    end;

  SetFormaPagamento( StrToInt(TTS_CheckBox(Sender).Hint ) );
  if cbCreditos.Checked Then Begin
    if ((Not (cbDinheiro.Checked or cbCheque.Checked or cbCartao.Checked or cbTEF.Checked or
         cbOutraForma.Checked or cbChequeEletronico.Checked)) and (nValorAReceber <= (nCreditoCliente + nCreditoDevolucao))) Then
       dfCredito.Value := nValorAReceber
    else if (nValorAReceber > (nCreditoCliente + nCreditoDevolucao)) Then
       dfCredito.Value := nCreditoCliente + nCreditoDevolucao;
  End;

  Application.ProcessMessages;


  if TdxfCheckBox(Sender).Checked then
    PostMessage(Self.Handle, PM_SetFocus, StrToInt(TTS_CheckBox(Sender).Hint), 0);

end;

procedure TDlgInplacePgtos.tabOutrosShow(Sender: TObject);
begin
  inherited;
  TTS_TabSheet(Sender).Bitmap := FormBkg.Backgroundoptions.picture.Bitmap;
end;

procedure TDlgInplacePgtos.SetFormaPagamento( nIndex : integer );
var sCampo : String;
    Control: TWinControl;
begin
  inherited;

  Case nIndex of
    0 : sCampo := 'dfDinheiro';
    4 : sCampo := 'dfTEF';
    5 : sCampo := 'dfCredito';
    6 : sCampo := 'dfOutraForma';
    7 : sCampo := 'dfInforPOP';
  end;

  if TTS_TabSheet(pgForma.Pages[nIndex]).TabVisible then begin
    if nIndex = 1 then begin
      C_Cheques.Append;
      C_ChequesVencimento.Value	:= dtData;
      C_Cheques.Post;
      end
    else if nIndex = 2 then begin
      C_ChequesEletronico.Append;
      C_ChequesEletronicoConvenio.Value		:= DMFinanceiro.C_ChequesEletFormaPagamento.Value;
      C_ChequesEletronicoVencimento.Value	:= dtData;
      C_ChequesEletronico.Post;
      end
    else if nIndex = 3 then begin
      C_Cartoes.Append;
      C_CartoesTipo.Value	:= StrToIntDef(DMProjeto.Parametro('ModoCartao'),1);
      C_Cartoes.Post;
    end else begin
      Control := TWinControl(FindComponent( sCampo ));
      if Control <> nil then begin
        if sCampo <> 'dfCredito' then
          TTS_CalcEdit(Control).Value := IIF(nFaltaReceber > 0, nFaltaReceber, 0)
        else
          TTS_CalcEdit(Control).Value := nCreditoCliente + nCreditoDevolucao;
      end;
    end;
  end else begin
    if nIndex = 1 then begin
	  	if C_Cheques.Active then
  	  	C_Cheques.EmptyDataSet;
      nNumCheque := 0;
      sChequeNominal := '';
      sAgencia := '';
      sAgenciaDV := '';
      sConta := '';
      sContaDV := '';
      sChequeDV := '';
      sCPF_CNPJ := '';
      AtualizarRecebido;
    end else if nIndex = 2 then begin
	  	if C_ChequesEletronico.Active then
  	  	C_ChequesEletronico.EmptyDataSet;
      AtualizarRecebido;
    end else if nIndex = 3 then begin
	  	if C_Cartoes.Active then
  	  	C_Cartoes.EmptyDataSet;
      AtualizarRecebido;
    end else begin
      Control := TWinControl(FindComponent( sCampo ));
      if Control <> nil then
        TTS_CalcEdit(Control).Value := 0;
    end;
  end;
end;

procedure TDlgInplacePgtos.C_ChequesNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nIDFormas);

  C_ChequesIDCheque.Value			  := nIDFormas;
  C_ChequesNumCheque.Value		  := nNumCheque;
  C_ChequesVencimento.Value		  := dtData;
  C_ChequesValor.Value          := IIF(nFaltaReceber > 0, nFaltaReceber, 0);
  C_ChequesChequeNominal.Value  := sNomeCliente;
  C_ChequesAgencia.Value        := sAgencia;
  C_ChequesAgenciaDV.Value      := sAgenciaDV;
  C_ChequesConta.Value          := sConta;
  C_ChequesContaDV.Value        := sContaDV;
  C_ChequesChequeDV.Value       := sChequeDV;
  C_ChequesCPF_CNPJ.Value       := sCPF_CNPJ;

  if nLastBanco > 0 then
    C_ChequesBanco.Value := nLastBanco;

  C_ChequesChequeNominal.Value := sChequeNominal;
//  dbgCheques.TS_SelectedColumn  := 'Valor';

end;

procedure TDlgInplacePgtos.C_ChequesBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_ChequesNumCheque.AsInteger <> 0 then
    nNumCheque := C_ChequesNumCheque.AsInteger + 1
  else
    nNumCheque := 1;

  if C_ChequesBanco.Value > 0 then
    nLastBanco := C_ChequesBanco.Value
  else
    nLastBanco := 0;

  sChequeNominal := C_ChequesChequeNominal.Value;
  sAgencia := C_ChequesAgencia.Value;
  sAgenciaDV := C_ChequesAgenciaDV.Value;
  sConta := C_ChequesConta.Value;
  sContaDV := C_ChequesContaDV.Value;
  sChequeDV := C_ChequesChequeDV.Value;
  sCPF_CNPJ := C_ChequesCPF_CNPJ.Value;
end;

procedure TDlgInplacePgtos.TitulardoCheque1Click(Sender: TObject);
begin
  inherited;
  TitularDoCheque1.Checked := not TitularDoCheque1.Checked;

  dbgChequesChequeNominal.Visible := TitularDoCheque1.Checked;
end;

procedure TDlgInplacePgtos.IncluirNovoBanco1Click(Sender: TObject);
begin
  inherited;
	DMProjeto.CriarForm('FrmBancos',self,true);
  DMFinanceiro.C_Bancos.Close;
  DMFinanceiro.C_Bancos.Open;

  try
    C_Cheques.Edit;
    C_ChequesBanco.Value := LastDataObject.ObjectKey;
  except
  end;

end;

procedure TDlgInplacePgtos.IncluirNovoCarto1Click(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([cmbCartao.LookupKeyValue,3]);
	DMProjeto.CriarForm('FrmFormasPagamento',self,true);
end;

procedure TDlgInplacePgtos.TS_Label3SetParametrosForm(Sender: TObject);
begin
  inherited;
  DMProjeto.SetParametrosForm([cmbCartao.LookupKeyValue,3]);
end;

procedure TDlgInplacePgtos.C_CartoesNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nIDFormas);

  C_CartoesIDCartao.Value			:= nIDFormas;
  C_CartoesTipo.Value		      := StrToIntDef(DMProjeto.Parametro('ModoCartao'),1);
  C_CartoesParcelas.Value			:= 1;
  C_CartoesValor.Value        := IIF(nFaltaReceber > 0, nFaltaReceber, 0);
  nVlParcelas                 := C_CartoesValor.Value;  //Para não dar erro se o dbgCartoes estiver visivel.
  C_CartoesValorParcelas.Value:= C_CartoesValor.Value;

end;

procedure TDlgInplacePgtos.dfDinheiroChange(Sender: TObject);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TDlgInplacePgtos.C_ChequesAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TDlgInplacePgtos.C_CartoesAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TDlgInplacePgtos.AtualizarRecebido;
var
  nVlCartoes : Currency;
begin
  try
    if dbgCartoes.Visible then begin
      if C_Cartoes.State <> dsBrowse then
        C_Cartoes.Post;
      nVlCartoes := dbgCartoes.TotalGeral('Valor');
      end
    else
      nVlCartoes := dfCartao.Value;

    if C_Cheques.State <> dsBrowse then
      C_Cheques.Post;

    if C_ChequesEletronico.State <> dsBrowse then
      C_ChequesEletronico.Post;

  except
    nVlCartoes := dfCartao.Value;
  end;

  nRecebido := dfDinheiro.Value +
               dfTEF.Value +
               dfOutraForma.Value +
               dbgCheques.TotalGeral('Valor') +
               dbgChequesEletronico.TotalGeral('Valor') +
               nVlCartoes +
               dfCredito.Value;

  nFaltaReceber := nValorAReceber - nRecebido;

  if nFaltaReceber < 0 then //Implica que o cliente está pagando a mais que o selecionado.
    nTroco := ABS(nFaltaReceber)
  else
    nTroco := 0;

  lbRecebido.Caption := FormatCurr('#,###,##0.00', nRecebido);
  dfTroco.Text := FormatCurr('#,###,##0.00', nTroco);

end;

procedure TDlgInplacePgtos.PMSetFocus(var Msg: TMessage);
var sCampo : String;
    Control: TWinControl;
begin
  inherited;
  try
    sCampo := '';
    Control := nil;

    Case Msg.wParam of
      0 : sCampo := 'dfDinheiro';
      1 : if dbgCheques.CanFocus then dbgCheques.SetFocus;
      2 : if dbgChequesEletronico.CanFocus then dbgChequesEletronico.SetFocus;
      3 : begin
            if dbgCartoes.Visible then begin
              if dbgCartoes.CanFocus then dbgCartoes.SetFocus;
            end else begin
              if cmbCartao.Canfocus then cmbCartao.SetFocus;
            end;

            //dfCartao.Value := IIF(nFaltaReceber > 0, nFaltaReceber, 0);
          end;
      4 : sCampo := 'dfTEF';
      5 : sCampo := 'dfCredito';
      6 : sCampo := 'dfOutraForma';
      7 : sCampo := 'dfInforPOP';
    end;


    if sCampo <> '' then begin
      Control := TWinControl(FindComponent( sCampo ));

      if (Control <> nil) and TTS_CalcEdit(Control).CanFocus then begin
        TTS_CalcEdit(Control).SetFocus;
        TTS_CalcEdit(Control).SelectAll;
      end;

    end;

  except
  end;
end;

procedure TDlgInplacePgtos.tabCartaoExit(Sender: TObject);
begin
  inherited;
  if C_Cartoes.State <> dsBrowse then
    C_Cartoes.Post;
end;

procedure TDlgInplacePgtos.tabChequeExit(Sender: TObject);
begin
  inherited;
  if C_Cheques.State <> dsBrowse then
    C_Cheques.Post;
end;

procedure TDlgInplacePgtos.dfNumParcelasChange(Sender: TObject);
begin
  inherited;

  if C_Cartoes.State = dsBrowse then
    C_Cartoes.Edit;

  if dfNumParcelas.Value > 0 then
    C_CartoesValorParcelas.Value := dfCartao.Value / dfNumParcelas.Value
  else
    C_CartoesValorParcelas.Value := 0;


end;

procedure TDlgInplacePgtos.SetCliente;
begin
  nCliente := Cliente;
  sNomeCliente := NomeCliente;
  sConsumidorFinal := ConsumidorFinal;

  nCreditoCliente := 0;

  {Verificando Existência de Créditos}
  if nCliente <> 1 then begin
    nCreditoCliente := DMFinanceiro.CreditoFavorecido( nCliente, true );
    if nCreditoCliente < 0 then
      nCreditoCliente := 0;
  end;

  dfCredito.ReadOnly := (nCreditoCliente + nCreditoDevolucao = 0);
  cbCreditos.Enabled := (nCreditoCliente + nCreditoDevolucao > 0);

  lbCreditoDisponivel.Caption := FormatCurr('#,###,##0.00', nCreditoCliente + nCreditoDevolucao );

end;

procedure TDlgInplacePgtos.dbgCartoesParcelasChange(Sender: TObject);
begin
  inherited;
  if StrToIntDef(dbgCartoes.TS_Text,0) > 0 then
    nVlParcelas := dfCartao.Value / StrToIntDef(dbgCartoes.TS_Text,1)
  else
    nVlParcelas := 0;

  dbgCartoes.SetFieldValue(dbgCartoes.FocusedNode,'ValorParcelas', nVlParcelas);
end;

procedure TDlgInplacePgtos.dbgCartoesValorChange(Sender: TObject);
begin
  inherited;
  if C_CartoesParcelas.Value > 0 then
    nVlParcelas := StrToFloatDef(dbgCartoes.TS_Text,0) / C_CartoesParcelas.Value
  else
    nVlParcelas := 0;

  dbgCartoes.SetFieldValue(dbgCartoes.FocusedNode,'ValorParcelas', nVlParcelas);
end;

procedure TDlgInplacePgtos.dbgCartoesEdited(Sender: TObject;
  Node: TdxTreeListNode);
begin
  inherited;

  if C_Cartoes.State = dsBrowse then
    exit;

  if ( (UpperCase(dbgCartoes.TS_SelectedColumn) = 'PARCELAS') or (UpperCase(dbgCartoes.TS_SelectedColumn) = 'VALOR')) and
     (C_CartoesValorParcelas.Value <> nVlParcelas) then
    C_CartoesValorParcelas.asCurrency := nVlParcelas;

end;

procedure TDlgInplacePgtos.dfCartaoChange(Sender: TObject);
begin
  inherited;
  if C_Cartoes.State = dsBrowse then
    C_Cartoes.Edit;

  if C_CartoesParcelas.Value > 0 then
    C_CartoesValorParcelas.Value := dfCartao.Value / C_CartoesParcelas.Value
  else
    C_CartoesValorParcelas.Value := 0;

  AtualizarRecebido;
end;

procedure TDlgInplacePgtos.SelecionarFPgto;
begin
  Case key of
    ord('1') : begin
               cbDinheiro.Checked := not cbDinheiro.Checked;
               if nValor > 0 then
                 dfDinheiro.Value := nValor;
               end;
    ord('2') : begin
               cbCheque.Checked := not cbCheque.Checked;
               if nValor > 0 then begin
                 C_Cheques.Edit;
                 C_ChequesValor.asCurrency := nValor;
               end;
               end;
    ord('3') : begin
               cbChequeEletronico.Checked := not cbChequeEletronico.Checked;
               if nValor > 0 then begin
                 C_ChequesEletronico.Edit;
                 C_ChequesEletronicoValor.asCurrency := nValor;
               end;
               end;
    ord('4') : begin
               cbCartao.Checked := not cbCartao.Checked;
               C_Cartoes.Edit;
               if (Not cbCartao.Checked) Then
                  C_CartoesValor.Value := 0;
               if nValor > 0 then
                 C_CartoesValor.Value := nValor;
               if nQtdVezes > 1 then begin
                 C_CartoesParcelas.Value := nQtdVezes;
                 dfNumParcelasChange(self);
               end;
               end;
    ord('5') : begin
               cbTEF.Checked := not cbTEF.Checked;
               if nValor > 0 then
                 dfTef.Value := nValor;
               end;
    ord('6') : if cbCreditos.Enabled then
                 cbCreditos.Checked := not cbCreditos.Checked;
    ord('7') : begin
               cbOutraForma.Checked := not cbOutraForma.Checked;
               if nValor > 0 then
                 dfOutraForma.Value := nValor;
               end;
  end;
  AtualizarRecebido;
end;

procedure TDlgInplacePgtos.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  inherited;
  if (ssAlt in Shift) and (Key in [ord('1')..ord('7')]) then
    SelecionarFPgto(Key);
end;

procedure TDlgInplacePgtos.dbgChequesColumnSorting(Sender: TObject;
  Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
  if Column.FieldName = 'lkBanco' then begin
    IncluirNovoBanco1Click(Self);
  end;
	Allow := false;
end;

procedure TDlgInplacePgtos.C_ChequesAfterDelete(DataSet: TDataSet);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TDlgInplacePgtos.dfTrocoExit(Sender: TObject);
begin
  inherited;
  if StrToFloatDef(dfTroco.Text, -1) >= 0 then begin
    nTroco := StrToFloat(dfTroco.Text);
  end;

  dfTroco.Text := FormatCurr('#,###,##0.00', nTroco);

end;

procedure TDlgInplacePgtos.dfTrocoKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if Key = #13 then
    ActiveControl := nil;
end;

function TDlgInplacePgtos.GetDinheiro: Currency;
begin
  result := dfDinheiro.Value;
end;

function TDlgInplacePgtos.GetRecebido: Currency;
begin
  result := nRecebido;
end;

function TDlgInplacePgtos.GetTroco: Currency;
begin
  result := nTroco;
end;


{--------------------------------------------------------------------------------}

{Validação do Recebimento}
function TDlgInplacePgtos.Validar: boolean;
begin
  result := false;

  {Validando os Cheques informado}

  If RoundTo(dfCartao.Value,-2) > RoundTo(nValorAReceber,-2) Then Begin
     DlgMsg.ShowMsg(228);
     exit;
  End;
  // Validando Valor.

  If (cbCartao.Checked) and ((cbDinheiro.Checked)) then Begin
    If RoundTo(dfCartao.Value+dfDinheiro.Value,-2) > RoundTo(nValorAReceber,-2) Then Begin
     DlgMsg.ShowMsg(228);
     exit;
    End
  End;


// Comentado para liberar outras formas de pagamento
//  If (cbCartao.Checked) and (Not (cbDinheiro.Checked)) then Begin
//    If RoundTo(dfCartao.Value,-2) <> RoundTo(nValorAReceber,-2) Then Begin
//     DlgMsg.ShowMsg(228);
//     exit;
//    End
//  End;



  if (cbCheque.Checked) then with C_Cheques do begin
    First;
    while not EOF do begin
      if (fieldbyname('Vencimento').IsNull) or (fieldbyname('Vencimento').Value = 0) then begin
        DlgMsg.ShowMsg(929, ['o Vencimento do Cheque']);
        Exit;
      end;
      if (fieldbyname('Valor').Value = 0) or (fieldbyname('Valor').IsNull) then begin
        DlgMsg.ShowMsg(929, ['o Valor do Cheque']);
        Exit;
      end;
      if fieldbyname('Valor').Value < 0 then begin
        DlgMsg.ShowMsg(929, ['o Valor do Cheque. (Não pode ser negativo)']);
        Exit;
      end;
      C_Cheques.edit;
      C_ChequesContaReceber.Value := DMFinanceiro.getContaReceber(0,dtData,C_ChequesVencimento.Value);
      if C_ChequesContaReceber.Value = 0 then
        C_ChequesContaReceber.Value := nConta;

      {C_Cheques.edit;
      C_ChequesContaReceber.Value := DMFinanceiro.getContaReceber(0,C_DepositosData.value,C_ChequesVencimento.Value);
      if C_ChequesContaReceber.Value = 0 then
        C_ChequesContaReceber.Value := C_DepositosConta.value;
      C_Cheques.post;}
      next;
    end;
  end;

  {Validando os Cheques informado}
  if (cbChequeEletronico.Checked) then with C_ChequesEletronico do begin
    First;
    while not EOF do begin
      if (fieldbyname('Vencimento').IsNull) or (fieldbyname('Vencimento').Value = 0) then begin
        DlgMsg.ShowMsg(929, ['o Vencimento do Cheque']);
        Exit;
      end;
      if (fieldbyname('Valor').Value = 0) or (fieldbyname('Valor').IsNull) then begin
        DlgMsg.ShowMsg(929, ['o Valor do Cheque']);
        Exit;
      end;
      if fieldbyname('Valor').Value < 0 then begin
        DlgMsg.ShowMsg(929, ['o Valor do Cheque. (Não pode ser negativo)']);
        Exit;
      end;
      if fieldbyname('Convenio').AsInteger = 0 then begin
        DlgMsg.ShowMsg(929, ['o Convênio do Cheque Eletrônico']);
        Exit;
      end;
      C_Cheques.edit;
      C_ChequesContaReceber.Value := DMFinanceiro.getContaReceber(0,dtData,C_ChequesVencimento.Value);
      if C_ChequesContaReceber.Value = 0 then
        C_ChequesContaReceber.Value := nConta;
      next;
    end;
  end;

  {Validando os Cartoes Informados}
  if (cbCartao.Checked) then with C_Cartoes do begin
    First;
    while not EOF do begin
      if FieldByName('Cartao').asInteger = 0 then begin
        DlgMsg.ShowMsg( 517 );
        Exit;
      end;
      if (C_CartoesValorParcelas.Value < DMFinanceiro.getParcelaMinima(FieldByName('Cartao').asInteger)) then begin
        DlgMsg.ShowMsg( 936 );
        Exit;
      end;
      Next;
    end;
  end;

  {Crédito Utilizado do Cliente}
  if (dfCredito.Value > nCreditoCliente + nCreditoDevolucao) then begin
  	DlgMsg.ShowMsg( 519 );
    pgForma.ActivePage := tabCredito;
    if dfCredito.CanFocus then
    	dfCredito.SetFocus;
    Exit;
  end;

  if (dfCredito.Value < nCreditoDevolucao) then begin
    DlgMsg.ShowMsg( 8064, [FormatFloat('#,###,##0.00',nCreditoDevolucao)]);
    pgForma.ActivePage := tabCredito;
    if dfCredito.CanFocus then
    	dfCredito.SetFocus;
    Exit;
  end;

  {Troco}
	if (nTroco > 0) and (nTroco >= nRecebido) then begin
  	DlgMsg.ShowMsg( 955 );
    Exit;
  end;

	if cbOutraForma.Checked and (dfOutraForma.Value > 0) and (cmbOutraForma.LookupKeyValue = null) then begin
  	DlgMsg.ShowMsg( 524 );
    pgForma.ActivePage := tabOutros;
    if cmbOutraForma.CanFocus then
      cmbOutraForma.SetFocus;
    Exit;
  end;

	if cbOutraForma.Checked and (dfOutraForma.Value > 0) and (cmbContaOutra.Text = '') then begin
  	DlgMsg.ShowMsg( 921 );
    pgForma.ActivePage := tabOutros;
    if cmbOutraForma.CanFocus then
      cmbOutraForma.SetFocus;
    Exit;
  end;

	if (dfTEF.Value > 0) and (cmbContaTEF.Text = '') then begin
  	DlgMsg.ShowMsg( 920 );
    pgForma.ActivePage := tabTEF;
    if cmbContaTEF.CanFocus then
      cmbContaTEF.SetFocus;
    Exit;
  end;

  if ((sConsumidorFinal = 'S') and (nRecebido <= 0)) or ((nRecebido <= 0) and (DMProjeto.Parametro('PermitirGravarSemReceber') <> 'S'))
  Or ((DMProjeto.Parametro('PermitirGravarSemReceber') <> 'S') and (nFaltaReceber > 0))then begin
    DlgMsg.ShowMsg(228);
    Exit;
  end;
  result := true;

end;

{Gravação do Recebimento}
function TDlgInplacePgtos.Gravar;
var  i, j, Deposito : Integer;
		 dtVencimento : TDateTime;
		 nCreditoUtilizado, nDiferencaParcelas, nCreditoGerado, nCartao : currency;
begin
  Try
      result := false;
      nCreditoGerado := nRecebido - nValorAReceber - nTroco;
      if nCreditoGerado < 0 then
        nCreditoGerado := 0;

      {Gravando o Depósito}
      Deposito := DMFinanceiro.ReceberTitulos( 0, TitulosSelecionados, nCliente, nConta, dtData, dfCredito.Value,
                                               nCreditoGerado, '', 0,
                                               iif(nTroco > dfDinheiro.Value, nTroco - dfDinheiro.Value, 0) );

      {Depositos Forma}
      if (cbDinheiro.Checked) and (dfDinheiro.Value > 0) and (dfDinheiro.Value > nTroco) then begin

        DMFinanceiro.ReceberDoc( 0, 1, Deposito, 1, dfDinheiro.Value - nTroco, dtData, '' );

      end;

      {Lançamento em Cheques}
      if cbCheque.Checked and (C_Cheques.Active) and (dbgCheques.TotalGeral('Valor') > 0) then begin

        C_Cheques.DisableControls;
        try
          C_Cheques.First;
          while not C_Cheques.EOF do begin

            DMFinanceiro.ReceberDoc(0, 1, Deposito, 2, C_ChequesValor.Value,
                                    C_ChequesVencimento.Value, '', C_ChequesNumCheque.Value,
                                    C_ChequesBanco.Value, IIF(C_ChequesChequeNominal.Value = '', sNomeCliente, C_ChequesChequeNominal.Value),
                                    0,0,0,'','',';;;;'+C_ChequesConta.AsString+';'+C_ChequesContaDV.AsString+';'+C_ChequesAgencia.AsString+';'+
                                    C_ChequesAgenciaDV.AsString+';'+C_ChequesChequeDV.AsString+';'+C_ChequesCPF_CNPJ.AsString);

            C_Cheques.Next;
          end;
        finally
          C_Cheques.EnableControls;
        end;

      end;

      {Lançamento em Cheques Eletrônico}
      if cbChequeEletronico.Checked and (C_ChequesEletronico.Active) and (dbgChequesEletronico.TotalGeral('Valor') > 0) then begin

        C_ChequesEletronico.DisableControls;
        try
          C_ChequesEletronico.First;
          while not C_ChequesEletronico.EOF do begin

            DMFinanceiro.ReceberDoc(0, 1, Deposito, C_ChequesEletronicoConvenio.Value, C_ChequesEletronicoValor.Value,
                                    C_ChequesEletronicoVencimento.Value, '', 0,
                                    0, '', 0,0,0,'','',NSU+';'+RedeNSU+';'+DataNSU+';'+HoraNSU+';;;;;;');

            C_ChequesEletronico.Next;
          end;
        finally
          C_ChequesEletronico.EnableControls;
        end;

      end;

      { Lançamento em Cartão de Crédito}
      if cbCartao.Checked and C_Cartoes.Active and ( dbgCartoes.TotalGeral('Valor') > 0) then begin
        C_Cartoes.DisableControls;
        try
          C_Cartoes.First;
          while not C_Cartoes.EOF do begin
            dtVencimento := DMFinanceiro.getCarenciaCredito(C_CartoesCartao.Value, dtData);
            nDiferencaParcelas := C_CartoesValor.asCurrency -(C_CartoesParcelas.Value*C_CartoesValorParcelas.asCurrency);

            for i := 1 to C_CartoesParcelas.Value do begin
              nCartao := C_CartoesValorParcelas.asCurrency;
              if (i = C_CartoesParcelas.Value) and (nDiferencaParcelas <> 0) then
                nCartao := C_CartoesValorParcelas.Value + nDiferencaParcelas;

              //// Pegando o vencimento pelo intervalo entre parcelas....
              dtVencimento := dtData + ( DMFinanceiro.IntervaloParcelas(C_CartoesCartao.Value) * i );

              DMFinanceiro.ReceberDoc( 0, 1, Deposito, C_CartoesCartao.Value, nCartao,
                                       dtVencimento, '', 0, 0, '',0, C_CartoesTipo.Value,
                                       C_CartoesContaCartao.Value,'','',NSU+';'+RedeNSU+';'+DataNSU+';'+HoraNSU+';;;;;;');

              if i <> C_CartoesParcelas.Value then
                dtVencimento := DMFinanceiro.getCarenciaCredito(C_CartoesCartao.Value, dtVencimento);

            end;

            C_Cartoes.Next;
          end;
        finally
          C_Cartoes.EnableControls;
        end;
      end;

      {Lançamento com outra forma de pagamento}
      if cbOutraForma.Checked and (dfOutraForma.Value > 0) then begin

        DMFinanceiro.ReceberDoc( 0, 1, Deposito, cmbOutraForma.LookupKeyValue, dfOutraForma.Value,
                                 dtData, '', 0, 0, '', 0, 0, cmbContaOutra.LookupKeyValue );

      end;

      {Lançamentos TEF/Depósito Bancário}
      if cbTEF.Checked and (dfTEF.Value > 0) then begin

        DMFinanceiro.ReceberDoc( 0, 1, Deposito, 20, dfTEF.Value,
                                 dtData, '', 0, 0, '', cmbContaTEF.LookupKeyValue );

      end;

      {Utilização de Créditos}
      if (cbCreditos.Checked) and (dfCredito.Value > 0) then begin

        DMFinanceiro.ReceberDoc( 0, 1, Deposito, -1, dfCredito.Value, dtData, '' );

      end;


      {Troco}
      if nTroco > dfDinheiro.Value then
        DMFinanceiro.LancamentoDeTroco( nConta, dtData, nTroco - dfDinheiro.Value, nCliente, Deposito, 1);

      {Baixa do Titulo}
      Try
         If Not (DMFinanceiro.BaixarTitulo( Titulos )) Then Begin
            Beep.BeepFor(800,1000);
            Beep.BeepFor(500,800);
            ShowMessage('Informações para Baixa do Titulo não são Corretas!!!'+#13+'Marque a parcela Correta.');
            Exit;
         End;
      Except
        On E: Exception do  ShowMessage('Erro em DMFinanceiro.BaixarTitulo( Titulos ) >>>Dlg_InplacePgto<<< ');
      End;

      {Atualizando Créditos Utilizado}
      if dfCredito.Value > 0 then            // 'Crédito Utilizado em Depósito ('+C_DepositosHistorico.Value+')'
        DMFinanceiro.RegistrarCredito(nCliente, Deposito, 1, TRUE, dfCredito.Value, 0, Format(DMProjeto.getMsg( 239),['']) );

      {Gerando Crédito}
      If nCreditoGerado > 0 then
        DMFinanceiro.RegistrarCredito(nCliente, Deposito, 1, TRUE, 0, nCreditoGerado, Format(DMProjeto.getMsg(241),['']) );

      DMContabil.ContabilizaReceberPagamentosCaixa(Deposito,dtData,nCliente,nConta,
      nTroco,dfDinheiro.Value,dfTEF.value,dfOutraForma.Value,dfCredito.Value,nCreditoGerado,
      cbCheque.caption,cbDinheiro.caption,cbTEF.caption,cbOutraForma.caption,
      cmbContaTEF.LookupKeyValue,cmbOutraForma.LookupKeyValue,C_Titulos,C_Cheques,C_Cartoes,C_ChequesEletronico);

      if not DMContabil.Salvar(Deposito) then
        raise Exception.Create(DMProjeto.GetMsg(3117));
      ///////////////////////////
  Except
    On E: Exception do  ShowMessage(pChar('function TDlgInplacePgtos.Gravar '+e.Message));
  End;
  result := true;
end;


procedure TDlgInplacePgtos.FormCreate(Sender: TObject);
begin
  inherited;
  bCartaoTEF := True;
  DMContabil := TDMContabilidade.Create(self);
  nRecebido  := 0;
end;

procedure TDlgInplacePgtos.C_CartoesCartaoChange(Sender: TField);
begin
  inherited;
  bCartaoTEF := False;
  DMFinanceiro.C_CartoesCred.Locate('formapagamento',C_CartoesCartao.value,[]);
  bCartaoTEF := (DMFinanceiro.C_CartoesCredCARTAOTEF.AsString = 'S');
  C_CartoesContaCartao.value := DMFinanceiro.C_CartoesCredContaReceber.value;
  if C_CartoesContaCartao.value = 0 then
    C_CartoesContaCartao.value := 1;
end;

constructor TDlgInplacePgtos.Create;
begin
  CorAlphaBlend := $00804000;
  CorGrid       := $00F7EBDE;
  CorLinhas     := $00CF995C;
  CorHeaders    := $00E7CBAD;

  pCorGrid := clBlack;

  inherited Create(AOwner);

end;

procedure TDlgInplacePgtos.Fechar;
begin
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
end;

procedure TDlgInplacePgtos.C_ChequesEletronicoNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nIDFormas);
  DataSet['ID'] := nIDFormas;
  DataSet['Vencimento'] := dtData;
  DataSet['Valor'] := nFaltaReceber;
  dbgChequesEletronico.TS_SelectedColumn  := 'Valor';
end;

procedure TDlgInplacePgtos.tabChequeEletronicoExit(Sender: TObject);
begin
  inherited;
  if C_ChequesEletronico.State <> dsBrowse then
    C_ChequesEletronico.Post;
end;

procedure TDlgInplacePgtos.dbgChequesEletronicoColumnSorting(
  Sender: TObject; Column: TdxDBTreeListColumn; var Allow: Boolean);
begin
  inherited;
   if UpperCase(Column.FieldName) = 'DESCCONVENIO' then begin
  	Allow := false;
    DMProjeto.SetParametrosForm([null,2]);
    DMProjeto.CriarForm('FrmFormasPagamento',self,true);
   end;
end;

procedure TDlgInplacePgtos.C_ChequesEletronicoAfterPost(DataSet: TDataSet);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TDlgInplacePgtos.Umchequeparacadaparcela1Click(Sender: TObject);
var sNumero : string;
		nNumeroCheque, i : integer;
begin
  inherited;
  if C_Parcelas.RecordCount = 0 then
    Exit;
  sNumero := InputBox('Número do Cheque','Informe o Nº do primeiro cheque:','');
  if sNumero = '' then
  	exit;
  nNumeroCheque := StrToIntDef(sNumero,1);
  i := 1;
  C_Cheques.EmptyDataSet;
  AtualizarRecebido;
  C_Parcelas.EnableControls;
	C_Parcelas.First;                                      
  while not C_Parcelas.EOF do begin
		C_Cheques.Append;
    C_ChequesNumCheque.AsInteger 		:= nNumeroCheque;
    C_ChequesVencimento.AsDateTime 	:= C_Parcelas.FieldByName('Vencimento').AsDateTime;
    if (i=1) and (getRecebido <> 0) then
    	C_ChequesValor.AsCurrency			 	:= C_Parcelas.FieldByName('Valor').AsCurrency-getRecebido
    else
      C_ChequesValor.AsCurrency			 	:= C_Parcelas.FieldByName('Valor').AsCurrency;
    if C_ChequesValor.AsCurrency < 0 then
    	C_ChequesValor.AsCurrency	 := 0;
    C_Cheques.Post;
    C_Parcelas.Edit;
    C_Parcelas.FieldByName('_icSelecionado').AsInteger := 1;
    C_Parcelas.Post;
    C_Parcelas.Next;
    inc(i);
    inc(nNumeroCheque);
  end;
  C_Parcelas.First;
  C_Parcelas.EnableControls;
end;

procedure TDlgInplacePgtos.Gerarumchequeparacadaparcela1Click(
  Sender: TObject);
var i : integer;
begin
  inherited;
  if C_Parcelas.RecordCount = 0 then
    Exit;
  i := 1;
  C_Cheques.EmptyDataSet;
  AtualizarRecebido;
  C_Parcelas.DisableControls;
	C_Parcelas.First;
  while not C_Parcelas.EOF do begin
		C_ChequesEletronico.Append;
    C_ChequesEletronicoConvenio.Value := DMFinanceiro.C_ChequesEletFormaPagamento.Value;
    C_ChequesEletronicoVencimento.AsDateTime 	:= C_Parcelas.FieldByName('Vencimento').AsDateTime;
    if (i=1) and (getRecebido <> 0) then
    	C_ChequesEletronicoValor.AsCurrency			 	:= C_Parcelas.FieldByName('Valor').AsCurrency-getRecebido
    else
      C_ChequesEletronicoValor.AsCurrency			 	:= C_Parcelas.FieldByName('Valor').AsCurrency;
    if C_ChequesValor.AsCurrency < 0 then
    	C_ChequesValor.AsCurrency	 := 0;
    C_ChequesEletronico.Post;
    C_Parcelas.Edit;
    C_Parcelas.FieldByName('_icSelecionado').AsInteger := 1;
    C_Parcelas.Post;
    C_Parcelas.Next;
    inc(i);
  end;
  C_Parcelas.First;
  C_Parcelas.EnableControls;
end;

procedure TDlgInplacePgtos.ValoresPagos;
var cheque, cartao, chqeletronico: currency;
    k,i: Integer;
begin
  for i:=0 to Length(Valores) do begin
    valores[i] := 0;
  end;
  if (Pos('HIPERCARD',UpperCase(cmbCartao.Text))  > 0) then
    HiperCard := True
  else HiperCard := False;
  if dfDinheiro.Value >= 0 then
     valores[0] := dfDinheiro.Value
  else valores[0] := 0;

  cheque := 0;
  C_Cheques.First;
  while not C_Cheques.Eof do begin
    cheque := cheque + C_ChequesValor.Value;
    C_Cheques.Next;
  end;

  valores[1] := cheque;
  chqeletronico := 0;
  valores[2] := dbgChequesEletronico.TotalGeral('Valor');

  cartao := 0;
  k:=0;
  C_Cartoes.First;
  while not C_Cartoes.Eof do begin
    cartao := cartao + C_CartoesValor.Value;
    MultCartao[k].Valor  := C_CartoesValor.Value;
    MultCartao[k].Cartao := C_CartoeslkCartao.Asstring;
    Inc(k);
    C_Cartoes.Next;
  end;
  valores[3] := cartao;
  if dfTEF.Value >= 0 then
    valores[4] := dfTEF.Value
  else valores[4] := 0;
  if dfCredito.Value >= 0 then
     valores[5] := dfCredito.Value
  else valores[5] := 0;
  if dfOutraForma.Value >= 0 then
    valores[6] := dfOutraForma.Value
  else valores[6] := 0;
end;

procedure TDlgInplacePgtos.cbCreditosExit(Sender: TObject);
begin
  inherited;
  AtualizarRecebido;
end;

procedure TDlgInplacePgtos.FormKeyPress(Sender: TObject; var Key: Char);
begin
  inherited;
  if (Key = '-') and (
     (ActiveControl = dfOutraForma)
      Or (ActiveControl = dfCredito)
      Or (ActiveControl = dfTEF)
      Or (ActiveControl = dfCartao)
      Or (ActiveControl = dbgChequesEletronico)
      Or (ActiveControl = dbgCheques)
      Or (ActiveControl = dfDinheiro)) then
     Key := #0;
end;

end.



