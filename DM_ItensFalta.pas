unit DM_ItensFalta;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMItensFalta = class(TDMManutencao)
    C_TabelaITEMFALTA: TIntegerField;
    C_TabelaITEM: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaDATA: TDateField;
    C_TabelaQTD: TBCDField;
    C_TabelaUSUARIO: TIntegerField;
    C_TabelaOBS: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_TabelaCLIENTE: TIntegerField;
    C_TabelaNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMItensFalta: TDMItensFalta;

implementation
uses DM_Projeto;
{$R *.dfm}

procedure TDMItensFalta.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMItensFalta := Self;
end;

procedure TDMItensFalta.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaData.value := DMProjeto.dDataSistema;
  C_TabelaUsuario.value := DMProjeto.nFuncionario;
end;

procedure TDMItensFalta.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if Trim(C_TabelaDescricao.Value) = '' then begin
    DlgMsg.ShowMsg(50,['Você deve digitar a descrição do item']);
    bSkip := True;
  end;  
end;

end.
