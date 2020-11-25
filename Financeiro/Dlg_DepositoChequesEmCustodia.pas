{
Autor: Rosil
Data de Criação   	:

- Historico de Alteracoes:

	11/01/2001	André	: Colocado ClientDataSet/CDBGrid com Interbase e MultiIdioma.

- Localização:

	No menu "Contas a Receber" escolha "Fazer Depósitos"

- Tabelas Principais:

	Transacoes, DepositosDoc

- Objetivo: 

	Transferir os cheques selecionados e/ou dinheiro do caixa para uma Conta-Banco.

- Funcionalidades: 

	Caso a opção "Liquidar Cheques" esteja marcada os cheques selecionados ficarão com o 
	status 50 (Liquidado) senão status 3 (Aguardando Compensação)

- Quais cuidados devem ser tomados por quem irá alterar a unit.

	Somente Atenção.

-----------------------------------------------------------------------------------------------
}
unit Dlg_DepositoChequesEmCustodia;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  FRM_MODELOCADASTROS, DlgMsg, Menus, TS_PopupMenu, Buttons,
  TS_SpeedButton, ExtCtrls, TS_Panel, StdCtrls, TS_BitBtn, Grids, DBGrids,
  TS_DBGrid, TS_CheckBox, DBCtrls, TS_DBLookupComboBox, Mask, TS_DBEdit,
  TS_Bevel, TS_Label, TS_Shape, DB, TS_CDBGrid, TS_DBText, Provider,
  DBClient, IBCustomDataSet, IBUpdateSQL, IBQuery, TS_LastDataObject,
  vg2PropStore;

type
  TDlgDepositoChequesEmCustodia = class(TFrmModeloCadastros)
    TS_Shape5: TTS_Shape;
    TS_Shape4: TTS_Shape;
    TS_Shape3: TTS_Shape;
    TS_Shape2: TTS_Shape;
    Label2: TTS_Label;
    Label1: TTS_Label;
    Label3: TTS_Label;
    Label7: TTS_Label;
    Label9: TTS_Label;
    TS_Label1: TTS_Label;
    TS_Label5: TTS_Label;
    TS_Label6: TTS_Label;
    TS_Shape1: TTS_Shape;
    TS_Label7: TTS_Label;
    TS_Label8: TTS_Label;
    lbTotalDinheiro: TTS_Label;
    lbTotalDepositar: TTS_Label;
    DBEdit2: TTS_DBEdit;
    cmbContaBanco: TTS_DBLookupComboBox;
    dfHistDep: TTS_DBEdit;
    dbDinheiro: TTS_DBEdit;
    TS_DBEdit1: TTS_DBEdit;
    ckDinheiro: TTS_CheckBox;
    DBCheques: TTS_CDBGrid;
    lbQtdCheques: TTS_Label;
    TS_Label4: TTS_Label;
    TS_Label3: TTS_Label;
    TS_Shape6: TTS_Shape;
    TS_Label2: TTS_Label;
    TS_Bevel2: TTS_Bevel;
    TS_PopupMenu1: TTS_PopupMenu;
    SignificadodasCores1: TMenuItem;
    dbtTotal: TTS_DBText;
    Q_Operacoes: TIBQuery;
    Q_OperacoesDS: TDataSource;
    U_Operacoes: TIBUpdateSQL;
    Q_Naturezas: TIBQuery;
    Q_Contas: TIBQuery;
    Q_ChequesDeposito: TIBQuery;
    Q_ChequesDepositoDS: TDataSource;
    C_ChequesDeposito: TClientDataSet;
    C_ChequesDepositoIDDOC: TIntegerField;
    C_ChequesDepositoDEPOSITO: TIntegerField;
    C_ChequesDepositoFORMAPAGAMENTO: TIntegerField;
    C_ChequesDepositoAGENCIA: TStringField;
    C_ChequesDepositoVENCIMENTO: TDateField;
    C_ChequesDepositoSTATUS: TIntegerField;
    C_ChequesDepositoLOCALTITULO: TStringField;
    C_ChequesDepositoFORADAEMPRESA: TStringField;
    C_ChequesDepositoTITULARCHEQUE: TStringField;
    C_ChequesDepositoAVISTA: TStringField;
    C_ChequesDepositoCONTAATUAL: TIntegerField;
    C_ChequesDepositoDATACANCELAMENTO: TDateField;
    C_ChequesDepositoMOTIVOCANCELAMENTO: TStringField;
    C_ChequesDepositoFUNCCANCELAMENTO: TIntegerField;
    C_ChequesDepositoDESCLOCAL: TStringField;
    C_ChequesDepositoDESCSTATUS: TStringField;
    C_ChequesDepositoNOME: TStringField;
    C_ChequesDepositoNOMEBANCO: TStringField;
    Q_ChequesDepositoProvider: TDataSetProvider;
    C_Operacoes: TClientDataSet;
    C_OperacoesOPERACAO: TIntegerField;
    C_OperacoesDATA: TDateField;
    C_OperacoesFLOATING: TStringField;
    C_OperacoesTIPOOPERACAO: TIntegerField;
    C_OperacoesRECEBIDO: TDateField;
    C_OperacoesOLDCONTA: TIntegerField;
    Q_OperacoesProvider: TDataSetProvider;
    dbtChequesSel: TTS_DBText;
    Q_ContasCONTA: TIntegerField;
    Q_ContasDESCRICAO: TIBStringField;
    Q_ContasDS: TDataSource;
    TS_Label9: TTS_Label;
    C_OperacoesFAVORECIDO: TIntegerField;
    C_OperacoesVALOROPERACAO: TBCDField;
    C_OperacoesCONTAORIGEM: TIntegerField;
    C_OperacoesCONTADESTINO: TIntegerField;
    C_OperacoesHISTORICO: TStringField;
    C_OperacoesPERCENTUALJUROS: TBCDField;
    C_OperacoesVALORJUROS: TBCDField;
    C_OperacoesVALORRECEBIDO: TBCDField;
    C_OperacoesTITULO: TIntegerField;
    C_OperacoesVALORDINHEIRO: TBCDField;
    C_OperacoesJUROSSOBREMONTANTE: TStringField;
    C_OperacoesSALDO: TBCDField;
    C_ChequesDepositoVALOR: TBCDField;
    C_ChequesDepositoBANCO: TIntegerField;
    C_ChequesDepositoNUMCHEQUE: TIntegerField;
    C_ChequesDepositoTAXACARTAO: TBCDField;
    C_ChequesDepositoFAVORECIDO: TIntegerField;
    procedure ckDinheiroClick(Sender: TObject);
    procedure cmbContaOrigemClick(Sender: TObject);
    procedure dbDinheiroChange(Sender: TObject);
    procedure dbDinheiroKeyPress(Sender: TObject;
  var Key: Char);
    procedure DBChequesEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
    procedure btGravarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure btLimparClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure SignificadodasCores1Click(Sender: TObject);
    procedure C_OperacoesCONTAORIGEMDINChange(
  Sender: TField);
    procedure C_OperacoesNewRecord(DataSet: TDataSet);
    procedure DBChequesAfterSelection(Sender: TObject; bSelected: Boolean;
      QtdSel: Integer; TotalGeral, TotalSelecionado: array of Double);
    procedure Label1Click(Sender: TObject);
  private
    { Private declarations }
    sSelecionados :String;

    procedure Imprimir;
    procedure CalcularTotalDep;
		procedure ImprimirBordero( nDeposito : integer);
    procedure Novo;
    function  Gravar : boolean;
    function  Validacoes : boolean;	
  public
    { Public declarations }
  end;

var
  DlgDepositoChequesEmCustodia: TDlgDepositoChequesEmCustodia;

implementation

uses DM_Projeto, funcoes, Dlg_CoresStatus,
  Rpt_BorderoCustodia, Dlg_DepositoCheques, DM_Financeiro;

{$R *.DFM}

procedure TDlgDepositoChequesEmCustodia.ImprimirBordero;
begin
  if DlgMsg.ShowMsg( 256 ) = 200 then
    exit;
  rptBorderoCustodia := TrptBorderoCustodia.Create(Self);
  rptBorderoCustodia.Imprimir(nDeposito);
  rptBorderoCustodia.Free;
end;

function TDlgDepositoChequesEmCustodia.Validacoes : boolean;
var sMsg1, sMsg2 : string;
begin
	  result := false;
    C_Operacoes.UpdateRecord;
  	if (DBCheques.QuantidadeSelecionada = 0) and (C_OperacoesValorDinheiro.Value=0) then begin
    	// ShowMessage('Não existem valores a serem depositados!');
       DlgMsg.ShowMsg( 246 );
    	exit;
  	end;
    if (C_OperacoesValorDinheiro.Value > 0) and
       (C_OperacoesValorDinheiro.Value > C_OperacoesSaldo.Value) then begin
      // ShowMessage('O Valor em Dinheiro solicitado para depósito está superior ao saldo disponível na Conta escolhida!');
      DlgMsg.ShowMsg( 248 );
      exit;
    end;
    if C_OperacoesValorOperacao.Value = 0 then begin
      // ShowMessage('A Soma não é válida para Depósito!');
      DlgMsg.ShowMsg( 249 );
      exit;
    end;
    if cmbContaBanco.KeyValue = null then begin
      // ShowMessage('Não foi informada a Conta para Depósito!');
      DlgMsg.ShowMsg( 250 );
      exit;
    end;
  	sMsg1 	:= '';
  	if DBCheques.QuantidadeSelecionada > 0 then
    	sMsg1:= format( DMProjeto.getMsg( 251 ), [formatfloat('#,###,##0.00',DBCheques.TotalSelecionado('Valor'))]);
  	sMsg2 	:= '';
  	if C_OperacoesValorDinheiro.Value > 0 then
  		sMsg2:= format( DMProjeto.getMsg( 252 ), [formatfloat('#,###,##0.00',C_OperacoesValorDinheiro.Value)]);

  	if DlgMsg.ShowMsg( 253, [sMsg1,#13#10,sMsg2,#13#10,cmbContaBanco.Text]) = 200 then
  		Exit;
    result := true;
end;

procedure TDlgDepositoChequesEmCustodia.Novo;
var nConta : integer;
begin
  C_ChequesDeposito.Close;

  C_ChequesDeposito.CommandText :=
       'Select dd.*, dd.localtitulo as DescLocal, sd.Descricao as DescStatus, f.Nome, '+
       '       b.Nome as NomeBanco, d.Sacado, ff.Nome as NomeVendedor '+
       'From  (((DepositosDoc dd INNER JOIN StatusDoc sd ON dd.Status = sd.Status) '+
       '      INNER JOIN Depositos d ON dd.Deposito = d.Deposito) '+
       '      INNER JOIN Favorecidos f ON d.Sacado = f.Favorecido) '+
       '      LEFT JOIN  Bancos b ON b.Codigo = dd.Banco '+
       '      LEFT JOIN  Favorecidos ff ON ff.Favorecido = dd.Funcionario '+
       'Where dd.Status < 70 and dd.Especie = 1 '+
       'and   dd.ForaDaEmpresa = ''N'' '+
       'and   sd.Idioma = '+IntToStr(DMProjeto.nIdiomaPadrao)+' '+
       'order by dd.Vencimento ';

  C_ChequesDeposito.Open;
  Q_Contas.Close;
  Q_Contas.Open;
  nConta := DMFinanceiro.getContaBancoPadrao;
  Q_Contas.Locate('Conta',nConta,[]);
  cmbContaBanco.KeyValue := nConta;
  DBCheques.LimparSelecionados;
  C_Operacoes.Close;
  C_Operacoes.Open;
  C_Operacoes.Append;
  lbTotalDinheiro.Caption := '0';
  lbTotalDepositar.Caption:= '0';
  ckDinheiro.Checked := false;
end;

procedure TDlgDepositoChequesEmCustodia.Imprimir;
begin
  if C_OperacoesOperacao.IsNull then begin
    // Application.MessageBox('Selecione o Borderô de Depósito que deseja imprimir através do botão <Pesquisar>!','Atenção',mb_ok);
    DlgMsg.ShowMsg( 245 );
    exit;
  end;
  ImprimirBordero(C_OperacoesOperacao.Value);
end;

procedure TDlgDepositoChequesEmCustodia.CalcularTotalDep;
var nValorCheques, nDinheiro : single;
begin
     nValorCheques := dbtChequesSel.Field.Value;  // DBCheques.TotalSelecionado('Valor');
     nDinheiro := 0;
     if dbDinheiro.Text <> '' then
       nDinheiro     := StrToFLoat(dbDinheiro.Text);
     lbTotalDinheiro.Caption	:= formatfloat('###,###,##0.00', nDinheiro );
     lbTotalDepositar.Caption := formatfloat('###,###,##0.00', nValorCheques+nDinheiro);
     if C_Operacoes.State in [dsEdit,dsInsert] then
     	C_OperacoesValorOperacao.Value 	:= nValorCheques+nDinheiro;
end;


procedure TDlgDepositoChequesEmCustodia.ckDinheiroClick(Sender: TObject);
var i : integer;
begin
  inherited;
    for i:=0 to ComponentCount -1 do
    	if (Components[i].tag = 10 ) then
       	(Components[i] as TControl).Enabled := (Sender as TCheckBox).Checked;
    if (Sender as TCheckBox).Checked then
    	dbDinheiro.SetFocus
    else
    	C_OperacoesValorDinheiro.Value:= 0;
end;

procedure TDlgDepositoChequesEmCustodia.cmbContaOrigemClick(Sender: TObject);
begin
  inherited;
	dbDinheiro.SetFocus;
end;

procedure TDlgDepositoChequesEmCustodia.dbDinheiroChange(Sender: TObject);
begin
  inherited;
	if C_Operacoes.State in [dsEdit,dsInsert] then
	  CalcularTotalDep;
end;

procedure TDlgDepositoChequesEmCustodia.dbDinheiroKeyPress(Sender: TObject;
  var Key: Char);
begin
  inherited;
  if Key in [',','.'] then
    Key := DecimalSeparator;
end;

procedure TDlgDepositoChequesEmCustodia.DBChequesEspecialSelection(Sender: TObject;
  bSelected: Boolean; NewFont: TFont; var NewColor: TColor);
begin
  inherited;
    NewFont.Color := DMProjeto.CorPadrao( C_ChequesDepositoStatus.value );
    if C_ChequesDepositoStatus.value = 70 then
      NewFont.Style := [fsStrikeout];
end;

function TDlgDepositoChequesEmCustodia.Gravar;
var i : integer;
begin
	result := false;
  sSelecionados := DbCheques.Selecionados;
  try
    C_OperacoesOperacao.AsInteger := DMProjeto.NextID('Operacoes');
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    {Se for Inclusão de um Deposito}
    if C_Operacoes.State in [dsBrowse] then
    	C_Operacoes.Edit;
    C_OperacoesContaDestino.AsInteger := Q_ContasConta.AsInteger;
    C_Operacoes.ApplyUpdates(0);
    if sSelecionados <> '' then begin
      with DMProjeto do begin
       with Q_SQL do begin
    		SQL.Clear;
       	SQL.Add('insert into OperacoesTitulosDet (Operacao,Sequencia,Documento,Vencimento,Valor,Agencia,Banco,Favorecido,ID,Nome) values ');
       	SQL.Add('(:Operacao,:Sequencia,:Documento,:Vencimento,:Valor,:Agencia,:Banco,:Favorecido,:ID,:Nome)');
       	for i:=1 to ContaStrings(sSelecionados,',') do begin
          C_ChequesDeposito.Locate('IDDoc',SeparaStrings(sSelecionados,',',i),[]);
       		ParamByName('Operacao').AsInteger 		:= C_OperacoesOperacao.AsInteger;
         	ParamByName('Sequencia').AsInteger		:= i;
         	ParamByName('Documento').AsString 		:= C_ChequesDepositoNumCheque.AsString;
          ParamByName('Vencimento').AsDateTime 	:= C_ChequesDepositoVencimento.Value;
          ParamByName('Valor').AsFloat          := C_ChequesDepositoValor.Value;
          ParamByName('Agencia').AsString				:= C_ChequesDepositoAgencia.Value;
          ParamByName('Banco').AsInteger				:= C_ChequesDepositoBanco.Value;
          ParamByName('Favorecido').AsInteger		:= C_ChequesDepositoFavorecido.Value;
          ParamByName('ID').AsInteger						:= C_ChequesDepositoIDDoc.AsInteger;
          ParamByName('Nome').AsString					:= C_ChequesDepositoTitularCheque.Asstring;
          ExecSQL;
        end;
       end;
     end;
    end;
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    {Retirada, Deposito e atualização dos Flags (Status, LocalTitulo e ForaDaEmpresa) em DepositosDoc}
    if C_OperacoesValorOperacao.Value <> C_OperacoesValorDinheiro.Value then
    	DMFinanceiro.SetChequesEmCustodia(C_OperacoesOperacao.Value, Q_ContasConta.Value, DBCheques.Selecionados);

    if C_OperacoesValorDinheiro.Value > 0 then
      DMFinanceiro.Transferir(1, Q_ContasConta.Value,
                           C_OperacoesValorDinheiro.Value, C_OperacoesHistorico.Value,
                           '', 'N', DMProjeto.nFavEmpresa, C_OperacoesData.Value);

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    result := true;
  except
    On e:Exception do begin
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
        DlgMsg.ShowMsg( 255,'Erro: '+e.message);
    end;
  end;
end;

procedure TDlgDepositoChequesEmCustodia.btGravarClick(Sender: TObject);
begin
  if not Validacoes then
  	Exit;
  if Gravar then begin
    Imprimir;
  	Novo;
  end;
end;

procedure TDlgDepositoChequesEmCustodia.FormCreate(Sender: TObject);
begin
  inherited;
  Novo;
end;

procedure TDlgDepositoChequesEmCustodia.btLimparClick(Sender: TObject);
begin
  inherited;
  Novo;
end;

procedure TDlgDepositoChequesEmCustodia.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  inherited;
  C_ChequesDeposito.Close;
  C_Operacoes.Close;
	DlgDepositoCheques := nil;
end;

procedure TDlgDepositoChequesEmCustodia.SignificadodasCores1Click(Sender: TObject);
begin
  inherited;
	DlgCoresStatus := TDlgCoresStatus.Create(self);
  DlgCoresStatus.ShowModal;
  DlgCoresStatus.Free;
end;

procedure TDlgDepositoChequesEmCustodia.C_OperacoesCONTAORIGEMDINChange(
  Sender: TField);
begin
  inherited;
  C_OperacoesSaldo.Value := DMFinanceiro.Conta_Saldo( '1', '5' );
end;

procedure TDlgDepositoChequesEmCustodia.C_OperacoesNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_OperacoesOperacao.AsInteger	:= -888;
  C_Operacoes['Data'] 				:= DMProjeto.dDataSistema;
  C_Operacoes['ValorBruto'] 		:= 0;
  C_Operacoes['Natureza'] 			:= StrToIntDef(DMProjeto.Parametro('Nat_Depositos'),3);
  C_Operacoes['HistoricoRet'] 	:= 'Depósito de Valores';
  C_Operacoes['HistoricoDep'] 	:= 'Depósito de Valores';

end;

procedure TDlgDepositoChequesEmCustodia.DBChequesAfterSelection(Sender: TObject;
  bSelected: Boolean; QtdSel: Integer; TotalGeral,
  TotalSelecionado: array of Double);
begin
  inherited;
	CalcularTotalDep;
end;

procedure TDlgDepositoChequesEmCustodia.Label1Click(Sender: TObject);
begin
  inherited;
	Q_Contas.Close;
  Q_Contas.Open;
end;

end.
