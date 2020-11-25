unit DM_Filiais;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMFiliais = class(TDMManutencao)
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaNOME: TStringField;
    C_TabelaRAZAO: TStringField;
    C_TabelaCPF_CNPJ: TStringField;
    C_TabelaENDERECO: TStringField;
    C_TabelaBAIRRO: TStringField;
    C_TabelaCIDADE: TStringField;
    C_TabelaUF: TStringField;
    C_TabelaCEP: TStringField;
    C_TabelaFONE1: TStringField;
    C_TabelaFONE2: TStringField;
    C_TabelaFAX: TStringField;
    C_TabelaEMAIL: TStringField;
    C_TabelaTIPOFAVORECIDO: TIntegerField;
    C_TabelaDESATIVADO: TStringField;
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaCPF_CNPJGetText(Sender: TField; var Text: String;
      DisplayText: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMFiliais: TDMFiliais;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TDMFiliais.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaTipoFavorecido.Value := -1;
  C_TabelaDesativado.Value := 'N';
end;

procedure TDMFiliais.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMFiliais := Self;
end;

procedure TDMFiliais.C_TabelaCPF_CNPJGetText(Sender: TField;
  var Text: String; DisplayText: Boolean);
begin
  inherited;
  Text := MascaraCPFCNPJ( Sender.AsString );
end;

end.
