unit DM_BalancoFichas;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMBalancoFichas = class(TDMManutencao)
    C_TabelaBALANCOFICHA: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaUSUARIO: TIntegerField;
    C_TabelaSTATUS: TIntegerField;
    Q_Usuarios: TIBQuery;
    C_Usuarios: TClientDataSet;
    Q_UsuariosProvider: TDataSetProvider;
    C_TabelacmbUsuario: TStringField;
    Q_BalancoFichasItens: TIBQuery;
    C_BalancoFichasItens: TClientDataSet;
    C_BalancoFichasItensDS: TDataSource;
    C_BalancoFichasItensBALANCOFICHAITEM: TIntegerField;
    C_BalancoFichasItensBALANCOFICHA: TIntegerField;
    C_BalancoFichasItensITEM: TIntegerField;
    C_BalancoFichasItensCODIGO: TStringField;
    C_BalancoFichasItensDESCRICAO: TStringField;
    C_TabelaDescStatus: TStringField;
    C_TabelaOPENBALANCE: TStringField;
    Q_Aux: TIBQuery;
    C_BalancoFichasItensUNIDADE: TStringField;
    C_TabelaQ_BalancoFichasItens: TDataSetField;
    C_BalancoFichasItensDESCGRUPO: TStringField;
    C_BalancoFichasItensDESCFABRICANTE: TStringField;
    C_UsuariosFAVORECIDO: TIntegerField;
    C_UsuariosNOME: TStringField;
    C_TabelaDESCRICAOFICHA: TStringField;
    C_Almoxarifados: TClientDataSet;
    P_Almoxarifados: TDataSetProvider;
    Q_Almoxarifados: TIBQuery;
    C_AlmoxarifadosALMOXARIFADO: TIntegerField;
    C_AlmoxarifadosDESCRICAO: TStringField;
    C_TabelaALMOXARIFADO: TIntegerField;
    C_TabelalkAlmox: TStringField;
    C_BalancoFichasItensREFERENCIA: TStringField;
    C_BalancoFichasItensCONTAGEM1: TFloatField;
    C_BalancoFichasItensCONTAGEM2: TFloatField;
    C_BalancoFichasItensCONTAGEM3: TFloatField;
    C_BalancoFichasItensCODIGOBARRAS: TStringField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_BalancoFichasItensNewRecord(DataSet: TDataSet);
    procedure C_BalancoFichasItensITEMChange(Sender: TField);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    nIDGlobal:integer;
  public
    bAdicionando: boolean;
    Function CriarArquivoColetor(sPath: String): boolean;
  end;

var
  DMBalancoFichas: TDMBalancoFichas;

implementation
uses DM_Projeto, Funcoes;

{$R *.DFM}

Function TDMBalancoFichas.CriarArquivoColetor(sPath: String): Boolean;
Var sLinhas: TStringList;
Begin
   Try
     Result:=false;
     sLinhas := TStringList.Create;
     With C_BalancoFichasItens do Begin
        DisableControls;
        First;
        while not eof do Begin
          sLinhas.Add(Funcoes.PreencherStr(FieldByName('Codigo').AsString,' ',13)+PreencherStr(Copy(FieldByName('Descricao').AsString,1,40),' ',40));
          Next;
        End;
        First;
        EnableControls;
     End;
     sLinhas.SaveToFile(sPath);
     sLinhas.Clear;
     sLinhas.Free;
     result:=True;

   Except
     on E: Exception do
       Application.MessageBox(pChar(e.Message),'Aviso',mb_OK);
   End;
End;

procedure TDMBalancoFichas.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaBALANCOFICHA.AsInteger :=  DMProjeto.NextIDGlobal;
  C_TabelaData.value := DMProjeto.dDataSistema;
  C_TabelaUsuario.value := DMProjeto.nFuncionario;
  C_TabelaStatus.value := 1;
  C_TabelaOpenBalance.value := 'N';
  C_TabelaAlmoxarifado.value := 0;
end;

procedure TDMBalancoFichas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMBalancoFichas := self;
  nIDGlobal := -10;
  bAdicionando := false;
end;

procedure TDMBalancoFichas.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
  if C_TabelaStatus.value = 1 then
    C_TabelaDescStatus.value := DMProjeto.GetMsg(1012) // Aberto
  else if C_TabelaStatus.value = 2 then
    C_TabelaDescStatus.value := DMProjeto.GetMsg(1024) // Cancelado
  else
    C_TabelaDescStatus.value := DMProjeto.GetMsg(1013); // Fechado
end;


procedure TDMBalancoFichas.DMComponentGravar2_AposIDS_Tabela(
  Sender: TObject);
begin
  inherited;
  DMProjeto.Q_SQL.close;
  DMProjeto.Q_SQL.SQL.text := 'update itens set balanco = ''N'' where item in '+
  '(select item from balancofichasitens bfi where balancoficha = '+C_TabelaBalancoFicha.AsString+')';
  DMProjeto.Q_SQL.execsql;
end;

procedure TDMBalancoFichas.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  DMProjeto.Q_SQL.close;
  DMProjeto.Q_SQL.SQL.text := 'update itens set balanco = ''S'' where item in '+
  '(select item from balancofichasitens bfi where balancoficha = '+C_TabelaBalancoFicha.AsString+')';
  DMProjeto.Q_SQL.execsql;
end;

procedure TDMBalancoFichas.DMComponentModoInclusao2_Terminar(
  Sender: TObject);
var bOpenBalance: boolean;
begin
  inherited;
{ Q_Aux.close;
  Q_Aux.SQL.text := 'select count(*) as qtde from inventario';
  Q_Aux.open;
  bOpenBalance := false;
  if (Q_Aux['qtde'] = null) or (Q_Aux['qtde'] = 0) then begin
    bOpenBalance := true;
    C_TabelaOpenBalance.value := 'S';
  end;
  Q_Aux.close;
  Q_Aux.SQL.text := 'select count(*) as qtde from balancofichas where openbalance = ''S'' and status = 1';
  Q_Aux.open;
  if bOpenBalance and (Q_Aux['qtde'] > 0) then begin
    C_TabelaOpenBalance.value := 'N';
    C_TabelaStatus.value := 2;
    DlgMsg.ShowMsg(1032);
  end;

  if C_TabelaOpenBalance.value = 'S' then begin
    Q_Aux.close;
    Q_Aux.SQL.text := 'select * from itens where desativado = ''N'' and tipoitem = 1 order by descricao';
    Q_Aux.open;

    while not Q_Aux.eof do begin
      C_BalancoFichasItens.Append;
      C_BalancoFichasItens.FieldByName('Item').asinteger := Q_Aux.FieldByName('item').asinteger;
      C_BalancoFichasItens.FieldByName('Codigo').asstring := Q_Aux.FieldByName('codigo').asstring;
      C_BalancoFichasItens.FieldByName('Descricao').asstring := Q_Aux.FieldByName('descricao').asstring;
      C_BalancoFichasItens.FieldByName('Unidade').asstring := Q_Aux.FieldByName('unidade').asstring;
      C_BalancoFichasItens.post;
      Q_Aux.next;
    end;
    C_BalancoFichasItens.first;
  end;}
end;

procedure TDMBalancoFichas.C_BalancoFichasItensNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  C_BalancoFichasItens.FieldByName('balancofichaitem').asinteger := nIDGlobal;
  dec(nIDGlobal);
end;

procedure TDMBalancoFichas.C_BalancoFichasItensITEMChange(Sender: TField);
begin
  inherited;
  if bAdicionando then
    exit;
  C_BalancoFichasItensCodigo.value     := DMProjeto.C_LocalizarItens.FieldByName('codigo').asstring;
  C_BalancoFichasItensReferencia.value := DMProjeto.C_LocalizarItens.FieldByName('referencia').asstring;
  C_BalancoFichasItensDescricao.value := DMProjeto.C_LocalizarItens.FieldByName('descricao').asstring;
  C_BalancoFichasItensUnidade.value := DMProjeto.C_LocalizarItens.FieldByName('unidade').asstring;
  C_BalancoFichasItensDescGrupo.value := DMProjeto.C_LocalizarItens.FieldByName('descricaogrupo').asstring;
  C_BalancoFichasItensDescFabricante.value := DMProjeto.C_LocalizarItens.FieldByName('descfabricante').asstring;
end;

procedure TDMBalancoFichas.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if DlgMsg.ShowMsg(1020) = 100 then begin
    if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.text := 'update balancofichas set status = 2 where balancoficha = '+C_TabelaBalancoFicha.AsString;
    DMProjeto.Q_SQL.execsql;

    DMProjeto.Q_SQL.close;
    DMProjeto.Q_SQL.SQL.text := 'update itens set balanco = ''N'' where item in '+
    '(select item from balancofichasitens bfi where balancoficha = '+C_TabelaBalancoFicha.AsString+')';
    DMProjeto.Q_SQL.execsql;

    if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
      DMProjeto.DB_Projeto.DefaultTransaction.Commit;
  end;
end;

procedure TDMBalancoFichas.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if C_BalancoFichasItens.state in [dsedit,dsinsert] then
    C_BalancoFichasItens.post;
  if C_BalancoFichasItens.recordcount = 0 then begin
    bSkip := true;
    DlgMsg.ShowMsg(6023);
  end;
end;

end.
