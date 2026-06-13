unit DM_Modelos;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;
  
type
  TDMModelos = class(TDMManutencao)
    C_TabelaMODELO: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaTIPOEQUIPAMENTO: TIntegerField;
    C_TabelaMARCA: TIntegerField;
    C_TabelaFABRICANTE: TIntegerField;
    Q_TiposEquip: TIBQuery;
    P_TiposEquip: TDataSetProvider;
    C_TiposEquip: TClientDataSet;
    C_TiposEquipTIPOEQUIPAMENTO: TIntegerField;
    C_TiposEquipDESCRICAO: TStringField;
    C_TabelalkTipoEquipamento: TStringField;
    Q_Fabricantes: TIBQuery;
    P_Fabricantes: TDataSetProvider;
    C_Fabricantes: TClientDataSet;
    C_FabricantesFABRICANTE: TIntegerField;
    C_FabricantesDESCRICAO: TStringField;
    C_TabelalkFabricante: TStringField;
    Q_Marcas: TIBQuery;
    P_Marcas: TDataSetProvider;
    C_Marcas: TClientDataSet;
    C_MarcasMARCA: TIntegerField;
    C_MarcasDESCRICAO: TStringField;
    C_TabelalkMarcas: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaCOR: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaMODELOValidate(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMModelos: TDMModelos;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMModelos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMModelos := Self;
end;

procedure TDMModelos.C_TabelaMODELOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistenciaEquipamento(C_TabelaModelo.value, 'C', C_TabelaCODIGO.value) then
  begin
      DlgMsg.ShowMsg(5001, ['Modelo']);
      raise Exception.Create('@@');
  end;
end;

procedure TDMModelos.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
    if (C_TabelaCodigo.Value = '') then begin
      C_Tabela.edit;
      C_TabelaCodigo.value := DMProjeto.GeraCodigoEquipamento(C_TabelaCodigo.value, C_TabelaModelo.value);
      C_Tabela.Post;
    end;
end;

end.
