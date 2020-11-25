unit DM_Mensagens;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, Db, IBQuery;

type
  TDMMensagens = class(TDMManutencao)
    C_TabelaMENSAGEM: TIntegerField;
    C_TabelaIDIOMA: TIntegerField;
    C_TabelaTITULO: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaBOTOES: TStringField;
    C_TabelaTIPOMSG: TStringField;
    C_TabelaMODULO: TStringField;
    C_TabelaIMPORTACAO: TIntegerField;
    C_TabelaSOLUCAO: TStringField;
    C_TabelaPORQUE: TStringField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMMensagens: TDMMensagens;

implementation
uses DM_Projeto;

{$R *.DFM}

procedure TDMMensagens.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaMensagem.value := DMProjeto.LastID('Mensagens') + 1;
  C_TabelaIdioma.value := 1;
  C_TabelaTipoMsg.value := 'Q';
end;

procedure TDMMensagens.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMMensagens := self;
end;

procedure TDMMensagens.DMComponentGravar3_AposApply(Sender: TObject);
begin
  inherited;
  if not bAlteracao then
    DMProjeto.NextID('Mensagens');
end;

end.
