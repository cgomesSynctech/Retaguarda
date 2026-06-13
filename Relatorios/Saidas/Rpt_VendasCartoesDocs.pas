unit Rpt_VendasCartoesDocs;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, dxDBTLCl, dxGrClms, dxTL, dxDBCtrl, dxDBGrid,
    DB, FormsComponent, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
    dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet, IBQuery, Placemnt,
    BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject, DlgMsg, dxCntner,
    dxEdLib, TS_CheckBox, TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls,
    ComCtrls, ExtCtrls, TS_Label, Buttons, TS_SpeedButton, dxfLabel,
    TS_MaxPanel, dxEditor, TS_DateTimePicker, CheckLst, TS_CheckListBox,
    TS_PopupEdit;

type
    TRptVendasCartoesDocs = class(TRptPadrao)
        TS_Label1: TTS_Label;
        DataI: TTS_DateTimePicker;
        TS_Label2: TTS_Label;
        DataF: TTS_DateTimePicker;
        TS_Label5: TTS_Label;
        ppe_FormaPagamento: TTS_PopupEdit;
        clbFormaPagamento: TTS_CheckListBox;
        Q_FormaPgto: TIBQuery;
        P_FormaPgto: TDataSetProvider;
        C_FormaPgto: TClientDataSet;
        C_ConsultaicSubTotal: TCurrencyField;
        cbCobranca: TTS_CheckBox;
    clbTipoOperacao: TTS_CheckListBox;
    TS_Label3: TTS_Label;
    ppeTipoOperacao: TTS_PopupEdit;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    P_TiposMovimentos: TDataSetProvider;
    C_TiposMovimentos: TClientDataSet;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    C_TipoMovimentoDS: TDataSource;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaFORMAPGTO: TStringField;
    C_ConsultaPARCELAS: TIntegerField;
    C_ConsultaVALORFORMA: TBCDField;
    C_ConsultaTOTALFORMA: TBCDField;
    C_ConsultaDESCCONTA: TStringField;
    C_ConsultaCLIENTE: TStringField;
    C_ConsultaVENDEDOR: TStringField;
    dbgConsultaicSubTotal: TdxDBGridColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaTOTAL: TdxDBGridMaskColumn;
    dbgConsultaFORMAPGTO: TdxDBGridMaskColumn;
    dbgConsultaPARCELAS: TdxDBGridMaskColumn;
    dbgConsultaVALORFORMA: TdxDBGridCurrencyColumn;
    dbgConsultaTOTALFORMA: TdxDBGridCurrencyColumn;
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
    dbgConsultaColumn13: TdxDBGridColumn;
    C_ConsultaPDV: TIntegerField;
    dbgConsultaPDV: TdxDBGridColumn;
        procedure btAtualizarClick(Sender: TObject);
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure ppeTipoOperacaoCloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
    private
        { Private declarations }
        procedure Atualizar;
    public
        { Public declarations }
    end;

var
    RptVendasCartoesDocs: TRptVendasCartoesDocs;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptVendasCartoesDocs.Atualizar;
var
    sFormaPgto, sTipoOperacao: string;
begin
    sFormaPgto := clbFormaPagamento.Selecionados;
    ppe_FormaPagamento.Text := clbFormaPagamento.Selecionados(true);
    if (sFormaPgto <> '') then
        begin
            sFormaPgto := ' and fp.especie in (' + sFormaPgto + ') ';
        end;
    IF (clbTipoOperacao.Selecionados <> '') then
        sTipoOperacao := ' and s.tipomovimento in ( '+clbTipoOperacao.Selecionados+') ';

    C_Consulta.Close;
    with Q_Consulta do
        begin
            Close;

                // acrescentado a clausula where and dt.status <> 70 estava pegando os recebimentos cancelados

               Sql.Text := ' Select  s.numero,s.data,s.total,fp.Descricao as FormaPgto, count(*) as Parcelas,Max(dd.valor) as ValorForma, '+
               ' Max(dd.valor) * count(*) as TotalForma, c.Descricao as DescConta, f.nome as Cliente, v.nome as Vendedor, s.pdv '+
               ' From saidas s inner join titulosareceber tr on  s.empresa = tr.empresa and s.pdv = tr.pdv and s.saida = tr.venda '+
               ' left join depositostitulos dt on  tr.empresa = dt.empresa and tr.pdv = dt.pdv and tr.id = dt.titulo '+
               ' left join depositosdoc dd on dt.empresa = dd.empresa and dt.pdv = dd.pdv and dt.deposito = dd.deposito '+
               ' left join Depositos d on d.empresa = dd.empresa and d.pdv = dd.pdv and d.deposito = dd.deposito '+
               ' left join FormasPagamento fp on dd.formapagamento = fp.formapagamento '+
               ' left join Contas c on d.Conta = c.Conta left join favorecidos f on f.favorecido = d.favorecido '+
               ' left join favorecidos v on v.favorecido = s.vendedor '+
               ' Where  s.data >= :datai and s.data <= :dataf and s.situacao = ''N'' and fp.especie in (1,3,5,10,20,30,40,50,6,7,2,8,17) and dt.status <> 70 '+
               ' and s.tipomovimento in ( 7,700,2366,-1,-3,1,22,23,11,14,18,17) group by s.numero, s.data, s.total, fp.Descricao, c.Descricao, f.nome, '+
               ' v.nome, dd.valor, tr.parcela, s.PDV '+
               ' union '+
               ' select  s.numero,s.data,s.total,''Doc Cobranca'' as FormaPgto, count(*) as Parcelas,tr.valor as ValorForma,0 as TotalForma, '+
               ' ''A receber'' as DescConta, f.nome as Cliente, v.nome as Vendedor, s.PDV '+
               ' From saidas s inner join titulosareceber tr on  s.empresa = tr.empresa and s.pdv = tr.pdv and s.saida = tr.venda '+
               ' left join depositostitulos dt on  tr.empresa = dt.empresa and tr.pdv = dt.pdv and tr.id = dt.titulo '+
               ' left join depositosdoc dd on dt.empresa = dd.empresa and dt.pdv = dd.pdv and dt.deposito = dd.deposito '+
               ' left join Depositos d on d.empresa = dd.empresa and d.pdv = dd.pdv and d.deposito = dd.deposito '+
               ' left join FormasPagamento fp on dd.formapagamento = fp.formapagamento '+
               ' left join Contas c on d.Conta = c.Conta left join favorecidos f on f.favorecido = s.favorecido '+
               ' left join favorecidos v on v.favorecido = s.vendedor Where  s.data >= :datai and s.data <= :dataf and s.situacao = ''N'' and fp.especie is null and dt.status is null'+
               ' and s.tipomovimento in ( 7,700,2366,-1,-3,1,22,23,11,14,18,17) group by s.numero, s.data, s.total, fp.Descricao, c.Descricao, f.nome, '+
               ' v.nome, dd.valor, tr.parcela, s.PDV, tr.valor ';

            ParamByName('DataI').AsDateTime := DataI.Date;
            ParamByName('DataF').AsDateTime := DataF.Date;
        end;
    C_Consulta.FetchParams;
    C_Consulta.Open;
    FormsComponent.Caption := 'Vendas por Forma de Pgto., ' + DateTostr(DataI.Date) + ' e ' + DateTostr(DataF.Date);

end;

procedure TRptVendasCartoesDocs.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptVendasCartoesDocs.FormsComponentBeforeClearParams(
    Sender: TObject);
var
    sCamposSelecionados: string;
    i: integer;
begin
    inherited;

    C_TiposMovimentos.close;
    C_TiposMovimentos.open;
    clbTipoOperacao.SetDataSet(C_TiposMovimentos);
    clbTipoOperacao.UpdateItems;
    C_TiposMovimentos.First;    

    while not C_TiposMovimentos.Eof do
    begin
        sCamposSelecionados := sCamposSelecionados + ',' + C_TiposMovimentos.FieldByName('TIPOMOVIMENTO').AsString;
        C_TiposMovimentos.Next;
    end;


    clbTipoOperacao.SetSelecionados(sCamposSelecionados);


    sCamposSelecionados := '';

    {comentado por EVERTON -- nao estava compilando  testes boleto}
    //DataI.Date := Date - (Day( Date ) - 1);
    {descomentado por Felipe - 02/05/2014}
    DataI.Date := Date;
    DataF.Date := Date;
    C_FormaPgto.close;
    C_FormaPgto.Open;
    clbFormaPagamento.SetDataSet(C_FormaPgto);
    //  .IndexFields

    clbFormaPagamento.UpdateItems;
    //  clbFormaPagamento.SetSelecionados( '3' );
    C_FormaPgto.First;
    while not C_FormaPgto.Eof do
    begin
        sCamposSelecionados := sCamposSelecionados + ',' + C_FormaPgto.FieldByName('ESPECIE').AsString;
        C_FormaPgto.Next;
    end;

    clbFormaPagamento.SetSelecionados(sCamposSelecionados);
    ppe_FormaPagamento.Text := clbFormaPagamento.Selecionados(true);
    ppeTipoOperacao.Text := clbTipoOperacao.Selecionados(true);
    //Atualizar;
end;

procedure TRptVendasCartoesDocs.C_ConsultaCalcFields(DataSet: TDataSet);
var nQtd: Currency;
begin
    inherited;
    //  if not cbCobranca.Checked then begin
{    try
        nQtd := DataSet.FieldByName('Parcelas').Value;
        if ((DataSet.FieldByName('Parcelas').Value = 1) and (DataSet.FieldByName('Total').Value < DataSet.FieldByName('ValorForma').Value)) then
            begin
                nQtd := DataSet.FieldByName('ValorForma').Value / DataSet.FieldByName('Total').Value;
                DataSet.FieldByName('IcValor').Value := DataSet.FieldByName('ValorForma').Value / nQtd;
                DataSet.FieldByName('icSubTotal').Value := DataSet.FieldByName('IcValor').Value;
            end
        else
            begin
                DataSet.FieldByName('IcValor').Value := DataSet.FieldByName('ValorForma').Value / nQtd;
                DataSet.FieldByName('icSubTotal').Value := DataSet.FieldByName('IcValor').Value * nQtd;
            end;

    except
        DataSet.FieldByName('IcValor').Value := DataSet.FieldByName('ValorForma').Value;
    end;}
    //end;
end;

procedure TRptVendasCartoesDocs.ppeTipoOperacaoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
  Atualizar;
end;

end.

