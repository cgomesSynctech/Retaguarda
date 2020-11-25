unit DM_Embalagem3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMEmbalagem3 = class(TDMManutencao)
    C_TabelaSAIDA: TIntegerField;
    C_TabelaEMBALAGENS: TIntegerField;
    C_TabelaNUMERO: TStringField;
    C_TabelaRAZAO: TStringField;
    C_TabelaDATA: TDateField;
    Q_Etiqueta: TIBQuery;
    C_TabelaCIDADE: TStringField;
    C_TabelaUF: TStringField;
    Q_Print: TIBQuery;
    P_Print: TDataSetProvider;
    C_Print: TClientDataSet;
    IntegerField1: TIntegerField;
    C_PrintDS: TDataSource;
    C_PrintMAQUINA: TStringField;
    C_PrintNUMERO: TStringField;
    C_PrintTOTEMBALAGEM: TIntegerField;
    C_PrintSEQUENCIA: TIntegerField;
    C_PrintRAZAO: TStringField;
    C_PrintCIDADE: TStringField;
    C_PrintUF: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    procedure geraretiqueta ;
  end;

var
  DMEmbalagem3: TDMEmbalagem3;

implementation
uses DM_projeto, TDM_Projeto;
{$R *.dfm}

procedure TDMEmbalagem3.geraretiqueta ;
var
i : integer ;
begin
     if not DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.StartTransaction;

     Q_Etiqueta.Close ;
     Q_Etiqueta.SQL.Text := ' Delete from ETIQUETAEMBALAGEM WHERE MAQUINA = :MAQUINA ' ;
     Q_Etiqueta.Parambyname('MAQUINA').AsString := DMProjeto.Maquina;
     Q_Etiqueta.Prepare;
     Q_Etiqueta.ExecSQL;
     Q_Etiqueta.Close;
     Q_Etiqueta.SQL.Text := ' INSERT INTO ETIQUETAEMBALAGEM (MAQUINA, NUMERO, TOTEMBALAGEM, SEQUENCIA, RAZAO, CIDADE, UF)'+
     ' VALUES (:MAQUINA, :NUMERO, :TOTEMBALAGEM, :SEQUENCIA, :RAZAO, :CIDADE, :UF ) ';

      for i := 1 to C_TabelaEMBALAGENS.AsInteger do
        begin
          Q_Etiqueta.Close;
          Q_Etiqueta.ParamByName('MAQUINA').AsString := DMProjeto.Maquina;
          Q_Etiqueta.ParamByName('NUMERO').AsString := C_TabelaNUMERO.AsString ;
          Q_Etiqueta.ParamByName('TOTEMBALAGEM').AsInteger := C_TabelaEMBALAGENS.AsInteger ;
          Q_Etiqueta.ParamByName('SEQUENCIA').AsInteger := I ;
          Q_Etiqueta.ParamByName('RAZAO').AsString := C_TabelaRAZAO.AsString ;
          Q_Etiqueta.ParamByName('CIDADE').AsString := C_TabelaCIDADE.AsString ;
          Q_Etiqueta.ParamByName('UF').AsString := C_TabelaUF.AsString ;
          Q_Etiqueta.Prepare;
          Q_Etiqueta.ExecSQL ;
        end;
      Q_Etiqueta.Close;
      if DMProjeto.DB_Projeto.DefaultTransaction.InTransaction then
            DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      C_Print.Active := False;
      Q_Print.Close;
      Q_Print.Prepare;
      Q_Print.Open;
      Q_Print.Close;

      DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
      
end;

procedure TDMEmbalagem3.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMEmbalagem3 := self ;
end;

end.
