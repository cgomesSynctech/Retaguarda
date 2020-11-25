unit Dm_Alerta;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMAlerta = class(TDMManutencao)
    Q_Cliente: TIBQuery;
    U_Cliente: TIBUpdateSQL;
    C_Cliente: TClientDataSet;
    C_ClienteDS: TDataSource;
    C_TabelaQ_Cliente: TDataSetField;
    C_ClienteALERTACLIENTE: TIntegerField;
    C_ClienteALERTA: TIntegerField;
    C_ClienteCLIENTE: TIntegerField;
    C_ClienteNOME: TStringField;
    C_ClienteTIPOFAVORECIDO: TIntegerField;
    C_TabelaALERTA: TIntegerField;
    C_TabelaAPLICAR: TStringField;
    C_TabelaTIPO: TIntegerField;
    C_TabelaCONDICAO: TStringField;
    C_TabelaVALOR: TBCDField;
    C_ClientelkTipoFav: TStringField;
    Q_TiposAlertas: TIBQuery;
    C_TiposAlertas: TClientDataSet;
    P_TiposAlertas: TDataSetProvider;
    C_TiposAlertasTIPOALERTA: TIntegerField;
    C_TiposAlertasDESCRICAO: TStringField;
    C_TiposAlertasCOMANDOSQL: TStringField;
    C_TiposAlertasTIPO: TStringField;
    C_TiposAlertasCONDICAO: TStringField;
    C_TabelalkTipo: TStringField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_ClienteNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    sRegFiltro: String;
    nCodCli: Integer;
    bSalvando: Boolean;
    { Public declarations }
  end;

var
  DMAlerta: TDMAlerta;

implementation

uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDMAlerta.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DmAlerta := Self;
end;

procedure TDMAlerta.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaALERTA.Value    := -1;
  C_TabelaCONDICAO.Value  := '>=';
  C_TabelaAPLICAR.Value   := 'C';
  C_TabelaTIPO.Value      := 0;
  C_TabelaVALOR.Value     := 0;
  sRegFiltro              := '';
  C_Cliente.Append;
end;

procedure TDMAlerta.C_ClienteNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_ClienteALERTACLIENTE.Value  := -1;
  C_ClienteTIPOFAVORECIDO.Value := 0;
end;

procedure TDMAlerta.DMComponentGravar2_AposIDS_Tabela(Sender: TObject);
var
 i: Integer;
begin
  inherited;
  bSalvando := False;
  with DMProjeto do begin
    Q_SQL.Close;
    Q_SQL.SQL.Text := 'delete from alertasitens where alerta = ' + C_TabelaALERTA.AsString;
    Q_SQL.ExecSql;
  end;

  for i:= 1 to ContaStrings(sRegFiltro, ',') do begin
    with DMProjeto do begin
      Q_SQL.Close;
      Q_SQL.SQL.Text := 'insert into alertasitens(alerta, chave) values (' +
              C_TabelaALERTA.AsString + ', '+
              SeparaStrings(sRegFiltro, ',', i) + ')';
      Q_SQL.ExecSql;
    end; //with
  end; //for
end;

procedure TDMAlerta.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  bSalvando := True;
end;

end.
