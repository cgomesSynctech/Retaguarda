unit DM_TaxAgencias;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, Db, IBCustomDataSet, DlgMsg, DMComponent, IBUpdateSQL,
  IBQuery, DBClient, Provider;

type
  TDMTaxAgencias = class(TDMManutencao)
    C_TabelaTAXAGENCIA: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaPERCENTUAL: TBCDField;
    C_TabelaFORNECEDOR: TIntegerField;
    C_TabelaCONTA: TIntegerField;
    C_TabelaNOME: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaDESCRICAOValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMTaxAgencias: TDMTaxAgencias;

implementation

uses DM_Projeto;

{$R *.DFM}

procedure TDMTaxAgencias.DataModuleCreate(Sender: TObject);
begin
  inherited;
	DMTaxAgencias := self;
end;

procedure TDMTaxAgencias.C_TabelaDESCRICAOValidate(Sender: TField);
begin
  inherited;
  if DMProjeto.VerificaExistencia(C_TabelaTaxAgencia.value,'taxagencias','taxagencia',C_Tabeladescricao.value,'descricao') then begin
    DlgMsg.ShowMsg(5001,['Agência de Tax']);
    raise Exception.Create('@@');
  end;
end;

end.
