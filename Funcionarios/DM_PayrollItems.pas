unit DM_PayrollItems;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, Variants;

type
  TDMPayrollItems = class(TDMManutencao)
    C_TabelaPAYROLLITEM: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaTIPOPAYROLL: TIntegerField;
    C_TabelaCONTA: TIntegerField;
    C_TabelaVALOR: TBCDField;
    C_TabelaPERCENTUAL: TBCDField;
    C_TabelaDESATIVADO: TStringField;
    Q_Contas: TIBQuery;
    P_Contas: TDataSetProvider;
    C_Contas: TClientDataSet;
    C_ContasDS: TDataSource;
    P_TiposPayroll: TDataSetProvider;
    C_TiposPayroll: TClientDataSet;
    C_TiposPayrollDS: TDataSource;
    C_TiposPayrollTIPOPAYROLL: TIntegerField;
    C_TiposPayrollDESCRICAO: TStringField;
    C_ContasCONTA: TIntegerField;
    C_ContasDESCRICAO: TStringField;
    C_ContasTIPOCONTA: TIntegerField;
    C_ContasCONTAPAI: TIntegerField;
    C_ContasCODIGOREDUZIDO: TStringField;
    C_ContasCODIGOCONTA: TStringField;
    C_ContasSALDO: TBCDField;
    C_ContasDESCTIPO: TStringField;
    C_TabelalkConta: TStringField;
    C_TabelalkTipoPayroll: TStringField;
    DS_ComissaoDia: TDataSource;
    Q_ComissaoDia: TIBQuery;
    C_ComissaoDia: TClientDataSet;
    C_ComissaoDiaCOMISSAO_DIA: TIntegerField;
    C_ComissaoDiaDIA_SEMANA: TIntegerField;
    C_ComissaoDiaADD_COMISSAO: TBCDField;
    U_ComissaoDia: TIBUpdateSQL;
    C_TabelaQ_ComissaoDia: TDataSetField;
    C_ComissaoDiaPAYROLLITEM: TIntegerField;
    C_TabelaLIMITE: TBCDField;
    C_TabelaAGENCIA: TIntegerField;
    C_TabelaIDENTIFICACAO: TStringField;
    C_TabelaCONTALIABILITY: TIntegerField;
    Q_ContasLiability: TIBQuery;
    P_ContasLiability: TDataSetProvider;
    C_ContasLiability: TClientDataSet;
    IntegerField1: TIntegerField;
    StringField1: TStringField;
    C_ContasLiabilityTipoConta: TIntegerField;
    IntegerField3: TIntegerField;
    StringField2: TStringField;
    StringField3: TStringField;
    BCDField1: TBCDField;
    StringField4: TStringField;
    C_ContasLiabilityDS: TDataSource;
    C_TabelalkContaLiability: TStringField;
    C_TabelaTIPOWAGE: TStringField;
    C_TabelaNOMEAGENCIA: TStringField;
    C_MetasDS: TDataSource;
    Q_Metas: TIBQuery;
    C_Metas: TClientDataSet;
    U_Metas: TIBUpdateSQL;
    C_TabelaMETODOADIC: TIntegerField;
    C_TabelaQ_Metas: TDataSetField;
    C_MetasPAYROLLITEMMETA: TIntegerField;
    C_MetasPAYROLLITEM: TIntegerField;
    C_MetasVENDAMINIMA: TBCDField;
    C_MetasVENDAMAXIMA: TBCDField;
    C_MetasVALOR: TBCDField;
    C_MetasTIPOPERCENTUAL: TStringField;
    C_TabelaPADRAOFUNCS: TStringField;
    C_TabelaCB_PAYROLLITEM: TStringField;
    C_TabelaCB_VALOR: TStringField;
    C_TabelaCB_LIMITE: TStringField;
    C_TabelaCB_HORAS: TStringField;
    C_TabelaTEMPORARIO: TStringField;
    C_TabelaVALIDADE: TDateField;
    C_TabelaITEM: TIntegerField;
    C_TabelaDESCRICAOITEM: TStringField;
    C_TabelaQTDHORAS: TBCDField;
    C_TabelaTIPO: TStringField;
    Q_TiposPayroll: TIBQuery;
    Q_PayrollItens: TIBQuery;
    P_PayrollItens: TDataSetProvider;
    C_PayrollItens: TClientDataSet;
    C_PayrollItensPAYROLLITEM: TIntegerField;
    C_PayrollItensDESCRICAO: TStringField;
    C_TabelalkPayrollItemDesc: TStringField;
    C_PayrollItensDS: TDataSource;
    Q_SQL: TIBQuery;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_ComissaoDiaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaVALORChange(Sender: TField);
    procedure C_TabelaPERCENTUALChange(Sender: TField);
    procedure C_MetasNewRecord(DataSet: TDataSet);
    procedure C_MetasAfterPost(DataSet: TDataSet);
    procedure C_MetasBeforePost(DataSet: TDataSet);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure C_TabelaTIPOPAYROLLChange(Sender: TField);
  private
    { Private declarations }
    nLastMaxValor : Currency;
    sTodos : string;
    nTipoPayroll : integer;
  public
    { Public declarations }
    procedure InsereItens( Favorecidos : string );
    procedure ApagaItens;
    function ItemJaExiste: boolean;
  end;

var
  DMPayrollItems: TDMPayrollItems;

implementation
  uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDMPayrollItems.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDesativado.Value := 'N';
  C_TabelaTipoPayRoll.Value := nTipoPayroll;
  C_TabelaQtdHoras.Value := 0;
  C_TabelaValor.Value := 0;
  C_TabelaPercentual.Value := 0;
  C_TabelaLimite.Value := 0;
  C_TabelaTipoWage.Value := 'R';
  C_TabelaMetodoAdic.Value := 5;
  C_TabelaPadraoFuncs.Value := 'N';
  C_TabelaCB_PAYROLLITEM.Value := 'S';
  C_TabelaCB_Horas.Value 		:= 'N';
  C_TabelaCB_LIMITE.Value 	:= 'N';
  C_TabelaCB_VALOR.Value 		:= 'S';
  C_TabelaTemporario.Value 	:= 'N';
  C_TabelaTIPO.Value := 'P';
  nLastMaxValor := -0.01;
end;

procedure TDMPayrollItems.C_ComissaoDiaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_comissaoDiaCOMISSAO_DIA.Value := -1;
  C_ComissaoDiaADD_COMISSAO.Value := 0;
end;

procedure TDMPayrollItems.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMPayrollItems := self;
  nTipoPayroll   := 0;
end;

procedure TDMPayrollItems.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var
	nResp   : integer;
  sFaltou : String;
begin
  inherited;
  if C_TabelaTipoPayRoll.Value in [1,2] then begin
  	if C_Tabela.State in [dsBrowse] then
    	C_Tabela.Edit;
    C_TabelaTipo.Value := 'V';
  end;
  if not bAlteracao then begin
  	with DMProjeto.Q_SQL do begin
  		close;
    	sql.text := 'select descricao from payrollitens '+
    						'where upper(descricao) = :desc';
    	parambyname('Desc').AsString := UpperCase(C_TabelaDescricao.AsString);
    	open;
    	if recordcount > 0 then begin
    		close;
      	DlgMsg.ShowMsg(1704,[C_TabelaDescricao.AsString]);
      	bSkip := true;
      	exit;
    	end;
  	end;
  end;

  sFaltou := '';
  if (C_TabelaTemporario.Value = 'S') and (C_TabelaValidade.IsNull) then begin
  	DlgMsg.ShowMsg(929,['a data de validade do item temporário.']);
    exit;
  end;

  Case C_TabelaTipoPayroll.Value of
    1 : begin
          if C_TabelaTipoWage.Value = '' then
            sFaltou := CExp(sFaltou, ', ') + C_TabelaTipoWage.DisplayLabel;
          if C_TabelaConta.Value = 0 then
            sFaltou := CExp(sFaltou, ', ') + C_TabelaConta.DisplayLabel;
        end;
    2 : begin
          if C_TabelaConta.Value = 0 then
            sFaltou := CExp(sFaltou, ', ') + C_TabelaConta.DisplayLabel;
        end;
    3 : begin
          if C_TabelaConta.Value = 0 then
            sFaltou := CExp(sFaltou, ', ') + C_TabelaConta.DisplayLabel;
        end;
    4 : begin
          if C_ContasLiabilityTipoConta.Value = 10 then begin

          	if C_TabelaNomeAgencia.Value = '' then
            	sFaltou := CExp(sFaltou, ', ') + C_TabelaNomeAgencia.DisplayLabel;
          	if C_TabelaIdentificacao.Value = '' then
            	sFaltou := CExp(sFaltou, ', ') + C_TabelaIdentificacao.DisplayLabel;
          {	if C_TabelaContaLiability.Value = 0 then
            	sFaltou := CExp(sFaltou, ', ') + C_TabelaContaLiability.DisplayLabel; }
        	end;
        end;
  end;

  if sFaltou <> '' then begin
    DlgMsg.ShowMsg( 513, [sFaltou]);
    bSkip := true;
    exit;
  end;

  {Comissão}
  if C_TabelaTipoPayRoll.Value = 2 then begin
  	if (C_TabelaValor.AsFloat <> 0) and (C_TabelaPercentual.AsFloat <> 0) then begin
    	DlgMsg.ShowMsg(1702);
      bSkip := true;
      exit;
    end;
  end;

  if (not (C_TabelaTipoPayroll.Value in [0,1])) or ((C_TabelaTipoPayroll.Value = 4) and (C_TabelaMetodoAdic.Value <> 3)) then begin
  	C_Tabela.Edit;
    C_TabelaItem.AsVariant := null;
  end;

  if (not bAlteracao) and (C_TabelaPadraoFuncs.Value = 'S') then begin
  	nResp := DlgMsg.ShowMsg(1700, [C_TabelaDescricao.AsString] );
    if nResp = 100 then
    	sTodos := 'T'
    else if nResp = 200 then begin
      DMProjeto.SetParametrosForm(['','',3]);
  		DMProjeto.CriarForm('DlgEscolheFavorecidos',self,true);
    	if DMProjeto.ExisteParametrosForm then
    		sTodos := DMProjeto.getParametrosForm(0);
      DMProjeto.LimparParametrosForm;
    end else begin
    	sTodos := '';
    end;
  end;
end;

procedure TDMPayrollItems.C_TabelaVALORChange(Sender: TField);
begin
  inherited;
  if (Sender.asCurrency > 0) then begin
    C_TabelaPercentual.Value := 0;
    C_TabelaMetodoAdic.Value := 5;
  end;
end;

procedure TDMPayrollItems.C_TabelaPERCENTUALChange(Sender: TField);
begin
  inherited;
  if (Sender.asCurrency > 0) then
    C_TabelaValor.Value := 0;
end;

procedure TDMPayrollItems.C_MetasNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_MetasPayrollItemMeta.Value := -1;
  C_MetasVendaMinima.Value := nLastMaxValor + 0.01;
  C_MetasVendaMaxima.Value := 0;
  C_MetasValor.Value       := 0;
  C_MetasTipoPercentual.Value := 'N';
end;

procedure TDMPayrollItems.C_MetasAfterPost(DataSet: TDataSet);
var
  TmpDS : TClientDataSet;
begin
  inherited;

  TmpDS := TClientDataSet.Create(self);
  with TmpDS do begin
    CloneCursor(C_Metas,true);
    First;
    nLastMaxValor := 0;
    while not EOF  do begin
      if nLastMaxValor < FieldByName('VendaMaxima').asCurrency then
        nLastMaxValor := FieldByName('VendaMaxima').asCurrency;
      Next;
    end;
  end;
  TmpDS.Free;

  {Se existe metas o percentual / valor considerados será o da meta}
  C_Tabela.Edit;
  C_TabelaValor.Value := 0;
  C_TabelaPercentual.Value := 0;

end;

procedure TDMPayrollItems.C_MetasBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_MetasVENDAMAXIMA.asCurrency < C_MetasVendaMinima.asCurrency then begin
    DlgMsg.ShowMsg(2165);
    raise Exception.Create('@@');
  end;
end;

function TDMPayrollItems.ItemJaExiste : boolean;
begin
  with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'select count(*) from funcspayitens where payrollitem = '+C_TabelaPayRollItem.AsString;
    open;
    result := fields[0].AsInteger > 0;
    close;
  end;
end;

procedure TDMPayrollItems.InsereItens;
var sValor : string;
begin
	with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'insert into funcspayitens (funcionario, item, payrollitem, valor, percentual, qtdhoras, limite) '+
     						'select f.favorecido, :item, :payrollitem, :valor, :percentual, :qtdhoras, :limite '+
                'from favorecidos f '+
                'where :todos f.tipofavorecido = 3 and f.desativado = ''N'' ';

    sql.text := sql.text + 'and not exists '+
    											 '(select funcpayitem from funcspayitens '+
    											 'where funcionario = f.favorecido and payrollitem = :payrollitem)';

    if Favorecidos = 'T' then
    	sql.text:= replace(sql.text,':todos','')
    else if Favorecidos = '' then
    	sql.text:= replace(sql.text,':todos','favorecido = -100000 and ')
    else
      sql.text:= replace(sql.text,':todos','favorecido IN ('+Favorecidos+') and ');

    sql.text:= replace(sql.text,':item',iif(C_TabelaItem.AsString='','null',C_TabelaItem.AsString));
    sql.text:= replace(sql.text,':payrollitem',iif(C_TabelaPayRollItem.AsString='','null',C_TabelaPayRollItem.AsString));

    sValor 	:= iif(C_TabelaValor.AsString='','null',C_TabelaValor.AsString);
    sValor 	:= replace(sValor,',','.');
    sql.text:= replace(sql.text,':valor',sValor);

    sValor 	:= iif(C_TabelaPercentual.AsString='','null',C_TabelaPercentual.AsString);
    sValor 	:= replace(sValor,',','.');
    sql.text:= replace(sql.text,':percentual',sValor);

    sValor 	:= iif(C_TabelaQtdHoras.AsString='','null',C_TabelaQtdHoras.AsString);
    sValor 	:= replace(sValor,',','.');
    sql.text:= replace(sql.text,':qtdhoras',sValor);

    sValor 	:= iif(C_TabelaLimite.AsString='','null',C_TabelaLimite.AsString);
    sValor 	:= replace(sValor,',','.');
    sql.text:= replace(sql.text,':limite',sValor);

    ExecSql;

    if (C_TabelaTipoPayRoll.Value = 3) and (C_TabelaMetodoAdic.Value in [3,4]) then begin

      Q_SQL.Close;
      Q_SQL.SQL.Text := 'select funcpayitem from funcspayitens where payrollitem = :payrollitem';
      Q_SQL.ParamByName('payrollitem').AsInteger := C_TabelaPayrollItem.Value;
      Q_SQL.Open;
      Q_SQL.First;
      while not eof do begin
      	Close;
      	Sql.Text := 'insert into funcspayitensmetas '+
      							'(funcpayitem, vendaminima, vendamaxima, valor, tipopercentual) '+
                  	'select '+Q_SQL.fields[0].AsString+', vendaminima, vendamaxima, valor, tipopercentual '+
                  	'from payrollitensmetas '+
                    'where payrollitem = :PayRollItem and not exists (select funcpayitem from funcspayitensmetas where funcpayitem = '+Q_SQL.fields[0].AsString+')';
        ParambyName('PayRollItem').AsInteger := C_TabelaPayrollItem.Value;
        ExecSQL;
        Q_SQL.Next;
      end;

    end;
  end;
end;

procedure TDMPayrollItems.ApagaItens;
begin
	with DMProjeto.Q_SQL do begin
  	close;
    sql.text := 'delete from funcspayitens '+
                'where payrollitem = '+C_TabelaPayRollItem.AsString;
    execsql;
    close;
  end;
end;

procedure TDMPayrollItems.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  Where := replace(Where, 'descricao', 'p.descricao');
end;

procedure TDMPayrollItems.DMComponentGravar2_AposIDS_Tabela(
  Sender: TObject);
begin
  inherited;
	InsereItens( sTodos );
end;

procedure TDMPayrollItems.C_TabelaTIPOPAYROLLChange(Sender: TField);
begin
  inherited;

  nTipoPayroll := C_TabelaTipoPayroll.Value;

	if C_TabelaTipoPayRoll.Value = 4 then begin
  	C_TabelaTipo.Value := 'V';
    C_TabelaConta.value := DMProjeto.ContaPadrao(12);
  end
  else if C_TabelaTipoPayRoll.Value = 2 then begin
  	C_TabelaPadraoFuncs.Value := 'N';
    C_TabelaConta.value := DMProjeto.ContaPadrao(32);
  end
  else
    C_TabelaConta.value := DMProjeto.ContaPadrao(12);
end;

end.
