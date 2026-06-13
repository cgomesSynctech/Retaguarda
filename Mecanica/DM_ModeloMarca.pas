unit DM_ModeloMarca;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMModeloMarca = class(TDMManutencao)
    C_Marca: TClientDataSet;
    IntegerField1: TIntegerField;
    P_Marca: TDataSetProvider;
    Q_Marca: TIBQuery;
    C_MarcaDS: TDataSource;
    C_TabelaID: TIntegerField;
    C_TabelaMARCA: TIntegerField;
    C_TabelaMODELO: TStringField;
    C_TabelalkMarca: TStringField;
    C_MarcaMARCA: TIntegerField;
    C_MarcaDESCRICAO: TStringField;
    C_MarcaORIGEMREPLIC: TStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMModeloMarca: TDMModeloMarca;

implementation

{$R *.dfm}
uses Dm_Projeto;

end.
