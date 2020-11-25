unit DM_Licitacoes;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMLicitacoes = class(TDMManutencao)
    C_TabelaLICITACAO: TIntegerField;
    C_TabelaCODIGO: TStringField;
    C_TabelaDATA: TDateField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaSTATUS: TStringField;
    Q_Itens: TIBQuery;
    U_Itens: TIBUpdateSQL;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    IntegerField1: TIntegerField;
    C_ItensDs: TDataSource;
    C_ItensLICITACAOITEM: TIntegerField;
    C_ItensLICITACAO: TIntegerField;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensDESCRICAO: TStringField;
    Q_ItensMasterDs: TDataSource;
    C_TabelaQ_Itens: TDataSetField;
    Q_ItensFornec: TIBQuery;
    U_ItensFornec: TIBUpdateSQL;
    P_ItensFornec: TDataSetProvider;
    C_ItensFornec: TClientDataSet;
    IntegerField2: TIntegerField;
    C_ItensFornecDs: TDataSource;
    C_ItensFornecLICITACAOITEMFORNECEDOR: TIntegerField;
    C_ItensFornecLICITACAOITEM: TIntegerField;
    C_ItensFornecFORNECEDOR: TIntegerField;
    C_ItensFornecPRECOCOMPRA: TBCDField;
    C_ItensFornecVALORICMS: TBCDField;
    C_ItensFornecVALORIPI: TBCDField;
    C_ItensFornecVALORFRETE: TBCDField;
    C_ItensFornecVALOROUTRAS: TBCDField;
    C_ItensFornecPRECOCUSTO: TBCDField;
    C_ItensFornecCODIGO: TStringField;
    C_ItensFornecNOME: TStringField;
    C_ItensQ_ItensFornec: TDataSetField;
    C_ItensFornecPERCIPI: TBCDField;
    C_ItensFornecUF: TStringField;
    C_ItensREFERENCIA: TStringField;
    C_ItensPRECOCOMPRA: TFloatField;
    C_ItensNOME: TStringField;
    P_Relatorio: TDataSetProvider;
    Q_Relatorio: TIBQuery;
    C_Relatorio: TClientDataSet;
    IntegerField3: TIntegerField;
    C_RelatorioDs: TDataSource;
    C_RelatorioDATA: TDateField;
    C_RelatorioNUMERO: TStringField;
    C_RelatorioLICITA: TStringField;
    C_RelatorioCODIGO: TStringField;
    C_RelatorioDESCRICAO: TStringField;
    C_RelatorioREFERENCIA: TStringField;
    C_RelatorioULTPRCCOMPRA: TFloatField;
    C_RelatorioESTOQUE: TBCDField;
    C_RelatorioESTOQUEFISCAL: TBCDField;
    C_RelatorioNOME: TStringField;
    C_RelatorioENDERECO: TStringField;
    C_RelatorioBAIRRO: TStringField;
    C_RelatorioCIDADE: TStringField;
    C_RelatorioCEP: TStringField;
    C_RelatorioUF: TStringField;
    C_RelatorioFONE1: TStringField;
    C_RelatorioFONE2: TStringField;
    C_RelatorioFAX: TStringField;
    C_RelatorioPRECOCUSTO: TBCDField;
    C_RelatorioPRECOCOMPRA: TBCDField;
    C_RelatorioPERCICMS: TBCDField;
    C_RelatorioPERCIPI: TBCDField;
    C_RelatorioVALORICMS: TBCDField;
    C_RelatorioVALORIPI: TBCDField;
    C_RelatorioVALORFRETE: TBCDField;
    C_RelatorioVALOROUTRAS: TBCDField;
    C_RelatorioULTIMOFORNEC: TStringField;
    C_RelFornec: TClientDataSet;
    C_RelFornecDs: TDataSource;
    C_RelFornecPRECOCUSTO: TCurrencyField;
    C_RelFornecVALOROUTRAS: TCurrencyField;
    C_RelFornecVALORFRETE: TCurrencyField;
    C_RelFornecPERCIPI: TCurrencyField;
    C_RelFornecPERCICMS: TCurrencyField;
    C_RelFornecPRECOCOMPRA: TCurrencyField;
    C_RelFornecNOME: TStringField;
    C_RelFornecCODIGO: TStringField;
    C_RelFornecDESCRICAO: TStringField;
    C_RelFornecREFERENCIA: TStringField;
    C_ItensIPICOMPRA: TBCDField;
    C_ItensFornecPERCICMS: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure C_ItensNewRecord(DataSet: TDataSet);
    procedure C_ItensFornecNewRecord(DataSet: TDataSet);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_ItensITEMChange(Sender: TField);
    procedure C_ItensFornecFORNECEDORChange(Sender: TField);
    procedure C_ItensFornecVALORFRETEChange(Sender: TField);
    procedure C_ItensFornecVALOROUTRASChange(Sender: TField);
    procedure C_ItensFornecPRECOCOMPRAChange(Sender: TField);
    procedure C_ItensFornecPERCIPIChange(Sender: TField);
  private
    { Private declarations }
    nItemForn, nItem: Integer;
    nPrcCusto: Currency;
  public
    { Public declarations }
    procedure CalcPrecoCusto;
    procedure CalcICMS;
    procedure CalcIPI;
    Procedure GerarNumero;
    Procedure GerarRelFornec;
  end;

var
  DMLicitacoes: TDMLicitacoes;

implementation

uses DM_Projeto, Funcoes;
{$R *.dfm}

Procedure TDMLicitacoes.GerarRelFornec;
Var sItem:String;
Begin
  with DMProjeto.Q_Sql do Begin
    Close;
    Sql.Text := ' SELECT f.nome,i.codigo, i.descricao, i.referencia, '+
                ' lif.precocompra, lif.percicms, lif.percipi, lif.valoricms, lif.valoripi, '+
                ' lif.valorfrete, lif.valoroutras, lif.precocusto '+
                ' FROM LICITACOES L '+
                ' INNER JOIN licitacoesitens li on li.licitacao = l.licitacao '+
                ' INNER JOIN licitacoesitensfornecedores lif on lif.licitacaoitem = li.licitacaoitem '+
                ' inner join itens i on i.item = li.item '+
                ' inner join favorecidos f on f.favorecido = lif.fornecedor '+
                ' where l.licitacao = :licitacao '+
                ' order by i.descricao, lif.precocusto ';
    ParamByName('licitacao').AsInteger := C_TabelaLicitacao.AsInteger;
    Open;
    if not C_RelFornec.Active then
      C_RelFornec.CreateDataSet
    else
      C_RelFornec.EmptyDataSet;
    while Not Eof do Begin
      sItem:=FieldByName('DESCRICAO').Value;
      C_RelFornec.Insert;
      If Not FieldByName('PRECOCUSTO').IsNull Then
         C_RelFornecPRECOCUSTO.Value  := FieldByName('PRECOCUSTO').Value;
      If Not FieldByName('VALOROUTRAS').IsNull Then
         C_RelFornecVALOROUTRAS.Value := FieldByName('VALOROUTRAS').Value ;
      If Not FieldByName('VALORFRETE').IsNull Then
         C_RelFornecVALORFRETE.Value  := FieldByName('VALORFRETE').Value;
      if Not FieldByName('PERCIPI').IsNull Then
         C_RelFornecPERCIPI.Value     := FieldByName('PERCIPI').Value     ;
      If Not FieldByName('PERCICMS').IsNull Then
         C_RelFornecPERCICMS.Value    := FieldByName('PERCICMS').Value    ;
      If Not FieldByName('PRECOCOMPRA').IsNUll Then
         C_RelFornecPRECOCOMPRA.Value := FieldByName('PRECOCOMPRA').Value ;
      If Not FieldByName('NOME').IsNull Then
         C_RelFornecNOME.Value        := FieldByName('NOME').Value        ;
      If Not FieldByName('CODIGO').IsNull Then
         C_RelFornecCODIGO.Value      := FieldByName('CODIGO').Value      ;
      If Not FieldByName('DESCRICAO').IsNull Then
         C_RelFornecDESCRICAO.Value   := FieldByName('DESCRICAO').Value   ;
      If Not FieldByName('REFERENCIA').IsNull Then
         C_RelFornecREFERENCIA.Value  := FieldByName('REFERENCIA').Value;
      while (FieldByName('DESCRICAO').Value = sItem) and (Not Eof) do Next;
    End;
  End;
  C_RelFornec.First;
End;

Procedure TDMLicitacoes.GerarNumero;
Var sNumero: String;
Begin
  With DMProjeto.Q_Sql do Begin
    Close;
    Sql.Text := 'Select max(Codigo) from Licitacoes ';
    Try
     Open;
     sNumero:= AdicionarStr(IntToStr((Fields[0].AsInteger)+1),'0',6);
    Except
     sNumero:= AdicionarStr('1','0',6);
    End;
    if Not (C_Tabela.State in [dsEdit, dsBrowse]) Then
       C_Tabela.Edit;
    C_Tabela.FieldByName('Codigo').Value := sNumero;
    Close;
  End;
End;



procedure TDMLicitacoes.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMLicitacoes := Self;
  nItemForn:=0;
  nItem:=0;
  C_ItensFornec.Active := False;
  C_Itens.Active := False;
  C_ItensFornec.ProviderName := 'P_ItensFornec';
  C_Itens.ProviderName := 'P_Itens';
end;

procedure TDMLicitacoes.C_ItensNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nItem);
  C_ItensLICITACAOITEM.Value := nItem;
end;

procedure TDMLicitacoes.C_ItensFornecNewRecord(DataSet: TDataSet);
begin
  inherited;
  Try
    Dec(nItemForn);
    C_ItensFornecLICITACAOITEMFORNECEDOR.Value := nItemForn;
    C_ItensFornecPRECOCOMPRA.Value := 0.00;
    C_ItensFornecVALORICMS.Value   := 0.00;
    C_ItensFornecVALORFRETE.Value  := 0.00;
    C_ItensFornecVALOROUTRAS.Value := 0.00;
    C_ItensFornecPRECOCUSTO.Value  := 0.00;
    C_ItensFornecPERCIPI.Value     := C_ItensIPICompra.Value;
    except
//     on E:Exception do Application.MessageBox(pchar(e.message), 'Erro', mb_ok);
    end;
end;

procedure TDMLicitacoes.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  Dec(nItem);
  C_TabelaLICITACAO.Value := nItem;
  C_TabelaData.Value := Date;
  C_itens.Append;
  GerarNumero;
end;

procedure TDMLicitacoes.C_ItensITEMChange(Sender: TField);
begin
  inherited;
  C_ItensDescricao.value  := DMProjeto.C_LocalizarItensDescricaoCompra.value;
  C_ItensCodigo.Value     := DMProjeto.C_LocalizarItensCodigo.value;
  C_Itensipicompra.Value  := DMProjeto.C_LocalizarItensIPICOMPRA.value;
  C_ItensReferencia.Value := DMProjeto.C_LocalizarItensREFERENCIA.Value;
  C_ItensPRECOCOMPRA.Value:= DMProjeto.C_LocalizarItensPRECOCOMPRA.Value;
//  C_ItensNome.Value       := DMProjeto.C_LocalizarItensULTIMOFORNECEDOR.Value;
end;

procedure TDMLicitacoes.C_ItensFornecFORNECEDORChange(Sender: TField);
begin
  inherited;
  C_ItensFornecCODIGO.Value   := DMProjeto.C_LocalizarFavCODIGO.Value;
  C_ItensFornecNOME.Value     := DMProjeto.C_LocalizarFavNOME.Value;
  If C_ItensFornecPercICMS.Value = 0 Then
     C_ItensFornecPercICMS.Value := DMProjeto.AliquotaEstadoExterno(DMPRojeto.C_LocalizarFavUF.Value);
end;


procedure TDMLicitacoes.CalcPrecoCusto;
begin
 with C_ItensFornec do Begin
    if Not (State in [dsEdit, dsBrowse]) Then
      Edit;
    FieldByName('PrecoCusto').Value :=
        iif(FieldByName('PrecoCompra').Value > 0,FieldByName('PrecoCompra').Value, FieldByName('PrecoCompra').NewValue) +
        iif(FieldByName('ValorIcms').Value > 0, FieldByName('ValorIcms').Value, FieldByName('ValorIcms').NewValue) +
        iif(FieldByName('ValorIPI').Value > 0, FieldByName('ValorIPI').Value, FieldByName('ValorIPI').NewValue) +
        iif(FieldByName('ValorOutras').Value > 0, FieldByName('ValorOutras').Value, FieldByName('ValorOutras').NewValue) +
        iif(FieldByName('ValorFrete').Value > 0, FieldByName('ValorFrete').Value , FieldByName('ValorFrete').NewValue);
 End;

End;

procedure TDMLicitacoes.CalcICMS;
Var
 nPreco, nICMS: Real;
begin
  with C_ItensFornec do Begin
    if Not (State in [dsEdit, dsBrowse]) Then
      Edit;
     Try
        nPreco:=iif(FieldByName('PrecoCompra').Value > 0,FieldByName('PrecoCompra').Value, FieldByName('PrecoCompra').NewValue);
        nICMS := FieldByName('PERCICMS').Value;
        FieldByName('ValorICMS').Value := (nPreco * nICMS) / 100;
     except
        FieldByName('ValorICMS').Value := 0;
     End;
  End;
End;

procedure TDMLicitacoes.CalcIPI;
begin
  with C_ItensFornec do Begin
    if Not (State in [dsEdit, dsBrowse]) Then
      Edit;
     FieldByName('ValorIPI').Value := (iif(FieldByName('PrecoCompra').Value > 0,FieldByName('PrecoCompra').Value, FieldByName('PrecoCompra').NewValue)
                                       *   FieldByName('PERCIPI').Value) / 100;
  End;
End;

procedure TDMLicitacoes.C_ItensFornecVALORFRETEChange(Sender: TField);
begin
  inherited;
  If Sender.Value > 0 Then
  CalcPrecoCusto;
end;

procedure TDMLicitacoes.C_ItensFornecVALOROUTRASChange(Sender: TField);
begin
  inherited;
  If Sender.Value > 0 Then
  CalcPrecoCusto;
end;

procedure TDMLicitacoes.C_ItensFornecPRECOCOMPRAChange(Sender: TField);
begin
  inherited;
  If Sender.Value > 0 Then Begin
    CalcICMS;
    CalcIPI;
    CalcPrecoCusto;
  End;
end;

procedure TDMLicitacoes.C_ItensFornecPERCIPIChange(Sender: TField);
begin
  inherited;
  If Sender.NewValue > 0 Then begin
    CalcIPI;
    CalcPrecoCusto;
  end;
end;

end.
