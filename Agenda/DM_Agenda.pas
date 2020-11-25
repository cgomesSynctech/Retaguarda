unit DM_Agenda;
//Teste de modificção
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DBClient, IBSQL, dxfProgressBar, Db, IBCustomDataSet, IBQuery,
  Provider, ImgList, IBEvents;

type
  TDMAgenda = class(TDataModule)
    C_Usuarios: TClientDataSet;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosPERFIL: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    C_UsuariosLOGINPASS: TStringField;
    C_UsuariosIDIOMA: TIntegerField;
    C_UsuariosINTERVALO_MINUTOS: TIntegerField;
    C_UsuariosHORA_INI: TIntegerField;
    C_UsuariosHORA_FIM: TIntegerField;
    C_UsuariosRECADOS_TIMER: TIntegerField;
    C_UsuariosEMAIL: TStringField;
    C_UsuariosDESATIVADO: TStringField;
    C_UsuariosFORMATO_HORA: TStringField;
    C_UsuariosProvider: TDataSetProvider;
    Q_Usuarios: TIBQuery;
    C_UsuariosDS: TDataSource;
    C_UsuariosDESCONTOMAXIMO: TBCDField;
    C_CategoriasDS: TDataSource;
    C_Categorias: TClientDataSet;
    C_CategoriasCATEGORIA: TIntegerField;
    C_CategoriasDESCRICAO: TStringField;
    C_CategoriasCOR: TStringField;
    C_CategoriasCOR_FONTE: TStringField;
    C_CategoriasProvider: TDataSetProvider;
    Q_Categorias: TIBQuery;
    Q_Tarefas: TIBQuery;
    C_TarefasProvider: TDataSetProvider;
    C_Tarefas: TClientDataSet;
    C_TarefasTAREFA: TIntegerField;
    C_TarefasDESCRICAO: TStringField;
    C_TarefasDS: TDataSource;
    C_Usuarios_icSelecionado: TIntegerField;
    C_Categorias_icSelecionado: TIntegerField;
    C_Tarefas_icSelecionado: TIntegerField;
    C_UsuariosLOGOTIPO: TStringField;
    ImageList: TImageList;
    IBEventos_Recados: TIBEvents;
    Q_Recados: TIBQuery;
    procedure IBEventos_RecadosEventAlert(Sender: TObject;
      EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
    procedure DataModuleDestroy(Sender: TObject);
  public
    procedure Iniciar;
    procedure ApagaCompromissos(FormaDeAtualizacao: integer;
      ApagaFisicamente: boolean; Config_ID: integer; Data: TDateTime;
      varSelf: TComponent; Query: TClientDataSet; Compromisso: integer);
    procedure AtualizaCompromissos(FormaDeAtualizacao, Config_ID: integer;
      Tipo: char; TipoSemana: string; TipoMensal: integer; DataIni,
      DataFim, Data: TDateTime; UsuDestino, UsuOrigem: integer; Assunto,
      Descricao: string; Horario, HorarioFinal, Cliente, Categoria,
      Tarefa: integer; Concluido, Desativado: char; varSelf: TComponent;
      Query: TClientDataSet; Compromisso: integer; UsuariosAntigos,
      Usuarios: string);
    function CorQuant(posicao, maior: integer; coresfixas: boolean = true): TColor;
    function DataPorExtenso(d_Data: TDateTime): string;
    function DiaDaSemana(Dia: integer): string;
    function DiaDaSemanaIgual(sDiasDaSemana: string;
      dData: TDateTime): boolean; overload;
    function DiaDaSemanaIgual(Controle: string;
      DiaInteiro: integer): boolean; overload;
    function DiaDoMesIgual(dData, dDataDoDiaMensal: TDateTime): boolean;
    function ExisteCompromisso(Compromisso: integer; Data_aux: TDateTime;
      hora_I, hora_F: integer; Usuarios: string;
      Query: TClientDataSet): boolean; overload;
    function ExisteCompromisso(Config_ID: integer; Data_INI,
      Data_FIM: TDateTime; hora_I, hora_F: integer; Usuarios, Tipo,
      TipoSemanal: string; TipoMensal: integer;
      Query: TClientDataSet): boolean; overload;
    function HoraToInteger( horario: string; formatoAMPM: boolean=True ): integer;
    function IntegerToHora( horario: integer; formatoAMPM: boolean=True ): string;
    function IsNum(Num: string): boolean;
    procedure MudaPeriodicidade(ApagaTodos: boolean; Config_ID: integer;
      Tipo: char; TipoSemana: string; TipoMensal: integer; DataIni,
      DataFim, Data: TDateTime; UsuDestino, UsuOrigem: integer; Assunto,
      Descricao: string; Horario, HorarioFinal, Cliente, Categoria,
      Tarefa: integer; Concluido, Desativado: char; varSelf: TComponent;
      Query: TClientDataSet; Compromisso: integer; Usuarios: string);
    function NomeDoMes(mes: integer): string;
    procedure PegaData(data_aux: TDateTime; digito: char;
      var retorno: string); overload;
    procedure PegaData(data_aux: TDateTime; digito: char;
      var retorno: integer); overload;
    function TurnoDaHoraInteira( horario: integer; RetornoNumerico: boolean=False ): char;
  end;
var
  DMAgenda: TDMAgenda;

implementation
uses DM_Projeto, funcoes;

{$R *.DFM}

function TDMAgenda.IntegerToHora( horario: integer; formatoAMPM: boolean=True ): string;
var am_pm: string;
    hora_aux, hor, min: integer;
begin
  try
    am_pm := '';
    if formatoAMPM then begin
      hora_aux := horario;
      if (hora_aux < 0) or (hora_aux > 1439) then begin
        if (hora_aux > 1439) then result := '11:59 PM'
        else result := '12:00 AM';
      end else begin
        if hora_aux >= 720 then begin
          am_pm := 'PM';
          Dec(hora_aux,720);
        end else am_pm := 'AM';
        if hora_aux >= 60 then
          hor := hora_aux div 60
        else hor := 12;
        min := hora_aux mod 60;
        result := Format('%2.2d:%2.2d %s', [hor, min, am_pm]);
      end;
    end else begin
      hora_aux := horario;
      if (hora_aux < 0) or (hora_aux > 1439) then begin
        if (hora_aux > 1439) then result := '23:59'
        else result := '00:00';
      end else begin
        if hora_aux >= 60 then
          hor := hora_aux div 60
        else hor := 0;
        min := hora_aux mod 60;
        result := Format('%2.2d:%2.2d', [hor, min]);
      end;
    end;
  except
    result := '';
  end;
end;

function TDMAgenda.HoraToInteger( horario: string; formatoAMPM: boolean=True ): integer;
var am_pm: string;
    hor, min: integer;
begin
  if (IsNum(copy(horario, 1, 2))=False) or (IsNum(copy(horario, 4, 2))=False) then
    result := -1
  else begin
    try
      if formatoAMPM then begin
        hor := StrToInt(copy(horario, 1, 2));
        min := StrToInt(copy(horario, 4, 2));
        am_pm := copy(horario, 7, 2);
        if (hor=12) then hor := 0;
        if am_pm = 'PM' then
          result := ((hor*60) + min) + 720
        else result := (hor*60) + min;
      end else begin
        hor := StrToInt(copy(horario, 1, 2));
        min := StrToInt(copy(horario, 4, 2));
        result := (hor*60) + min;
      end;
    except
      result := -1;
    end;
  end;
end;

function TDMAgenda.TurnoDaHoraInteira( horario: integer; RetornoNumerico: boolean=False ): char;
begin
  result := ' ';
  if not(RetornoNumerico) then begin
    if (horario >= 0) and (horario <= 719) then
    	result := 'M'
    else if (horario >= 720) and (horario <= 1079) then
    	result := 'T'
    else if (horario >= 1080) and (horario <= 1439) then
    	result := 'N'
    else
    	result := 'A';
  end else begin
    if (horario >= 0) and (horario <= 719) then result := '1';
    if (horario >= 720) and (horario <= 1079) then result := '2';
    if (horario >= 1080) and (horario <= 1439) then result := '3';
  end;
end;

function TDMAgenda.DiaDaSemana(Dia: integer):string;
begin
  result := LongDayNames[Dia];
end;

function TDMAgenda.NomeDoMes(mes: integer):string;
begin
  result := LongMonthNames[mes];
end;

function TDMAgenda.DiaDaSemanaIgual( Controle: string; DiaInteiro: integer ): boolean;
var i: integer;
begin
  for i:=1 to Length(Controle) do
    if StrToInt(Controle[i]) = DiaInteiro then begin
      result := True;
      exit;
    end;
  result := False;
end;

function TDMAgenda.DiaDaSemanaIgual( sDiasDaSemana: string; dData: TDateTime ): boolean;
var i: integer;
    d, m, a: word;
begin
  DecodeDate(dData, a, m, d);
  for i:=1 to Length(sDiasDaSemana) do
    if StrToInt(sDiasDaSemana[i]) = d then begin
      result := True;
      exit;
    end;
  result := False;
end;

function TDMAgenda.DiaDoMesIgual( dData, dDataDoDiaMensal: TDateTime ): boolean;
var d, d2, m, m2, a, a2: word;
begin
  DecodeDate(dData, a, m, d);
  DecodeDate(dDataDoDiaMensal, a2, m2, d2);
  if d=d2 then begin
    result := True;
    exit;
  end;
  result := False;
end;

function TDMAgenda.CorQuant(posicao, maior: integer; coresfixas: boolean = true): TColor;
var importancia :string;
    valor :integer;
begin
  if (posicao>maior) then posicao := maior;
  case posicao of
    1: posicao:= 7; 2: posicao:= 14; 3: posicao:= 20; 4: posicao:= 30; 5: posicao:= 60;
  end;
  if coresfixas then maior := 60;
  if (posicao<1) or (maior<1) then valor := 255
  else begin
    valor := (posicao*255) div maior;
    valor := (255-valor);
  end;
  importancia := IntToHex( valor, 2 );
  if valor = 255 then
    Result := $00F7F4F2
  else Result := StringToColor('$00' + importancia + importancia + 'FF');
end;

function TDMAgenda.IsNum( Num: string ): boolean;
var i: integer;
begin
  result := false;
  if Length(Num)=0 then begin
    result := False;
    exit;
  end;
  for i:=1 to Length(Num) do
    if (Num[i]='0')or(Num[i]='1')or(Num[i]='2')or(Num[i]='3')or(Num[i]='4')or(Num[i]='5')or(Num[i]='6')or(Num[i]='7')or(Num[i]='8')or(Num[i]='9') then
      result := True
    else begin
      result := False;
      exit;
    end;
end;

procedure TDMAgenda.PegaData( data_aux: TDateTime; digito: char; var retorno: string );
var Dia, Mes, Ano: word;
begin
  { DIGITOS: 'D' --> Dia; 'M' --> Mês; 'A' --> Ano }
  DecodeDate( data_aux, Ano, Mes, Dia );
  case digito of
    'D': retorno := IntToStr(Dia);
    'M': retorno := IntToStr(Mes);
    'A': retorno := IntToStr(Ano);
  end;
end;

procedure TDMAgenda.PegaData( data_aux: TDateTime; digito: char; var retorno: integer );
var Dia, Mes, Ano: word;
begin
  { DIGITOS: 'D' --> Dia; 'M' --> Mês; 'A' --> Ano }
  DecodeDate( data_aux, Ano, Mes, Dia );
  case digito of
    'D': retorno := Dia;
    'M': retorno := Mes;
    'A': retorno := Ano;
  end;
end;

function TDMAgenda.DataPorExtenso( d_Data: TDateTime ): string;
var mes: integer;
    dia, ano: string;
begin
  try
    PegaData( d_Data, 'M', mes );
    PegaData( d_Data, 'D', dia );
    PegaData( d_Data, 'A', ano );
    result := LongMonthNames[ mes ] + ' ' + dia + ', ' + ano;
  except
    result := '';
  end;
end;

// Para verificar uma só data
function TDMAgenda.ExisteCompromisso( Compromisso: integer; Data_aux: TDateTime; hora_I, hora_F: integer; Usuarios: string; Query: TClientDataSet ): boolean;
var sql: string;
begin
  result := False;
  with Query do begin
    sql := CommandText;
    Close;
    CommandText := 'Select c.* From COMPROMISSOS c '+
        ' Left Join categorias ca On ca.categoria=c.categoria '+
        ' Where (c.COMPROMISSO <> ' + IntToStr(Compromisso) +')'+
        ' And (c.DATA = '+ QuotedStr(FormatDateTime('mm/dd/yyyy', Data_aux))+ ')'+
        ' And ( (c.HORARIO >= '+IntToStr(hora_I)+' And c.HORARIO_FINAL <= '+IntToStr(hora_F)+') or '+
        ' (c.HORARIO_FINAL >= '+IntToStr(hora_I)+' And c.HORARIO_FINAL <= '+IntToStr(hora_F)+') or '+
        ' (c.HORARIO >= '+IntToStr(hora_I)+' And c.HORARIO <= '+IntToStr(hora_F)+') or '+ // horário
				' (c.HORARIO < '+IntToStr(hora_I)+' And c.HORARIO_FINAL > '+IntToStr(hora_F)+'))'+
        ' And (c.UsuDestino In ('+Usuarios+'))'+
        ' And (c.desativado <> ' + QuotedStr('S') +')'+ // não desativado
        ' And (c.concluido <> ' + QuotedStr('S') +')'+ // não concluído
        ' Order By c.DATA';
    Open;
    if RecordCount > 0 then begin
      result := True;
    end else result := False;
    Close;
    CommandText := sql;
  end;
end;

// Para verificar se existe compromissos em um período
function TDMAgenda.ExisteCompromisso( Config_ID: integer; Data_INI, Data_FIM: TDateTime; hora_I, hora_F: integer; Usuarios: string; Tipo, TipoSemanal: string; TipoMensal: integer; Query: TClientDataSet ): boolean;
var sql: string;
    mes_aux: integer;
begin
  result := False;
  with Query do begin
    sql := CommandText;
    Close;
    CommandText := 'Select c.* From COMPROMISSOS c '+
        ' Where (c.CONFIG_ID <> ' + IntToStr(Config_ID) +')'+
        ' And ( (c.DATA >= '+ QuotedStr(FormatDateTime('mm/dd/yyyy', Data_INI))+ ')'+
        ' And (c.DATA <= '+ QuotedStr(FormatDateTime('mm/dd/yyyy', Data_FIM))+ ') )'+
        ' And ((c.HORARIO > '+IntToStr(hora_I)+' And c.HORARIO_FINAL < '+IntToStr(hora_F)+') or '+
        ' (c.HORARIO_FINAL > '+IntToStr(hora_I)+' And c.HORARIO_FINAL < '+IntToStr(hora_F)+') or '+
        ' (c.HORARIO > '+IntToStr(hora_I)+' And c.HORARIO < '+IntToStr(hora_F)+') or '+
        ' (c.HORARIO < '+IntToStr(hora_I)+' And c.HORARIO_FINAL > '+IntToStr(hora_F)+') or '+
        ' ((c.HORARIO = '+IntToStr(hora_I)+') and (c.HORARIO_FINAL = '+IntToStr(hora_F)+')))'+ // horário
        ' And (c.UsuDestino In ('+Usuarios+'))'+
        ' And (c.desativado <> ' + QuotedStr('S') +')'+ // não desativado
        ' And (c.concluido <> ' + QuotedStr('S') +')'+ // não concluído
        ' Order By c.DATA';
    Open;
    if RecordCount > 0 then begin
      result := False;
      while not(EOF) and not(result) do begin
        if (Tipo = 'D')or(Tipo = 'U') then begin
          result := True;
        end else if (Tipo = 'S') then begin
          if DiaDaSemanaIgual(TipoSemanal, DayOfWeek(FieldByName('DATA').AsDateTime) ) then
            result := True;
        end else if (Tipo = 'M') then begin
          PegaData(FieldByName('DATA').AsDateTime, 'D', mes_aux);
          if (mes_aux = TipoMensal) then
            result := True;
        end;
        Next;
      end;
    end else result := False;
    Close;
    CommandText := sql;
  end;
end;

procedure TDMAgenda.AtualizaCompromissos(	FormaDeAtualizacao: integer;
                                Config_ID: integer;
                                Tipo: char;
                                TipoSemana: string;
                                TipoMensal: integer;
                                DataIni, DataFim: TDateTime;
                                Data: TDateTime;
                                UsuDestino, UsuOrigem: integer;
                                Assunto: string;
                                Descricao: string;
                                Horario: integer;
                                HorarioFinal: integer;
                                Cliente: integer;
                                Categoria, Tarefa: integer;
                                Concluido, Desativado: char;
                                varSelf: TComponent;
                                Query: TClientDataSet;
                                Compromisso: integer;
                                UsuariosAntigos, Usuarios: string );
var i, total_dias, mes_aux, cont, usu_atual, cont_usu, nUsuarioDestino: integer;
    sql, cond_Data, cond_Data_Insert: string;
    PodeIncluir, AchouUsuario: boolean;
    aUsuarios: array of integer;
    totUsu, contUsu, totUsuA, contUsuA, posBar, totBar: integer;
    IBSQL: TIBSQL;
begin
  IBSQL := TIBSQL.Create(varSelf);
  IBSQL.Database := DMProjeto.DB_Projeto;
  IBSQL.Transaction := DMProjeto.IBT_Projeto;
  // Só Esse
  if FormaDeAtualizacao = 1 then begin
    cond_Data := '1=2'; // não atualiza e nem apaga
    cond_Data_Insert := '';
  end;
  // Todos
  if FormaDeAtualizacao = 2 then begin
    Concluido := 'N';
    cond_Data := 'COMPROMISSO <> ' + IntToStr(Compromisso);
    cond_Data_Insert := '';
  end;
  // Anteriores
  if FormaDeAtualizacao = 3 then begin
    DataFim := Data;
    cond_Data := 'DATA <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Data))+
         ' And COMPROMISSO <> ' + IntToStr(Compromisso);
    cond_Data_Insert := ' And DATA <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Data));
  end;
  // Posteriores
  if FormaDeAtualizacao = 4 then begin
    DataIni := Data;
    cond_Data := 'DATA >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Data))+
         ' And COMPROMISSO <> ' + IntToStr(Compromisso);
    cond_Data_Insert := ' And DATA >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Data));
  end;
  // Apaga os que não foram selecionados
  sql := 'Delete From COMPROMISSOS '+
         ' Where CONFIG_ID = '+IntToStr(Config_ID)+
         ' And UsuDestino Not In ('+Usuarios+') '+
         cond_Data_Insert;
  IBSQL.SQL.Text := sql;
  IBSQL.ExecQuery;
  // Altera os compromissos da periodicidade escolhida
  sql := 'Update COMPROMISSOS Set '+
         ' UsuOrigem='+IntToStr(UsuOrigem)+','+
         ' Assunto='+QuotedStr(Assunto)+','+
         ' Descricao='+QuotedStr(Descricao)+','+
         ' Horario='+IntToStr(Horario)+','+
         ' Horario_Final='+IntToStr(HorarioFinal)+','+
         ' Cliente='+IntToStr(Cliente)+','+
         ' Categoria='+IntToStr(Categoria)+','+
         ' Config_ID='+IntToStr(Config_ID)+','+
         ' Usuarios='+QuotedStr(Usuarios)+','+
         ' Desativado='+QuotedStr(Desativado)+','+
         ' Tarefa='+IntToStr(Tarefa)+
         ' Where CONFIG_ID = '+IntToStr(Config_ID)+
         ' And UsuDestino In ('+Usuarios+') '+
         cond_Data_Insert;
  IBSQL.SQL.Text := sql;
  IBSQL.ExecQuery;

  // Inicializa o array de usuários ==> aUsuarios
  totUsu:=ContaStrings(Usuarios,',');
  SetLength(aUsuarios,totUsu);
  for contUsu:=1 to totUsu do begin
    aUsuarios[contUsu-1] := StrToInt(SeparaStrings(Usuarios,',',contUsu));
  end;

  if (DataFim>DataIni)or(Usuarios<>UsuariosAntigos) then
  with Query do begin
    Close;
    CommandText := 'Select * From Compromissos Where Config_ID=' + IntToStr(Config_ID)
      + cond_Data_Insert;
    Open;
    total_dias := Trunc(DataFim) - Trunc(DataIni);
    // total de operacoes a serem feitas
    if total_dias<=0 then
      totBar := length(aUsuarios)
    else totBar := length(aUsuarios)*total_dias;
    posBar := 0;
    for cont:=0 to length(aUsuarios) do begin
      nUsuarioDestino := aUsuarios[cont];
      for i:=0 to total_dias do begin
        PodeIncluir := False;
        Filtered := False;
        Filter := 'DATA='+QuotedStr(FormatDateTime('ddddd', (DataIni+i)))+
          ' And USUDESTINO='+IntToStr(nUsuarioDestino);
        Filtered := True;
        // Testa se pode incluir nessa data
        if (Tipo = 'D')or(Tipo = 'U') then
          PodeIncluir := True;
        if Tipo = 'S' then
          PodeIncluir := DiaDaSemanaIgual( TipoSemana, DayOfWeek((DataIni+i)) );
        if Tipo = 'M' then begin
          PegaData( (DataIni+i), 'D', mes_aux );
          if TipoMensal = mes_aux then
            PodeIncluir := True;
        end;
        // Começa a inserção
        if (PodeIncluir) then begin
          if (RecordCount > 0) then
            Next
          else begin
            sql := 'Insert Into Compromissos (Compromisso,UsuOrigem,Usudestino,Data,Assunto,'+
            'Descricao,Horario,Horario_Final,Cliente,Categoria,Config_ID,Concluido,'+
            'Desativado,Tarefa, Usuarios) Values ('+
            IntToStr(DMProjeto.NextID('COMPROMISSOS'))+','+
            IntToStr(UsuOrigem)+','+
            IntToStr(nUsuarioDestino)+','+
            QuotedStr(FormatDateTime('mm/dd/yyyy', DataIni+i))+','+
            QuotedStr(Assunto)+','+
            QuotedStr(Descricao)+','+
            IntToStr(Horario)+','+
            IntToStr(HorarioFinal)+','+
            IntToStr(Cliente)+','+
            IntToStr(Categoria)+','+
            IntToStr(Config_ID)+','+
            QuotedStr('N')+','+
            QuotedStr('N')+','+
            IntToStr(Tarefa)+','+
            QuotedStr(Usuarios)+')';
            IBSQL.SQL.Text := sql;
            IBSQL.ExecQuery;
          end;
        end; //if podeincluir
      end; //for dias
    end; //for usuários
  end; // with
  if DMProjeto.IBT_Projeto.InTransaction then
    DMProjeto.IBT_Projeto.CommitRetaining;
  IBSQL.Free;
end;

procedure TDMAgenda.ApagaCompromissos(  FormaDeAtualizacao: integer;
                              					ApagaFisicamente: boolean;
                              					Config_ID: integer;
                              					Data: TDateTime;
                              					varSelf: TComponent;
                              					Query: TClientDataSet;
                              					Compromisso: integer );
var sql, cond_Data: string;
    IBSQL: TIBSQL;
begin
  IBSQL := TIBSQL.Create(varSelf);
  IBSQL.Database := DMProjeto.DB_Projeto;
  IBSQL.Transaction := DMProjeto.IBT_Projeto;
  // Só Esse
  if FormaDeAtualizacao = 1 then begin
    cond_Data := 'COMPROMISSO = ' + IntToStr(Compromisso);
  end;
  // Todos
  if FormaDeAtualizacao = 2 then begin
    cond_Data := '1=1';
  end;
  // Anteriores
  if FormaDeAtualizacao = 3 then begin
    cond_Data := 'DATA <= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Data));
  end;
  // Posteriores
  if FormaDeAtualizacao = 4 then begin
    cond_Data := 'DATA >= ' + QuotedStr(FormatDateTime('mm/dd/yyyy', Data));
  end;
  if ApagaFisicamente then begin
    sql := 'Delete From COMPROMISSOS '+
       ' Where CONFIG_ID = ' + IntToStr(Config_ID)+
       ' And ' + cond_Data;
  end else begin
    sql := 'Update COMPROMISSOS Set '+
       ' Desativado='+QuotedStr('S')+
       ' Where CONFIG_ID = ' + IntToStr(Config_ID)+
       ' And ' + cond_Data;
  end;
  IBSQL.SQL.Text := sql;
  IBSQL.ExecQuery;
  DMProjeto.IBT_Projeto.CommitRetaining;
  IBSQL.Free;
end;

procedure TDMAgenda.MudaPeriodicidade(  ApagaTodos: boolean;
                              Config_ID: integer;
                              Tipo: char;
                              TipoSemana: string;
                              TipoMensal: integer;
                              DataIni, DataFim: TDateTime;
                              Data: TDateTime;
                              UsuDestino, UsuOrigem: integer;
                              Assunto: string;
                              Descricao: string;
                              Horario: integer;
                              HorarioFinal: integer;
                              Cliente: integer;
                              Categoria, Tarefa: integer;
                              Concluido, Desativado: char;
                              varSelf: TComponent;
                              Query: TClientDataSet;
                              Compromisso: integer;
                              Usuarios: string);
{
procedure MudaProgresso(var Posicao:integer;Incremento:integer;ProgressBar:TdxfProgressBar;aApplication: TApplication);
begin
	 if ProgressBar<>nil then begin
    Inc(Posicao,Incremento);
    if Posicao>100 then Posicao := 100;
    ProgressBar.Position := Posicao;
    aApplication.ProcessMessages;
  end;
end;
}
var i, total_dias, mes_aux, cont, usu_atual, cont_usu, nUsuarioDestino, nIncremento: integer;
    aUsuarios: array of integer;
    sql, cond_Data: string;
    PodeIncluir: boolean;
    IBSQL: TIBSQL;
    totUsu, contUsu, posBar, totBar: integer;
    sUsuarios: string;
begin
  posBar := 0;
  // MudaProgresso(posBar,1,ProgressBar,aApplication);

  IBSQL := TIBSQL.Create(varSelf);
  IBSQL.Database := DMProjeto.DB_Projeto;
  IBSQL.Transaction := DMProjeto.IBT_Projeto;

  // Inicializa o array de usuários ==> aUsuarios
  totUsu:=ContaStrings(Usuarios,',');
  SetLength(aUsuarios,totUsu);
  for contUsu:=1 to totUsu do
    aUsuarios[contUsu-1] := StrToInt(SeparaStrings(Usuarios,',',contUsu));

  if ApagaTodos then begin
    // Apaga Periodicidade
    IBSQL.SQL.Text := 'Delete From COMPROMISSOS Where CONFIG_ID='+IntToStr(Config_ID);
    IBSQL.ExecQuery;
    DMProjeto.IBT_Projeto.CommitRetaining;
  end;

  if (DataFim > DataIni) then
  // Inclui nos dias que não foram incluídos
  with Query do begin
    Close;
    CommandText := 'Select * From Compromissos Where Config_ID=' + IntToStr(Config_ID);
    Open;
    total_dias := Trunc(DataFim) - Trunc(DataIni);

    // Barra de Progresso
    totBar := length(aUsuarios)*total_dias; // total de operacoes a serem feitas
    if totBar>100 then nIncremento := 1
    else nIncremento := 100 div totBar;

    for cont:=0 to length(aUsuarios) do begin
      nUsuarioDestino := aUsuarios[cont];
      for i:=0 to total_dias do begin
        // MudaProgresso(posBar,nIncremento,ProgressBar,aApplication);
        PodeIncluir := False;
        Filtered := False;
        Filter := 'DATA='+ QuotedStr(FormatDateTime('ddddd', (DataIni+i))) +
          ' And USUDESTINO='+IntToStr(nUsuarioDestino);
        Filtered := True;
        // Testa se pode incluir nessa data
        if Tipo = 'D' then
          PodeIncluir := True;
        if Tipo = 'S' then
          PodeIncluir := DiaDaSemanaIgual( TipoSemana, DayOfWeek((DataIni+i)) );
        if Tipo = 'M' then begin
          PegaData( (DataIni+i), 'D', mes_aux );
          if TipoMensal = mes_aux then
            PodeIncluir := True;
        end;
        // Começa a inserção
        if (PodeIncluir) then begin
          if (RecordCount > 0) then
            Next
          else begin
            sql := 	'Insert Into Compromissos ('+
            			 	'Compromisso,UsuOrigem,Usudestino,Data,Assunto,'+
            				'Descricao,Horario,Horario_Final,Cliente,Categoria,Config_ID,Concluido,'+
            				'Desativado,Tarefa, Usuarios) Values ('+
            IntToStr(DMProjeto.NextID('COMPROMISSOS'))+','+
            IntToStr(UsuOrigem)+','+
            IntToStr(nUsuarioDestino)+','+
            QuotedStr(FormatDateTime('mm/dd/yyyy', DataIni+i))+','+
            QuotedStr(Assunto)+','+
            QuotedStr(Descricao)+','+
            IntToStr(Horario)+','+
            IntToStr(HorarioFinal)+','+
            IntToStr(Cliente)+','+
            IntToStr(Categoria)+','+
            IntToStr(Config_ID)+','+
            QuotedStr('N')+','+
            QuotedStr('N')+','+
            IntToStr(Tarefa)+','+
            QuotedStr(Usuarios)+')';
            IBSQL.SQL.Text := sql;
            IBSQL.ExecQuery;
          end;
        end; //if podeincluir
      end; //for dias
    end; //for usuários

    sql := 'Update CONFIG_COMP Set DATA_INI='+QuotedStr(FormatDateTime('mm/dd/yyyy',DataIni))+','+
      'DATA_FIM='+QuotedStr(FormatDateTime('mm/dd/yyyy',DataFim))+','+
      'TIPO='+QuotedStr(Tipo)+','+
      'TIPO_SEMANAL='+QuotedStr(TipoSemana)+','+
      'TIPO_MENSAL='+IntToStr(TipoMensal)+' '+
      'Where CONFIG_ID='+IntToStr(Config_ID);
    IBSQL.SQL.Text := sql;
    IBSQL.ExecQuery;

    if DMProjeto.IBT_Projeto.InTransaction then
      DMProjeto.IBT_Projeto.CommitRetaining;

  end; // with
  IBSQL.Free;
end;

{ShortMonthNames: array[1..12] of string;
 LongMonthNames: array[1..12] of string;
 ShortDayNames: array[1..7] of string;
 LongDayNames: array[1..7] of string;}

procedure TDMAgenda.Iniciar;
begin
  C_Usuarios.close;
  C_Categorias.close;
  C_Tarefas.close;
  C_Usuarios.Open;
  C_Categorias.Open;
  C_Tarefas.Open;
end;

procedure TDMAgenda.IBEventos_RecadosEventAlert(Sender: TObject;
  EventName: String; EventCount: Integer; var CancelAlerts: Boolean);
begin
  if EventName = 'EVENTO_RECADOS' then begin
    Q_Recados.close;
    Q_Recados.params[0].asinteger := DMProjeto.nFuncionario;
    Q_Recados.open;
    Q_Recados.last;
    if Q_Recados.FieldByName('ExisteRecado').AsInteger > 0 then
      DMProjeto.CriarForm('DLGRECADOS',Self, false);
  end;
end;

procedure TDMAgenda.DataModuleDestroy(Sender: TObject);
begin
  C_Usuarios.Close;
  C_Categorias.Close;
  C_Tarefas.Close;
end;

end.
