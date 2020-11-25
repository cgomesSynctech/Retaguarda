unit Dlg_AcertarCheque;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls, Db, DBTables,
  IBCustomDataSet, IBQuery, TS_DBLookupComboBox, TS_DBText,
  TS_Label, TS_BitBtn, TS_DBEdit, IBUpdateSQL, DlgMsg, Menus,
  DBClient, Provider, TS_LastDataObject,
  TS_Bevel, TS_EditFavorecido, TS_Shape, TS_Memo,
  dxDBEdtr, dxDBELib, dxExEdtr, dxEdLib, dxCntner, dxEditor, TS_ButtonEdit,
  DLG_MODAL, TS_LookupComboBox, TS_CalcEdit, FormsComponent,
  TS_Image, dxfLabel, TS_MaxPanel, TS_SpeedButton, teCtrls,
  TS_EffectsPanel, DM_Contabilidade, TS_PopupMenu, Variants, BTOdeum,
  Placemnt;

type
  TDlgAcertarCheque = class(TFrmModeloCadastros)
    Q_Formas: TIBQuery;
    Q_FormasDS: TDataSource;
    C_FormaPag: TClientDataSet;
    P_FormaPag: TDataSetProvider;
    C_FormaPagFORMAPAGAMENTO: TIntegerField;
    C_FormaPagDESCRICAO: TStringField;
    C_FormaPagESPECIE: TIntegerField;
    TS_Shape2: TTS_Shape;
    TS_Shape1: TTS_Shape;
    Label2: TTS_Label;
    Label6: TTS_Label;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    lbNumCheque: TTS_Label;
    lbNomeBanco: TTS_Label;
    TS_Shape7: TTS_Shape;
    TS_Shape8: TTS_Shape;
    TS_Shape9: TTS_Shape;
    TS_Shape10: TTS_Shape;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    lbData: TTS_Label;
    lbValor: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    edMulta: TTS_CalcEdit;
    edTotalFinal: TTS_CalcEdit;
    cmbFormaPag: TTS_LookupComboBox;
    dbtNome: TTS_DBText;
    dbtEndereco: TTS_DBText;
    dbtCidade: TTS_DBText;
    dbtFone: TTS_DBText;
    dbtFone2: TTS_DBText;
    dbtEstado: TTS_DBText;
    C_Cliente: TClientDataSet;
    C_ClienteDS: TDataSource;
    C_ClienteFavorecido: TIntegerField;
    C_ClienteNome: TStringField;
    C_ClienteEndereco: TStringField;
    C_ClienteCidade: TStringField;
    C_ClienteEstado: TStringField;
    C_ClienteFone1: TStringField;
    C_ClienteFone2: TStringField;
    C_ClienteTipoFavorecido: TIntegerField;
    btContabilidade: TTS_SpeedButton;
    TS_Label7: TTS_Label;
    edTaxas: TTS_CalcEdit;
    procedure edMultaChange(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
  private
    // Adriano
    DMContabil: TDMContabilidade;
    sCheque, NomeConta : string;
    IDGerador, Conta, Favorecido, IDDoc : integer;
    Valor : single;
    Vencimento : TDateTime;
  public
    { Public declarations }
  end;

var
  DlgAcertarCheque: TDlgAcertarCheque;

implementation
  uses DM_Projeto, funcoes, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgAcertarCheque.edMultaChange(Sender: TObject);
begin
  inherited;
  edTotalFinal.Value := Valor + edTaxas.Value + edMulta.Value;
end;

procedure TDlgAcertarCheque.btGravarClick(Sender: TObject);
var
  Titulo, Operacao : Integer;
  DiferencaValorCheque : currency;
begin

  if cmbFormaPag.Text = '' then begin
    // ShowMessage('Faltou informar a Forma de Pagamento que o cliente está utilizando neste acerto!');
    DlgMsg.ShowMsg( 315 );
    exit;
  end;

	if DMProjeto.Parametro('Confirmacao') <> 'N' then
  	if DlgMsg.ShowMsg( 316 ) = 200 then
    	exit;

  DiferencaValorCheque := edTotalFinal.Value - Valor;

  try
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      {Cancelando Cheque devolvido}
      DMFinanceiro.AcertarChequeDevolvido(IDDoc, edTotalFinal.Value, edMulta.Value, Operacao);

     with DMFinanceiro.Q_SQL do begin
     	close;
      sql.text := 'update favorecidos '+
      						'set nome = :nome, '+
                  '    endereco = :endereco, '+
                  '    cidade = :cidade, '+
                  '    uf = :uf, '+
                  '    fone1 = :fone1, '+
                  '    fone2 = :fone2 '+
                  'where favorecido = :fav ';
      params[0].asstring := C_ClienteNome.value;
      params[1].asstring := C_ClienteEndereco.value;
      params[2].asstring := C_ClienteCidade.value;
      params[3].asstring := C_ClienteEstado.value;
      params[4].asstring := C_ClienteFone1.value;
      params[5].asstring := C_ClienteFone2.value;
      execsql;
     end;

    // Adriano
    DMContabil.ContabilizaAcertoCheque(0,C_ClienteFavorecido.value,Conta,IDDoc,Valor,edMulta.value+edTaxas.value);

    if not DMContabil.Salvar(Operacao) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////


    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
    	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

    // DlgMsg.ShowMsg( 319 );
   	try
     	SendLastDataObject(Self.Name, 'Depositos', 'IDDoc', 0, false );
   	except
   	end;

    ModalResult := mrOk;
  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;

      {ShowMessage('Não foi possível gravar o pagamento do cheque!'+#13+
                  e.Message); }
      DlgMsg.ShowMsg( 320, e.message );
      DMProjeto.GeraLog('Acerto de Cheque',e.message);
    end;
  end;
end;

procedure TDlgAcertarCheque.Label2Click(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
  	SetParametrosForm([C_ClienteFavorecido.value]);
    CriarForm(gettelafavorecido(C_ClienteTipoFavorecido.value),self,true);
  end;
end;

procedure TDlgAcertarCheque.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  with DMFinanceiro do begin
  	if DMProjeto.ExisteParametrosForm then begin
      IDDoc := DMProjeto.getParametrosForm(0);
      with Q_ComandoSQL do begin
      	close;
        sql.text := 'select dd.numcheque, b.nome as Banco, d.favorecido, '+
        						'dd.contaatual, dd.valor, dd.vencimento, c.descricao as NomeConta, '+
                    'd.deposito '+
                    'from depositosdoc dd '+
                    'inner join depositos d on d.deposito = dd.deposito '+
                    'inner join contas c on c.conta = d.conta '+
                    'left join favorecidos b on b.favorecido = dd.banco '+
                    'where dd.iddoc = :iddoc';
        parambyname('iddoc').AsInteger := IDDoc;
        Open;
      	{Nº Cheque e Nome do Banco}
      	lbNumCheque.Caption := FieldByName('NumCheque').AsString;
      	lbNomeBanco.Caption := FieldByName('Banco').AsString;

      	Favorecido := FieldByName('Favorecido').AsInteger;
      	Conta			 := FieldByName('ContaAtual').AsInteger;
      	Valor			 := FieldByName('Valor').AsCurrency;
      	Vencimento := FieldByName('Vencimento').AsDateTime;
      	NomeConta  := FieldByName('NomeConta').AsString;
      	IDGerador  := FieldByName('Deposito').AsInteger;
      end;
      {Titular do Cheque}
      with Q_ComandoSQL do begin
      	close;
        sql.text := 'select tipofavorecido,nome,endereco,cidade,uf,fone1,fone2 '+
        						'from favorecidos where favorecido = :fav';
        params[0].Asinteger := favorecido;
        open;

      	C_Cliente.CreateDataSet;
      	C_Cliente.Append;
      	C_ClienteFavorecido.value 	:= Favorecido;
        C_ClienteTipoFavorecido.value := fields[0].value;
        C_ClienteNome.AsVariant			:= fields[1].value;
        C_ClienteEndereco.AsVariant := fields[2].value;
        C_ClienteCidade.AsVariant 	:= fields[3].value;
        C_ClienteEstado.AsVariant   := fields[4].value;
        C_ClienteFone1.AsVariant 		:= fields[5].value;
        C_ClienteFone2.AsVariant 		:= fields[6].value;
        C_Cliente.Post;

        close;
        sql.text := 'select valorjuros, percentualjuros from operacoesfinanceiras '+
        						'where tipooperacao = 9 and formapagamento = :IDdoc and situacao is null';
        params[0].Asinteger := IDDoc;
        open;
        edTaxas.Value := fields[1].asCurrency;
        edMulta.value := fields[0].asCurrency;

      end;

      lbValor.Caption := formatfloat('###,###,##0.00', Valor);
      lbData.Caption	:= DateToStr(Vencimento);
      DMProjeto.LimparParametrosForm;
    end;
  end;
  C_FormaPag.Open;
  C_FormaPag.Locate('Especie',5,[]);
  CmbFormapag.LookupKeyValue := C_FormaPagFormaPagamento.Value;

  edTotalFinal.Value  := Valor+edMulta.value+edTaxas.Value;
end;

procedure TDlgAcertarCheque.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  // Adriano
  if DMContabil <> nil then begin
    DMContabil.FechaDatasets;
    DMContabil.Free;
  end;
  ////////////////////
end;

procedure TDlgAcertarCheque.FormCreate(Sender: TObject);
begin
  inherited;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgAcertarCheque.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  // Adriano
  DMContabil.ContabilizaAcertoCheque(0,C_ClienteFavorecido.value,Conta,IDDoc,Valor,edMulta.value+edTaxas.value);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.free;
  ////////////////
end;

end.
