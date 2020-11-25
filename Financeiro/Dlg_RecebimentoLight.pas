unit Dlg_RecebimentoLight;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxDBEdtr, dxDBELib, TS_LookupComboBox,
  dxCntner, dxEditor, dxExEdtr, dxEdLib, TS_CalcEdit, ExtCtrls, TS_Shape,
  Placemnt, FormsComponent, BTOdeum, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, TS_Image, dxfLabel,
  TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton, teCtrls, TS_EffectsPanel,
  TS_DateTimePicker, TS_Edit, DB, IBCustomDataSet, IBQuery;

type
  TDlgRecebimentoLight = class(TFrmModeloCadastros)
    lbb: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    lbInvoice: TdxfLabel;
    TS_Label7: TTS_Label;
    lbCliente: TdxfLabel;
    lbVencimento: TdxfLabel;
    lbValor: TdxfLabel;
    lbSaldo: TdxfLabel;
    TS_Shape1: TTS_Shape;
    TS_Label8: TTS_Label;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Label9: TTS_Label;
    TS_Shape4: TTS_Shape;
    edValor: TTS_CalcEdit;
    cmbFormaPagamento: TTS_LookupComboBox;
    TS_Label10: TTS_Label;
    dtData: TTS_DateTimePicker;
    lbNumcheque: TTS_Label;
    lbVenc: TTS_Label;
    edNumCheque: TTS_Edit;
    dtVencimento: TTS_DateTimePicker;
    Q_FormasPagamento: TIBQuery;
    Q_FormasPagamentoDS: TDataSource;
    Q_FormasPagamentoFORMAPAGAMENTO: TIntegerField;
    Q_FormasPagamentoESPECIE: TIntegerField;
    Q_FormasPagamentoDESCRICAO: TIBStringField;
    cmbConta: TTS_LookupComboBox;
    lbConta: TTS_Label;
    lbBanco: TTS_Label;
    cmbBanco: TTS_LookupComboBox;
    Q_FormasPagamentoCONTALIBERACAO: TIntegerField;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cmbFormaPagamentoChange(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
  private
    Saldo : Currency;
    IDParcela, Favorecido : integer;
    function Validacoes: boolean;
    function Gravar: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgRecebimentoLight: TDlgRecebimentoLight;

implementation

uses DM_Projeto, DM_Financeiro, funcoes;

{$R *.dfm}

function TDlgRecebimentoLight.Validacoes : boolean;
var sTipo : string;
begin
	result := false;
  if edValor.Value <= 0 then begin
  	DlgMsg.ShowMsg( 929, ['o Valor do Recebimento']);
    Exit;
  end;
  if cmbFormaPagamento.Text = '' then begin
  	DlgMsg.ShowMsg( 929, ['a Forma de Pagamento']);
    Exit;
  end;
  if Q_FormasPagamentoEspecie.Value in [20] then begin
		if cmbConta.Text = '' then begin
  		DlgMsg.ShowMsg( 929, ['a Conta Bancária']);
    	Exit;
    end;
  end;

  sTipo := '';
  if edValor.Value > Saldo then
  	sTipo := ', sendo '+currencystring+formatfloat('#,###,##0.00',edValor.Value-Saldo)+' de juros'
  else if edValor.Value < Saldo then
  	sTipo := '(Recebimento Parcial)';
  if (DlgMsg.ShowMsg( 350,[FormatCurr('##,##0.00',edValor.Value),sTipo,'Recebimento de Parcela'] ) = 200) then
    Exit;
  result := true;
end;

function TDlgRecebimentoLight.Gravar : boolean;
var IDDeposito : integer;
begin

	try
		if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    IDDeposito := DMFinanceiro.ReceberRapido( 0, IDParcela, Favorecido, DMFinanceiro.nContaPadrao,0,
    															 					  dtData.Date, dtData.Date, 'Recebimento de Parcela', edValor.Value, iif(edValor.Value > Saldo,edvalor.Value-Saldo,0), 0, 0, 0);

    if Q_FormasPagamentoEspecie.Value = 1 then
    	DMFinanceiro.ReceberDoc( 0, 1, IDDeposito, cmbFormaPagamento.LookUpKeyValue,
      											 edValor.Value, dtVencimento.Date,
                  					 'Recebimento', StrToIntDef(edNumCheque.Text,0), StrToIntDef(VarToStr(cmbBanco.LookUpKeyValue),0),'',StrToIntDef(VarToStr(cmbConta.LookUpKeyValue),0))
    else if Q_FormasPagamentoEspecie.Value = 3 then
    	DMFinanceiro.ReceberDoc( 0, 1, IDDeposito, cmbFormaPagamento.LookUpKeyValue,
      											 edValor.Value, DMFinanceiro.getCarenciaCredito(cmbFormaPagamento.LookUpKeyValue, dtData.Date),
                  					 'Recebimento', 0, 0, '', 0, 1, Q_FormasPagamentoContaLiberacao.Value )
    else if Q_FormasPagamentoEspecie.Value = 20 then
    	DMFinanceiro.ReceberDoc( 0, 1, IDDeposito, cmbFormaPagamento.LookUpKeyValue,
      											 edValor.Value, dtVencimento.Date,
                  					 'Recebimento', StrToIntDef(edNumCheque.Text,0), StrToIntDef(VarToStr(cmbBanco.LookUpKeyValue),0) )
    else
    	DMFinanceiro.ReceberDoc( 0, 1, IDDeposito, cmbFormaPagamento.LookUpKeyValue,
      											 edValor.Value, dtData.Date,
                  					 'Recebimento');

    {Liquidar Conta}
    DMFinanceiro.BaixarTitulo( IntToStr(IDParcela) );

		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

	except
		if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
	end;
end;

procedure TDlgRecebimentoLight.btGravarClick(Sender: TObject);
begin
  inherited;
  if not Validacoes then
  	Exit;
  Gravar;
  Close;
end;

procedure TDlgRecebimentoLight.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  Q_FormasPagamento.Open;
  DMFinanceiro.C_Bancos.Open;
  DMFinanceiro.C_ContasBc.Open;
	if DMProjeto.ExisteParametrosForm then begin
  	IDParcela := DMProjeto.getParametrosForm(0);
  	Favorecido := DMProjeto.getParametrosForm(1);
    lbCliente.Caption := DMProjeto.getParametrosForm(2);
    lbInvoice.Caption := DMProjeto.getParametrosForm(3);
    lbVencimento.Caption := DMProjeto.getParametrosForm(4);
    Saldo := DMProjeto.getParametrosForm(6);
    lbValor.Caption := CurrencyString+formatfloat('#,###,##0.00',DMProjeto.getParametrosForm(5));
    lbSaldo.Caption := CurrencyString+formatfloat('#,###,##0.00',DMProjeto.getParametrosForm(6));
    dtData.Date := DMProjeto.dDataSistema;
    dtVencimento.Date := DMProjeto.dDataSistema;
    cmbFormaPagamento.LookUpKeyValue := 1;
    lbCliente.AutoSize := true;
    lbInvoice.AutoSize := true;
    lbVencimento.AutoSize := true;
    lbValor.AutoSize := true;
    lbSaldo.AutoSize := true;
  end;
end;

procedure TDlgRecebimentoLight.cmbFormaPagamentoChange(Sender: TObject);
begin
  inherited;
  lbConta.Visible := Q_FormasPagamentoEspecie.Value in [20];
  cmbConta.Visible := Q_FormasPagamentoEspecie.Value in [20];
  lbNumCheque.Visible := Q_FormasPagamentoEspecie.Value = 1;
  edNumCheque.Visible := Q_FormasPagamentoEspecie.Value = 1;
  lbvenc.Visible := Q_FormasPagamentoEspecie.Value = 1;
  dtVencimento.Visible := Q_FormasPagamentoEspecie.Value = 1;
  lbBanco.Visible := Q_FormasPagamentoEspecie.Value = 1;
  cmbBanco.Visible := Q_FormasPagamentoEspecie.Value = 1;
end;

procedure TDlgRecebimentoLight.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if UpperCase(LastDataObject.FormName)='FRMBANCOS' then begin
  	DMFinanceiro.C_Bancos.Close;
    DMFinanceiro.C_Bancos.Open;
  end;
end;

end.
