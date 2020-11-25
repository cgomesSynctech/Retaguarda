unit DM_UNIDADES;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider;

type
  TDMUnidades = class(TDMManutencao)
    C_TabelaDESCRICAO: TStringField;
    C_TabelaUNIDADE: TStringField;
    C_TabelaINTEIRA: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
    procedure C_TabelaUNIDADEValidate(Sender: TField);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUnidades: TDMUnidades;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMUnidades.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMUnidades := self;
end;

procedure TDMUnidades.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaInteira.value := 'S';
end;

procedure TDMUnidades.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if not bAlteracao then begin
    if DMProjeto.VerificaExistenciaDesc('','unidades','unidade',C_TabelaDESCRICAO.value) then begin
      DlgMsg.ShowMsg(5001,['Unidade']);
      raise Exception.Create('@@');
    end;
  end
  else begin
    if DMProjeto.VerificaExistenciaDesc(C_TabelaUnidade.value,'unidades','unidade',C_TabelaDESCRICAO.value) then begin
      DlgMsg.ShowMsg(5001,['Unidade']);
      raise Exception.Create('@@');
    end;
  end;
end;

procedure TDMUnidades.C_TabelaUNIDADEValidate(Sender: TField);
begin
  inherited;
  if not bAlteracao then begin
    if DMProjeto.VerificaExistenciaDesc('','unidades','unidade',C_TabelaUNIDADE.value,'unidade') then begin
      DlgMsg.ShowMsg(5001,['Unidade']);
      raise Exception.Create('@@');
    end;
  end
  else begin
    if DMProjeto.VerificaExistenciaDesc(C_TabelaUnidade.value,'unidades','unidade',C_TabelaUNIDADE.value,'unidade') then begin
      DlgMsg.ShowMsg(5001,['Unidade']);
      raise Exception.Create('@@');
    end;
  end;
end;

procedure TDMUnidades.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	if pos(C_TabelaUnidade.Value,'Cx,Und,Lt,kg,M')>0 then begin
    DlgMsg.ShowMsg(809);
    bSkip := True;
  end;
end;

end.
