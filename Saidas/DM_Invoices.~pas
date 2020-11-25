unit DM_Invoices;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_Saidas, Db, DBClient, Provider, DlgMsg, DMComponent, IBCustomDataSet,
  IBUpdateSQL, IBQuery, IBEvents, BTOdeum;

type
  TDMInvoices = class(TDMSaidas)
    C_TabelaSTATUSNFE: TIntegerField;
    Q_StatusNFe: TIBQuery;
    P_StatusNFe: TDataSetProvider;
    C_StatusNFe: TClientDataSet;
    C_StatusNFeDs: TDataSource;
    C_StatusNFeSAIDANFESTATUS: TIntegerField;
    C_StatusNFeDESCRICAO: TStringField;
    C_TabelalkStatusNFe: TStringField;
    C_ItenslkCFOPs: TStringField;
    C_CFOPsCFOPDESC: TStringField;
    C_CSTsCSTDESC: TStringField;
    C_ItenslkCST: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure C_ItensNewRecord(DataSet: TDataSet);
    procedure C_ItensSTATUSValidate(Sender: TField);
    procedure C_TabelaSTATUSChange(Sender: TField);
    procedure C_ItensPRECOChange(Sender: TField);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DMInvoices: TDMInvoices;

implementation
  uses DM_Projeto, Funcoes, Frm_Invoices;

{$R *.DFM}

procedure TDMInvoices.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMInvoices := self;
end;

procedure TDMInvoices.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
//  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 1 and (t.serienota is null or t.serienota <> ''ECF'') and ');
  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 1 and ');
  Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

procedure TDMInvoices.C_ItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  if C_ItensStatus.Value = 'P' then
    C_ItensStatus.Value := 'E';
end;

procedure TDMInvoices.C_ItensSTATUSValidate(Sender: TField);
begin
  inherited;
  if (sender.asString = 'M') and (C_ItensHasChildren.Value <> 'S') then begin
    DlgMsg.ShowMsg(2403);
    raise exception.create('@@');
  end;
end;

procedure TDMInvoices.C_TabelaSTATUSChange(Sender: TField);
begin
  inherited;
  if C_Itens.RecordCount > 0 then begin
    try
      bDisableItensAfterPost := true;
      C_Itens.DisableControls;
      C_Itens.First;
      while not C_Itens.EOF do begin
        if (C_ItensStatus.Value <> 'M') and (C_ItensI_TipoItem.Value in [1,2]) then begin
          C_Itens.Edit;
          C_ItensStatus.Value := Sender.asString;
          C_Itens.Post;
        end;
        C_Itens.Next;
      end;
      C_Itens.First;
    finally
      bDisableItensAfterPost := false;
      C_Itens.EnableControls;
    end;
  end;
end;

procedure TDMInvoices.C_ItensPRECOChange(Sender: TField);
begin
   if C_ItensPRECO.Value < 0 then
      exit;
  inherited;
end;

end.
