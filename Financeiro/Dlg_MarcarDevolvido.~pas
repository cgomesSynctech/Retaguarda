unit Dlg_MarcarDevolvido;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, StdCtrls, Buttons, Mask, DBCtrls, ExtCtrls,
  TS_DBLookupComboBox, TS_Label,
  TS_CheckBox,
  DlgMsg, Menus, TS_LastDataObject, TS_Memo,
  TS_Shape, TS_EditFavorecido, TS_Bevel,
  dxExEdtr, dxEdLib, dxCntner, dxEditor, TS_ButtonEdit, DLG_MODAL,
  FormsComponent, TS_Image, dxfLabel, TS_MaxPanel, TS_SpeedButton,
  TS_CalcEdit, teCtrls, TS_EffectsPanel, TS_DBText, Db, DBClient, DM_Contabilidade,
  TS_PopupMenu, BTOdeum, Placemnt;

type
  TDlgMarcarDevolvido = class(TFrmModeloCadastros)
    Panel1: TTS_Panel;
    Label1: TTS_Label;
    Label2: TTS_Label;
    Label3: TTS_Label;
    cbResgatado: TTS_CheckBox;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Shape2: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape5: TTS_Shape;
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
    ckbImprimir: TTS_CheckBox;
    edDespesas: TTS_CalcEdit;
    dbtNome: TTS_DBText;
    dbtEndereco: TTS_DBText;
    dbtCidade: TTS_DBText;
    dbtFone: TTS_DBText;
    dbtFone2: TTS_DBText;
    dbtEstado: TTS_DBText;
    C_Cliente: TClientDataSet;
    C_ClienteFavorecido: TIntegerField;
    C_ClienteNome: TStringField;
    C_ClienteEndereco: TStringField;
    C_ClienteCidade: TStringField;
    C_ClienteEstado: TStringField;
    C_ClienteFone1: TStringField;
    C_ClienteFone2: TStringField;
    C_ClienteDS: TDataSource;
    C_ClienteTipoFavorecido: TIntegerField;
    btContabilidade: TTS_SpeedButton;
    TS_Shape6: TTS_Shape;
    TS_Label5: TTS_Label;
    edEncargos: TTS_CalcEdit;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    procedure Label2Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure btContabilidadeClick(Sender: TObject);
    procedure dbtNomeClick(Sender: TObject);
  private
    // Adriano
    DMContabil: TDMContabilidade;
    sCheque, NomeConta : string;
    Operacao, IDGerador, Conta, Favorecido, IDDoc : integer;
    Valor : single;
    Vencimento : TDateTime;
  public
    { Public declarations }
  end;

var
  DlgMarcarDevolvido: TDlgMarcarDevolvido;

implementation
  uses DM_Projeto, funcoes, DM_Financeiro, Frm_Contabilidade;

{$R *.DFM}

procedure TDlgMarcarDevolvido.Label2Click(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
  	SetParametrosForm([C_ClienteFavorecido.value]);
    CriarForm(gettelafavorecido(C_ClienteTipoFavorecido.value),self,true);
  end;
end;

procedure TDlgMarcarDevolvido.btGravarClick(Sender: TObject);
var
  Titulo, nStatus, nOperacao, nOpdoc : integer;
  nValorDoc: real;
begin
  {if Application.MessageBox('Deseja realmente marcar o cheque como devolvido?','Atenção', mb_yesno + mb_iconquestion) = IDNO then
    exit; }
{
	if DMProjeto.Parametro('Confirmacao') <> 'N' then
  	if DlgMsg.ShowMsg( 307 )= 200 then
  		exit;
}
  try

    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    Operacao := DMProjeto.NextIDGlobal;
    if edEncargos.Value > 0 then begin
      DMFinanceiro.Retirar(23, Operacao, Conta, DMProjeto.dDataSistema, edEncargos.Value,
                        0, -1, DMProjeto.getMsg(309)+' #'+lbNumCheque.Caption+' de '+C_ClienteNome.Value, DMProjeto.dDataSistema, '',
                        'N', DMProjeto.nFavEmpresa, IDDoc );
    end;

    Titulo := 0;

    //Obtendo informacoes do depositodoc
    DMProjeto.Q_Sql.Close;
    DMProjeto.Q_Sql.Sql.Text := 'select status, valor from depositosdoc where iddoc = :IDDOC';
    DMProjeto.Q_Sql.parambyname('IDDOC').AsInteger := IDDoc;
    DMProjeto.Q_Sql.Open;
    nStatus   := DMProjeto.Q_Sql.fieldbyname('status').AsInteger;
    nValorDoc := DMProjeto.Q_Sql.fieldbyname('valor').AsFloat;

    DMFinanceiro.ChequeDevolvido( Operacao, IDDoc, edEncargos.Value, edDespesas.Value   );

    //Caso statusdoc = 55 (Liquidado por Factory)
    if (nStatus = 55) then begin
      // Obtendo os valores de OperacoesFinanceiras e OperacoesFinanceirasDet
      DMProjeto.Q_Sql.Close;
      DMProjeto.Q_Sql.Sql.Text := 'select first 1 opfd.opdoc, opfd.operacao from operacoesfinanceirasdet opfd left join operacoesfinanceiras opf on opfd.operacao = opf.operacao where iddoc = :IDDOC and opf.tipooperacao = 24 order by opfd.opdoc desc';
      DMProjeto.Q_Sql.parambyname('IDDOC').AsInteger := IDDoc;
      DMProjeto.Q_Sql.Open;

      if (DMProjeto.Q_Sql.recordcount > 0) then begin
        nOpDoc    := DMProjeto.Q_Sql.fieldbyname('opdoc').AsInteger;
        nOperacao := DMProjeto.Q_Sql.fieldbyname('operacao').AsInteger;

        //Apagando referencia em OperacoesFinanceirasDet
        DMProjeto.Q_Sql.Close;
        DMProjeto.Q_Sql.Sql.Text := 'delete from operacoesfinanceirasdet where opdoc = :NOPDOC ';
        DMProjeto.Q_Sql.parambyname('NOPDOC').AsInteger := nOpDoc;
        DMProjeto.Q_Sql.ExecSql;

        //Atualizando referencia em OperacoesFinanceiras
        DMProjeto.Q_Sql.Close;
        DMProjeto.Q_Sql.Sql.Text := 'update operacoesfinanceiras o set o.valoroperacao = o.valoroperacao - :valor where o.operacao = :nOperacao ';
        DMProjeto.Q_Sql.parambyname('valor').AsFloat       := nValorDoc;
        DMProjeto.Q_Sql.parambyname('nOperacao').AsInteger := nOperacao;
        DMProjeto.Q_Sql.ExecSql;
      end;
    end;


    if cbResgatado.Checked then
     	DMFinanceiro.ResgatarCheque( Operacao, IDDoc, Conta);

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
    DMContabil.ContabilizaChequeDevolvido(Operacao,C_ClienteFavorecido.value,Conta,IDDoc,Valor,edEncargos.value);

    if not DMContabil.Salvar(Operacao) then
      raise Exception.Create(DMProjeto.GetMsg(3117));
    ///////////////////////////

    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;

//    if ckbImprimir.checked  and (nStatus <> 55)  then begin
//  		DMProjeto.ImprimirRecibo(20,'','',':IDDoc='+IntToStr(IDDoc),'');
//    end;

    ModalResult := mrOk;

  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;

      // ShowMessage('Não foi possível marcar o cheque como devolvido!'+#13+
      DlgMsg.ShowMsg( 313, e.Message, '');
      DMProjeto.GeraLog('Devolução de Cheque',e.message);
    end;
  end;
end;

procedure TDlgMarcarDevolvido.FormsComponentBeforeClearParams(
  Sender: TObject);
var sCheque : TStringList;
begin
  inherited;
  with DMProjeto do begin
  	if ExisteParametrosForm then begin
			sCheque := TStringList.Create;
      sCheque.Text := getParametrosForm(0);
      {Nº Cheque e Nome do Banco}
      lbNumCheque.Caption := SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','NumCheque'));
      lbNomeBanco.Caption := SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','NomeBanco'));

      Favorecido := StrToInt(SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','Favorecido')));
      IDDoc      := StrToInt(SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','IDDoc')));
      Conta			 := StrToInt(SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','ContaAtual')));
      Valor			 := StrToFloat(SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','Valor')));
      Vencimento := StrToDate(SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','Vencimento')));
      NomeConta  := SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','DescConta'));
      IDGerador  := StrToInt(SeparaStrings(sCheque[2],'|||',IndiceString(sCheque[1],'|||','Deposito')));
      {Titular do Cheque}
      with DMFinanceiro.Q_ComandoSQL do begin
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
      end;
      lbValor.Caption := formatfloat('###,###,##0.00', Valor);
      lbData.Caption	:= DateToStr(Vencimento);
      sCheque.Free;
    end;
  end;

end;

procedure TDlgMarcarDevolvido.FormClose(Sender: TObject;
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

procedure TDlgMarcarDevolvido.FormCreate(Sender: TObject);
begin
  inherited;
  if DMProjeto.bBrasil then begin
    btContabilidade.visible := false;
  end;
  // Adriano
  DMContabil := TDMContabilidade.Create(self);
end;

procedure TDlgMarcarDevolvido.btContabilidadeClick(Sender: TObject);
begin
  inherited;
  // Adriano
  DMContabil.ContabilizaChequeDevolvido(Operacao,C_ClienteFavorecido.value,Conta,IDDoc,Valor,edEncargos.value);

  FrmContabilidade := TFrmContabilidade.Create(self,DMContabil.C_ContabilidadeItens,DMContabil.C_PlanoContaDS);
  FrmContabilidade.ShowModal;
  FrmContabilidade.Release;
  ////////////////
end;

procedure TDlgMarcarDevolvido.dbtNomeClick(Sender: TObject);
begin
  inherited;
	with DMProjeto do begin
  	SetParametrosForm([Favorecido]);
    CriarForm('FrmClientes',self,true);
  end;
end;

end.
