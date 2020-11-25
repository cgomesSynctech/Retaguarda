unit DM_AgendaTelefones;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMAgendaTelefones = class(TDMManutencao)
    C_TabelaAGENDATELEFONE: TIntegerField;
    C_TabelaNOME: TStringField;
    C_TabelaTELEFONE1: TStringField;
    C_TabelaTELEFONE2: TStringField;
    C_TabelaTELEFONE3: TStringField;
    C_TabelaEMAIL: TStringField;
    C_TabelaSITE: TStringField;
    C_TabelaENDERECO: TStringField;
    C_TabelaCIDADE: TStringField;
    C_TabelaUF: TStringField;
    C_TabelaCEP: TStringField;
    C_TabelaPAIS: TStringField;
    Q_LookUFS: TIBQuery;
    Q_UFsProvider: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    C_UFsDS: TDataSource;
    C_TabelalkUF: TStringField;
    C_TabelaDIA_NASC: TIntegerField;
    C_TabelaMES_NASC: TIntegerField;
    C_TabelaUSUARIO: TIntegerField;
    C_TabelaEMPRESA: TStringField;
    C_TabelaCARGO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAgendaTelefones: TDMAgendaTelefones;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMAgendaTelefones.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMAgendaTelefones := self;
end;

procedure TDMAgendaTelefones.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaUsuario.value := DMProjeto.nFuncionario;
end;

procedure TDMAgendaTelefones.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  //delete(where,1,6);
  //where := 'where usuario = '+IntToStr(DMProjeto.nFuncionario)+' and '+where; 
end;

end.
