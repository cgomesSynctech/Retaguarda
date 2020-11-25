unit DM_DevConsigEnt;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_Saidas, Db, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, IBQuery, IBEvents;

type
  TDMDevConsigEnt = class(TDMSaidas)
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_TabelaSTATUSValidate(Sender: TField);
    procedure C_ItensSTATUSValidate(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMDevConsigEnt: TDMDevConsigEnt;

implementation
  uses DM_Projeto, Funcoes;

{$R *.DFM}

procedure TDMDevConsigEnt.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMDevConsigEnt := self;
end;

procedure TDMDevConsigEnt.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 9 and ');
end;

procedure TDMDevConsigEnt.C_TabelaSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'F') or (Sender.asString = 'L') then begin
    DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
    raise exception.create('@@');
    end
  else if bAlteracao and (C_TabelaStatusOld.Value = 'F') and (sender.asString <> 'F') then begin
    DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
    raise exception.create('@@');
    end
  else if bAlteracao and (C_TabelaStatusOld.Value = 'L') and (sender.asString <> 'H') then begin
    DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
    raise exception.create('@@');
  end;
end;

procedure TDMDevConsigEnt.C_ItensSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'F') or (Sender.asString = 'L') then begin
    DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
    raise exception.create('@@');
    end
  else if bAlteracao and (C_ItensStatusOld.Value = 'F') and (sender.asString <> 'F') then begin
    DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
    raise exception.create('@@');
    end
  else if bAlteracao and (C_ItensStatusOld.Value = 'L') and (sender.asString <> 'H') then begin
    DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
    raise exception.create('@@');
    end
  else if (sender.asString = 'M') and (C_ItensHasChildren.Value <> 'S') then begin
    DlgMsg.ShowMsg(2403);
    raise exception.create('@@');
  end;
end;

end.
