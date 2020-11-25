unit DM_Textos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMTextos = class(TDMManutencao)
    C_TabelaTEXTO: TIntegerField;
    C_TabelaTITULO: TStringField;
    C_TabelaCATEGORIA: TIntegerField;
    Q_Consultas: TIBQuery;
    Q_ConsultasDS: TDataSource;
    C_Consultas: TClientDataSet;
    Q_ConsultasProvider: TDataSetProvider;
    C_ConsultasCONSULTA: TIntegerField;
    C_ConsultasTITULO: TStringField;
    C_TabelaCONSULTA: TIntegerField;
    C_TabelaDescConsulta: TStringField;
    Q_CategoriasTextos: TIBQuery;
    Q_CategoriasDS: TDataSource;
    C_CategoriasTextos: TClientDataSet;
    C_CategoriasProvider: TDataSetProvider;
    Q_CategoriasTextosCATEGORIATEXTO: TIntegerField;
    Q_CategoriasTextosDESCRICAO: TIBStringField;
    C_CategoriasTextosCATEGORIATEXTO: TIntegerField;
    C_CategoriasTextosDESCRICAO: TStringField;
    C_ConsultasQUERY: TStringField;
    C_TabelaIMPORTACAO: TIntegerField;
    C_TabelaQuery: TStringField;
    C_TabelaARQUIVO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTextos: TDMTextos;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMTextos.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMTextos := self;
end;

procedure TDMTextos.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaCategoria.Value := 2;
end;

procedure TDMTextos.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if C_TabelaCategoria.Value = 1 then begin
    DlgMsg.ShowMsg(948);
  	bSkip := true;
    exit;
  end;
end;

procedure TDMTextos.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
 	C_Tabela.Edit;
  inherited;
end;

end.
