unit DM_Bancos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider, Variants;

type
  TDMBancos = class(TDMManutencao)
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaLOGOTIPO: TStringField;
    C_TabelaTIPO_FUNC: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaCODIGOValidate(Sender: TField);
  private
    { Private declarations }
    nFavorecido : integer;
  public
    { Public declarations }
  end;

var
  DMBancos: TDMBancos;

implementation
Uses Dm_projeto;

{$R *.DFM}

procedure TDMBancos.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMBancos := self;
end;

procedure TDMBancos.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	if (C_TabelaCodigo.IsNull) then begin
  	DlgMsg.ShowMsg( 534 );
    bSkip := true;
  end;
end;

procedure TDMBancos.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  // O campo TIPO_FUNC foi aproveitado da tabela de favorecidos
  // para conter o dígito do banco.
  // Isto foi feito para não incluir mais um campo na tabela.
  C_TabelaTipoFavorecido.Value  := 4;
  C_TabelaDesativado.Value 			:= 'N';
end;

procedure TDMBancos.C_TabelaCODIGOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistenciaFav(4,C_TabelaFavorecido.value,'C',C_TabelaCODIGO.value) then begin
    DlgMsg.ShowMsg(5001,['Cliente']);
    raise Exception.Create('@@');
  end;
end;

end.
