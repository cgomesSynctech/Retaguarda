unit DM_Medicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider, Variants;

type
  TDMMedicos = class(TDMManutencao)
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaNOME: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaENDERECO: TStringField;
    C_TabelaBAIRRO: TStringField;
    C_TabelaCIDADE: TStringField;
    C_TabelaUF: TStringField;
    C_TabelaCEP: TStringField;
    C_TabelaFONE1: TStringField;
    C_TabelaFONE2: TStringField;
    C_TabelaFAX: TStringField;
    C_TabelaCELULAR: TStringField;
    C_TabelaEMAIL: TStringField;
    C_UFs: TClientDataSet;
    C_UFsDESCRICAO: TStringField;
    C_UFsUF: TStringField;
    P_UFs: TDataSetProvider;
    Q_UFS: TIBQuery;
    C_TabelalkUF: TStringField;
    C_UFsDS: TDataSource;
    C_TabelaTIPOATIVIDADE: TIntegerField;
    Q_TiposAtividade: TIBQuery;
    P_TiposAtividade: TDataSetProvider;
    C_TiposAtividade: TClientDataSet;
    C_TiposAtividadeTIPOATIVIDADE: TIntegerField;
    C_TiposAtividadeATIVIDADE: TStringField;
    C_TabelalkTipoAtividade: TStringField;
    C_TabelaCPF_CNPJ: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaCODIGOValidate(Sender: TField);
    procedure C_TabelaCPF_CNPJValidate(Sender: TField);
  private
    { Private declarations }
    nFavorecido : integer;
  public
    procedure GeraCodigo;
  end;

var
  DMMedicos: TDMMedicos;

implementation
Uses Dm_projeto, funcoes;

{$R *.DFM}

procedure TDMMedicos.GeraCodigo;
var xID,xCasas: integer;
    sNomeDoCampo,sCodigo,xCodigo: string;
begin
  inherited;
  sNomeDoCampo := 'IDCodigoMedico';
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_Tabela.UpdateRecord;
  sCodigo := C_TabelaCODIGO.Value;
  xCodigo := sCodigo;
  if Direita(xCodigo,1)='-' then begin
    xCasas := 6;
    while (Direita(xCodigo,1)='-') or DMProjeto.VerificaExistenciaFav(7,C_TabelaFavorecido.value,'C',xCodigo) do begin
      xID := DMProjeto.NextID(copy(sCodigo,1,Pos('-',sCodigo)-1),1);
      if Length(IntToStr(xID))>6 then
        xCasas := Length(IntToStr(xID));
      xCodigo := sCodigo+AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end else if Trim(xCodigo)='' then begin
    xCasas := 6;
    while (trim(xCodigo)='') or DMProjeto.VerificaExistenciaFav(7,C_TabelaFavorecido.value,'C',xCodigo) do begin
      xID := DMProjeto.NextID(sNomeDoCampo,1);
      if Length(IntToStr(xID))>6 then
        xCasas := Length(IntToStr(xID));
      xCodigo := AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end;
  C_TabelaCODIGO.Value := xCodigo;
end;

procedure TDMMedicos.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMMedicos := self;
end;

procedure TDMMedicos.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
	if (C_TabelaCodigo.IsNull) then begin
  	DlgMsg.ShowMsg( 534 );
    bSkip := true;
  end;
end;

procedure TDMMedicos.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaTipoFavorecido.Value  := 7;
  C_TabelaDesativado.Value 			:= 'N';
  C_TabelaUF.value := DMProjeto.sUFEmpresa;
end;

procedure TDMMedicos.C_TabelaCODIGOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistenciaFav(4,C_TabelaFavorecido.value,'C',C_TabelaCODIGO.value) then begin
    DlgMsg.ShowMsg(5001,['Médico']);
    raise Exception.Create('@@');
  end;
end;

procedure TDMMedicos.C_TabelaCPF_CNPJValidate(Sender: TField);
begin
  inherited;
  CPF_CGCValido(Sender.Text);
end;

end.
