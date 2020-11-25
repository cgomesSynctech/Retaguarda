unit DM_Categorias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMCategorias = class(TDMManutencao)
    C_TabelaCATEGORIA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaCOR: TStringField;
    C_TabelaCOR_FONTE: TStringField;
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentExclusao(Sender: TObject; var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMCategorias: TDMCategorias;

implementation

uses DM_Projeto, Frm_Categorias;

{$R *.DFM}

procedure TDMCategorias.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  C_TabelaCOR.Value := 'clWhite';
  C_TabelaCOR_FONTE.Value := 'clBlack';
end;

procedure TDMCategorias.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCategorias := Self;
end;

procedure TDMCategorias.DMComponentExclusao(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if Trim(C_TabelaDESCRICAO.Value) = Trim(DMProjeto.sNomeReservado) then
    bSkip := True;
end;

end.
