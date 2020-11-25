unit DM_Propagandas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMPropagandas = class(TDMManutencao)
    C_TabelaPROPAGANDA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaIMAGEM: TStringField;
    C_TabelaCONFIGIMG: TStringField;
    C_TabelaMULTIMIDIA: TStringField;
    C_TabelaTEMPO: TIntegerField;
    C_TabelaORDEM_EXIBICAO: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaTRANSPARENTE: TStringField;
    C_TabelaSTRECH: TStringField;
    C_TabelaEFEITO: TStringField;
    Q_SQL: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPropagandas: TDMPropagandas;

implementation
  uses DM_Projeto;

{$R *.dfm}

procedure TDMPropagandas.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMPropagandas := self;
end;

procedure TDMPropagandas.C_TabelaNewRecord(DataSet: TDataSet);
  function GetPropagandasCount : Integer;
  begin
    with Q_SQL do begin
      Close;
      SQL.Text := 'Select count(*) as Qtd from Propagandas';
      Open;

      result := fieldbyname('qtd').asinteger;
      Close;

    end;
  end;

begin
  inherited;
  C_TabelaDesativado.Value := 'N';
  
  C_TabelaStrech.Value := 'N';
  C_TabelaTransparente.Value := 'S';
  C_TabelaEfeito.Value := 'EF0';
  C_TabelaTempo.Value := 3;
  C_TabelaOrdem_Exibicao.Value := GetPropagandasCount + 1;
  
end;

end.
