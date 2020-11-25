unit DM_TabelasPreco;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTabelasPreco = class(TDMManutencao)
    C_TabelaTABELAPRECO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaPERCENTUAL: TBCDField;
    C_TabelaDESATIVADO: TStringField;
    Q_Produtos: TIBQuery;
    C_TabelaBASEADA: TStringField;
    Q_ProdutosITEM: TIntegerField;
    Q_ProdutosDESCRICAO: TIBStringField;
    Q_ProdutosUNIDADE: TIBStringField;
    C_TabelaADD_COMISSAO: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaBeforePost(DataSet: TDataSet);
    procedure DMComponentAntesDeApagar(Sender: TObject;
      var bCanDelete: Boolean);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    function VerificaExistencia(nChave:integer;sTabela,sChave,sTexto:string;sCampo: string = 'descricao'):boolean;

  public
    { Public declarations }
    procedure AtualizarPrecosManuais;
    
  end;

var
  DMTabelasPreco: TDMTabelasPreco;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMTabelasPreco.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTabelasPreco := self;
end;

procedure TDMTabelasPreco.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDesativado.value := 'N';
  C_TabelaBaseada.value 	 := 'S';
  C_TabelaPercentual.value := 0;
  C_TabelaAdd_Comissao.Value := 0;
end;

procedure TDMTabelasPreco.C_TabelaBeforePost(DataSet: TDataSet);
begin
  inherited;
  if C_TabelaTabelaPreco.value = 0 then
    C_TabelaBaseada.value := 'N';
  if C_TabelaBaseada.value = 'N' then
    C_TabelaPercentual.value := 0;
  if C_TabelaAdd_Comissao.IsNull then
    C_TabelaAdd_Comissao.Value := 0;
end;

procedure TDMTabelasPreco.DMComponentAntesDeApagar(Sender: TObject;
  var bCanDelete: Boolean);
begin
  inherited;
  if C_TabelaTabelaPreco.value = 0 then begin
    DlgMsg.ShowMsg(3124);
    bCanDelete := false;
  end;
end;

procedure TDMTabelasPreco.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if VerificaExistencia(C_TabelaTabelaPreco.value,'tabelaspreco','tabelapreco',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['Tabela de Preço']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMTabelasPreco.AtualizarPrecosManuais;
begin
  try
    Screen.Cursor := crHourGlass;
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.text := 'Execute procedure PP_AtualizaPrecos :Tab, 1 ';
      params[0].asInteger := C_TabelaTabelaPreco.Value;
      ExecSQL;
    end;
    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
       DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
    Screen.Cursor := crDefault;
    DlgMsg.ShowMsg( 8046 );
  except
    on e:exception do begin
      Screen.Cursor := crDefault;
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
        DMProjeto.DB_Projeto.DefaultTransaction.RollbackRetaining;
      DlgMsg.ShowMsg( 50, ['ERRO' + #13#10 + e.message ] );
    end;
  end;
end;

function TDMTabelasPreco.VerificaExistencia;
begin
  with DMProjeto.Q_ComandoSQL do begin
  	Close;
  	SQL.text := 'select '+sChave+' from '+sTabela+' where '+sChave+' <> :nChave and upper('+sCampo+') = :descricao';
  	params[0].asinteger := nChave;
  	params[1].asstring  := uppercase(sTexto);
  	Open;
  	Last;
  	result := Recordcount <> 0;
  end;
end;

end.
