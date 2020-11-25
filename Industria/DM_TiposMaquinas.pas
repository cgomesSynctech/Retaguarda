unit DM_TiposMaquinas;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTiposMaquinas = class(TDMManutencao)
    C_TabelaTIPOMAQUINA: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaOBSERVACAO: TStringField;

    procedure DataModuleCreate(Sender: TObject);
    procedure GeraCodigo(sCodigo: string);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTiposMaquinas: TDMTiposMaquinas;

implementation
uses DM_Projeto, funcoes;


{$R *.dfm}

procedure TDMTiposMaquinas.DataModuleCreate(Sender: TObject);
begin
    inherited;
    DMTiposMaquinas := Self;
end;

procedure TDMTiposMaquinas.GeraCodigo(sCodigo: string);
var
    xID, xCasas: integer;
begin
    if trim(sCodigo) = '' then
        begin
            xCasas := 6;
            while (trim(sCodigo) = '') do
                begin
                    xID := DMProjeto.NextID('IDGLOBAL', 1);
                    if length(IntToStr(xID)) > 6 then
                        xCasas := length(IntToStr(xID));
                    sCodigo := AdicionarStr(IntToStr(xID), '0', xCasas);
                end;
        end;
    DMTiposMaquinas.C_TabelaCODIGO.Value := sCodigo;
end;

end.
 