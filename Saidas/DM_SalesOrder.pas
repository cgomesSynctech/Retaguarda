unit DM_SalesOrder;

interface
uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_Saidas, Db, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, IBQuery, IBEvents, BTOdeum;

type
  TDMSalesOrder = class(TDMSaidas)
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_TabelaSTATUSValidate(Sender: TField);
    procedure C_ItensSTATUSValidate(Sender: TField);
    procedure C_ItensNewRecord(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
  private
    { Private declarations }
    nUltimoItem: Integer;
  public
    { Public declarations }
  end;

var
  DMSalesOrder: TDMSalesOrder;

implementation
  uses DM_Projeto, Funcoes, DM_DigitacaoItens;

{$R *.DFM}

procedure TDMSalesOrder.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMSalesOrder := self;
end;

procedure TDMSalesOrder.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 2 and ');
  Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

procedure TDMSalesOrder.C_TabelaSTATUSValidate(Sender: TField);
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

procedure TDMSalesOrder.C_ItensSTATUSValidate(Sender: TField);
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

procedure TDMSalesOrder.C_ItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  //C_ItensFOrnecPreferencia.Value := -9;
end;

procedure TDMSalesOrder.C_TabelaNewRecord(DataSet: TDataSet);
var
tipopadrao: integer;
begin
  inherited;

    tipopadrao := DMProjeto.TipoPadraoInicial(2, 'S', 0);
    if tipopadrao <> 0 then
        begin
            C_Tabela.Edit;
            C_TabelaTIPOMOVIMENTO.value := tipopadrao;
        end;
end;

end.
