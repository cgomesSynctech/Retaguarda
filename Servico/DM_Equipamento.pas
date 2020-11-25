unit DM_Equipamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMEquipamento = class(TDMManutencao)
    C_TabelaEQUIPAMENTO: TIntegerField;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaMARCA: TIntegerField;
    C_TabelaTECNOLOGIA: TIntegerField;
    C_TabelaNUMMAQUINA: TStringField;
    C_TabelaPAVIMENTOS: TIntegerField;
    Q_Marcas: TIBQuery;
    P_Marcas: TDataSetProvider;
    C_Marcas: TClientDataSet;
    C_MarcasDESCRICAO: TStringField;
    Q_Tecnologias: TIBQuery;
    P_Tecnologias: TDataSetProvider;
    C_Tecnologias: TClientDataSet;
    C_TecnologiasTECNOLOGIA: TIntegerField;
    C_TecnologiasDESCRICAO: TStringField;
    C_MarcasMARCA: TIntegerField;
    C_TabelalkMarca: TStringField;
    C_TabelalkTecnologia: TStringField;
    C_TabelaDESCFAVORECIDO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMEquipamento: TDMEquipamento;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMEquipamento.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMEquipamento := Self;
end;

end.
