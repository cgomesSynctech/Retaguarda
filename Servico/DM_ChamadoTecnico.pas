unit DM_ChamadoTecnico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMChamadoTecnico = class(TDMManutencao)
    C_TabelaCHAMADO: TIntegerField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaDATAMARCACAO: TDateField;
    C_TabelaHORAMARCACAO: TTimeField;
    C_TabelaSTATUS: TStringField;
    C_TabelaNOMECLIENTE: TStringField;
    C_TabelaNOMEFUNC: TStringField;
    C_TabelaDEFEITOALEGADO: TStringField;
    C_TabelaDEFEITOENCONTRADO: TStringField;
    C_TabelaDATAENTRADA: TDateField;
    C_TabelaHORAENTRADA: TTimeField;
    C_TabelaDATASAIDA: TDateField;
    C_TabelaHORASAIDA: TTimeField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
    bFinalizando : boolean;
  end;

var
  DMChamadoTecnico: TDMChamadoTecnico;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMChamadoTecnico.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMChamadoTecnico := Self;
  bFinalizando := False;
end;

procedure TDMChamadoTecnico.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDATAMARCACAO.AsDateTime := DMProjeto.dDataSistemaAtual;
  C_TabelaHORAMARCACAO.AsDateTime := Now;
  C_TabelaSTATUS.AsString := 'A';
end;

procedure TDMChamadoTecnico.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if (C_TabelaSTATUS.Value = 'F') and (not bFinalizando) then begin
    DlgMsg.ShowMsg( 8020 );
    bSkip := True;
  end;
end;

end.
