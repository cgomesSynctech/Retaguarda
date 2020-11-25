unit DM_Promocoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMPromocoes = class(TDMManutencao)
    Q_PromocoesItens: TIBQuery;
    U_PromocoesItens: TIBUpdateSQL;
    C_PromocoesItens: TClientDataSet;
    IntegerField1: TIntegerField;
    C_PromocoesItensDS: TDataSource;
    C_TabelaPROMOCAO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaDATA_INICIAL: TDateField;
    C_TabelaDATA_FINAL: TDateField;
    C_TabelaITEM: TIntegerField;
    C_TabelaQ_PromocoesItens: TDataSetField;
    C_PromocoesItensPROMOCAOITEM: TIntegerField;
    C_PromocoesItensPROMOCAO: TIntegerField;
    C_PromocoesItensTABELAPRECO: TIntegerField;
    C_PromocoesItensUNIDADE: TStringField;
    C_PromocoesItensPRECOPROMOCAO: TBCDField;
    Q_DescPromocoes: TIBQuery;
    Q_UnidadesPreco: TIBQuery;
    C_UnidadesPreco: TClientDataSet;
    C_UnidadesPrecoUNIDADE: TStringField;
    C_UnidadesPrecoDESCRICAO: TStringField;
    P_UnidadesPreco: TDataSetProvider;
    P_DescPromocoes: TDataSetProvider;
    C_DescPromocoes: TClientDataSet;
    C_DescPromocoesDESCRICAO: TStringField;
    C_TabelaDESCRICAOITEM: TStringField;
    C_PromocoesItensPrecoTabela: TBCDField;
    C_DescPromocoesDS: TDataSource;
    C_TabelaFECHADA: TStringField;
    C_PromocoesItenslkUnidade: TStringField;
    Q_TabelasDePreco: TIBQuery;
    P_TabelasDePreco: TDataSetProvider;
    C_TabelasDePreco: TClientDataSet;
    C_TabelasDePrecoTABELAPRECO: TIntegerField;
    C_TabelasDePrecoDESCRICAO: TStringField;
    C_PromocoesItenslkTabelaDePreco: TStringField;
    C_PromocoesItensFECHADA: TStringField;
    Q_SQL: TIBQuery;
    C_TabelaEmpresa: TIntegerField;
    C_TabelaFornecpreferencia: TIntegerField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure C_PromocoesItensTABELAPRECOChange(Sender: TField);
    procedure C_PromocoesItensNewRecord(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_PromocoesItensUNIDADEChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaFECHADAChange(Sender: TField);
  private
    { Private declarations }
    nSeqItem : Integer;
  public
    { Public declarations }
  end;

var
  DMPromocoes: TDMPromocoes;

implementation
  uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TDMPromocoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMPromocoes := self;
end;

procedure TDMPromocoes.DMComponentModoInclusao2_Terminar(Sender: TObject);
begin
  inherited;
  nSeqItem := 0;
  C_DescPromocoes.Close;
  C_DescPromocoes.Open;
end;

procedure TDMPromocoes.C_PromocoesItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  dec(nSeqItem);

  C_PromocoesItensPromocaoItem.Value := nSeqItem;

  C_PromocoesItensPrecoPromocao.Value := 0;
  C_PromocoesItensPrecoTabela.Value := 0;

end;

procedure TDMPromocoes.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaData_Inicial.Value := DMProjeto.dDataSistema;
  C_TabelaData_Final.Value   := DMProjeto.dDataSistema + 7;
  C_TabelaFechada.Value     := 'N';
end;

procedure TDMPromocoes.C_PromocoesItensUNIDADEChange(Sender: TField);
begin
  inherited;
  if (C_PromocoesItensTabelaPreco.asVariant <> null) and (C_PromocoesItensUnidade.Value <> '') then
    C_PromocoesItensPrecoTabela.Value := DMProjeto.PrecoDireto(C_TabelaItem.Value, C_PromocoesItensUnidade.Value, C_PromocoesItensTabelaPreco.Value);

end;

procedure TDMPromocoes.C_PromocoesItensTABELAPRECOChange(Sender: TField);
begin
  inherited;
  {Capturando o Preco Tabela para a Tabela de Preço e Unidade escolhidas}
  if (C_PromocoesItensTabelaPreco.asVariant <> null) and (C_PromocoesItensUnidade.Value <> '') then
    C_PromocoesItensPrecoTabela.Value := DMProjeto.PrecoDireto(C_TabelaItem.Value, C_PromocoesItensUnidade.Value, C_PromocoesItensTabelaPreco.Value);

end;


procedure TDMPromocoes.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  {Eliminando os Precos zero}
  with C_PromocoesItens do begin
    first;
    while not EOF do
      if C_PromocoesItensPrecoPromocao.Value <= 0 then
        Delete
      else
        Next;

  end;

  if C_PromocoesItens.RecordCount = 0 then begin
    bSkip := true;

    DlgMsg.ShowMsg(2778);
  end;


end;

procedure TDMPromocoes.C_TabelaFECHADAChange(Sender: TField);
begin
  inherited;
  with C_PromocoesItens do begin
    First;
    while not EOF do begin
      Edit;
      C_PromocoesItensFechada.Value := Sender.asString;
      Next;
    end;

    First;

  end;

end;

end.
