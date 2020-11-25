unit DM_ClassesPrecos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMClassesPrecos = class(TDMManutencao)
    C_TabelaCLASSEPRECO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    Q_ClassesPrecosDet: TIBQuery;
    U_ClassesPrecosDet: TIBUpdateSQL;
    P_ClassesPrecosDet: TDataSetProvider;
    C_ClassesPrecosDet: TClientDataSet;
    IntegerField1: TIntegerField;
    C_ClassesPrecosDetdS: TDataSource;
    C_ClassesPrecosDetCLASSEPRECODET: TIntegerField;
    C_ClassesPrecosDetCLASSEPRECO: TIntegerField;
    C_ClassesPrecosDetUNIDADE: TStringField;
    C_ClassesPrecosDetPERCENTUAL: TBCDField;
    Q_Unidades: TIBQuery;
    P_Unidades: TDataSetProvider;
    C_Unidades: TClientDataSet;
    IntegerField2: TIntegerField;
    C_UnidadesDs: TDataSource;
    C_UnidadesUNIDADE: TStringField;
    C_UnidadesDESCRICAO: TStringField;
    C_ClassesPrecosDetlkUNidades: TStringField;
    C_TabelaQ_ClassesPrecosDet: TDataSetField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_ClassesPrecosDetNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    Iddet: Integer;
  public
    { Public declarations }
  end;

var
  DMClassesPrecos: TDMClassesPrecos;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMClassesPrecos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMClassesPrecos:=Self;
  Iddet:=0;
end;

procedure TDMClassesPrecos.C_ClassesPrecosDetNewRecord(DataSet: TDataSet);
begin
  inherited;
  dec(Iddet);
  C_ClassesPrecosDetClassePrecoDet.Value := Iddet;
end;

end.
