unit DM_Planos_Pagamento;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  TDM_MANUTENCAO, DlgMsg, DMComponent, IBCustomDataSet, IBUpdateSQL, Db,
  IBQuery, DBClient, Provider;

type
  TDMPlanos_Pagamento = class(TDMManutencao)
    C_TabelaPLANOPAGAMENTO: TIntegerField;
    C_TabelaDESCRICAO: TStringField;
    C_TabelaPDESCONTO: TBCDField;
    C_TabelaDIAS_ANTECIPACAO: TIntegerField;
    C_TabelaJUROS: TBCDField;
    C_TabelaQTDPARCELAS: TIntegerField;
    C_TabelaTIPO: TStringField;
    C_IntervaloDS: TDataSource;
    C_Intervalo: TClientDataSet;
    C_IntervaloParcela: TIntegerField;
    C_TabelaPERIODICIDADE: TIntegerField;
    C_TabelaJUROSNEGOCIAVEIS: TStringField;
    C_TabelaESQUEMAPARCELAS: TStringField;
    C_TabelaTIPOENTRADA: TStringField;
    C_TabelaPERCENTUALENTRADA: TBCDField;
    C_TabelaVALIDADE: TDateField;
    C_TabelaDESATIVADO: TStringField;
    C_IntervaloDias: TStringField;
    C_TabelaINTERVALOS: TStringField;
    C_TabelaCARENCIAENTRADA: TStringField;
    C_TabelaMENORVALOR: TBCDField;
    C_IntervaloData: TDateField;
    C_TabelaCOMISSAO: TBCDField;
    procedure C_IntervaloAfterPost(DataSet: TDataSet);
    procedure DataModuleCreate(Sender: TObject);
    procedure C_TabelaQTDPARCELASChange(Sender: TField);
    procedure C_IntervaloNewRecord(DataSet: TDataSet);
    procedure DMComponentModoInclusao2_Terminar(Sender: TObject);
    procedure DMComponentPesquisar1_Iniciar(Sender: TObject; var Select,
      Where: String; var bSkip: Boolean);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaPERIODICIDADEChange(Sender: TField);
    procedure C_TabelaNewRecord(DataSet: TDataSet);
    procedure C_TabelaESQUEMAPARCELASChange(Sender: TField);
    procedure C_IntervaloDiasValidate(Sender: TField);
  private
    { Private declarations }
    bAdvertido : Boolean;
    
  public
    bNovoReg, bPassando: boolean;
    sTipo : String;

  end;

var
  DMPlanos_Pagamento: TDMPlanos_Pagamento;

implementation

uses DM_Projeto, Frm_Planos_Pagamento, funcoes;

{$R *.DFM}

procedure TDMPlanos_Pagamento.C_IntervaloAfterPost(DataSet: TDataSet);
var
  i: Integer;
  sintervalo, sEsquema : String;
  mark : TBookMarkStr;
  nData : double;
begin
  inherited;
  if (C_Intervalo.RecordCount = 0) or bPassando then
    exit;
  sEsquema := C_TabelaESQUEMAPARCELAS.AsString;
  Mark := C_Intervalo.BookMark;
  C_Intervalo.DisableControls;
  C_Intervalo.First;
  for i := 1 to C_Intervalo.RecordCount do begin
    sintervalo := sintervalo + C_Intervalo.FieldByName('parcela').AsString;
    sintervalo := sintervalo + '-';
    try
      nData := C_Intervalo.FieldByName('data').Value;
    except
    end;  
    if sEsquema = 'F' then
      sintervalo := sintervalo + FloatToStr(nData)
    else
      sintervalo := sintervalo + C_Intervalo.FieldByName('dias').AsString;
    sintervalo := sintervalo + ';';
    C_Intervalo.Next;
  end;
  C_Tabela.edit;
  C_TabelaINTERVALOS.value := copy( sintervalo, 1, length(sintervalo) -1 );
//  C_Tabela.post;
  C_Intervalo.BookMark := Mark;
  C_Intervalo.EnableControls;
end;

procedure TDMPlanos_Pagamento.DataModuleCreate(Sender: TObject);
begin
  inherited;
  DMPlanos_Pagamento := Self;
end;

procedure TDMPlanos_Pagamento.C_TabelaQTDPARCELASChange(Sender: TField);
var
 i: Integer;
 inicio, fim, nQtdeDias: Integer;
begin
  inherited;
  if (C_TabelaEsquemaParcelas.Value <> 'U') and (sender.asInteger <= 0) then begin
    Sender.asInteger := 1;
    exit;
    end
  else if (C_TabelaEsquemaParcelas.Value = 'U') and (sender.asInteger > 0) then begin
    Sender.asInteger := 0;
    exit;
  end;

  if not C_Intervalo.Active then
    C_Intervalo.CreateDataSet;


  inicio := C_Intervalo.RecordCount + 1;
  fim := C_TabelaQtdParcelas.value;

  C_Intervalo.last;
  nQtdeDias := StrToIntDef(C_IntervaloDias.Value,0) + C_TabelaPeriodicidade.value;
  bPassando := true;
  for i:= inicio to fim do begin //Adicionando
    C_Intervalo.append;
    C_Intervaloparcela.Value := i;//+ IIF(C_TabelaEsquemaParcelas.Value = 'C', 1, 0);
    C_IntervaloDias.asInteger := nQtdeDias;
    C_IntervaloData.AsDateTime := Date;
    C_Intervalo.post;
    nQtdeDias := nQtdeDias + C_TabelaPeriodicidade.value;
  end;

  if C_Intervalo.RecordCount > fim then begin
    C_Intervalo.first;
    C_Intervalo.RecNo := fim + 1;
    if C_Intervalo.RecNo = C_Intervalo.RecordCount then begin //Apagando um registro
      C_Intervalo.delete;
      C_Intervalo.first;
      bPassando := false;
      exit;
    end;

    while not (C_Intervalo.eof) do begin
      C_Intervalo.delete;
      if C_Intervalo.RecNo = C_Intervalo.RecordCount then begin
        C_Intervalo.delete;
        break;
      end;
    end;
    C_Intervalo.first;

  end;
  bPassando := false;
  C_Intervalo.First;
end;

procedure TDMPlanos_Pagamento.C_IntervaloNewRecord(
  DataSet: TDataSet);
begin
  inherited;
  C_IntervaloDias.asInteger := 0;
end;

procedure TDMPlanos_Pagamento.DMComponentModoInclusao2_Terminar(
  Sender: TObject);
begin
  inherited;
  //Valores Default's
  if not C_Intervalo.Active then
    C_Intervalo.CreateDataSet;
  C_Intervalo.EmptyDataSet;
  bNovoReg := true;
end;

procedure TDMPlanos_Pagamento.DMComponentPesquisar1_Iniciar(
  Sender: TObject; var Select, Where: String; var bSkip: Boolean);
begin
  inherited;
  if C_Intervalo.Active then
    C_Intervalo.EmptyDataSet;
end;

procedure TDMPlanos_Pagamento.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  C_Intervalo.AfterPost(C_Intervalo);

end;

procedure TDMPlanos_Pagamento.C_TabelaPERIODICIDADEChange(Sender: TField);
var nQtdeDias: integer;
begin
  inherited;
  if C_TabelaPeriodicidade.value > 0 then begin
    nQtdeDias := C_TabelaPeriodicidade.value;
    C_intervalo.first;
    while not C_Intervalo.eof do begin
      C_Intervalo.edit;
      C_IntervaloDias.asInteger := nQtdeDias;
      C_Intervalo.next;
      nQtdeDias := nQtdeDias + C_TabelaPeriodicidade.value;
    end;
  end;
end;

procedure TDMPlanos_Pagamento.C_TabelaNewRecord(DataSet: TDataSet);
begin
  inherited;
  C_TabelaEsquemaParcelas.Value := 'U';
  C_TabelaCarenciaEntrada.asInteger := 0;
  C_TabelaPercentualEntrada.Value := 0;
  C_TabelaTipoEntrada.Value := 'D';
  C_TabelaPDesconto.Value := 0;
  C_TabelaJuros.Value := 0;
  C_TabelaTipo.Value := sTipo;
  C_TabelaDIAS_ANTECIPACAO.value := 0;
  C_TabelaQTDPARCELAS.value := 0;
  C_TabelaPeriodicidade.value := 0;
  C_TabelaJurosNegociaveis.Value := 'N';
  C_TabelaCOMISSAO.Value := 0;
end;

procedure TDMPlanos_Pagamento.C_TabelaESQUEMAPARCELASChange(
  Sender: TField);
begin
  inherited;
  if (Sender.asString = 'S') and C_Intervalo.Active then
    C_Intervalo.EmptyDataSet;
end;

procedure TDMPlanos_Pagamento.C_IntervaloDiasValidate(Sender: TField);
begin
  inherited;
  if (pos('/', Sender.asString) > 0) and not bAdvertido then begin
    bAdvertido := true;
    DlgMsg.ShowMsg(2235);
  end;

end;

end.
