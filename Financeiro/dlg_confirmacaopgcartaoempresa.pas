{
-----------------------------------------------------------------------------------------------
TradeSoft Ltda
Nome do Autor..: Rosil
Data de Criação:

- Historico de Alteracoes:

	12/01/2001	-	André	-	Conversão para Interbase, MultiIdioma

- Localização:

	No menu "Contas a Pagar", escolha "Pagamento do Cartão de Crédito".

- Tabelas Principais:

	Retiradas, RetiradasDoc, FormasPagamento

- Objetivo:

	Liquidar o status do documento (retiradasdoc) e Gerar um título a pagar para o fornecedor do cartão.

- Funcionalidades:

	Selecione o cartão para pagamento e em seguida selecione os títulos para efetuar o pagamento.
  Em caso de haver títulos atrasados do fornecedor deste cartão será mostrado para selecionar
  e será cancelado este título com o novo título que será gerado.

- Quais cuidados devem ser tomados por quem irá alterar a unit.

	Só será filtrado de acordo com a data de vencimento.
-----------------------------------------------------------------------------------------------
}

unit dlg_confirmacaopgcartaoempresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, Db, DBTables, Grids, DBGrids, TS_DBGrid, ExtCtrls,
  TS_Shape, ComCtrls, TS_DateTimePicker, StdCtrls, TS_Edit, DBCtrls,
  TS_DBLookupComboBox, TS_Label, DlgMsg, Menus, TS_PopupMenu, Buttons,
  TS_SpeedButton, TS_Panel, TS_BitBtn, IBCustomDataSet, IBQuery, Provider,
  DBClient, TS_CDBGrid, TS_DBText, TS_LastDataObject, vg2PropStore,
  TS_Bevel, dxExEdtr, dxEdLib, dxCntner, dxEditor, dxDBEdtr, dxDBELib,
  FormsComponent, Placemnt, BTOdeum, dxfLabel, TS_Image, TS_MaxPanel,
  teCtrls, TS_EffectsPanel;

type
  TDlgConfirmacaopgcartaoempresa = class(TFrmModeloCadastros)
    TS_PopupMenu1: TTS_PopupMenu;
    MenuItem1: TMenuItem;
    DlgMsg1: TDlgMsg;
    TS_Panel1: TTS_Panel;
    TS_Panel2: TTS_Panel;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Label4: TTS_Label;
    lcbFormasPg: TTS_DBLookupComboBox;
    EdtOutros: TTS_Edit;
    DataI: TTS_DateTimePicker;
    EdtNotaFiscal: TTS_Edit;
    TS_Panel3: TTS_Panel;
    TS_Shape1: TTS_Shape;
    TS_Label6: TTS_Label;
    TS_Label7: TTS_Label;
    lblQtde: TTS_Label;
    TS_Label5: TTS_Label;
    lblQtdeSel: TTS_Label;
    TS_Label8: TTS_Label;
    pnlFaturasAtraso: TTS_Panel;
    DBAtrasos: TTS_CDBGrid;
    pnlCaptionAtraso: TTS_Panel;
    TS_Panel4: TTS_Panel;
    DBPagto: TTS_CDBGrid;
    Q_Cartoes: TIBQuery;
    Q_CartoesDs: TDataSource;
    Q_FormasPg: TIBQuery;
    Q_FormasPgDS: TDataSource;
    Q_QuitarCartao: TIBQuery;
    Q_FaturasAtraso: TIBQuery;
    Q_FaturasAtrasoDS: TDataSource;
    C_Cartoes: TClientDataSet;
    Q_CartoesProvider: TDataSetProvider;
    C_FaturasAtraso: TClientDataSet;
    Q_FaturasAtrasoProvider: TDataSetProvider;
    C_CartoesRETIRADA: TIntegerField;
    C_CartoesFAVORECIDODOC: TIntegerField;
    C_CartoesFORMAPAGAMENTO: TIntegerField;
    C_CartoesDESCRICAO: TStringField;
    C_CartoesNOME: TStringField;
    C_CartoesIDDOC: TIntegerField;
    C_FaturasAtrasoID: TIntegerField;
    C_FaturasAtrasoTITULO: TStringField;
    C_FaturasAtrasoPARCELA: TIntegerField;
    C_FaturasAtrasoDESCRICAO: TStringField;
    Q_FormasPgFORMAPAGAMENTO: TIntegerField;
    Q_FormasPgDESCRICAO: TIBStringField;
    Q_FormasPgREFCREDITO: TIBStringField;
    Q_FormasPgCARENCIACREDITO: TIntegerField;
    Q_FormasPgCONTALIBERACAO: TIntegerField;
    Q_FormasPgDESATIVADO: TIBStringField;
    Q_FormasPgMENORPARCELA: TFloatField;
    Q_FormasPgQUITAR: TIBStringField;
    Q_FormasPgCREDITO: TIBStringField;
    Q_FormasPgVENCFUTURO: TIBStringField;
    Q_FormasPgENCARGOS: TFloatField;
    Q_FormasPgESPECIE: TIntegerField;
    Q_FormasPgSIGLA: TIBStringField;
    Q_FormasPgCODIGOECF: TIBStringField;
    Q_FormasPgCONTACARTEIRA: TIntegerField;
    Q_FormasPgFOTO: TIBStringField;
    Q_FormasPgMELHORDIACOMPRA: TIntegerField;
    Q_FormasPgFORNECEDOR: TIntegerField;
    C_FaturasAtrasoVENCIMENTO: TDateField;
    C_CartoesVENCIMENTO: TDateField;
    dbtTotal: TTS_DBText;
    dbtTotalSel: TTS_DBText;
    C_CartoesVALOR: TBCDField;
    C_FaturasAtrasoVALOR: TBCDField;
    procedure EdtOutrosExit(Sender: TObject);
    procedure lcbFormasPgClick(Sender: TObject);
    procedure TS_BitBtn1Click(Sender: TObject);
    procedure btGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure EdtOutrosKeyPress(Sender: TObject; var Key: Char);
    procedure btLimparClick(Sender: TObject);
    procedure TS_Label1Click(Sender: TObject);
  private
    { Private declarations }
		procedure Novo;
  public
    { Public declarations }
  end;

var
  DlgConfirmacaopgcartaoempresa: TDlgConfirmacaopgcartaoempresa;

implementation

uses funcoes, DM_Projeto;

{$R *.DFM}

procedure TDlgConfirmacaopgcartaoempresa.EdtOutrosExit(Sender: TObject);
{Var
 cTeste: Currency; }
begin
  inherited;
  Try
   StrToCurr(EdtOutros.Text);
  Except
    Begin
      // Application.MessageBox('Digite um valor válido para este campo.','Aviso',mb_ok);
      DlgMsg.ShowMsg(389);
      ActiveControl := EdtOutros;
    End;
  End;

end;

procedure TDlgConfirmacaopgcartaoempresa.lcbFormasPgClick(Sender: TObject);
begin
  inherited;
 With C_Cartoes do Begin
    Close;
    Params.ParamByName('Data').AsDateTime		:= DataI.Date;
    Params.ParamByName('FormaPg').AsInteger   := Q_FormasPgFormaPagamento.AsInteger;
    Open;
  End;
  With C_FaturasAtraso do Begin
    Close;
    Params.ParamByName('Fornecedor').AsInteger:= Q_FormasPgFornecedor.AsInteger;
    // Params.ParamByName('Data').AsDateTime		:= DataI.Date;
    Open;
    pnlFaturasAtraso.Visible 		:= Recordcount > 0;
    pnlCaptionAtraso.Visible 		:= pnlFaturasAtraso.Visible;
  End;
end;
procedure TDlgConfirmacaopgcartaoempresa.TS_BitBtn1Click(Sender: TObject);
begin
  inherited;
  Close;
end;


procedure TDlgConfirmacaopgcartaoempresa.btGravarClick(Sender: TObject);
Var
  cOutros,cValor,cTotal: Currency;
  nTotalSel:Integer;
begin
  inherited;
  if (DBPagto.Selecionados = '') and (DBAtrasos.Selecionados = '') then begin
  	// ShowMessage('Você não Selecionou nenhum título para ser pago.');
    DlgMsg.ShowMsg(386);
    Exit;
  end;
	if (Q_FormasPgFornecedor.IsNull) or (Q_FormasPgFornecedor.AsString = '') then begin
  	DlgMsg.ShowMsg(541,[lcbFormasPg.Text] );
    Exit;
  end;
  cOutros  :=StrToCurr(EdtOutros.Text);
  cValor   :=DBPagto.TotalSelecionado('Valor');
  nTotalSel:=DBPagto.QuantidadeSelecionada;
  if pnlFaturasAtraso.Visible then begin
    cValor   := cValor + DBAtrasos.TotalSelecionado('Valor');
    nTotalSel:= nTotalSel + DBAtrasos.QuantidadeSelecionada;
  end;
  cTotal   := cOutros + cValor;
  {If Application.MessageBox(pchar('Gerar pagamento de '+inttostr(nTotalSel)+' contas selecionadas '+#13+
                                  'dando um valor total de '+FormatCurr('###,###,##0.00',cTotal)+#13+
                                  'deseja continuar?'),'Confirmação ',mb_yesno+mb_iconquestion) = id_yes Then }
  if DlgMsg.ShowMsg(387,[inttostr(nTotalSel),'',FormatCurr('###,###,##0.00',cTotal),'']) = 100 then
    Begin
      Try

        if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        	DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

      {  DMProjeto.Conta_A_Pagar(0,1, cTotal, DataI.Date, DMProjeto.dDataSistema, 'Referente a compras efetuadas com cartão de credito. Fatura Numero: '+EdtNotaFiscal.Text,
                      4, Q_FormasPgFornecedor.AsInteger, 1, 'A', 0, 0, false, EdtNotaFiscal.Text, 0, 0, '', '' ); }
        if DBPagto.Selecionados <> '' then begin
          With Q_QuitarCartao do Begin
            Close;
            Sql.Clear;
            Sql.Add('Update retiradasdoc set status = 50 Where iddoc in ('+DBPagto.Selecionados+')');
            Prepare;
            ExecSql;
          End;
        end;
        if (pnlFaturasAtraso.Visible) and (DBAtrasos.Selecionados <> '')  then begin
            With Q_QuitarCartao do Begin
              Close;
              Sql.Clear;
              Sql.Add('Update DuplicatasAPagar set status = 0,');
              Sql.Add('DataCancelamento = :Data, DataPago = :Data, ValorPago = Valor, Obs = '+''''+'Cancelado pela Fatura '+EdtNotaFiscal.Text+'''');
              Sql.Add('Where id in ('+DBAtrasos.Selecionados+')');
              parambyname('data').asDateTime := DMProjeto.dDataSistema;
              Prepare;
              ExecSql;
            End;
        end;
        if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        	DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      Except
        On e:exception do
           Application.MessageBox(pchar('Error:'+#13+
                                        e.Message),'ERRO',mb_Ok);
      End;
      DBPagto.LimparSelecionados;
      With C_Cartoes do Begin
        Close;
        Params.ParamByName('Data').AsDateTime		:= DataI.Date;
        Params.ParamByName('FormaPg').AsInteger 	:= Q_FormasPgFormaPagamento.AsInteger;
        Open;
      End;
      With C_FaturasAtraso do Begin
        Close;
        Params.ParamByName('Fornecedor').AsInteger := Q_FormasPgFornecedor.AsInteger;
        // Params.ParamByName('Data').AsDateTime		:= DataI.Date;
        Open;
        pnlFaturasAtraso.Visible 		:= Recordcount > 0;
        pnlCaptionAtraso.Visible 		:= pnlFaturasAtraso.Visible;
      End;
    End;

end;

procedure TDlgConfirmacaopgcartaoempresa.FormCreate(Sender: TObject);
Var
  Dia,Mes,Ano: Word;
begin
  inherited;
  Top:=1;
  Q_FormasPg.Close;
  Q_FormasPg.Open;
 Q_FormasPg.First;
{  lcbFormasPg.KeyValue := Q_FormasPgFormaPagamento.AsInteger; 
  With C_Cartoes do Begin
    Close;
    FetchParams;
    Params.ParamByName('Data').AsDateTime		:= DMProjeto.dDataSistema;
    Params.ParamByName('FormaPg').AsInteger 	:= Q_FormasPgFormaPagamento.AsInteger;
    Open;
  End; }
  DecodeDate(DMProjeto.dDataSistema,Ano,Mes,Dia);
  Dia := Q_FormasPgCarenciaCredito.AsInteger;
  if Dia <= 0 then
  	Dia := 1;
  If Q_FormasPgCarenciaCredito.AsInteger > Dia Then
     DataI.Date := EncodeDate(Ano,Mes,Dia)
  Else
    Begin
      If Mes = 12 Then
        Mes := 1
      else
        Inc(Mes);
      if Mes = 2 then
      	 Dia := StrToInt(formatdatetime( 'dd' , LastMonthDay(EncodeDate(Ano,Mes,1))));
      DataI.Date := EncodeDate(Ano,Mes,Dia);
    End;
end;

procedure TDlgConfirmacaopgcartaoempresa.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
	DlgConfirmacaoPgCartaoEmpresa := nil;
end;

procedure TDlgConfirmacaopgcartaoempresa.EdtOutrosKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
	if key in [',','.'] then
  	key := DecimalSeparator;
end;

procedure TDlgConfirmacaopgcartaoempresa.Novo;
begin
	EdtOutros.Text := '0';
  EdtNotaFiscal.Text := '';
end;

procedure TDlgConfirmacaopgcartaoempresa.btLimparClick(Sender: TObject);
begin
  inherited;
	Novo;
end;

procedure TDlgConfirmacaopgcartaoempresa.TS_Label1Click(Sender: TObject);
begin
  inherited;
	Q_FormasPg.CLose;
  Q_FormasPg.Open;
end;

end.
