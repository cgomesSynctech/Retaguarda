unit DM_AgenciasEmpresa;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMAgenciasEmpresa = class(TDMManutencao)
    C_TabelaAGENCIA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaTAXA: TBCDField;
    C_TabelaPERC: TBCDField;
    Q_TabelaAGENCIA: TIntegerField;
    Q_TabelaDESCRICAO: TIBStringField;
    Q_TabelaTAXA: TIBBCDField;
    Q_TabelaPERC: TIBBCDField;
    C_AgentesCambio: TClientDataSet;
    Q_AgenteCambio: TIBQuery;
    Q_Indexador: TIBQuery;
    dsAgentesCambio: TDataSource;
    Q_AgenteCambioAGENCIA: TIntegerField;
    Q_AgenteCambioINDEXADOR: TIntegerField;
    Q_AgenteCambioCAMBIO: TIBBCDField;
    C_TabelaQ_AgenteCambio: TDataSetField;
    C_AgentesCambioAGENCIA: TIntegerField;
    C_AgentesCambioINDEXADOR: TIntegerField;
    C_AgentesCambioCAMBIO: TBCDField;
    C_AgentesCambiocbIndexador: TStringField;
    Q_TabelaTIPO: TIBStringField;
    C_TabelaTIPO: TStringField;
    U_AgentesCambio: TIBUpdateSQL;
    Q_AgenteCambioAGENCIA_CAMBIO: TIntegerField;
    Q_AgenteCambioDATA: TDateField;
    C_AgentesCambioAGENCIA_CAMBIO: TIntegerField;
    C_AgentesCambioDATA: TDateField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_AgentesCambioNewRecord(DataSet: TDataSet);
    procedure C_AgentesCambioBeforeInsert(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure FiltraDataCambio;
  end;

var
  DMAgenciasEmpresa: TDMAgenciasEmpresa;

implementation

uses DM_Projeto, Frm_AgenciasEmpresa;

{$R *.DFM}

procedure TDMAgenciasEmpresa.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMAgenciasEmpresa := Self;
end;

procedure TDMAgenciasEmpresa.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('Tipo').AsString := 'E';
end;

procedure TDMAgenciasEmpresa.C_AgentesCambioNewRecord(DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('AGENCIA_CAMBIO').AsInteger := DMProjeto.NextIDGlobal;
  DataSet.FieldByName('CAMBIO').AsInteger := 0;
  DataSet.FieldByName('DATA').AsDateTime := FrmAgenciasEmpresa.edData.Date;
end;

procedure TDMAgenciasEmpresa.FiltraDataCambio;
begin
  if FrmAgenciasEmpresa = nil then
    exit;
  if FrmAgenciasEmpresa.edData.Date = 0 then
    exit;
  C_AgentesCambio.Filter := 'data='+QuotedStr(FormatDateTime(ShortDateFormat,FrmAgenciasEmpresa.edData.Date));
end;

procedure TDMAgenciasEmpresa.C_AgentesCambioBeforeInsert(
  DataSet: TDataSet);
begin
  inherited;
  if FrmAgenciasEmpresa = nil then
    exit;
  if FrmAgenciasEmpresa.edData.Date = 0 then
    Abort;
end;

end.
