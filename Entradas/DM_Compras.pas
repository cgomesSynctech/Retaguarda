unit DM_Compras;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  DM_Entradas, Db, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery, IBEvents, Variants;

type
  TDMCompras = class(TDMEntradas)
    Q_Index: TIBQuery;
    P_Index: TDataSetProvider;
    C_Index: TClientDataSet;
    C_IndexINDEXADOR: TIntegerField;
    C_IndexDESCRICAO: TStringField;
    C_ItenslkIndexador: TStringField;
    C_TabelaCHAVENFE: TStringField;
    C_TabelaIMPRESSO: TStringField;
    procedure DataModuleCreate(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure DMComponentGravar3_AposApply(Sender: TObject);
    procedure C_ItensFATORPRECOChange(Sender: TField);
    procedure C_ItensPRECOVENDAChange(Sender: TField);
    procedure C_ItensPRECOChange(Sender: TField);
    procedure C_ItensITEMChange(Sender: TField);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_ItensAfterPost(DataSet: TDataSet);
  private
    { Private declarations }
    bFator : boolean;
  public
    { Public declarations }
  end;

var
  DMCompras: TDMCompras;

implementation
  uses DM_Projeto, Funcoes, DM_DigitacaoItens;

{$R *.DFM}

procedure TDMCompras.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMCompras := self;
  bFator := False;
end;

procedure TDMCompras.DMComponentPesquisar1_Iniciar(Sender: TObject;
  var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  Where := replace(Uppercase(Where), 'WHERE', ' where t.TipoPadrao = 101 and ');
  Where := replace(Uppercase(Where), 'TIPOMOVIMENTO', 'T.TIPOMOVIMENTO');
end;

procedure TDMCompras.DMComponentGravar3_AposApply(Sender: TObject);
var consistencia:string;
    tipopdr, tempedido: integer;
begin
  inherited;
  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'select cb_consistencia from tiposmovimento where tipomovimento = ' + IntToStr(C_TabelaTipoMovimento.Value);
    Open;
    consistencia := FieldByName('cb_consistencia').AsString;
  end;
  With DMProjeto.Q_ComandoSQL do begin
    Close;
    SQL.Text := 'Execute Procedure PP_Consistencia(:ent,:frete,:desc,:total,:consis)';
    ParamByName('ent').AsInteger := C_TabelaIDMESTRE.Value;
    ParamByName('frete').AsCurrency := C_TabelaFrete.Value;
    ParamByName('desc').AsCurrency := C_TabelaDesconto.Value;
    ParamByName('total').AsCurrency := C_TabelaTotal.Value;
    ParamByName('consis').AsString := consistencia;
    ExecSql;
  end;
  tempedido := 0;
  With DMProjeto.Q_SQL do begin
    Close;
    SQL.Text := 'select distinct entrada_original from entradasitensmescla ' +
                'where entradaitem in (select entradaitem from entradasitens where entrada = :ent)';
    ParamByName('ent').AsInteger := C_TabelaIDMESTRE.Value;
    Open;
    tempedido := FieldByName('entrada_original').AsInteger;
  end;
  if tempedido <> 0 then begin
    With Q_SQL do begin
      Close;
      SQL.Text := 'select tipopadrao from entradas where entrada = ' + IntToStr(C_MesclagensEntrada_Original.Value);
      Open;
      tipopdr := FieldByName('tipopadrao').AsInteger;
    end;
    if (consistencia = 'S') and (tipopdr = 102) and (DlgMsg.ShowMsg(6042,['Deseja visualizar o relatório de consistência de pedidos?']) = 100) then begin
        DMProjeto.SetParametrosForm([C_TabelaIDMESTRE.AsInteger]);
        DMProjeto.CriarForm('RptConsistencia',Self,True);
    end;
  end;
end;

procedure TDMCompras.C_ItensFATORPRECOChange(Sender: TField);
begin
  inherited;
  if not bFator then begin
    bFator := True;
    If (not (bPrecoVendaPP)) Then
       C_ItensPRECOVENDA.AsCurrency := C_ItensPRECO.AsCurrency * ((Sender.AsCurrency / 100) + 1);
    bFator := False;
  end;
end;

procedure TDMCompras.C_ItensPRECOVENDAChange(Sender: TField);
begin
  inherited;
  if not bFator then begin
    bFator := True;
    if (C_ItensPRECO.AsCurrency > 0) then
      C_ItensFATORPRECO.AsCurrency := 100 * ( (Sender.AsCurrency - C_ItensPRECO.AsCurrency) / C_ItensPRECO.AsCurrency )
    else
      C_ItensFATORPRECO.AsCurrency := 0;
    bFator := False;
  end;
end;

procedure TDMCompras.C_ItensPRECOChange(Sender: TField);
begin
  inherited;
  if (not (bPrecoVendaPP)) Then
     C_ItensPRECOVENDA.AsCurrency := C_ItensPRECO.AsCurrency * ((C_ItensFATORPRECO.AsCurrency / 100) + 1);
end;

procedure TDMCompras.C_ItensITEMChange(Sender: TField);
begin
  inherited;
  if (not (bPrecoVendaPP)) Then
    C_ItensFATORPRECO.AsCurrency := C_ItensI_FATORLUCRO.AsCurrency;
  // Modificando o indexador da entrada com o primeiro item a ter indexador cadastrado...
  if (C_TabelaINDEXADOR.AsVariant = null) and (C_ItensI_INDEXADOR.AsVariant <> null) then
    C_TabelaINDEXADOR.Value := C_ItensI_INDEXADOR.Value;
end;

procedure TDMCompras.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
var TmpDS : TClientDataSet;
    bExiste : boolean;
begin
  inherited;
  if (C_TabelaINDEXADOR.AsVariant <> null) then begin
    bExiste := False;
    TmpDS := TClientDataSet.Create(Self);
    TmpDS.CloneCursor( C_Itens, True );
    TmpDS.DisableControls;
    TmpDS.First;
    while not TmpDS.EOF do begin
      if (TmpDS.FieldByName('I_INDEXADOR').AsVariant <> C_TabelaINDEXADOR.AsVariant) then begin
        bExiste := True;
        Break;
      end;
      TmpDS.Next;
    end;
    if bExiste then if DlgMsg.ShowMsg( 8050 ) <> 100 then bSkip := True;
  end;
end;

procedure TDMCompras.C_ItensAfterPost(DataSet: TDataSet);
begin
  inherited;
//  if (bPrecoVendaPP) Then
//    with DMProjeto.Q_SQL do begin
//      Close;
//      SQL.Text := ' UPDATE PRODUTOSPRECO SET   PRECO = :PRECO '+
//                  ' WHERE ITEM = :ITEM and TABELAPRECO = 0 and UNIDADE = :UNIDADE';
//      ParamByName('PRECO').AsCurrency := C_ItensPRECOVENDA.value;
//      ParamByName('ITEM').AsInteger := C_ItensITEM.Value;
//      ParamByName('UNIDADE').AsInteger := C_ItensUNIDADE.Value;
//      ExecSQL;
//    end;
//    DMProjeto.DB_Projeto.DefaultTransaction.CommitRetaining;
end;

end.
