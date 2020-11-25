unit DM_Permissoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMPermissoes = class(TDMManutencao)
    C_TabelaPERMISSAO: TIntegerField;
    C_TabelaSIGLA: TStringField;
    C_TabelaDESCRICAO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPermissoes: TDMPermissoes;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMPermissoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMPermissoes := nil;
end;

procedure TDMPermissoes.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if not bAlteracao and (C_TabelaPermissao.value <= 0) then begin
    if trim(C_TabelaSigla.value) = '' then begin
      ShowMessage('Informe a Sigla da Permissão!');
      bSkip := true;
      exit;
    end;

    DMProjeto.Q_SQL.SQL.text := 'select * from permissoes where sigla = '''+C_TabelaSigla.value+'''';
    DMProjeto.Q_SQL.open;
    if DMProjeto.Q_SQL.recordcount > 0 then begin
      ShowMessage('Sigla de Permissão já existe!');
      bSkip := true;
      exit;
    end;
    if not (C_Tabela.state in [dsEdit,dsInsert]) then
      C_Tabela.edit;
    C_TabelaPermissao.value := DMProjeto.NextID('Permissoes');
  end;  
end;

end.
