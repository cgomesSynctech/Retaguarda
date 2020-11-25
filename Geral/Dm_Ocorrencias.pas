unit DM_Ocorrencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMOcorrencias = class(TDMManutencao)
    C_TabelaOCORRENCIA: TIntegerField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaOBS: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    Q_Usuarios: TIBQuery;
    DataSource1: TDataSource;
    C_Usuarios: TClientDataSet;
    P_Usuarios: TDataSetProvider;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    C_TabelaHORA: TStringField;
    C_TabelaUSUARIO: TIntegerField;
    C_TabelalkUsuario: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    nTipoFav: Integer;
    sNome : string;
    { Public declarations }
  end;

var
  DMOcorrencias: TDMOcorrencias;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMOcorrencias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMOcorrencias := self;
end;

procedure TDMOcorrencias.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
	C_TabelaDesativado.Value := 'N';
  C_TabelaHora.Value 		:= formatdatetime('hh:mm',time);
  C_TabelaUsuario.Value := DMProjeto.nFuncionario;
  C_TabelaData.value 	  := DMProjeto.dDataSistema;
  C_TabelaFavorecido.Value := nOpenKey;
  C_TabelaNome.Value    := sNome;
end;

end.
