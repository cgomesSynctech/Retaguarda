unit DM_TiposAtividade;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMTiposAtividade = class(TDMManutencao)
    C_TabelaTIPOATIVIDADE: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    Q_TipoFav: TIBQuery;
    P_TipoFav: TDataSetProvider;
    C_TipoFav: TClientDataSet;
    C_TipoFavDS: TDataSource;
    C_TipoFavTIPOFAVORECIDO: TIntegerField;
    C_TipoFavDESCRICAO: TStringField;
    C_TipoFavFORM: TStringField;
    C_TabelaDescTipoFav: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposAtividade: TDMTiposAtividade;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMTiposAtividade.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTiposAtividade := self;
end;

procedure TDMTiposAtividade.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaTipoAtividade.value,'tiposatividade','tipoatividade',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['Tipo de Atividade']);
    raise Exception.Create('@@');
  end;
end;

end.
