unit DM_Almoxarifados;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMAlmoxarifados = class(TDMManutencao)
    C_TabelaALMOXARIFADO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    Q_SQL: TIBQuery;
    C_TabelaORDENARRETIRADA: TStringField;
    C_TabelaCONTROLEGONDOLA: TStringField;
    C_TabelaEMPRESA: TIntegerField;
    procedure DMComponentAntesDeApagar(Sender: TObject;
      var bCanDelete: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMAlmoxarifados: TDMAlmoxarifados;

implementation
  uses DM_Projeto, TDM_Projeto;

{$R *.dfm}

procedure TDMAlmoxarifados.DMComponentAntesDeApagar(Sender: TObject;
  var bCanDelete: Boolean);
var
  nEstoque : double;
begin
  inherited;

  if C_TabelaAlmoxarifado.Value = 0 then begin
    DlgMsg.ShowMsg(3301);
    bCanDelete := false;
    exit;
  end;

  {Verificando se há estoque para o almoxarifado}
  with Q_SQL do begin
    Close;
    SQL.Text := 'Select Sum(EstoqueAlmox) from ItensAlmox where Almoxarifado = :A and EstoqueAlmox > 0 ';
    Params[0].asInteger := C_TabelaAlmoxarifado.Value;
    Open;

    nEstoque := Fields[0].asFloat;
    Close;

    if (nEstoque > 0) and (DlgMsg.ShowMsg(3300) <> 100) then
      bCanDelete := false;
  end;

end;

procedure TDMAlmoxarifados.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMAlmoxarifados := self;
end;

procedure TDMAlmoxarifados.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaEMPRESA.Value := DMProjeto.nEmpresaLogada;
end;

end.
