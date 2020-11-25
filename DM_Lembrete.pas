unit DM_Lembrete;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent, 
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMLembrete = class(TDMManutencao)
    C_TabelaLEMBRETE: TIntegerField;
    C_TabelaDATAINICIAL: TDateField;
    C_TabelaDATAFINAL: TDateField;
    C_TabelaOBS: TStringField;
    C_TabelaSITUACAO: TStringField;
    C_TabelaDESATIVADO: TStringField;
    C_TabelaTIPO: TIntegerField;
    C_TabelaDOMINGO: TStringField;
    C_TabelaSEGUNDA: TStringField;
    C_TabelaTERCA: TStringField;
    C_TabelaQUARTA: TStringField;
    C_TabelaQUINTA: TStringField;
    C_TabelaSEXTA: TStringField;
    C_TabelaSABADO: TStringField;
    Q_lcliente: TIBQuery;
    C_lcliente: TClientDataSet;
    Q_lclienteProvider: TDataSetProvider;
    C_lclienteDS: TDataSource;
    U_lcliente: TIBUpdateSQL;
    C_lclienteLEMBRETECLIENTE: TIntegerField;
    C_lclienteLEMBRETE: TIntegerField;
    C_lclienteCLIENTE: TIntegerField;
    C_lclienteNOME: TStringField;
    C_lclienteTIPOFAVORECIDO: TIntegerField;
    Q_lclienteLEMBRETECLIENTE: TIntegerField;
    Q_lclienteLEMBRETE: TIntegerField;
    Q_lclienteCLIENTE: TIntegerField;
    Q_lclienteNOME: TIBStringField;
    Q_lclienteTIPOFAVORECIDO: TIntegerField;
    C_TabelaQ_lcliente: TDataSetField;
    C_TabelaMEMORIZACAO: TIntegerField;
    C_lclientelkTipoFav: TStringField;
    C_TabelaUSUARIO: TIntegerField;
    Q_Usuarios: TIBQuery;
    C_Usuarios: TClientDataSet;
    C_UsuariosUSUARIO: TIntegerField;
    C_UsuariosLOGINNAME: TStringField;
    Q_UsuariosProvider: TDataSetProvider;
    C_TabelalkUsuario: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_lclienteNewRecord(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_TabelaDATAINICIALChange(Sender: TField);
  private
    { Private declarations }
  public
     nCodCli, nCodMemorizacao: Integer;
    { Public declarations }
  end;

var
  DMLembrete: TDMLembrete;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMLembrete.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMLembrete := Self;
end;

procedure TDMLembrete.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  C_TabelaDATAINICIAL.value  := DMProjeto.dDataSistema;
  C_TabelaDATAFINAL.value    := DMProjeto.dDataSistema;
  C_TabelaTIPO.Value         := 0;
  C_TabelaSITUACAO.Value     := 'N';
  C_TabelaDESATIVADO.Value   := 'N';
  C_TabelaDOMINGO.Value      := 'N';
  C_TabelaSEGUNDA.Value      := 'N';
  C_TabelaTERCA.Value        := 'N';
  C_TabelaQUARTA.Value       := 'N';
  C_TabelaQUINTA.Value       := 'N';
  C_TabelaSEXTA.Value        := 'N';
  C_TabelaSABADO.Value       := 'N';
end;

procedure TDMLembrete.C_lclienteNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_lclienteLEMBRETECLIENTE.Value := -1;
  C_lclienteTIPOFAVORECIDO.Value := 0;  
end;

procedure TDMLembrete.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  if DMProjeto.nFuncionario > 0 then
    C_TabelaUsuario.value := DMProjeto.nFuncionario;
end;

procedure TDMLembrete.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
{
  if pos('usuario is null',where) = 0 then begin
    delete(where,1,6);
    where := '(lembretes.desativado = ''N'' and lembretes.situacao = ''N'' and lembretes.usuario is null or lembretes.usuario = '+IntToStr(DMProjeto.nFuncionario)+') and '+where;
  end;
}
end;

procedure TDMLembrete.C_TabelaDATAINICIALChange(Sender: TField);
begin
  inherited;
  if C_TabelaDataInicial.value > C_TabelaDATAFINAL.Value then
    C_TabelaDATAFINAL.Value := C_TabelaDataInicial.value;
end;

end.
