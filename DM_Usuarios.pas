unit DM_Usuarios;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider, Variants, MD5;

type
  TDMUsuarios = class(TDMManutencao)
    Q_Perfis: TIBQuery;
    C_TabelaUSUARIO: TIntegerField;
    C_TabelaPERFIL: TIntegerField;
    C_TabelaLOGINNAME: TStringField;
    C_TabelaLOGINPASS: TStringField;
    C_TabelacmbPerfil: TStringField;
    C_Perfis: TClientDataSet;
    Q_PerfisProvider: TDataSetProvider;
    C_PerfisPERFIL: TIntegerField;
    C_PerfisDESCRICAO: TStringField;
    C_PerfisINICIALIZACAO: TStringField;
    C_TabelaIDIOMA: TIntegerField;
    Q_Idiomas: TIBQuery;
    Q_IdiomasProv: TDataSetProvider;
    C_Idiomas: TClientDataSet;
    C_IdiomasIDIOMA: TIntegerField;
    C_IdiomasDESCRICAO: TStringField;
    C_TabelacmbIdioma: TStringField;
    C_TabelaEMAIL: TStringField;
    C_TabelaINTERVALO_MINUTOS: TIntegerField;
    C_TabelaRECADOS_TIMER: TIntegerField;
    C_TabelaHORA_INI: TIntegerField;
    C_TabelaHORA_FIM: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    Q_SQL: TIBQuery;
    C_TabelaFORMATO_HORA: TStringField;
    C_TabelaDESCONTOMAXIMO: TBCDField;
    C_TabelaLOGOTIPO: TStringField;
    Q_Vendedores: TIBQuery;
    P_Vendedores: TDataSetProvider;
    C_Vendedores: TClientDataSet;
    C_VendedoresFAVORECIDO: TIntegerField;
    C_VendedoresCODIGO: TStringField;
    C_VendedoresNOME: TStringField;
    C_VendedoresCOMISSAO: TBCDField;
    C_TabelalkVendedor: TStringField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaTABELAPADRAO: TIntegerField;
    C_TabelaTIPOMOVPR: TIntegerField;
    Q_TiposMovimento: TIBQuery;
    P_TiposMovimento: TDataSetProvider;
    C_TiposMovimento: TClientDataSet;
    C_TiposMovimentoTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentoDESCRICAO: TStringField;
    C_TabelalkTipoMovPR: TStringField;
    Q_TabelasPreco: TIBQuery;
    Q_TabelasPrecoTABELAPRECO: TIntegerField;
    Q_TabelasPrecoDESCRICAO: TIBStringField;
    Q_TabelasPrecoPERCENTUAL: TIBBCDField;
    Q_TabelasPrecoDESATIVADO: TIBStringField;
    Q_TabelasPrecoBASEADA: TIBStringField;
    C_TabelasPreco: TClientDataSet;
    C_TabelasPrecoTABELAPRECO: TIntegerField;
    C_TabelasPrecoDESCRICAO: TStringField;
    P_TabelasPreco: TDataSetProvider;
    C_TabelalkTabelaPadrao: TStringField;
    Q_Empresas: TIBQuery;
    P_Empresa: TDataSetProvider;
    C_Empresa: TClientDataSet;
    C_EmpresaFAVORECIDO: TIntegerField;
    C_EmpresaNOME: TStringField;
    C_TabelaEMPRESA: TIntegerField;
    C_TabelalkEmpresa: TStringField;
    C_TabelaLOGINPASSMD5: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaBeforePost(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
    procedure C_TabelaLOGINNAMEValidate(Sender: TField);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
  private
    { Private declarations }
    procedure AtualizaGradeDoUsuario(usuario, hora_ini, hora_fim:integer);
  public
    { Public declarations }
  end;

var
  DMUsuarios: TDMUsuarios;

implementation

uses DM_Projeto, funcoes, DM_Agenda;

{$R *.DFM}

procedure TDMUsuarios.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMUsuarios := self;
end;

procedure TDMUsuarios.C_TabelaBeforePost(DataSet: TDataSet);
var sSenha, sSenhaC: string;
begin
  inherited;
  sSenha := C_TabelaLoginPass.value;
  if (copy(C_TabelaLoginPass.value,1,1) <> '@') then begin
    Criptografia(C_TabelaLoginPass.value,'','',sSenhaC);
    C_TabelaLOGINPASSMD5.Value := LowerCase(MD5.MD5Print(MD5.MD5String(LowerCase(C_TabelaLoginPass.value))));
    C_TabelaLoginPass.value := sSenhaC;

  end;
end;

procedure TDMUsuarios.AtualizaGradeDoUsuario(usuario, hora_ini, hora_fim:integer);
var iHoraFim: integer;
begin
  with Q_SQL do begin
    Close;
    SQL.Text := 'Delete From GradeUsuarios Where Usuario='+IntToStr(usuario);
    ExecSQL;
    DMProjeto.IBT_Projeto.CommitRetaining;
    iHoraFim := hora_ini;
    while hora_ini<=hora_fim do begin
      iHoraFim := iHoraFim + C_TabelaINTERVALO_MINUTOS.Value;
      SQL.Text := 'Insert Into GradeUsuarios (usuario,horario,horario_final,data)'+
        ' Values ('+IntToStr(usuario)+','+IntToStr(hora_ini)+','+IntToStr(iHoraFim)+',null)';
      ExecSQL;
      hora_ini := iHoraFim;
    end;
    DMProjeto.IBT_Projeto.CommitRetaining;
  end;
end;

procedure TDMUsuarios.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  // Intervalo em minutos
  if (C_TabelaINTERVALO_MINUTOS.Value<1)or(C_TabelaINTERVALO_MINUTOS.Value>120) then begin
    DlgMsg.ShowMsg( 3134 );
    bSkip := True;
  end else
  // Intervalo dos horários inválidos
  if (C_TabelaHORA_INI.AsVariant=null)or(C_TabelaHORA_FIM.AsVariant=null)
  or (C_TabelaHORA_INI.Value>=C_TabelaHORA_FIM.Value) then begin
    DlgMsg.ShowMsg( 2007 );
    bSkip := True;
  end else
  // Usuário duplicado
  if (C_TabelaLOGINNAME.Value<>'') then begin
    with DMProjeto.Q_SQL do begin
      Close;
      SQL.Text := 'Select Count(usuario) From Usuarios'+
        ' Where UPPER(loginname)='+QuotedStr(UpperCase(C_TabelaLOGINNAME.Value))+
        ' And usuario<>'+C_TabelaUSUARIO.AsString;
      Open;
      if (Fields[0].AsInteger>0) then begin
        DlgMsg.ShowMsg(933,['[USUÁRIO]']);
        bSkip := True;
      end;
    end; // with
  end; // if
end;

procedure TDMUsuarios.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  if C_TabelaUSUARIO.Value = DmProjeto.nFuncionario then begin
    DMProjeto.bFormatoAMPM := (C_TabelaFORMATO_HORA.Value='US');
//    MDIProjeto.TimerAlerta.Interval := C_TabelaRECADOS_TIMER.AsInteger*60000;
  end;
  if not C_TabelaFuncionario.IsNull then begin
    Q_SQL.SQL.text := 'update favorecidos set vendedor = :usuario where favorecido = :vendedor';
    Q_SQL.params[0].asinteger := C_TabelaUsuario.value;
    Q_SQL.params[1].asinteger := C_TabelaFuncionario.value;
    Q_SQL.ExecSQL;
  end;
end;

procedure TDMUsuarios.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
begin
  inherited;
  AtualizaGradeDoUsuario(C_TabelaUSUARIO.Value, 0, 1439);
end;

procedure TDMUsuarios.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  if DMAgenda <> nil then
    with DMAgenda.C_Usuarios do begin
    	Close;
    	Open;
    end;
end;

procedure TDMUsuarios.C_TabelaLOGINNAMEValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaUsuario.value,'usuarios','usuario',C_TabelaLoginName.value,'loginname') then begin
    DlgMsg.ShowMsg(5001,['Usuário']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMUsuarios.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_TabelaDesativado.Value := 'N';
  C_TabelaDescontoMaximo.Value := 0;
  C_TabelaHORA_INI.Value := 480;
  C_TabelaHORA_FIM.Value := 1080;
  C_TabelaINTERVALO_MINUTOS.Value := 30;
  C_TabelaRECADOS_TIMER.Value := 1;
  C_TabelaFORMATO_HORA.Value := 'US';
  C_TabelaPerfil.Value := 1;
  C_TabelaIdioma.Value := 1;
end;

procedure TDMUsuarios.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
	if (C_TabelaUsuario.AsInteger = 500) or (C_TabelaUsuario.AsInteger = 501) then begin
    DlgMsg.ShowMsg( 7001 );
  	bSkip := true;
  end;
  inherited;  
end;

end.
