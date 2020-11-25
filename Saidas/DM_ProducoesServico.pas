unit DM_ProducoesServico;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMProducoesServico = class(TDMManutencao)
    C_TabelaPRODUCAOSERVICO: TIntegerField;
    C_TabelaDATA: TDateField;
    C_TabelaFUNCIONARIO: TIntegerField;
    C_TabelaSERVICO: TIntegerField;
    C_ProducoesServicosDetDs: TDataSource;
    P_ProducoesServicosDet: TDataSetProvider;
    C_ProducoesServicosDet: TClientDataSet;
    Q_ProducoesServicosDet: TIBQuery;
    U_ProducoesServicosDet: TIBUpdateSQL;
    C_ProducoesServicosDetPRODUCAOSERVICODET: TIntegerField;
    C_ProducoesServicosDetPRODUCAOSERVICO: TIntegerField;
    C_ProducoesServicosDetITEM: TIntegerField;
    C_ProducoesServicosDetQUANTIDADE: TIntegerField;
    C_ProducoesServicosDetPRECO: TBCDField;
    C_TabelaQ_ProducoesServicosDet: TDataSetField;
    Q_PrecoServico: TIBQuery;
    C_PrecoServicoDs: TDataSource;
    C_PrecoServico: TClientDataSet;
    P_PrecoServico: TDataSetProvider;
    C_ProducoesServicosDeticSubTotal: TCurrencyField;
    C_TabelaF_NOME: TStringField;
    C_TabelaI_DESCRICAO: TStringField;
    C_ProducoesServicosDetDESCRICAO: TStringField;
    C_PrecoServicoPRECO: TBCDField;
    C_TabelaCODIGO: TStringField;
    C_ProducoesServicosDetI_CODIGO: TStringField;
    C_TabelaCODITEM: TStringField;
    C_TabelaCODFUNC: TStringField;
    procedure C_ProducoesServicosDetCalcFields(DataSet: TDataSet);
    procedure C_ProducoesServicosDetNewRecord(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_ProducoesServicosDetITEMChange(Sender: TField);

  private
    { Private declarations }
    nID: Integer;
  public
    { Public declarations }
    procedure GeraCodigo;    
  end;

var
  DMProducoesServico: TDMProducoesServico;

implementation

uses DM_Projeto, Funcoes, TDM_Projeto;

{$R *.dfm}

procedure TDMProducoesServico.C_ProducoesServicosDetCalcFields(
  DataSet: TDataSet);
begin
  inherited;
  DataSet.FieldByName('icSubTotal').AsCurrency :=
     DataSet.FieldByName('Quantidade').AsInteger *
     DataSet.FieldByName('Preco').AsCurrency;
end;

procedure TDMProducoesServico.C_ProducoesServicosDetNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  Dec(nID);
  DataSet.FieldByName('PRODUCAOSERVICODET').AsInteger := nId;
//  DataSet.FieldByName('Quantidade').AsInteger := 0;
//  DataSet.FieldByName('Preco').AsCurrency := 0.00;
end;

procedure TDMProducoesServico.GeraCodigo;
var xID,xCasas: integer;
    sNomeDoCampo,sCodigo,xCodigo: string;
begin
  inherited;
  sNomeDoCampo := 'CODIGO';
  if not(C_Tabela.State in [dsEdit,dsInsert]) then
    C_Tabela.Edit;
  C_Tabela.UpdateRecord;

  sCodigo := C_TabelaCODIGO.Value;
  xCodigo := sCodigo;
  if Direita(xCodigo,1)='-' then begin
    xCasas := 6;

    while (Direita(xCodigo,1)='-') do begin
      xID := DMProjeto.NextID(copy(sCodigo,1,Pos('-',sCodigo)-1),1);
      if Length(IntToStr(xID))>6 then
        xCasas := Length(IntToStr(xID));
      xCodigo := sCodigo+AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end else if Trim(sCodigo)='' then begin
    xCasas := 6;
    while (trim(xCodigo)='') do begin
      xID := DMProjeto.NextID(sNomeDoCampo,1);
      if Length(IntToStr(xID))>6 then
        xCasas := Length(IntToStr(xID));
      xCodigo := AdicionarStr(IntToStr(xID),'0',xCasas);
    end;
  end;
  C_TabelaCODIGO.Value := xCodigo;
end;



procedure TDMProducoesServico.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMProducoesServico := Self;
  nId := 0;
end;

procedure TDMProducoesServico.C_ProducoesServicosDetITEMChange(
  Sender: TField);
var
  i, nMarca : Integer;   c, esp : string;
begin
  inherited;
  if Sender.Value <> Null then begin

    C_ProducoesServicosDetDESCRICAO.Value := DMProject.C_LocalizarItens.FieldByName('Descricao').asString;

    {Capturando os dados dos produtos}
    For i := 0 to C_ProducoesServicosDet.Fields.Count - 1 do begin
      if Esquerda(C_ProducoesServicosDet.Fields[i].FieldName,2) = 'I_' then begin
        c := C_ProducoesServicosDet.Fields[i].FieldName;
        Delete(C,1,2);
        try
          C_ProducoesServicosDet.Fields[i].Value := DMProject.C_LocalizarItens.FieldByName(C).Value;
        except
          //Para prever o caso do campo não estar em C_LocalizarItens
        end;
      end;
    end;

    {*ATENÇÃO: O Change do campo Preco é que vai efetuar os calculos
               para os tipos e itens especiais;  isto já serve também para corrigir
               os subtotais por alterações diretas do usuário sobre o preco do item
               O campo UsoTipoItem já deverá estar preenchido, se for o caso, antes de
               atribuir o valor para o campo preço}

    nMarca := 0;

    {O Change de Quantidade só ocorre para os tipos de item 1,2,3}
//    if not bSubTotalChange and (C_ProducoesServicosDetQUANTIDADE.AsVariant <> Null) then
//      C_ProducoesServicosDetSubTotal.Value := C_ProducoesServicosDetQUANTIDADE.Value * C_ProducoesServicosDetPRECO.Value;
    {.TipoItem}

    try
      C_ProducoesServicosDet.FieldByName('Quantidade').FocusControl;
    except
    end;
  end;
end;

end.
