unit DM_LocaisEntrega;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery, Variants;

type
  TDMLocaisEntrega = class(TDMManutencao)
    C_TabelaENTREGA: TIntegerField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaENDERECOENTREGA: TStringField;
    C_TabelaCIDADEENTREGA: TStringField;
    C_TabelaUFENTREGA: TStringField;
    C_TabelaCEPENTREGA: TStringField;
    Q_UFS: TIBQuery;
    P_UFs: TDataSetProvider;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    C_TabelalkUF: TStringField;
    C_TabelaPAISENTREGA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    Q_Paises: TIBQuery;
    P_Paises: TDataSetProvider;
    C_Paises: TClientDataSet;
    C_PaisesPAIS: TIntegerField;
    C_PaisesDESCRICAO: TStringField;
    C_TabelalkPais: TStringField;
    C_TabelaFONEENTREGA: TStringField;
    procedure C_TabelaBeforeOpen(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
    Favorecido: integer;
  end;

var
  DMLocaisEntrega: TDMLocaisEntrega;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMLocaisEntrega.C_TabelaBeforeOpen(DataSet: TDataSet);
begin
  inherited;
  If (Favorecido > 0) Then
     C_Tabela.Params.ParamByName('Favorecido').AsInteger := Favorecido;
end;

procedure TDMLocaisEntrega.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMLocaisEntrega := Self;
end;

procedure TDMLocaisEntrega.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  If  (Favorecido > 0) Then
      C_TabelaFavorecido.value := Favorecido;
end;

end.
