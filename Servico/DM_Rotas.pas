unit DM_Rotas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMRotas = class(TDMManutencao)
    C_TabelaROTA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaDATAHORAALTERACAO: TDateField;
    C_Clientes: TClientDataSet;
    C_ClientesID: TIntegerField;
    C_ClientesNome: TStringField;
    C_ClientesDS: TDataSource;
    Q_RotaDet: TIBQuery;
    U_RotaDet: TIBUpdateSQL;
    C_RotaDet: TClientDataSet;
    C_RotaDetROTACLIENTE: TIntegerField;
    C_RotaDetROTA: TIntegerField;
    C_RotaDetCLIENTE: TIntegerField;
    C_RotaDetDS: TDataSource;
    Q_Favorecido: TIBQuery;
    P_Favorecido: TDataSetProvider;
    C_Favorecido: TClientDataSet;
    C_FavorecidoFAVORECIDO: TIntegerField;
    C_FavorecidoNOME: TStringField;
    C_RotaDetCLIENTENOME: TStringField;
    C_TabelaCLIENTES: TStringField;
    C_TabelaQ_RotaDet: TDataSetField;
    C_RotaDetORDEM: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure C_RotaDetNewRecord(DataSet: TDataSet);
  private
    nSeq: Integer;
  public
    function getIDsClientes: String;

  end;

var
  DMRotas: TDMRotas;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDMRotas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMRotas := Self;
  nSeq := -1;
end;

procedure TDMRotas.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  C_TabelaDATAHORAALTERACAO.Value := DMProjeto.GetTimeServidor;
  C_TabelaCLIENTES.Value := getIDsClientes;  
end;

procedure TDMRotas.DMComponentModoInclusao1_Iniciar(Sender: TObject);
begin
  inherited;
  if not C_Clientes.Active then
    C_Clientes.CreateDataSet
  else
    C_Clientes.EmptyDataSet;
end;

function TDMRotas.getIDsClientes;
var
 IDs: String;
begin
  if C_RotaDet.RecordCount > 0 then begin
    IDs := '';
    C_RotaDet.DisableControls;
    C_RotaDet.First;
    while not C_RotaDet.EOF do begin
      IDs := CExp(IDs,',') + C_RotaDetCLIENTE.AsString;
      C_RotaDet.Next;
    end;
    C_RotaDet.EnableControls;
    result := IDs;
  end
  else
    result := '';
end;


procedure TDMRotas.C_RotaDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  dec(nSeq);
  C_RotaDetROTACLIENTE.Value := nSeq;
end;

end.
