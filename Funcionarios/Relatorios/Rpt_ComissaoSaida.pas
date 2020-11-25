unit Rpt_ComissaoSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, TS_Shape,
  dxDBTLCl, dxGrClms;

type
  TRptComissaoSaida = class(TRptPadrao)
    TS_Shape1: TTS_Shape;
    C_ConsultaSAIDA: TIntegerField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaVENDEDOR: TIntegerField;
    C_ConsultaPRECO: TFloatField;
    C_ConsultaTIPOITEM: TIntegerField;
    C_ConsultaGRUPOCOMISSAO: TIntegerField;
    C_ConsultaDESCONTO: TFloatField;
    C_ConsultaNOMEVENDEDOR: TStringField;
    C_ConsultaNOMECLIENTE: TStringField;
    TS_Label1: TTS_Label;
    lbNomeCliente: TTS_Label;
    TS_Label3: TTS_Label;
    lbNomeVendedor: TTS_Label;
    C_ConsultaDESCITEM: TStringField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaCODIGOBARRAS: TStringField;
    C_ConsultaSAIDAITEM: TIntegerField;
    C_ConsultaicPercComissao: TCurrencyField;
    C_ConsultaicValorComissao: TCurrencyField;
    dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
    dbgConsultaPRECO: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn;
    dbgConsultaRATEIODESCONTO: TdxDBGridCurrencyColumn;
    dbgConsultaDESCITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaCODIGOBARRAS: TdxDBGridMaskColumn;
    dbgConsultaicPercComissao: TdxDBGridColumn;
    dbgConsultaicValorComissao: TdxDBGridColumn;
    dbgConsultaPRECOTABELA: TdxDBGridCurrencyColumn;
    C_ConsultaPCOMISSAO: TFloatField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaTOTALITENS123: TFloatField;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaSUBTOTALITEM: TFloatField;
    C_ConsultaRATEIODESCONTO: TFloatField;
    C_ConsultaCOMISSAO: TBCDField;
    C_ConsultaCOMISSGRUPO: TBCDField;
    C_ConsultaCOMISSVEND: TBCDField;
    C_ConsultaADD_COMISSAO: TBCDField;
    C_ConsultaPRECOTABELA: TFloatField;
    C_ConsultaCOMISSAOPLANO: TBCDField;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
    nSaida : integer;
    bGrupoComissao : boolean;
    procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptComissaoSaida: TRptComissaoSaida;

implementation

{$R *.dfm}

uses DM_Projeto, funcoes;

procedure TRptComissaoSaida.Atualizar;
begin
  C_Consulta.Close;
  Q_Consulta.SQL.Text := 'Select s.saida, s.numero, s.data, s.pcomissao, s.total, s.totalitens123, ' +
                         's.vendedor, si.Quantidade, si.Preco, si.SubTotalItem, si.RateioDesconto, i.Comissao, i.TipoItem, ' +
                         'g.Comissao as ComissGrupo, fu.Comissao as ComissVend, tp.Add_Comissao, ' +
                         'si.precotabela, i.grupocomissao, si.desconto, fu.Nome as NomeVendedor, ' +
                         'fc.Nome as NomeCliente, si.descricao as descitem, i.codigo, i.referencia, ' +
                         'i.codigobarras, si.saidaitem, pp.COMISSAO as ComissaoPlano ' +
                         'from Saidas s ' +
                         'LEFT JOIN SaidasItens si ON si.Saida = s.Saida ' +
                         'LEFT JOIN Itens i ON i.Item = si.Item ' +
                         'LEFT JOIN Favorecidos fu ON s.Vendedor = fu.Favorecido ' +
                         'LEFT JOIN Favorecidos fc ON s.Favorecido = fc.Favorecido ' +
                         'LEFT JOIN TabelasPreco tp ON tp.TabelaPreco = si.TabelaPreco ' +
                         'LEFT JOIN Grupos g ON i.Grupo = g.Grupo ' +
                         'LEFT JOIN PlanosPagamento pp On s.planopagamento = pp.planopagamento ' +
                         'Where  s.Saida = :saida ' +
                         'and s.CalcComissao = ''S'' ' +
                         'order by s.Vendedor, si.Saida, si.Ordem ';
  Q_Consulta.ParamByName('saida').AsInteger := nSaida;
  C_Consulta.Open;

  FormsComponent.Caption := 'Comissões Por Item - ' + C_ConsultaNUMERO.AsString;

  lbNomeCliente.Caption  := C_ConsultaNOMECLIENTE.AsString;
  lbNomeVendedor.Caption := C_ConsultaNOMEVENDEDOR.AsString;

  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add( 'Cliente: '  + lbNomeCliente.Caption );
    TS_ReportFilter.Add( 'Vendedor: ' + lbNomeVendedor.Caption );
    GoToFirst;
  end;
end;

procedure TRptComissaoSaida.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptComissaoSaida.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  bGrupoComissao := DMProjeto.Parametro('GrupoComissao') = 'S';
  nSaida := DMProjeto.GetParametrosForm(0);
  Atualizar;
end;

procedure TRptComissaoSaida.C_ConsultaCalcFields(DataSet: TDataSet);
    function Comissao_Dia(nVendedor, nDoW: Integer): Currency;
    begin
      Result := 0;
      with Q_SQLReport do begin
        {Capturando Comissao do Funcionario, Utilizada na função acima}
        Close;
        SQL.Text := 'Select Funcionario, Dia_Semana, Add_Comissao ' +
            'From FuncsPayItens f INNER JOIN Comissoes_Dia c ON f.PayrollItem = c.PayrollItem and c.Dia_Semana = :DS ' +
            'Where f.Funcionario = :FUNC ';
        ParamByName('FUNC').asInteger := nVendedor;
        ParamByName('DS').asInteger := nDow;
        Open;

        Result := FieldByName('Add_Comissao').asCurrency;

        Close;
      end; //with
    end;
var nPDesconto, nPComiss, nValorComissao : currency;
    bPerc : boolean;
    nDow : integer;
begin
  inherited;
  {Para cada Item da Saida}
  nValorComissao := 0;
  nDOW := IIF(DMProjeto.IsFeriado(DataSet.FieldByName('Data').asDateTime), 8, DayOfWeek(DataSet.FieldByName('Data').asDateTime));
  nPComiss := 0;

  // Valor do Desconto em VALORES
  nPDesconto := DataSet.FieldByName('Desconto').AsCurrency -
                DataSet.FieldByName('RateioDesconto').AsCurrency;
  // Valor do Desconto em PERCENTUAL
  nPDesconto := Abs((nPDesconto * 100) / DataSet.FieldByName('PrecoTabela').AsCurrency);
  if bGrupoComissao then begin
    Q_SQLReport.Close;
    Q_SQLReport.SQL.Text := 'select comissao from gruposcomissoesdet ' +
                             'where grupocomissao = :gc and :vlr between valorini and valorfim ' ;
    Q_SQLReport.ParamByName('gc').AsInteger := DataSet.FieldByName('grupocomissao').AsInteger;
    Q_SQLReport.ParamByName('vlr').AsCurrency := nPDesconto;
    Q_SQLReport.Open;
    if Q_SQLReport.RecordCount > 0 then begin
      bPerc := True;
      nPComiss := Q_SQLReport.FieldByName('comissao').AsCurrency;
    end
    else bPerc := False;
    Q_SQLReport.Close;
  end
  else bPerc := False;
  // Caso não tenha encontrado o grupo de comissões ou
  // não pegue do grupo de comissões (parâmetro)...
  if not bPerc then begin
    if DataSet.FieldByName('ComissaoPlano').AsCurrency > 0 then
      nPComiss := DataSet.FieldByName('ComissaoPlano').AsCurrency {Comissão do Plano de Pagamento }
    else if DataSet.FieldByName('Comissao').asCurrency >= 0 then
        nPComiss := DataSet.FieldByName('Comissao').asCurrency {Comissão no Produto}
    else if (DataSet.FieldByName('ComissGrupo').asCurrency >= 0) then
        nPComiss := DataSet.FieldByName('ComissGrupo').asCurrency {Comissão definida no Grupo}
    else if (DataSet.FieldByName('PComissao').asCurrency > 0) then
        nPComiss := DataSet.FieldByName('PComissao').asCurrency;

    {Comissão definida para o Vendedor}
    if (nPComiss <= 0) then
        nPComiss := DataSet.FieldByName('ComissVend').asCurrency;

    {Adicionando a comissão da tabela de Precos}
    nPComiss := nPComiss + DataSet.FieldByName('Add_Comissao').asCurrency;

    {Adicionando comissão por dia especial}
    nPComiss := nPComiss + Comissao_Dia(DataSet.FieldByName('Vendedor').asInteger, nDoW);
  end;

  nValorComissao := nValorComissao +
            ((DataSet.FieldByName('SubTotalItem').asCurrency - DataSet.FieldByName('RateioDesconto').asCurrency)
            * (nPComiss / 100));

    DataSet.FieldByName('icPercComissao').AsCurrency := nPComiss;
    DataSet.FieldByName('icValorComissao').AsCurrency := nValorComissao;
end;

end.
