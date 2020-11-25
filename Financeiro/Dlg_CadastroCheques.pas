unit Dlg_CadastroCheques;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, StdCtrls, TS_Label, ExtCtrls,
  TS_Image, dxfLabel, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, dxExEdtr, dxEdLib, dxDBELib, TS_DBCheckBox,
  TS_DBLookupComboBox, TS_DBEditNumber, TS_DBEditDate, dxDBEdtr,
  TS_DBLookupTipoFav, dxEditor, TS_DBButtonEdit, TS_DBEditFavorecido,
  dxCntner, TS_DBEdit, TS_DBPopupEdit, DB, DBClient, Dlg_PopupContas,
  DM_Contabilidade, TS_CalcEdit, Placemnt, TS_DBMemo;

type
  TDlgCadastroCheques = class(TFrmModeloCadastros)
    TS_Label1: TTS_Label;
    dfCheque: TTS_DBEdit;
    dfCliente: TTS_DBEditFavorecido;
    TS_DBLookupTipoFav1: TTS_DBLookupTipoFav;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    dfVencimento: TTS_DBEditDate;
    dfValor: TTS_DBEditNumber;
    TS_Label4: TTS_Label;
    dfBanco: TTS_DBLookupComboBox;
    lbConta: TTS_Label;
    dfDevolvido: TTS_DBCheckBox;
    dfConta: TTS_DBPopupEdit;
    C_Cheques: TClientDataSet;
    C_ChequesFavorecido: TIntegerField;
    C_ChequesNumCheque: TIntegerField;
    C_ChequesVencimento: TDateField;
    C_ChequesValor: TCurrencyField;
    C_ChequesBanco: TIntegerField;
    C_ChequesDevolvido: TStringField;
    C_ChequesConta: TIntegerField;
    C_ChequesDS: TDataSource;
    C_ChequesNome: TStringField;
    C_ChequesDescBanco: TStringField;
    C_ChequesDescConta: TStringField;
    TS_Label6: TTS_Label;
    C_ChequesObs: TStringField;
    lbTaxas: TTS_Label;
    lbMulta: TTS_Label;
    dfMulta: TTS_DBEditNumber;
    dfTaxas: TTS_DBEditNumber;
    C_ChequesTaxas: TCurrencyField;
    C_ChequesMulta: TCurrencyField;
    btContabilidade: TTS_SpeedButton;
    C_ChequesContaReceita: TIntegerField;
    lblContaRec: TTS_Label;
    dfContaRec: TTS_DBPopupEdit;
    C_ChequeslkContaReceita: TStringField;
    dfObs: TTS_DBMemo;
    TS_Label5: TTS_Label;
    cmbEmpresa: TTS_DBLookupComboBox;
    C_ChequesEmpresa: TIntegerField;
    C_ChequeslkEmpresa: TStringField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure dfDevolvidoChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure dfContaInitPopup(Sender: TObject);
    procedure C_ChequesNewRecord(DataSet: TDataSet);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure dfContaRecInitPopup(Sender: TObject);
    procedure C_ChequesAfterPost(DataSet: TDataSet);
	protected
  	DlgPopup : TDlgPopupContas;
    DMContabil: TDMContabilidade;

  private
    nEmpresa, nContaReceita : integer;
    procedure Novo;
    function Validacoes: boolean;
    function Gravar: boolean;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DlgCadastroCheques: TDlgCadastroCheques;

implementation

uses DM_Projeto, DM_Financeiro, Frm_Contabilidade;

{$R *.dfm}

procedure TDlgCadastroCheques.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  nEmpresa := -1;
  nContaReceita := DMProjeto.ContaPadrao( 8 );
	DlgPopup := TDlgPopupContas.Create(self, DMFinanceiro.C_ContasBcDS, nil, false);
	C_Cheques.CreateDataSet;
  C_Cheques.Append;
end;

procedure TDlgCadastroCheques.Novo;
begin
  // Adriano
  if DMContabil <> nil then
    DMContabil.Iniciar;
	C_Cheques.EmptyDataSet;
  C_Cheques.Append;
  dfCliente.SetFocus;
end;

procedure TDlgCadastroCheques.btLimparClick(Sender: TObject);
begin
  inherited;
	Novo;
end;

procedure TDlgCadastroCheques.dfDevolvidoChange(Sender: TObject);
begin
  inherited;
	lbConta.Visible := dfDevolvido.Checked;
  lbTaxas.Visible := dfDevolvido.Checked;
  lbMulta.Visible := dfDevolvido.Checked;
  dfConta.Visible := dfDevolvido.Checked;
  dfTaxas.Visible := dfDevolvido.Checked;
  dfMulta.Visible := dfDevolvido.Checked;
  lblContaRec.enabled := not dfDevolvido.Checked;
  dfContaRec.enabled := not dfDevolvido.Checked;
  if dfConta.Visible then begin
    lbConta.Font.Color := clRed;
  	dfConta.SetFocus;
  end else
  	lbConta.Font.Color := clBlack;

end;

function TDlgCadastroCheques.Validacoes : boolean;
begin
  if C_Cheques.State in [dsEdit,dsInsert] then
  	C_Cheques.Post;

	result := true;
  if dfCliente.ID = 0 then begin
  	DlgMsg.ShowMsg(929,['o Cliente']);
    result := false;
    Exit;
  end;
  if dfCheque.Text = '' then begin
  	DlgMsg.ShowMsg(929,['o Número do Cheque']);
    result := false;
    Exit;
  end;

  if C_ChequesVencimento.IsNull then begin
  	DlgMsg.ShowMsg(929,['o Vencimento do Cheque']);
    result := false;
    Exit;
  end;

  if C_ChequesValor.Value <= 0 then begin
  	DlgMsg.ShowMsg(929,['o Valor do Cheque']);
    result := false;
    Exit;
  end;

  if (C_ChequesDevolvido.Value <> 'S') and (C_ChequesContaReceita.Value = 0) then begin
  	DlgMsg.ShowMsg(929,['a Conta de Receita do Cheque']);
    result := false;
    Exit;
  end;

  if (C_ChequesDevolvido.Value = 'S') and (dfConta.Text='') then begin
  	DlgMsg.ShowMsg(929,['a conta bancária em que o cheque foi depositado']);
    result := false;
    Exit;
  end;

  result := DlgMsg.ShowMsg(2146,[formatfloat('###,##0.00',C_ChequesValor.Value)]) = 100;
end;

function TDlgCadastroCheques.Gravar : boolean;
var Operacao, Deposito, IDDoc : integer;
begin
	result := false;

  if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
  	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

  try

    with DMFinanceiro do begin

			Deposito := ReceberRapido( 0, 0, C_ChequesFavorecido.Value, 1, 0,
      													 DMProjeto.dDataSistema, DMProjeto.dDataSistema,
                      					 C_ChequesObs.Value,
                      					 C_ChequesValor.Value, 0, 0, 0, 0, 0, 0, C_ChequesEmpresa.Value );

      IDDoc := ReceberDoc( 0, 2, Deposito, 3, C_ChequesValor.Value, C_ChequesVencimento.Value,
      										 C_ChequesObs.Value, C_ChequesNumCheque.Value, C_ChequesBanco.Value,
                  				 C_ChequesNome.Value );

      if C_ChequesDevolvido.value = 'S' then begin

        Operacao := DMProjeto.NextIDGlobal;
    		if C_ChequesTaxas.Value > 0 then begin
      		Retirar(23, Operacao, C_ChequesConta.Value, DMProjeto.dDataSistema, C_ChequesTaxas.Value,
                  0, 1, 'Taxa Devolução', DMProjeto.dDataSistema, '',
                  'N', C_ChequesFavorecido.Value, IDDoc );
    		end;

     		ChequeDevolvido( Operacao, IDDoc, C_ChequesTaxas.Value, C_ChequesMulta.Value );
        ResgatarCheque( Operacao, IDDoc, C_ChequesConta.Value, false);

        {
    		DMContabil.ContabilizaChequeDevolvido(Operacao,C_ChequesFavorecido.value,C_ChequesConta.Value,IDDoc,C_ChequesValor.Value,0);

    		if not DMContabil.Salvar(Operacao) then
      		raise Exception.Create(DMProjeto.GetMsg(3117));
        }
      end;

    end;

    // Adriano
    DMContabil.ContabilizaCadastroChequesDev(0,C_Cheques);

    if not DMContabil.Salvar(0) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////

    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    result := true;

  except
    on E:Exception do begin
			DMProjeto.DB_Projeto.DefaultTransaction.RollBackRetaining;
    	DlgMsg.ShowMsg(2,e.message, '');
    end;
  end;
end;

procedure TDlgCadastroCheques.btGravarClick(Sender: TObject);
begin
  inherited;
	if not Validacoes then
  	Exit;
  if Gravar then
  	Novo;
end;

procedure TDlgCadastroCheques.dfContaInitPopup(Sender: TObject);
begin
  inherited;
  dfConta.PopupControl 	:= DlgPopup.pnPopup;
  DlgPopup.SetDs( DMFinanceiro.C_ContasBcDS );
  DlgPopup.SetColuna(nil);
	DlgPopup.SetEventos( TdxDBPopupEdit(Sender) );
end;

procedure TDlgCadastroCheques.C_ChequesNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_ChequesDevolvido.Value := 'N';
  C_ChequesEmpresa.Value := nEmpresa; 
  C_ChequesValor.Value := 0;
  C_ChequesTaxas.Value := 0;
  C_ChequesMulta.Value := 0;
  C_ChequesContaReceita.Value := nContaReceita;
end;

procedure TDlgCadastroCheques.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
	if UpperCase(LastDataObject.TableName)='FAVORECIDOS' then begin
  	if ActiveControl = dfCliente then
    	dfCliente.ID := LastDataObject.ObjectKey;
  end;
end;

procedure TDlgCadastroCheques.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
end;

procedure TDlgCadastroCheques.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
    btContabilidade.visible := false;
  end;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgCadastroCheques.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  if not DMProjeto.dlgAutorizacao.ExecuteX(Self.Name,'CONTABILID') then
    exit;
	if not Validacoes then
  	Exit;

  // Adriano
  DMContabil.ContabilizaCadastroChequesDev(0,C_Cheques);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgCadastroCheques.dfContaRecInitPopup(Sender: TObject);
begin
  inherited;
  TTS_DBPopupEdit(Sender).PopupControl := DlgPopup.pnPopup;
  DlgPopup.SetDS(DMFinanceiro.C_ContasDS);
  DlgPopup.SetEventos(TTS_DBPopupEdit(Sender));
  DlgPopup.SetTipo(13);
end;

procedure TDlgCadastroCheques.C_ChequesAfterPost(DataSet: TDataSet);
begin
  inherited;
	nEmpresa := C_ChequesEmpresa.Value;
end;

end.
