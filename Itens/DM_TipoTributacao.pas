unit DM_TipoTributacao;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMTipoTributacao = class(TDMManutencao)
    C_TabelaSITUACAOECF: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaDECRETO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTipoTributacao: TDMTipoTributacao;

implementation

{$R *.dfm}

uses DM_Projeto;

procedure TDMTipoTributacao.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMTipoTributacao := Self;
end;

procedure TDMTipoTributacao.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  if not bAlteracao then begin
    DlgMsg.ShowMsg( 50, ['Não é possível incluir novos tipos de tributação.'] );
    bSkip := True;
  end;
end;

end.
