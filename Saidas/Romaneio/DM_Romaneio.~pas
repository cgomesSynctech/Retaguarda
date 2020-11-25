unit DM_Romaneio;

interface
 
uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMRomaneio = class(TDMManutencao)
    C_Usuarios: TClientDataSet;
    C_UsuariosFAVORECIDO: TIntegerField;
    C_UsuariosNOME: TStringField;
    Q_UsuariosProvider: TDataSetProvider;
    Q_Usuarios: TIBQuery;
    Q_RomaneiosSaidas: TIBQuery;
    C_RomaneiosSaidas: TClientDataSet;
    C_RomaneiosSaidasDS: TDataSource;
    U_RomaneiosSaidas: TIBUpdateSQL;
    C_TabelaROMANEIO: TIntegerField;
    C_TabelaVEICULO: TIntegerField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaOBSERVACAO: TStringField;
    C_TabelaSITUACAO: TStringField;
    C_TabelaTOTALPESO: TBCDField;
    C_TabelacmbUsuario: TStringField;
    Q_Veiculos: TIBQuery;
    Q_VeiculosProvider: TDataSetProvider;
    C_Veiculos: TClientDataSet;
    C_VeiculosVEICULO: TIntegerField;
    C_VeiculosPLACA: TStringField;
    C_VeiculosCHASSI: TStringField;
    C_VeiculosDESCRICAO: TStringField;
    C_VeiculosCAPACIDADE: TBCDField;
    C_TabelacmbVeiculos: TStringField;
    C_VeiculosDS: TDataSource;
    C_UsuariosDs: TDataSource;
    P_RomaneioSaidas: TDataSetProvider;
    C_RomaneiosSaidasROMANEIOSAIDA: TIntegerField;
    C_RomaneiosSaidasROMANEIO: TIntegerField;
    C_RomaneiosSaidasSAIDA: TIntegerField;
    C_RomaneiosSaidasNUMERODOC: TStringField;
    C_RomaneiosSaidasDATASAIDA: TDateField;
    C_RomaneiosSaidasNOMEFORNECEDOR: TStringField;
    C_TabelaPERCENTUAL: TBCDField;
    C_TabelaQ_RomaneiosSaidas: TDataSetField;
    C_RomaneiosSaidasENTREGUE: TStringField;
    C_RomaneiosSaidasDESCRICAO: TStringField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_RomaneiosSaidasNewRecord(DataSet: TDataSet);
    procedure C_TabelaAfterOpen(DataSet: TDataSet);
  private
    { Private declarations }
    nIdRomaneioSaida: Integer;
  public
    { Public declarations }

  end;

var
  DMRomaneio: TDMRomaneio;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TDMRomaneio.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDATA.Value := DMPRojeto.getDataServidor;
  C_TabelaFUNCIONARIO.Value := DMProjeto.nFuncionario;
  C_TabelaPERCENTUAL.Value := 0;
end;

procedure TDMRomaneio.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMRomaneio := Self;
  nIdRomaneioSaida := -1000;
end;

procedure TDMRomaneio.C_RomaneiosSaidasNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_RomaneiosSaidas.FieldByName('ROMANEIOSAIDA').Value := nIdRomaneioSaida;
  dec(nIdRomaneioSaida);
  C_RomaneiosSaidasENTREGUE.Value := 'N';
end;

procedure TDMRomaneio.C_TabelaAfterOpen(DataSet: TDataSet);
begin
  inherited;
  If Not C_RomaneiosSaidas.Active Then
    C_RomaneiosSaidas.Active := True;

end;

end.
