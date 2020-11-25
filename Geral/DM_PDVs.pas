unit DM_PDVs;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMPDVs = class(TDMManutencao)
    C_TabelaPDV: TIntegerField;
    C_TabelaNUMEROECF: TStringField;
    C_TabelaNUMEROSERIEECF: TStringField;
    C_TabelaMODELODOC: TStringField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaPORTA: TStringField;
    C_TabelaECF: TIntegerField;
    C_TabelaMAQUINA: TStringField;
    C_TabelaOLDMAQUINA: TStringField;
    C_TabelaATIVO: TStringField;
    C_TabelaTEF: TStringField;
    C_TabelaTEFGP: TStringField;
    C_TabelaTEFHIPER: TStringField;
    C_TabelaTEFTECBAN: TStringField;
    C_TabelaCONSULTACHEQUE: TStringField;
    C_TabelaTEFDEDICADO: TStringField;
    C_TabelaCHEQUEDEDICADO: TStringField;
    C_TabelaDIRETORIOCUPONS: TStringField;
    C_TabelaPDVDEDICADO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaMAQUINAValidate(Sender: TField);
    procedure DMComponentGravar5_Terminar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMPDVs: TDMPDVs;

implementation
uses DM_Projeto;

{$R *.dfm}

procedure TDMPDVs.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMPDVs := self;
end;

procedure TDMPDVs.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaNumeroECF.value := '001';
  C_TabelaModeloDoc.value := '2D';
  C_TabelaECF.value := 0;
  C_TabelaPorta.value := 'COM2';
  C_TabelaAtivo.Value := 'S';
//  C_TabelaMaquina.value := DMProjeto.Maquina;
  C_TabelaDIRETORIOCUPONS.Value := 'C:\DPOS3x25\CUPONS\';
end;

procedure TDMPDVs.C_TabelaMAQUINAValidate(Sender: TField);
begin
  inherited;
  if not bAlteracao then begin
    if DMProjeto.VerificaExistenciaDesc('','pdvs','maquina',C_Tabelamaquina.value,'maquina') then begin
      DlgMsg.ShowMsg(6030);
      raise Exception.Create('@@');
    end;
  end
  else begin
    if DMProjeto.VerificaExistenciaDesc(C_TabelaOldMaquina.value,'pdvs','maquina',C_Tabelamaquina.value,'maquina') then begin
      DlgMsg.ShowMsg(6030);
      raise Exception.Create('@@');
    end;
  end;
end;

procedure TDMPDVs.DMComponentGravar5_Terminar(Sender: TObject);
begin
  inherited;
  if C_TabelaAtivo.Value = 'S' then DMProjeto.bECFAtivo := True
  else DMProjeto.bECFAtivo := False;
end;

end.
