unit DM_UFS;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider;

type
  TDMUFS = class(TDMManutencao)
    C_TabelaUF: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaICMS_INTERNO: TBCDField;
    C_TabelaICMS_EXTERNO: TBCDField;
    C_TabelaISSLOCAL: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaUFValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMUFS: TDMUFS;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMUFS.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMUFS := self;
end;

procedure TDMUFS.C_TabelaUFValidate(Sender: TField);
begin
  inherited;
  if not bAlteracao and (trim(C_TabelaUF.value) <> '') and DMProjeto.VerificaExistenciaUF(C_TabelaUF.value) then begin
    DlgMsg.ShowMsg(5001,['Estado']);
    raise Exception.Create('@@');
  end;
end;

end.
