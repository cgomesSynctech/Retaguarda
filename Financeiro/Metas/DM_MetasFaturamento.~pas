unit DM_MetasFaturamento;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMMetasFaturamento = class(TDMManutencao)
    C_TabelaID: TIntegerField;
    C_TabelaDATAINICIAL: TDateField;
    C_TabelaDATAFINAL: TDateField;
    C_TabelaMETAPERIODO: TBCDField;
    C_TabelaMETADIARIA: TBCDField;
    Q_Detalhe: TIBQuery;
    U_Detalhe: TIBUpdateSQL;
    C_Detalhe: TClientDataSet;
    C_DetalheDS: TDataSource;
    C_TabelaQ_Detalhe: TDataSetField;
    C_DetalheMETADETALHE: TIntegerField;
    C_DetalheVENDEDOR: TIntegerField;
    C_DetalheID: TIntegerField;
    C_DetalheMETAPERIODO: TBCDField;
    C_DetalheMETADIARIA: TBCDField;
    C_DetalheNOME: TStringField;
    Q_GetVendedor: TIBQuery;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure DMComponentModoInclusao1_Iniciar(Sender: TObject);
    procedure C_DetalheNewRecord(DataSet: TDataSet);
    procedure C_DetalheBeforeCancel(DataSet: TDataSet);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
    nIdDetalhe: integer;  
  end;

var
  DMMetasFaturamento: TDMMetasFaturamento;

implementation
uses DM_Projeto;
{$R *.dfm}

procedure TDMMetasFaturamento.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMMetasFaturamento := Self;
end;

procedure TDMMetasFaturamento.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
  var di,df,di2,df2:TDateTime;
      Vendedores: TStringList;
      i: integer;
begin
  inherited;
  di := C_TabelaDataInicial.AsDateTime;
  df := C_TabelaDataFinal.AsDateTime;
  if di >= df then begin
    DlgMsg.ShowMsg(50,['A data inicial está maior ao igual do que a data final. Modifique os valores e tente novamente.']);
    bSkip := True;
    Exit;
  end;
  if not bAlteracao then begin
    DMProjeto.Q_Sql.Close;
    DMProjeto.Q_Sql.Sql.Clear;
    DMProjeto.Q_Sql.Sql.Text := 'Select * from metasfaturamento order by datainicial';
    DMProjeto.Q_Sql.Open;
    DMProjeto.Q_Sql.First;
    while not DMProjeto.Q_Sql.Eof do begin
      di2 := DMProjeto.Q_Sql.FieldByName('datainicial').AsDateTime;
      df2 := DMProjeto.Q_Sql.FieldByName('datafinal').AsDateTime;
      if ((di >= di2) and (di <= df2)) or ((df >= di2) and (df <= df2)) or ((di <= di2) and (df >= df2)) then begin
        DlgMsg.ShowMsg(50,['Já existe uma meta de faturamento cadastrada para uma das datas desse período. Modifique os valores e tente novamente']);
        bSkip := True;
        Exit;
      end;
      DMProjeto.Q_Sql.Next;
    end;
  end;
  Vendedores := TStringList.Create;
  Vendedores.Clear;
  Vendedores.Add('0');
  C_Detalhe.First;
  while not C_Detalhe.Eof do begin
    for i:=1 to Vendedores.Count do begin
      if C_DetalheVENDEDOR.Value = StrToInt(Vendedores[i-1]) then begin
        DlgMsg.ShowMsg(50,['Algum vendedor está cadastrado mais de uma vez para esta meta de faturamento. Faça os ajustes e tente novamente.']);
        bSkip := True;
        Vendedores.Free;
        Exit;
      end;
    end;
    Vendedores.Add(IntToStr(C_DetalheVENDEDOR.Value));
    C_Detalhe.Next;
  end;
  Vendedores.Free;
end;

procedure TDMMetasFaturamento.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaDataInicial.Value := DMProjeto.dDataSistema;
  C_TabelaDataFinal.Value := IncMonth(DmProjeto.dDataSistema, 1);
  C_TabelaMETADIARIA.Value := 0;
  C_TabelaMETAPERIODO.Value := 0;
end;

procedure TDMMetasFaturamento.DMComponentModoInclusao1_Iniciar(
  Sender: TObject);
begin
  inherited;
  nIdDetalhe := 0;
end;

procedure TDMMetasFaturamento.C_DetalheNewRecord(DataSet: TDataSet);
begin
  inherited;
   Inc(nIdDetalhe);
   C_DetalheMETADETALHE.Value := - nIdDetalhe;
   C_DetalheMETAPERIODO.Value := 0;
   C_DetalheMETADIARIA.Value := 0;
end;

procedure TDMMetasFaturamento.C_DetalheBeforeCancel(DataSet: TDataSet);
begin
  inherited;
  if C_Detalhe.State = dsInsert then Dec(nIdDetalhe);
end;

procedure TDMMetasFaturamento.DMComponentModoInclusao2_Terminar(
  Sender: TObject);
begin
  inherited;
  Q_GetVendedor.Close;
  Q_GetVendedor.Open;
  Q_GetVendedor.Last;
  while not Q_GetVendedor.Bof do begin
    C_Detalhe.Insert;
    C_DetalheVENDEDOR.Value := Q_GetVendedor.FieldByName('favorecido').AsInteger;
    C_DetalheNOME.Value := Q_GetVendedor.FieldByName('nome').AsString;
    C_DetalheMETADIARIA.Value := 0;
    C_DetalheMETAPERIODO.Value := 0;
    C_Detalhe.Post;
    Q_GetVendedor.Prior;
  end;
end;

end.
