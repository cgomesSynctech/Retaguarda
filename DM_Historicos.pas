unit DM_Historicos;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMHistoricos = class(TDMManutencao)
    C_TabelaHISTORICO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMHistoricos: TDMHistoricos;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMHistoricos.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMHistoricos := self;
end;

procedure TDMHistoricos.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaHistorico.value,'historicos','historico',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['Histórico']);
    raise Exception.Create('@@');
  end;
end;

end.
