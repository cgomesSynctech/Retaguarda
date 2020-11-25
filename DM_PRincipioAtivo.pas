unit DM_PRincipioAtivo;

{
Função: Dlg.ShowMsg

Formas de Chamar a funcao:
    ShowMsg( IDMsg : Integer ) : Integer;
             Apenas mostra a mensagem de número IDMsg

    ShowMsg( IDMsg : Integer; const Args: array of const ) : Integer;
             Mostra a Mensagem de número IDMsg com os parametros passados em Args
             estilo a função Format('Texto %s - %d',['Meu parametro',20]).

    ShowMsg( IDMsg : Integer; ApplicationMsg : String ) : Integer;
             Mostra a Mensagem de número IDMsg e também exibe a mensagem gerada pelo
             sistema (ex.: e.message nos tratamentos de exceções)

    ShowMsg( IDMsg : Integer; ApplicationMsg : String; const Args: array of const ) : Integer;
             Mostra a Mensagem de número IDMsg, a mensagem gerada pelo sistema e
             os parametros passados em Args

}

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_PadraoManutencao, DBTables, Db, IBCustomDataSet, IBUpdateSQL, IBQuery,
  DMComponent, DlgMsg, IB, Provider, DBClient, TS_LastDataObject, Variants;

type
  EUpdateError = Class(Exception);

  //TBarPosition = procedure(Pos, Max:Integer) of object;

  TDMPRincipioAtivo = class(TDMPadraoManutencao)
    Q_Tabela: TIBQuery;
    Q_MasterDS: TDataSource;
    U_Tabela: TIBUpdateSQL;
    DMComponent: TDMComponent;
    DlgMsg: TDlgMsg;
    P_Tabela: TDataSetProvider;
    C_Tabela: TClientDataSet;
    C_TabelaDS: TDataSource;
    ResultSet: TClientDataSet;
    C_Tabela_icSelecionado: TIntegerField;
    C_TabelaPRINCIPIOATIVO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure C_TabelaAfterPost(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaReconcileError(DataSet: TCustomClientDataSet;
      E: EReconcileError; UpdateKind: TUpdateKind;
      var Action: TReconcileAction);
    procedure C_TabelaAfterOpen(DataSet: TDataSet);
    procedure C_TabelaAfterClose(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  protected
    { Private declarations }
    aCalcFields : TDataSetNotifyEvent;

    EventList : array of TDataSetNotifyEvent;
    EventListIndex : array of String;

    DetailAfterPostEV : array of TDataSetNotifyEvent;
    DetailAfterPostDS : array of String;

    sSelectPadrao : string;
    sSelectVazio : String;

    DetailDataSets : Array of TDataSet;

    bExcluindo : Boolean;

    procedure AfterDetailPost(DataSet : TDataSet);

  public
    { Public declarations }
    sUltimoErroPesquisa : String;
    sChaveIsNull : String;
    sStartPerformance : String;

    //BarPosition : TBarPosition;

    Form : TForm;

    procedure SuspendEvents;
    procedure RestoreEvents;

    function Iniciar : boolean; override;
    procedure Fechar; override;

    procedure Refresh( aLastDataObject: TTS_LastDataObject; RefreshList : TStringList ); override;

    function  Localizar(sSelect,sWhere: string): Integer; override;
    function  Excluir: boolean; override;
    function  Gravar:  boolean; override;

    function  ApplyUpdateExecute : boolean;

    function  Modo_Inclusao: boolean; override;

    procedure SaveToFile; override;
    procedure LoadFromFile; override;

    function  Importar(FileName : String) : Integer; override;
    procedure Exportar(FileName : String; Selecionados : String = ''); override;
    function  AjustarQuerysExport(nIDImportExport : Integer) : boolean;

    Function  DataSetPointer( Name : String ) : TDataSet;


  end;

var
  DMPRincipioAtivo: TDMPRincipioAtivo;


implementation
  uses Funcoes, TDM_Projeto, Frm_AtualizarAcesso, DM_Projeto;

{$R *.DFM}

Function TDMPRincipioAtivo.DataSetPointer( Name : String ) : TDataSet;
var
  i : Integer;
begin
  for i := 0 to ComponentCount - 1 do
    if (Components[i] is TDataSet) and
       (UpperCase(TDataSet(Components[i]).Name) = UpperCase(Name) ) then begin
      result := TDataSet(Components[i]);
      break;
    end;
end;

function TDMPRincipioAtivo.Iniciar : boolean;
var
  i, qtdwhere : Integer;
  C : String;
begin
  result := false;
  sConsulta := '';

  if Length(sStartPerformance) > 200 then
    sStartPerformance := '';
     
  sStartPerformance := sStartPerformance + Format('[%s] - Iniciando Método INICIAR', [TimeToStr(Now)])+#13;

  sKeyForIDs := DMComponent.KeyForIds;
  if sKeyForIDs = '' then
    sKeyForIDs := 'IDGlobal';

  sTable := DMComponent.Tabela_Nome;
  sKey :=  DMComponent.Tabela_Chave;
  sKeyAlias := DMComponent.Tabela_ChaveAlias;
  if sKeyAlias = '' then
    sKeyAlias := sKey;


  if (sTable = '') or (sKey = '') then begin
    ShowMessage('Está faltando a informação em DMComponent para as propriedades: '+#13+
                'Tabela_Nome, Tabela_Chave; ');
    exit;
  end;

  if DMComponent.ChavesDetalhes.Text <> '' then begin
    for i := 0 to DMComponent.ChavesDetalhes.Count - 1 do begin
      TIBQuery(DataSetPointer(SeparaStrings(DMComponent.ChavesDetalhes[i],'=',1))).DataSource := Q_MasterDS;
    end;
  end;


  State := dmsNormal;

  {ChaveIsNull}
  if (sChaveIsNull = '') and (DMComponent.Tabela_Chave <> '') then begin
    for i := 1 to ContaStrings(DMComponent.Tabela_Chave,';') do begin
      C := SeparaStrings(DMComponent.Tabela_Chave,';',i);
      if sChaveIsNull <> '' then
        sChaveIsNull := sChaveIsNull + ' and ';

      sChaveIsNull := sChaveIsNull + C + ' is null ';

    end;
  end;


  {Capturando DataSets detalhe de Q_Tabela}
  for i := 0 to ComponentCount - 1 do begin

    if (Components[i] is TClientDataSet) and
       (TClientDataSet(Components[i]).DataSetField <> nil ) and (copy(TClientDataSet(Components[i]).DataSetField.name,1,8) = 'C_Tabela') then begin
      SetLength(DetailDataSets,length(DetailDataSets)+1);
      DetailDataSets[length(DetailDataSets)-1] := TClientDataSet(Components[i]);
      if DMComponent.AutoSaveToFile then begin
        if Assigned( TClientDataSet(Components[i]).AfterPost ) then begin
          SetLength(DetailAfterPostDS, Length(DetailAfterPostDS) + 1);
          SetLength(DetailAfterPostEV, Length(DetailAfterPostEV) + 1);
          DetailAfterPostDS[ length(DetailAfterPostDS) - 1 ] := TClientDataSet(Components[i]).Name;
          DetailAfterPostEV[ length(DetailAfterPostEV) - 1 ] := TClientDataSet(Components[i]).AfterPost;
        end;
        TClientDataSet(Components[i]).AfterPost := AfterDetailPost;
      end;
    end;

  end;

  DMComponent.MestreDetalhe := Length(DetailDataSets) > 0;

  sStartPerformance := sStartPerformance + Format('[%s] - Varreu DataSets Detalhe ', [TimeToStr(Now)])+#13;

  try
    with C_Tabela do begin
      Close;
      if sSelectPadrao = '' then
        sSelectPadrao := Q_Tabela.SQL.Text;

      if sSelectVazio = '' then  begin
        sSelectVazio := uppercase(Q_Tabela.SQL.Text);

        qtdwhere := ContaStrings(sSelectVazio,'WHERE');

        if qtdwhere > 1 then begin
          sSelectVazio := replace(sSelectVazio, SeparaStrings(sSelectVazio,'WHERE ',qtdwhere),
                                  IIF(DMComponent.WhereVazio <> '', DMComponent.WhereVazio, sChaveIsNull) )

          end
        else begin //nao existe where no sql
          sSelectVazio := sSelectVazio + ' Where '+IIF(DMComponent.WhereVazio <> '', DMComponent.WhereVazio, sChaveIsNull);
        end;

        //ShowMessage(sSelectVazio);
      end;

      sStartPerformance := sStartPerformance + Format('[%s] - Antes do Evento AntesDeIniciar', [TimeToStr(Now)])+#13;

      {Antes de Iniciar}
      if Assigned( DMComponent.AntesDeIniciar ) then
        DMComponent.AntesDeIniciar( Self );

      sStartPerformance := sStartPerformance + Format('[%s] - Após Evento AntesDeIniciar', [TimeToStr(Now)])+#13;


      Close;
      CommandText := sSelectVazio;

      sStartPerformance := sStartPerformance + Format('[%s] - Antes do Evento AposDeIniciar', [TimeToStr(Now)])+#13;
      {Após Iniciar}
      if Assigned( DMComponent.AposIniciar ) then
        DMComponent.AposIniciar( Self );

    end; //with

    sStartPerformance := sStartPerformance + Format('[%s] - Finalizando Método INICIAR', [TimeToStr(Now)])+#13;

    result := true;
  except
    on e:EIBError do
      ErrorMsg(e);
    on e:Exception do
      DlgMsg.ShowMsg(DMComponent.MsgErroAbertura, e.Message, '');
  end;


end;

Procedure TDMPRincipioAtivo.Fechar;
begin
  sConsulta := '';

  {Antes de fechar}
  if Assigned( DMComponent.AntesDeFechar ) then
    DMComponent.AntesDeFechar( Self );

  SetLength(DetailDataSets,0);
  DetailDataSets := nil;

  FecharDataSets;

  {Após Fechar}
  if Assigned( DMComponent.AposFechar ) then
    DMComponent.AposFechar( Self );


end;

function TDMPRincipioAtivo.Modo_Inclusao;
var
  i, p : Integer;
  bLoad : boolean;
begin
  inherited Modo_Inclusao;

  sStartPerformance := sStartPerformance + Format('[%s] - Iniciando Método Modo_Inclusão ', [TimeToStr(Now)])+#13;

  result := false;
  {Modo Inclusão: Iniciar}
  if Assigned( DMComponent.ModoInclusao1_Iniciar ) then
    DMComponent.ModoInclusao1_Iniciar( Self );

  sStartPerformance := sStartPerformance + Format('[%s] - Após Evento ModoInclusao_Iniciar ', [TimeToStr(Now)])+#13;

  try
    with C_Tabela do begin
      Close;
      CommandText := sSelectVazio;
      if Filter <> '' then begin
        Filtered := false;
        Filter := '';
      end;
      Open;

      sStartPerformance := sStartPerformance + Format('[%s] - Abriu C_Tabela: Modo_Inclusão', [TimeToStr(Now)])+#13;

      Append;

      sStartPerformance := sStartPerformance + Format('[%s] - Executou Append em C_Tabela', [TimeToStr(Now)])+#13;
    end;

    if Assigned(aCalcFields) then
      C_Tabela.OnCalcFields := aCalcFields;

    C_Tabela.AutoCalcFields := True; //Foi setado false no newrecord.

    if Assigned(C_Tabela.OnCalcFields) then
      C_Tabela.OnCalcFields(C_Tabela);

    try
      if DMComponent.AutoLoadFromFile and
         FileExists(DMProject.ProgPath+DMProject.Maquina+Self.Name + '.sav') then begin
        //DlgMsg.ShowMsg(99); {AutoLoadFile Autorization}
        C_Tabela.LoadFromFile( DMProject.ProgPath+DMProject.Maquina+Self.Name + '.sav' );
        C_Tabela.CheckBrowseMode;
      end;
    except
    end;

    sStartPerformance := sStartPerformance + Format('[%s] - Antes do Evento ModoInclusao_Terminar ', [TimeToStr(Now)])+#13;

    {Modo Inclusão: Terminar}
    if Assigned( DMComponent.ModoInclusao2_Terminar ) then
      DMComponent.ModoInclusao2_Terminar( Self );

    sStartPerformance := sStartPerformance + Format('[%s] - Finalizando Método Modo_Inclusão ', [TimeToStr(Now)])+#13;
    result := true;
  except
    on e:EIBError do
      ErrorMsg(e);
    on e:Exception do
      DlgMsg.ShowMsg(DMComponent.MsgErroAbertura,e.Message, '');
  end;

end;

function TDMPRincipioAtivo.Localizar;
var
  SelectFinal, SelectCount: string;
  i, qtdFrom, nQtdReg : Integer;
  bSkip: boolean;
begin
  inherited Localizar(sSelect, sWhere);

  sStartPerformance := Format('[%s] - Iniciando Método Localizar', [TimeToStr(Now)])+#13;

  sConsulta := '';
  sSelect := '';
  State := dmsPesquisando;
  bSkip := False;

  {Pesquisar: Iniciar}
  if Assigned( DMComponent.Pesquisar1_Iniciar ) then
    DMComponent.Pesquisar1_Iniciar( Self, sSelect, sWhere, bSkip );

  if bSkip then begin
    State := dmsNormal;
    exit;
  end;

  if (sSelect = '') and (sWhere = '') then
    SelectFinal := sSelectPadrao
  else if (sSelect = '') and (sWhere <> '') then begin
    SelectFinal := uppercase(sSelectPadrao);
    if pos('ORDER',SelectFinal) > 0 then
      SelectFinal := Copy(SelectFinal,1,pos('ORDER',SelectFinal)-1);
    if copy(DMComponent.WhereVazio,1,5) = 'where' then
      SelectFinal := SelectFinal + sWhere
    else if Pos('WHERE',SelectFinal) > 0 then
      SelectFinal := SelectFinal + ' and ' + copy(sWhere,7,450)
    else
      SelectFinal := SelectFinal + sWhere;
    end
  else
    SelectFinal := sSelect;

  {Pesquisar: SQL}
  if Assigned( DMComponent.Pesquisar2_SQLFinal ) then
    DMComponent.Pesquisar2_SQLFinal( Self, SelectFinal );

  C_Tabela.Close;
  C_Tabela.CommandText := SelectFinal;

  if Assigned( DMComponent.Pesquisar3_Params ) then
    DMComponent.Pesquisar3_Params( Self, SelectFinal, C_Tabela );

  {Capiturando a quantidade total da pesquisa
  QtdFrom := ContaStrings(UpperCase(SelectFinal),'FROM');
  SelectCount := 'Select Count(*) as QtdConsulta From ' + SeparaStrings(SelectFinal,'FROM',QtdFrom);
  with DMProject.Q_SQL do begin
    Close;
    SQL.Text := SelectCount;
    try
      Open;
      nQtdReg := FieldByName('QtdConsulta').asInteger;
    except
    end;
    Close;
  end;

  if DMComponent.EnableFastSearch and (nQtdReg > 200) and (C_Tabela.PacketRecords < 0) then begin
    C_Tabela.PacketRecords := 30;
  end;
  }
  try
    //BarPosition(0, nQtdReg);
    C_Tabela.Open;
    result := C_Tabela.RecordCount;

    sStartPerformance := sStartPerformance + Format('[%s] - Finalizando Método Localizar', [TimeToStr(Now)])+#13;

    if result > 0 then begin
      sConsulta := SelectFinal;

      {Pesquisar: Terminar}
      if Assigned( DMComponent.Pesquisar4_Dados) then
        DMComponent.Pesquisar4_Dados( Self );

    end;
  except
    on e : Exception do begin
      result := -1;

      sUltimoErroPesquisa := e.Message;

      //DlgMsg.ShowMsg(24,e.Message,[SelectFinal]);
      DMProject.GeraLog('Pesquisa', e.message );

      exit;
    end;
  end;
  State := dmsNormal;

end;

Function TDMPRincipioAtivo.Excluir : boolean;
var
  bSkip : Boolean;
  i, nOp : Integer;
  sCampo, sTabela: String;
begin
  result := false;
  try
    if C_Tabela.FindField('DESATIVADO') <> nil then begin
      if C_Tabela.FieldByName('Desativado').asString = 'S' then begin
        DlgMsg.ShowMsg(47);
        exit;
      end;
    end;

    {Validando o Delete}
    DMComponent.Tag := IIF(C_Tabela.FindField('DESATIVADO') <> nil, 48, 49);

    if DMComponent.DeleteValidate.Text <> '' then begin
      {Para cada linha verificar se a chave corrente existe para o campo informado na tabela}
      for i := 0 to DMComponent.DeleteValidate.Count - 1 do begin
        sTabela := trim(SeparaStrings(DMComponent.DeleteValidate[i],'=',1));
        sCampo  := trim(SeparaStrings(DMComponent.DeleteValidate[i],'=',2));


        with DMProject.Q_SQL do begin
          Close;
          SQL.Text := 'Select Count(*) as Qtd from '+sTabela+' where '+sCampo+' = ';
          if C_Tabela.FieldByName(sKeyAlias).DataType = ftString then
            SQL.Text := SQL.Text + QuotedStr(C_Tabela.FieldByName(sKeyAlias).asString)
          else
            SQL.Text := SQL.Text + C_Tabela.FieldByName(sKeyAlias).AsString;

          Open;

          if FieldByName('Qtd').asInteger > 0 then begin
            Close;
            nOp := DlgMsg.ShowMsg(DMComponent.Tag);
            if (DMComponent.Tag = 48) and (nOp = 100) then begin
              if C_Tabela.State = dsBrowse then
                C_Tabela.Edit;

              try
                bSkip := True;
                if Assigned(DMComponent.AntesDeDesativar) then
                  DMComponent.AntesDeDesativar(self, bSkip); //CanDelete

                if not bSkip then
                  exit;

                bExcluindo := True;
                C_Tabela.FieldByName('Desativado').asString := 'S';
                Gravar;
              finally
                bExcluindo := False;
              end;
              Exit;
              end
            else if (DMComponent.Tag = 49) or (DMComponent.Tag = 48) then begin
              Exit;
            end;
          end;
          Close;
        end;
      end;  //For
    end;

    bSkip := True;
    if Assigned(DMComponent.AntesDeApagar) then
      DMComponent.AntesDeApagar(self, bSkip); //CanDelete

    if not bSkip then
      exit;

    {Exclusão}
    bSkip := false;
    if Assigned( DMComponent.Exclusao ) then
      DMComponent.Exclusao( Self, bSkip );

    if bSkip then
      exit;

    // Excluir: Antes de Apagar (Apply)
    if Assigned( DMComponent.Apagar_AntesApply ) then
      DMComponent.Apagar_AntesApply( self );

    {Executando Deletes}
    if DMComponent.MestreDetalhe then begin
      For i := 0 to length(DetailDataSets) - 1 do begin
        TClientDataSet(DetailDataSets[i]).Filtered := false;
        TClientDataSet(DetailDataSets[i]).First;
        while not TClientDataSet(DetailDataSets[i]).EOF do
          TClientDataSet(DetailDataSets[i]).Delete;
      end;
    end;

    C_Tabela.Delete;

    if not DMProject.DB_Projeto.DefaultTransaction.InTransaction then
      DMProject.DB_Projeto.DefaultTransaction.StartTransaction;

    if C_Tabela.ChangeCount > 0 then begin
      if not ApplyUpdateExecute then begin
        State := dmsNormal;
        exit;
      end;
    end;

    if DMProject.DB_Projeto.DefaultTransaction.InTransaction then
      DMProject.DB_Projeto.DefaultTransaction.Commit;

    //Excluir: Após Commit
    if Assigned( DMComponent.Apagar_AposCommit ) then
      DMComponent.Apagar_AposCommit( self );

    result := true;
  except
    on E : Exception do begin
      C_Tabela.CancelUpdates;
      DlgMsg.ShowMsg(DMComponent.MsgErroExclusao, e.Message, '');
    end;
  end;
end;

function TDMPRincipioAtivo.Gravar: boolean;
  procedure PostarQuerys;
  var  i : integer;
  begin
    for i := 0 to ComponentCount - 1 do begin
      if (Components[i] is TClientDataSet) and {(Components[i].name <> 'C_Tabela') and }
         (TClientDataSet(Components[i]).State in [dsEdit,dsInsert]) then begin

        try
          TClientDataSet(Components[i]).Post;
        except
          on E:Exception do
          	showmessage(e.message);
        end;

      end;
    end;
  end;

{Gravar}
var
  sCampo, sMsg : string;
  i : Integer;
  bSkip: boolean;
begin
  result := false;
  bSkip := False;

  if not bExcluindo and (C_Tabela.FindField('DESATIVADO') <> nil) then begin
    if C_Tabela.FieldByName('Desativado').asString = 'S' then begin
      DlgMsg.ShowMsg(39);
      exit;
    end;
  end;


  State := dmsGravando;
  try

    if C_Tabela.State in [dsEdit,dsInsert] then
    	C_Tabela.UpdateRecord;

    {Gravar: Iniciar}
    if Assigned( DMComponent.Gravar1_Iniciar ) then
      DMComponent.Gravar1_Iniciar( self, bSkip );

    if bSkip then begin
      State := dmsNormal;
      exit;
    end;
    {Postando todos os querys}

    PostarQuerys;

    if (sKeyForIDs <> 'NOID') and not bAlteracao and (ContaStrings(sKeyAlias,';') = 1) then begin
      GenerateIDs(C_Tabela, sKeyAlias );
    end;

    {Gerando IDs para outros querys}
    if DMComponent.GenerateIDFor.Text <> '' then begin
      For i := 0 to DMComponent.GenerateIDFor.Count - 1 do begin
        sCampo := SeparaStrings(DMComponent.GenerateIDFor[i],'=',1);
        if sCampo <> '' then begin
          GenerateIDs(TClientDataSet(DataSetPointer( trim(sCampo) )), Trim(DMComponent.GenerateIDFor.Values[sCampo]) );
        end;
      end;
    end;

    if not DMProject.DB_Projeto.DefaultTransaction.InTransaction then
      DMProject.DB_Projeto.DefaultTransaction.StartTransaction;


    if C_Tabela.ChangeCount > 0 then begin

      {*** PROBLEMA ENCONTRADO ***}
      {Mesmo comentando o Changecount acima, a operacao nao é gravada
      (para o usuário) mas internamente tudo já está gravado.  Fiz este
      teste utilizando a tela de VendaRapida, colocando um raise exception
      na funcao gravar de DlgInplacePgto.  Esta funcao é chamada no evento
      GravarAposApply, a mensagem de erro aparece como se nada tivesse sido
      gravado, contudo, as tabelas de saidas, saidasitens, titulosareceber,
      etc. foram gravadas, apenas o recebimento nao foi.  O mais interessante
      é que em cada erro, o rollback abaixo é executado, mas é como se não
      fizesse efeito.  De uma estudada nisto você também, isto é muito perigoso
      para a integridade dos dados, principalmente nas telas de vendas que usam
      muito o GravarAposApply para complementar controles referente a operacao.
      Já testei retirar a chamada ao ApplyUpdatesExecute e colocando a chamada
      ao metodo C_Tabela.ApplyUpdates(0) mas não funcionou.  Depois tive a ideia
      de colocar a chamada de "DMComponent.Gravar3_AposApply( self )" no evento
      AfterApplyUpdates para tentar fazer com que o próprio clientdataset abortasse
      a gravação, mas não foi bem sucedido, qualquer que seja o caso, dados ficam
      Parcialmente Gravados.  Isto é um problema sério. Se comentarmos a verificacao
      do changecount, fica dando um erro de Delta is empty ao gravarmos um cadastro
      sem modificarmos nada.

      {Gravar: AposIDS_Tabela}
      if Assigned( DMComponent.Gravar2_AposIDS_Tabela ) then
        DMComponent.Gravar2_AposIDS_Tabela( self );

      if not ApplyUpdateExecute then begin
        State := dmsNormal;
        raise Exception.Create('@@');
        exit;
      end;

      {Gravar: AposUpdates}
      if Assigned( DMComponent.Gravar3_AposApply ) then
        DMComponent.Gravar3_AposApply( self );
    end;

    if DMProject.DB_Projeto.DefaultTransaction.InTransaction then
      DMProject.DB_Projeto.DefaultTransaction.Commit;

    {Gravar: Após Commit}
    if Assigned( DMComponent.Gravar4_AposCommit ) then
      DMComponent.Gravar4_AposCommit( self );

    if DMComponent.AutoSaveToFile and
       FileExists(DMProject.ProgPath+DMProject.Maquina+Self.Name + '.sav') then begin
      DeleteFile( DMProject.ProgPath+DMProject.Maquina+Self.Name + '.sav' );
    end;

    result := true;
  except
    On e:Exception do begin
      if DMProject.DB_Projeto.DefaultTransaction.InTransaction then
        DMProject.DB_Projeto.DefaultTransaction.RollbackRetaining ;

      State := dmsNormal;

      if e.message <> '' then begin
        if pos('must have a value',e.message) > 0 then begin
          sCampo := copy(e.message, pos('Field',e.message)+5,50);
          sCampo := copy(sCampo,1,pos(' must',sCampo));
          DlgMsg.ShowMsg(5,e.Message,[sCampo]);
          end
        else
          DlgMsg.ShowMsg(DMComponent.MsgErroGravacao,e.message, '');
      end;   
    end;
  end;
  State := dmsNormal;

  C_Tabela.Edit;

  {Gravar: Terminar}
  if Assigned( DMComponent.Gravar5_Terminar ) then
    DMComponent.Gravar5_Terminar( self );

end;

Function TDMPRincipioAtivo.ApplyUpdateExecute;
var
  Delta, Results, OwnerData: OleVariant;
  ErrorCount: Integer;
  StatusMsg : String;
begin
  result := true;
  ErrorCount := C_Tabela.ApplyUpdates(0);
  result := ErrorCount = 0;


{  result := false;

  ErrorCount := C_Tabela.ApplyUpdates(0);

  if ErrorCount = 0 then
    result := true
  else
    raise Exception.Create('Ocorreu um Erro! Tente Novamente');}

{  C_Tabela.CheckBrowseMode;
  Delta := C_Tabela.Delta;
  Results := C_Tabela.AppServer.AS_ApplyUpdates('', Delta, 0, ErrorCount, OwnerData);
  ResultSet.Data := Results;
  C_Tabela.Reconcile(Results);

  if Errorcount > 0 then begin
    StatusMsg := Format('%d errors during update! Try again.', [ErrorCount]);
    ShowMessage(StatusMsg);
    end
  else
    result := true;}
end;

procedure TDMPRincipioAtivo.Refresh;
begin
  {On Refresh}
  if Assigned( DMComponent.OnRefresh ) then
    DMComponent.OnRefresh( self, aLastDataObject );

  Inherited Refresh( aLastDataObject, RefreshList );

end;

procedure TDMPRincipioAtivo.C_TabelaAfterPost(DataSet: TDataSet);
begin
  inherited;
  try
    if DMComponent.AutoSaveToFile and not bAlteracao then begin
      C_Tabela.SaveToFile(DMProject.ProgPath +
                              DMProject.Maquina +
                              Self.Name + '.sav', dfBinary );
    end;
  except
  end;
end;

procedure TDMPRincipioAtivo.AfterDetailPost(DataSet: TDataSet);
var
  i, nDSIndex : Integer;
begin
  try
    if DMComponent.AutoSaveToFile and not bAlteracao then begin
      nDSIndex := -1;
      if Length(DetailAfterPostDS) > 0 then begin
        for i := 0 to Length(DetailAfterPostDS) - 1 do
          if DetailAfterPostDS[i] = DataSet.Name then
            nDSIndex := i;

      end;

      if nDSIndex >= 0 then
        DetailAfterPostEV[nDSIndex](DataSet);

      try
        if C_Tabela.State in [dsInsert, dsEdit] then C_Tabela.Post;
      except
      end;
      C_Tabela.SaveToFile(DMProject.ProgPath +
                              DMProject.Maquina +
                              Self.Name + '.sav', dfBinary );
      C_Tabela.Edit;
    end;
  except
  end;
end;

procedure TDMPRincipioAtivo.C_TabelaNewRecord(DataSet: TDataSet);
var
  i : Integer;
  C : String;
begin
  inherited;

  C_Tabela.AutoCalcFields := false;   //Será setado true no modo_inclusao.

  if Assigned(C_Tabela.OnCalcFields) then begin
    aCalcFields := C_Tabela.OnCalcFields;
    C_Tabela.OnCalcFields := nil;
  end;

  {Chave padrão}
  if sKeyAlias <> '' then begin
    for i := 1 to ContaStrings(sKeyAlias,';') do begin
      C := SeparaStrings(sKeyAlias,';',i);

      if C_Tabela.FieldByName(C).DataType = ftInteger then
        C_Tabela.FieldByName(C).asInteger := -8888
      else if C_Tabela.FieldByName(C).DataType = ftString then
        C_Tabela.FieldByName(C).asString  := ' ';

    end;
  end;



end;


procedure TDMPRincipioAtivo.SaveToFile;
begin
  try
    C_Tabela.Post;
  except
  end;
  C_Tabela.SaveToFile(DMProject.ProgPath +
                          DMProject.Maquina +
                          Self.Name + '.sav', dfBinary );
  C_Tabela.Edit;
end;

procedure TDMPRincipioAtivo.LoadFromFile;
begin
  try
    C_Tabela.LoadFromFile(DMProject.ProgPath +
                              DMProject.Maquina +
                              Self.Name + '.sav') ;
    C_Tabela.CheckBrowseMode;
  except
  end;
end;



function TDMPRincipioAtivo.Importar;
var
  nID, D: Integer;
  Delta, Results, OwnerData: OleVariant;
  ErrorCount: Integer;
  StatusMsg : String;
  UpdateSQL, Ins : String;
  Q : TIBQuery;
  bApagarCampos : boolean;
begin
  result := 0;

  OpenDialog.InitialDir := DMProject.ProgPath;
  OpenDialog.FileName := AllTrim(FileName) + '.exp';

  if OpenDialog.Execute then begin
    Q := TIBQuery.Create(self);
    Q.DataBase := DMProject.DB_Projeto;
    Q.Transaction := DMProject.IBT_Projeto;
    nID := DMProject.NextID('IMPORT_EXPORT');

    try
      {Verificando se o DataModule está preparado para a Importação}
      AjustarQuerysExport(nID);

      C_Tabela.Close;
      C_Tabela.LoadFromFile(OpenDialog.FileName);
      C_Tabela.CheckBrowseMode;

      C_Tabela.First;
      While not C_Tabela.EOF do begin
        C_Tabela.Edit;
        C_Tabela.FieldByName('Importacao').asInteger := nID;
        C_Tabela.Post;

        For D := 0 to Length( DetailDataSets ) - 1 do begin
          TClientDataSet(DetailDataSets[D]).First;
          While not TClientDataSet(DetailDataSets[D]).EOF do begin
            TClientDataSet(DetailDataSets[D]).Edit;
            TClientDataSet(DetailDataSets[D]).FieldByName('Importacao').asInteger := nID;
            TClientDataSet(DetailDataSets[D]).Post;
            TClientDataSet(DetailDataSets[D]).Next;
          end;
        end;

        if C_Tabela.State <> dsBrowse then
          C_Tabela.Post;
        C_Tabela.Next;
      end;

      {Verificando se o Campo Importacao está no Update}
      Ins := UpperCase(TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text);
      if pos('IMPORTACAO',Ins) = 0 then
        Ins := replace(Ins,'WHERE', ',IMPORTACAO = :IMPORTACAO WHERE ');

      TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text := Ins;

      For D := 0 to ComponentCount - 1 do
        if (Components[d] is TIBQuery) and
           (Components[d].Name <> 'Q_Tabela') and
           (TIBQuery(Components[d]).DataSource = Q_MasterDS) then begin
          Ins := UpperCase(TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).ModifySQL.Text);
          if pos('IMPORTACAO',Ins) = 0 then
            Ins := replace(Ins,'WHERE', ',IMPORTACAO = :IMPORTACAO WHERE ');

          TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text := Ins;
        end; //if


      C_Tabela.CheckBrowseMode;
      Delta := C_Tabela.Delta;
      {Executando Updates}
      Results := C_Tabela.AppServer.AS_ApplyUpdates('', Delta, -1, ErrorCount, OwnerData);
      ResultSet.Data := Results;
      //C_Tabela.Reconcile(Results);

      {Executando Inserts}
      if Results <> null then begin
        {Salvando Updates e trocando por inserts}
        UpdateSQL := TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text;
        TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text := TIBUpdateSQL(Q_Tabela.UpdateObject).InsertSQL.Text;
        TIBUpdateSQL(Q_Tabela.UpdateObject).InsertSQL.Text := UpdateSQL;

        Ins := UpperCase(TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text);
        if pos('IMPORTACAO',Ins) = 0 then
          Ins := replace(SeparaStrings(Ins,'VALUES',1), ')', ',IMPORTACAO)')+
                 ' VALUES '+
                 replace(SeparaStrings(Ins,'VALUES',2), ')', ',:IMPORTACAO)');

        TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text := Ins;

        For D := 0 to ComponentCount - 1 do
          if (Components[d] is TIBQuery) and
             (Components[d].Name <> 'Q_Tabela') and
             (TIBQuery(Components[d]).DataSource = Q_MasterDS) then begin
            UpdateSQL := TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).ModifySQL.Text;
            TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).ModifySQL.Text :=
                     TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).InsertSQL.Text;
            TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).InsertSQL.Text := UpdateSQL;

            Ins := UpperCase(TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).ModifySQL.Text);
            if pos('IMPORTACAO',Ins) = 0 then
              Ins := replace(SeparaStrings(Ins,'VALUES',1), ')', ',IMPORTACAO)')+
                     ' VALUES '+
                     replace(SeparaStrings(Ins,'VALUES',2), ')', ',:IMPORTACAO)');

            TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).ModifySQL.Text := Ins;
          end; //if

        {Vai executar inserçao}
        C_Tabela.CheckBrowseMode;
        Delta := C_Tabela.Delta;
        Results := C_Tabela.AppServer.AS_ApplyUpdates('', Delta, -1, ErrorCount, OwnerData);

        {Restaurando Updates e trocando por inserts}
        UpdateSQL := TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text;
        TIBUpdateSQL(Q_Tabela.UpdateObject).ModifySQL.Text := TIBUpdateSQL(Q_Tabela.UpdateObject).InsertSQL.Text;
        TIBUpdateSQL(Q_Tabela.UpdateObject).InsertSQL.Text := UpdateSQL;
        For D := 0 to ComponentCount - 1 do
          if (Components[d] is TIBQuery) and
             (Components[d].Name <> 'Q_Tabela') and
             (TIBQuery(Components[d]).DataSource = Q_MasterDS) then begin
            UpdateSQL := TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).ModifySQL.Text;
            TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).ModifySQL.Text :=
                     TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).InsertSQL.Text;
            TIBUpdateSQL(TIBQuery(Components[d]).UpdateObject).InsertSQL.Text := UpdateSQL;
          end; //if
      end;

      with Q do begin
        Close;
        SQL.Text := 'Insert into ImportControl (ID, Usuario, Tabela, Cadastro, Tipo) '+
                    'Values (:ID, :User, :Tab, :Cad, :Tipo) ';
        Params[0].asInteger := nID;
        Params[1].asString  := DMProject.sLoginName;
        Params[2].asString  := DMComponent.Tabela_Nome;
        Params[3].asString  := FileName;
        Params[4].asString  := 'I';
        ExecSQL;
      end;

      if DMProject.DB_Projeto.DefaultTransaction.InTransaction then
        DMProject.DB_Projeto.DefaultTransaction.Commit;

      ShowMessage('Arquivo Importado / File Imported!');

      {if bApagarCampos then begin
        FecharDataSets;
        C_Tabela.Fields.Remove(C_Tabela.FindField('IMPORTACAO'));
      end;}

      result := nID;
    except
    end;
  end;


end;

procedure TDMPRincipioAtivo.Exportar;
var
  bDados : Boolean;
begin

  SaveDialog.InitialDir := DMProject.ProgPath;
  SaveDialog.FileName := AllTrim(FileName) + '.exp';

  if SaveDialog.Execute then begin
    bDados := C_Tabela.RecordCount > 0;

    if AjustarQuerysExport(DMProject.NextID('IMPORT_EXPORT')) and bDados then begin
      ShowMessage('A tela foi ajustada para suportar exportação, pesquise novamente!');
      exit;
    end;

    if C_Tabela.RecordCount = 0 then
      Localizar('','where DTMODIFICACAO > (select max(Data) from ImportControl where Tipo = ''I'' and Tabela = '+DMComponent.Tabela_Nome+') ')
    else if Selecionados <> '' then
      Localizar('','where '+DMComponent.Tabela_Chave+' in ('+Selecionados+') ');

    try
      if C_Tabela.State <> dsBrowse then
        C_Tabela.Post;
    except
    end;

    C_Tabela.SaveToFile(SaveDialog.FileName, dfBinary );

    ShowMessage('Arquivo Exportado / File Exported!');

    C_Tabela.Edit;
  end;

end;

function TDMPRincipioAtivo.AjustarQuerysExport;
  Function DetailTableName( ClientDSName : String ) : String;
  begin
    ClientDSName := replace(ClientDSName, 'C_', '', true);
    if FindComponent('U_'+ClientDSName) <> nil then begin
      result := SeparaStrings(uppercase(TIBUpdateSQL(FindComponent('U_'+ClientDSName)).InsertSQL[0]), ' INTO ', 2);
      result := trim(result);
      end
    else
      result := '';
  end;

  procedure CriarCampoImportacao(Tabela : String);
  var T : TIBQuery;
  begin
    T := TIBQuery.Create(self);
    with T do begin
      DataBase := DMProject.DB_Projeto;
      Transaction := DMProject.IBT_Projeto;
      Close;
      SQL.Text := 'Select * from '+Tabela; //para pegar a lista de campos (só traz um registro)
      Open;
      if FindField('IMPORTACAO') = nil then begin
        Close;
        SQL.Text := 'Alter Table '+Tabela+' ADD IMPORTACAO INTEGER_DOMAIN ';
        try
          ExecSQL;
          DMProject.DB_Projeto.DefaultTransaction.Commit;
        except
        end;
      end;

      Close;
    end;

    t.Free;
  end;

  procedure CriarCampoModificacao(Tabela : String);
  var T : TIBQuery;
  begin
    T := TIBQuery.Create(self);
    with T do begin
      DataBase := DMProject.DB_Projeto;
      Transaction := DMProject.IBT_Projeto;
      Close;
      SQL.Text := 'Select * from '+Tabela; //para pegar a lista de campos (só traz um registro)
      Open;
      if (FindField('DTMODIFICACAO') = nil) and (FindField('IMPORTACAO') <> NIL) then begin
        Close;
        SQL.Text := 'Alter Table '+Tabela+' ADD DTMODIFICACAO HORA_E_DATA ';
        try
          ExecSQL;
          DMProject.DB_Projeto.DefaultTransaction.Commit;
        except
        end;
        {Trigger - Insert}
        Close;
        SQL.Text := 'CREATE TRIGGER '+Tabela+'_BI10 FOR '+Tabela+' '+
                    'ACTIVE BEFORE INSERT POSITION 10 as '+
                    'begin '+
                    '  new.dtmodificacao = current_timestamp; '+
                    'end ';
        try
          ExecSQL;
          DMProject.DB_Projeto.DefaultTransaction.Commit;
        except
        end;
        {Trigger - Update}
        Close;
        SQL.Text := 'CREATE TRIGGER '+Tabela+'_BU10 FOR '+Tabela+' '+
                    'ACTIVE BEFORE UPDATE POSITION 10 as '+
                    'begin '+
                    '  new.dtmodificacao = current_timestamp; '+
                    'end ';
        try
          ExecSQL;
          DMProject.DB_Projeto.DefaultTransaction.Commit;
        except
        end;

      end;

      Close;
    end;

    t.Free;
  end;

  Function CorrigirSQL(ClientDSName, Tabela : String) : Boolean;
  var T, xMQ : TIBQuery;
      s, SelectList, SelectFrom, TableAlias, st : String;
      NextWord : TStringList;  z : Integer;
  begin
    result := false;
    ClientDSName := Replace(ClientDSName, 'C_', 'Q_', true);
    xMQ := TIBQuery(FindComponent(ClientDSName));
    if xMQ = nil then
      exit;

    {Capturando o comando SQL da tela}
    s := xMQ.SQL.Text;

    {Capturando o Select List}
    SelectList := trim(replace(SeparaStrings(UpperCase(s),'FROM',1), 'Select', ''));
    {Capturando trecho após o from}
    SelectFrom := SeparaStrings(UpperCase(s),'FROM',2);

    {Capturando o Alias da tabela principal}
    TableAlias := SeparaStrings(UpperCase(SelectFrom), UpperCase(Tabela) ,2);
    if trim(TableAlias) <> '' then begin
      TableAlias := Trim(TableAlias);
      if TableAlias[1] in [',',#13,#10]  then
        TableAlias := ''
      else begin
        TableAlias := replace(TableAlias, ' ', #13);
        NextWord := TStringList.Create;
        NextWord.SetText(PChar(TableAlias));
        {Varrendo até achar a primeira palavra}
        TableAlias := '';
        for z := 0 to NextWord.Count - 1 do begin
          TableAlias := UpperCase(NextWord[z]);
          if (TableAlias <> '') then
            break;
        end;
        NextWord.Free;

        if (TableAlias = 'JOIN') or (TableAlias = 'INNER') or (TableAlias = 'LEFT') or
           (TableAlias = 'WHERE') then
          TableAlias := ''
        else
          TableAlias := replace(TableAlias, ',', '');
      end;
    end;

    {Verificando se o SQL da tela já está trazendo o campo importação que existe na tabela principal}
    s := uppercase(s);
    {if pos('WHERE', s) > 0 then
      s := Copy(s,1,pos('WHERE',s)-1);}
    T := TIBQuery.Create(self);
    with T do begin
      DataBase := DMProject.DB_Projeto;
      Transaction := DMProject.IBT_Projeto;
      Close;
      SQL.Text := s;
      Open;
      if (FindField('IMPORTACAO') = nil) and not ((SelectList = '*') and (TableAlias = '')) then begin
        Close;
        s := 'SELECT '+SelectList + ', '+ CExp(TableAlias, '.') + 'IMPORTACAO ' + ' FROM ' + SelectFrom;
        xMQ.SQL.Text := s;
        result := true;
      end;
      Close;
    end;
    t.Free;


  end;

var
  bApagarCampos : Boolean;
  F : TField;
  D : Integer;

begin
  result := false;

  if C_Tabela.FindField('IMPORTACAO') = nil then begin
    FecharDataSets;

    {Criando o campo Importação em C_Tabela}
    F := TIntegerField.Create(C_Tabela);
    TField(F).FieldName := 'IMPORTACAO';
    TField(F).Name      := 'C_Tabela'+TField(F).FieldName+IntToStr(nIDImportExport);
    TField(F).Index     := C_Tabela.FieldCount;
    TField(F).FieldKind := fkData;
    TField(F).DataSet   := C_Tabela;
    TField(F).Visible   := False;

    {Verificando se o Select permite que o campo Importação seja visto e atualizado}
    bApagarCampos := CorrigirSQL('C_Tabela', DMComponent.Tabela_Nome);

    {Criando Campo na Tabela}
    CriarCampoImportacao(DMComponent.Tabela_Nome);
    CriarCampoModificacao(DMComponent.Tabela_Nome);

    {Criando o campo Importação em DetailDataSets}
    For D := 0 to Length( DetailDataSets ) - 1 do begin
      if TClientDataSet(DetailDataSets[D]).FindField('IMPORTACAO') <> nil then
        Continue;

      F := TIntegerField.Create(TClientDataSet(DetailDataSets[D]));
      TField(F).FieldName := 'IMPORTACAO';
      TField(F).Name      := TClientDataSet(DetailDataSets[D]).Name+TField(F).FieldName+IntToStr(nID);
      TField(F).Index     := TClientDataSet(DetailDataSets[D]).FieldCount;
      TField(F).FieldKind := fkData;
      TField(F).DataSet   := TClientDataSet(DetailDataSets[D]);
      TField(F).Visible   := False;

      {Criando o campo na Tabela}
      CriarCampoImportacao(DetailTableName(TClientDataSet(DetailDataSets[D]).Name));

    end;

    result := true; //ajustes foram realizados, provavelmente os datasets estão fechados;

  end;

end;



procedure TDMPRincipioAtivo.DataModuleCreate(Sender: TObject);
var
  i, f : Integer;
begin
  sStartPerformance := Format('[%s] - Criando o DataModule', [TimeToStr(Now)])+#13;

  inherited;

  sStartPerformance := sStartPerformance + Format('[%s] - DataModule Criado', [TimeToStr(Now)])+#13;

  if Q_Tabela.DataBase = nil then begin
    Q_Tabela.DataBase := DMProject.DB_Projeto;
    Q_Tabela.Transaction := DMProject.DB_Projeto.DefaultTransaction;
  end;

  {Definindo displayformat e Editmask de Números e Datas}
  for i := 0 to ComponentCount - 1 do begin
    if (Components[i] is TClientDataSet) then begin
      for f := 0 to TClientDataSet(Components[i]).FieldCount - 1 do begin
        if (TClientDataSet(Components[i]).Fields[f] is TNumericField) and (not
           (TClientDataSet(Components[i]).Fields[f] is TIntegerField)) and
           ((TClientDataSet(Components[i]).Fields[f] as TNumericField).DisplayFormat = '') then begin
          TNumericField(TClientDataSet(Components[i]).Fields[f]).DisplayFormat := '#,###,##0.00';
          TNumericField(TClientDataSet(Components[i]).Fields[f]).EditFormat    := '######0.00';
        end;

        if (TClientDataSet(Components[i]).Fields[f] is TDateField) then begin
          if (TDateField(TClientDataSet(Components[i]).Fields[f]).DisplayFormat = '') then
            (TClientDataSet(Components[i]).Fields[f] as TDateField).DisplayFormat := ShortDateFormat;

          (TClientDataSet(Components[i]).Fields[f] as TDateField).EditMask := '99/99/9999;1; ';
        end;
      end;
    end;

  end;

  sStartPerformance := sStartPerformance + Format('[%s] - Componentes de Data e Valor revisados', [TimeToStr(Now)])+#13;

end;

procedure TDMPRincipioAtivo.C_TabelaReconcileError(
  DataSet: TCustomClientDataSet; E: EReconcileError;
  UpdateKind: TUpdateKind; var Action: TReconcileAction);
var
  Msg : String;
begin
  inherited;

//  else if e.ErrorCode = 64733 then
//  	DlgMsg.ShowMsg(82,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name)

  if e.ErrorCode = 74 then
    Action := raCorrect
  else begin

  if e.ErrorCode = 65330 then
  	DlgMsg.ShowMsg(80,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name, '')
  else if e.ErrorCode = 65432 then
  	DlgMsg.ShowMsg(81,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name, '')
  else if e.ErrorCode = 64732 then
  	DlgMsg.ShowMsg(83,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name, '')
  else
  	DlgMsg.ShowMsg(84,e.Message+#13+IntToStr(e.ErrorCode)+#13+DataSet.Name, '');

{  if e.ErrorCode = 64733 then begin  //Key Violation
    //DMProject.CorrectIDForTable( sTable, sKey );

    bKeyViolation := true;

    DlgMsg.ShowMsg(82);

    Action := raAbort;
  end else
    Action := raMerge;}
  Action := raAbort;
end;
end;


procedure TDMPRincipioAtivo.C_TabelaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  sStartPerformance := sStartPerformance + Format('[%s] - Após Evento AfterOpen C_Tabela', [TimeToStr(Now)])+#13;
end;

procedure TDMPRincipioAtivo.C_TabelaAfterClose(DataSet: TDataSet);
begin
  inherited;
  sStartPerformance := sStartPerformance + Format('[%s] - Após Evento AfterClose C_Tabela', [TimeToStr(Now)])+#13;
end;

procedure TDMPRincipioAtivo.SuspendEvents;
var
  i, Index : Integer;
begin
  Index := 0;

  for i := 0 to componentcount - 1 do begin
    if Components[i] is TClientDataSet then begin
      if Assigned(C_Tabela.OnCalcFields) then begin
        inc(Index);
        SetLength(EventList, Index);
        SetLength(EventListIndex, Index);
        EventList[Index - 1] := C_Tabela.OnCalcFields;
        EventListIndex[Index - 1] := CExp(EventListIndex[Index - 1],';') + uppercase(TClientDataSet(Components[i]).Name)+ ':CF';
        C_Tabela.OnCalcFields := nil;
      end;
      if Assigned(C_Tabela.BeforeScroll) then begin
        inc(Index);
        SetLength(EventList, Index);
        SetLength(EventListIndex, Index);
        EventList[Index - 1] := C_Tabela.BeforeScroll;
        EventListIndex[Index - 1] := CExp(EventListIndex[Index - 1],';') + uppercase(TClientDataSet(Components[i]).Name)+':BS';
        C_Tabela.BeforeScroll := nil;
      end;
      if Assigned(C_Tabela.AfterScroll) then begin
        inc(Index);
        SetLength(EventList, Index);
        SetLength(EventListIndex, Index);
        EventList[Index - 1] := C_Tabela.AfterScroll;
        EventListIndex[Index - 1] := CExp(EventListIndex[Index - 1],';') + uppercase(TClientDataSet(Components[i]).Name)+':AS';
        C_Tabela.AfterScroll := nil;
      end;
    end;
  end;

end;

procedure TDMPRincipioAtivo.RestoreEvents;
var
  i : Integer;
  TmpDS : TClientDataSet;
begin

  if length(EventList) <= 0 then
    exit;

  for i := 0 to length(EventList) - 1 do begin
    TmpDS := TClientDataSet(FindComponent( SeparaStrings( EventListIndex[i], ':', 1 ) ));

    if TmpDS <> nil then begin
      if pos(':CF', EventListIndex[i]) > 0 then
        C_Tabela.OnCalcFields := EventList[i];

      if pos(':BS', EventListIndex[i]) > 0 then
        C_Tabela.BeforeScroll := EventList[i];

      if pos(':AS', EventListIndex[i]) > 0 then
        C_Tabela.AfterScroll := EventList[i];

    end;

    TmpDS := nil;

  end;

  SetLength( EventList, 0);
  SetLength( EventListIndex, 0);

end;


procedure TDMPRincipioAtivo.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  //Colocar aqui a Solicitação da Contra Senha.
end;

Initialization
  RegisterClass(TDMPRincipioAtivo);


Finalization
  unRegisterClass(TDMPRincipioAtivo);


end.




