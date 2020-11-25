unit Dlg_AntecipacaoDuplicatas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, dxExEdtr, dxCntner, dxTL, dxDBCtrl,
  dxDBGrid, TS_QDBGrid, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, DB, IBCustomDataSet, IBQuery, Provider,
  DBClient, DBText, TS_DBTextEffect, dxEditor, dxEdLib, dxDBELib,
  TS_DBPopupEdit, dxDBEdtr, TS_DBLookupComboBox, dxExGrEd, dxExELib,
  TS_DBExtLookupEdit, TS_DBComboBox, TS_DBLookupTipoFav, TS_PopupEdit,
  dxDBTLCl, dxGrClms, TS_LookupComboBox, TS_CalcEdit, TS_ImageEdit,
  TS_DateTimePicker, IBUpdateSQL;

type
  TDlgAntecipacaoDuplicatas = class(TFrmModeloCadastros)
    TS_Panel1: TTS_Panel;
    GridBoletos: TTS_QDBGrid;
    Label1: TTS_Label;
    C_bancos: TClientDataSet;
    C_bancosDs: TDataSource;
    P_Bancos: TDataSetProvider;
    Q_Bancos: TIBQuery;
    C_bancosCONTA: TIntegerField;
    C_bancosDESCRICAO: TStringField;
    C_Duplicatas: TClientDataSet;
    C_DuplicatasDs: TDataSource;
    P_Duplicatas: TDataSetProvider;
    Q_Duplicatas: TIBQuery;
    C_DuplicatasID: TIntegerField;
    C_DuplicatasTITULO: TStringField;
    C_DuplicatasPARCELA: TIntegerField;
    C_DuplicatasVALOR: TBCDField;
    C_DuplicatasVENCIMENTO: TDateField;
    C_DuplicatasCOMPETENCIA: TDateField;
    C_DuplicatasNOME: TStringField;
    C_DuplicatasDESCONTOS: TBCDField;
    GridBoletosID: TdxDBGridMaskColumn;
    GridBoletosTITULO: TdxDBGridMaskColumn;
    GridBoletosVALOR: TdxDBGridCurrencyColumn;
    GridBoletosVENCIMENTO: TdxDBGridDateColumn;
    GridBoletosCOMPETENCIA: TdxDBGridDateColumn;
    GridBoletosNOME: TdxDBGridMaskColumn;
    GridBoletosDESCONTOS: TdxDBGridCurrencyColumn;
    cmbContas: TTS_LookupComboBox;
    dfValor: TTS_CalcEdit;
    TS_Label1: TTS_Label;
    dfTipoTitulos: TTS_ImageEdit;
    TS_Label2: TTS_Label;
    C_Carteiras: TClientDataSet;
    C_CarteirasCARTEIRA: TIntegerField;
    C_CarteirasNUMEROCARTEIRA: TStringField;
    P_Carteiras: TDataSetProvider;
    Q_Carteiras: TIBQuery;
    C_CarteirasDS: TDataSource;
    cmbCarteira: TTS_LookupComboBox;
    C_Duplicatas_icSelecionado: TIntegerField;
    C_DuplicatasicSubTotal: TCurrencyField;
    GridBoletosicSubTotal: TdxDBGridColumn;
    TS_Label3: TTS_Label;
    ppmGrid: TTS_PopupMenu;
    U_Duplicatas: TIBUpdateSQL;
    C_DuplicatasDATAANTECIPACAO: TDateField;
    C_DuplicatasCLIENTE: TIntegerField;
    dfSelecionado: TTS_CalcEdit;
    TS_Label4: TTS_Label;
    C_DuplicatasDEPOSITO: TIntegerField;
    btCancelar: TTS_SpeedButton;
    GridBoletosColumn10: TdxDBGridColumn;
    C_DuplicatasNovoValor: TFloatField;
    btRestaurar: TTS_SpeedButton;
    C_bancosBANCO: TIntegerField;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btComando1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure GridBoletosTS_OnAfterSelection(Sender: TObject;
      bSelected: Boolean; QtdSel: Integer);
    procedure btComando2Click(Sender: TObject);
    procedure btCancelarClick(Sender: TObject);
    procedure btRestaurarClick(Sender: TObject);
  protected
  private
    { Private declarations }
    procedure atualizar;
    function Validacoes : boolean;
    procedure RatearDesconto;
  public
    { Public declarations }
  end;

var
  DlgAntecipacaoDuplicatas: TDlgAntecipacaoDuplicatas;

implementation

uses DM_Projeto, DM_Financeiro, TDM_Projeto;

{$R *.dfm}


procedure TDlgAntecipacaoDuplicatas.atualizar;
var sWhere: String;
Begin
 dfValor.Value:=0;
 dfSelecionado.Value :=0;
 sWhere := ' where t.tipocobranca = 3 and t.carteira = '+C_CarteirasCARTEIRA.AsString;
 if dfTipoTitulos.Text = '0' Then
  sWhere := sWhere + ' and t.status > 0 and t.status < 50 '
 Else
  sWhere := sWhere + ' and (t.dataantecipacao is Not Null) ';
 With C_Duplicatas do Begin
   Close;
   CommandText := ' select distinct t.Id, t.titulo, t.parcela, t.valor, t.vencimento, t.competencia, f.nome, '+
                  ' t.descontos, t.dataantecipacao, t.cliente, dt.deposito, cast(0 as Float) as NovoValor from titulosareceber t '+
                  ' inner join favorecidos f on f.favorecido = t.cliente '+
                  ' left Join DepositosTitulos dt on t.id = dt.titulo '+
                  ' left Join Depositos d  on d.deposito = dt.deposito '+
                  sWhere;
   FetchParams;
   Open;
 End;
End;


procedure TDlgAntecipacaoDuplicatas.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  GridBoletos.TS_ShowSelectionColumn := True;
  C_Carteiras.Close;
  C_Carteiras.Open;
  C_bancos.Close;
  C_Bancos.Open;
end;

procedure TDlgAntecipacaoDuplicatas.btComando1Click(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

function TDlgAntecipacaoDuplicatas.Validacoes : boolean;
begin
  result := false;
  if (cmbContas.LookupKeyValue = null) Then Begin
     DlgMsg.ShowMsg( 50, ['Você deve escolher uma conta.']);
     Exit;
  End;
  if (dfValor.Value <= 0) Then Exit;
  if GridBoletos.Selecionados = '' then begin
    DlgMsg.ShowMsg( 929, ['os títulos que deseja baixar.']);
    Exit;
  end;
  result := true;
end;

procedure TDlgAntecipacaoDuplicatas.RatearDesconto;
Var PercRateio: Currency;
Begin
      try
        PercRateio :=  (dfValor.Value / GridBoletos.TotalSelecionado('VALOR'));
        C_Duplicatas.First;
        while not C_Duplicatas.EOF do begin
          if ( C_Duplicatas_icSelecionado.Value = 1 ) then begin
            C_Duplicatas.Edit;
            C_Duplicatas.FieldByName('DESCONTOS').Value := C_Duplicatas.FieldByName('VALOR').Value - (C_Duplicatas.FieldByName('VALOR').Value * PercRateio);
            C_Duplicatas.FieldByName('VALOR').Value := C_Duplicatas.FieldByName('VALOR').Value - C_Duplicatas.FieldByName('DESCONTOS').Value;
            C_Duplicatas.FieldByName('dataantecipacao').AsDateTime := DMProjeto.dDataSistema;
          end;
          C_Duplicatas.Next;
        end;
      except
        on e:exception do begin
           DlgMsg.ShowMsg( 6047, [CurrToStr(GridBoletos.TotalSelecionado('VALOR')),cmbContas.LookupKeyValue] );
        end;
      end;
End;


procedure TDlgAntecipacaoDuplicatas.btGravarClick(Sender: TObject);
var sItens : string;
    Deposito, Retirada, aPagar : integer;
    nValor: Currency;
begin
  inherited;
 if (DlgMsg.ShowMsg( 1005 ) = 100) Then Begin
  if Validacoes then begin
    try
      RatearDesconto;
      Screen.Cursor := crHourGlass;
      C_Duplicatas.DisableControls;
      nValor := 0;
      try
        C_Duplicatas.First;
        while not C_Duplicatas.EOF do begin
          if ( C_Duplicatas_icSelecionado.Value = 1 ) then begin
            nValor := nValor + (C_DuplicatasVALOR.AsCurrency + C_DuplicatasDESCONTOS.AsCurrency);
            sItens := C_DuplicatasID.AsString + #13 +
                      'ValorAReceber|||Pagamento|||Juros|||Descontos' + #13 +
                      CurrToStr(C_DuplicatasVALOR.AsCurrency) + '|||' +
                      CurrToStr(C_DuplicatasVALOR.AsCurrency ) + '|||'+
                      '0|||'+
                      CurrToStr(C_DuplicatasDESCONTOS.AsCurrency);
            Deposito := DMFinanceiro.ReceberTitulos( 0, sItens, C_DuplicatasCLIENTE.Value, cmbContas.LookupKeyValue,
                        DMProjeto.dDataSistema , 0, 0, 'Título Antecipados ' + C_DuplicatasTITULO.AsString );
            DMFinanceiro.ReceberDoc( 0, 1, Deposito, 20, C_DuplicatasVALOR.AsCurrency, DMProjeto.dDataSistema,
                                  'Título Antecipados ' + C_DuplicatasTITULO.AsString,0,0,'', cmbContas.LookupKeyValue );
            DMFinanceiro.BaixarTitulo( C_DuplicatasID.AsString, DMProjeto.dDataSistema );
          end;
          C_Duplicatas.Next;
        end;
        nValor := dfValor.Value - nValor;
        aPagar := DMFinanceiro.Conta_A_Pagar(1,nValor,DMProjeto.dDataSistema,DMProjeto.dDataSistema,'Desconto Duplicata',27,C_BancosBanco.Value,0,IntToStr(aPagar),3,C_BancosBanco.Value,0,0);
        with DMProjeto do begin
           SetParametrosForm( [null,
                              C_BancosBanco.Value,
                              IntToStr(aPagar)] );
           CriarForm( 'DlgSangria', self, true );

        end;

//        sItens := IntToStr(aPagar)+#13+'Titulo|||Pagamento|||Juros|||Descontos|||'+#13+ IntToStr(aPagar)+'|||'+ FormatCurr('#0.00',nValor)+'|||0';
//        DMFinanceiro.PagarDuplicatas( 0 , sItens , DMProjeto.dDataSistema, 0,0,'Desconto Duplicata',0);
//        retirada := DMFinanceiro.Retirar(27, DMProjeto.NextIDGlobal, cmbContas.LookupKeyValue, DMProjeto.dDataSistema, nValor,
//                        0, C_BancosBanco.Value, 'Desconto Duplicata', DMProjeto.dDataSistema, '',
//                        'N', DMProjeto.nFavEmpresa, aPagar );
//        DMFinanceiro.PagarDoc(aPagar,27,retirada,cmbContas.LookupKeyValue,C_BancosBanco.Value,1,nValor,DMProjeto.dDataSistema);
//        DMFinanceiro.BaixarDuplicata(IntToStr(aPagar));
        With DMProjeto.Q_Sql do Begin
          Close;
          Sql.Text := 'Update DuplicatasaPagar set sTatus = 50 ,faltapagar = 0 , DATAPAGO = Current_Date where id = :ID ';
          Params[0].Value := aPagar;
          ExecSQL;
        End;



        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        Screen.Cursor := crDefault;
        DlgMsg.ShowMsg( 8036 );
        Atualizar;
      except
        on e:exception do begin
          if DMPRojeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_PRojeto.DefaultTransaction.RollbackRetaining;
          Screen.Cursor := crDefault;
          DlgMsg.ShowMsg( 6047, ['ERRO'+#13#10+e.message] );
        end;
      end;
    finally
      Screen.Cursor := crDefault;
      C_Duplicatas.EnableControls;
    end;
  end else DlgMsg.ShowMsg( 50, ['Como Você deve Proceder: '+#13#10+#13#10+'-Escolher Pelo Menos Um Titulo;'+#13+'-Informar a Conta Para Creditado;'+#13+'-Informar o Valor Total da Antecipação.'] );
 End;

end;

procedure TDlgAntecipacaoDuplicatas.GridBoletosTS_OnAfterSelection(
  Sender: TObject; bSelected: Boolean; QtdSel: Integer);
begin
  inherited;
  dfSelecionado.Value := GridBoletos.TotalSelecionado('VALOR');
end;

procedure TDlgAntecipacaoDuplicatas.btComando2Click(Sender: TObject);
begin
  inherited;
    if dfTipoTitulos.Text = '0' Then begin
      C_Duplicatas.Filter := '_icSelecionado = 1 ';
      C_Duplicatas.Filtered := true;
    End;
    GridBoletos.VisualizarImpressao('Antecipação de Titulos à Receber - '+dfTipoTitulos.Descriptions[StrToInt(dfTipoTitulos.Text)]);
    C_Duplicatas.Filtered := False;
end;

procedure TDlgAntecipacaoDuplicatas.btCancelarClick(Sender: TObject);
var sItens ,sDeposito: String ;

begin
  inherited;
  if DlgMsg.ShowMsg( 577, ['os depósitos selecionados ?']) = 100 then begin
    try
      RatearDesconto;
      Screen.Cursor := crHourGlass;
      C_Duplicatas.DisableControls;
      try
        C_Duplicatas.First;
        sDeposito:='';
        while not C_Duplicatas.EOF do begin
          if ( C_Duplicatas_icSelecionado.Value = 1 ) then begin
             sDeposito := sDeposito+C_DuplicatasDeposito.AsString+',';
          end;
          C_Duplicatas.Next;
        end;
        sDeposito:=Copy(sdeposito,1,Length(sDeposito)-1);
        DMFinanceiro.CancelarDeposito(sDeposito,' Baixa da Antecipação',true,true);
        With DMProjeto.Q_Sql do Begin
          Close;
          Sql.Text := 'Update titulosareceber set dataantecipacao = null, DATAPAGO = NULL where id in ('+GridBoletos.Selecionados()+')';
          ExecSQL;
        End;
        With DMProjeto.Q_Sql do Begin
          Close;
          Sql.Text := 'DELETE FROM Depositos where deposito in (select deposito from DepositosTitulos where titulo in ('+GridBoletos.Selecionados()+'))';
          ExecSQL;
        End;
        With DMProjeto.Q_Sql do Begin
          Close;
          Sql.Text := 'DELETE FROM DepositosTitulos where titulo in ('+GridBoletos.Selecionados()+')';
          ExecSQL;
        End;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        Screen.Cursor := crDefault;
        DlgMsg.ShowMsg( 8036 );
        Atualizar;
      except
        on e:exception do begin
          if DMPRojeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_PRojeto.DefaultTransaction.RollbackRetaining;
          Screen.Cursor := crDefault;
          DlgMsg.ShowMsg( 6047, ['ERRO'+#13#10+e.message] );
        end;
      end;
    finally
      Screen.Cursor := crDefault;
      C_Duplicatas.EnableControls;
    end;
  end else DlgMsg.ShowMsg( 50, ['Como Você deve Proceder: '+#13#10+#13#10+'-Escolher Pelo Menos Um Titulo;'+#13+'-Informar a Conta Para Creditado;'+#13+'-Informar o Valor Total da Antecipação.'] );
End;







procedure TDlgAntecipacaoDuplicatas.btRestaurarClick(Sender: TObject);
var sItens ,sDeposito: String ;
begin
  inherited;
    if DlgMsg.ShowMsg( 577, ['/ Restaurar os depósitos selecionados ?']) = 100 then begin
    try
      Screen.Cursor := crHourGlass;
      C_Duplicatas.DisableControls;
      try
        C_Duplicatas.First;
        sDeposito:='';
        while not C_Duplicatas.EOF do begin
          if ( C_Duplicatas_icSelecionado.Value = 1 ) then begin
             sDeposito := sDeposito+C_DuplicatasDeposito.AsString+',';
          end;
          C_Duplicatas.Next;
        end;
        sDeposito:=Copy(sdeposito,1,Length(sDeposito)-1);
        DMFinanceiro.CancelarDeposito(sDeposito,' Restauração do Título',true,true);
        C_Duplicatas.First;
        while not C_Duplicatas.EOF do begin
          if ( C_Duplicatas_icSelecionado.Value = 1 ) then begin
            With DMProjeto.Q_Sql do Begin
              Close;
              Sql.Text := 'Update titulosareceber set status = 1 ,dataantecipacao = null, DATAPAGO = NULL, VALOR = :NovoValor where id = :ID ';
              Params[0].Value := C_DuplicatasNovoValor.Value;
              Params[1].Value := C_DuplicatasID.Value;
              ExecSQL;
            End;
          End;
          C_Duplicatas.Next;
        End;
        With DMProjeto.Q_Sql do Begin
          Close;
          Sql.Text := 'DELETE FROM Depositos where deposito in (select deposito from DepositosTitulos where titulo in ('+GridBoletos.Selecionados()+'))';
          ExecSQL;
        End;
        With DMProjeto.Q_Sql do Begin
          Close;
          Sql.Text := 'DELETE FROM DepositosTitulos where titulo in ('+GridBoletos.Selecionados()+')';
          ExecSQL;
        End;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
          DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
        Screen.Cursor := crDefault;
        DlgMsg.ShowMsg( 8036 );
        Atualizar;
      except
        on e:exception do begin
          if DMPRojeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_PRojeto.DefaultTransaction.RollbackRetaining;
          Screen.Cursor := crDefault;
          DlgMsg.ShowMsg( 6047, ['ERRO'+#13#10+e.message] );
        end;
      end;
    finally
      Screen.Cursor := crDefault;
      C_Duplicatas.EnableControls;
    end;
  end else DlgMsg.ShowMsg( 50, ['Como Você deve Proceder: '+#13#10+#13#10+'-Escolher Pelo Menos Um Titulo;'+#13+'-Informar a Conta Para Creditado;'+#13+'-Informar o Valor Total da Antecipação.'] );
End;


end.
