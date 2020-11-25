unit DM_PontuacaoResgates;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, TDM_MANUTENCAO, DB, DBClient, Provider, DlgMsg, DMComponent,
  IBCustomDataSet, IBUpdateSQL, IBQuery;

type
  TDMPontuacaoResgates = class(TDMManutencao)
    C_TabelaPONTUACAORESGATE: TIntegerField;
    C_TabelaPONTUACAO: TIntegerField;
    C_TabelaDATA: TDateField;
    Q_MaxResgate: TIBQuery;
    P_MaxResgate: TDataSetProvider;
    C_MaxResgate: TClientDataSet;
    C_MaxResgateDs: TDataSource;
    C_TabelaFAVORECIDO: TIntegerField;
    C_TabelaNOME: TStringField;
    C_TabelaicSALDO: TCurrencyField;
    C_TabelaicVENDAS: TCurrencyField;
    C_TabelaicRESGATES: TCurrencyField;
    C_TabelaVALORRESGATE: TBCDField;
    procedure C_TabelaCalcFields(DataSet: TDataSet);
    procedure DMComponentGravar1_Iniciar(Sender: TObject;
      var bSkip: Boolean);
    procedure C_TabelaVALORRESGATEChange(Sender: TField);
  private
    { Private declarations }
    nVendas, nResgates: Real;
    dtInicio, dtFim: TdateTime;
    nPontuacao: Integer;

  public
    { Public declarations }
  end;

var
  DMPontuacaoResgates: TDMPontuacaoResgates;

implementation

uses DM_Projeto, DM_Clientes;


{$R *.dfm}

procedure TDMPontuacaoResgates.C_TabelaCalcFields(DataSet: TDataSet);
begin
  inherited;
    C_MaxResgate.Close;
    C_MaxResgate.COMMANDTEXT := ' select Pontuacao,inicio, fim from PONTUACOES where fechada is null ';
    C_MaxResgate.Open;
    nPontuacao := C_MaxResgate.Fields[0].Value;
    dtInicio := C_MaxResgate.Fields[1].AsDateTime;
    dtFim    := C_MaxResgate.Fields[2].AsDateTime;
    C_MaxResgate.Close;
    C_MaxResgate.COMMANDTEXT := ' select SUM(coalesce(S.TOTAL,0)) as nVendas from SAIDAS S WHERE S.FAVORECIDO = :FAVORECIDO AND S.DATA BETWEEN :DATAI AND :DATAF and '+
                                ' s.tipopadrao = 1 and s.situacao = ''N'' ';
    C_MaxResgate.params.ParamByname('FAVORECIDO').Value := C_TabelaFAVORECIDO.Value;
    C_MaxResgate.params.ParamByname('DataI').AsDateTime := dtInicio;
    C_MaxResgate.params.ParamByname('DataF').AsDateTime := dtFim;
    C_MaxResgate.Open;
    nVendas := C_MaxResgate.Fields[0].AsCurrency;
    C_MaxResgate.Close;
    C_MaxResgate.COMMANDTEXT := 'SELECT sum(coalesce(P.VALORRESGATE,0)) AS nResgates FROM PONTUACAORESGATES P  '+
               ' where P.FAVORECIDO = :FAVORECIDO AND P.DATA BETWEEN :DATAI AND :DATAF  ';
    C_MaxResgate.params.ParamByname('FAVORECIDO').Value := C_TabelaFAVORECIDO.Value;
    C_MaxResgate.params.ParamByname('DataI').AsDateTime := dtInicio;
    C_MaxResgate.params.ParamByname('DataF').AsDateTime := dtFim;
    C_MaxResgate.Open;
    nResgates := C_MaxResgate.Fields[0].AsCurrency;
    C_TabelaicVendas.Value   := nVendas;
    C_TabelaicResgates.Value := nResgates;
    C_TabelaicSaldo.Value    := (nVendas - nResgates);
end;

procedure TDMPontuacaoResgates.DMComponentGravar1_Iniciar(Sender: TObject;
  var bSkip: Boolean);
begin
  inherited;
  C_Tabela.Edit;
  C_TabelaPONTUACAO.Value := nPontuacao;

end;



procedure TDMPontuacaoResgates.C_TabelaVALORRESGATEChange(Sender: TField);
begin
  inherited;
  If C_TabelaVALORRESGATE.Value > C_TabelaicSaldo.Value Then Begin
    DlgMsg.ShowMsg(50,['O Valor a Resgatar é Maior que o Saldo Disponivel!']);
    C_TabelaVALORRESGATE.Value := C_TabelaicSaldo.Value;
    C_TabelaVALORRESGATE.FocusControl;
  end;
end;

end.
