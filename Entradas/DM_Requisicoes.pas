unit DM_Requisicoes;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_Entradas, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, IBEvents;

type
  TDMRequisicoes = class(TDMEntradas)
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_ItensNewRecord(DataSet: TDataSet);
    procedure C_TabelaSTATUSValidate(Sender: TField);
    procedure C_ItensSTATUSValidate(Sender: TField);
    procedure C_ItensBeforePost(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMRequisicoes: TDMRequisicoes;

implementation
  uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TDMRequisicoes.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 103 and ');
  Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

procedure TDMRequisicoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMRequisicoes := self;
end;

procedure TDMRequisicoes.C_ItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  if (C_TiposMovimentoStatusPadraoItens.Value <> '') then
    C_ItensStatus.Value := C_TiposMovimentoStatusPadraoItens.Value
  else
    C_ItensStatus.Value := 'S';
end;

procedure TDMRequisicoes.C_TabelaSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'Z') or (Sender.asString = 'D') then begin
    DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
    raise exception.create('@@');
    end
  else if bAlteracao and (C_TabelaStatusOld.Value = 'Z') and (sender.asString <> 'Z') then begin
    DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
    raise exception.create('@@');
    end
  else if bAlteracao and (C_TabelaStatusOld.Value = 'D') and (sender.asString <> 'H') then begin
    DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
    raise exception.create('@@');
  end;
end;

procedure TDMRequisicoes.C_ItensSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'Z') or (Sender.asString = 'D') then begin
    DlgMsg.ShowMsg(2400); //Não é possível definir os status acima manualmente
    raise exception.create('@@');
    end
  else if bAlteracao and (C_ItensStatusOld.Value = 'Z') and (sender.asString <> 'Z') then begin
    DlgMsg.ShowMsg(2401); //Não é possível alterar o status se estiver como faturado
    raise exception.create('@@');
    end
  else if bAlteracao and (C_ItensStatusOld.Value = 'D') and (sender.asString <> 'H') then begin
    DlgMsg.ShowMsg(2402); //Quando no status L só pode ir para o Fechado
    raise exception.create('@@');
  end;
end;

procedure TDMRequisicoes.C_ItensBeforePost(DataSet: TDataSet);
begin
  inherited;
  if (C_ItensI_QtdeMaximo.Value > 0) and (C_ItensQuantidade.Value > C_ItensI_QtdeMaximo.Value) then
    DlgMsg.ShowMsg(2450, [C_ItensI_QtdeMaximo.DisplayText] );
end;

end.
