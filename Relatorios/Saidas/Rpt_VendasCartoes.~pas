unit Rpt_VendasCartoes;

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
    TRptVendasCartoes = class(TRptPadrao)
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
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaFORMAPGTO: TStringField;
    C_ConsultaPARCELAS: TIntegerField;
    C_ConsultaVALORFORMA: TBCDField;
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
    dbgConsultaDESCCONTA: TdxDBGridMaskColumn;
    dbgConsultaCLIENTE: TdxDBGridMaskColumn;
    dbgConsultaVENDEDOR: TdxDBGridMaskColumn;
    C_ConsultaTOTALFORMA: TBCDField;
    dbgConsultaTOTALFORMA: TdxDBGridColumn;
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
    RptVendasCartoes: TRptVendasCartoes;

implementation

uses DM_Projeto;

{$R *.dfm}

procedure TRptVendasCartoes.Atualizar;
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
            if not cbCobranca.Checked then
                begin
                    Sql.Text := 'Select ' + getCampos + ' ' +
                        'From ' + getTabelas + ' ' +
                        'Where  s.data >= :datai and s.data <= :dataf and s.situacao = ''N'' ' + sFormaPgto + sTipoOperacao;

                    SQL.Text := SQL.Text + ' group by s.numero, s.data, s.total, fp.Descricao, c.Descricao, f.nome, v.nome ';

                    Sql.Text := Sql.Text + ' Order by s.data';
                end
            else
                begin
                    Sql.Text := 'select   NUMERO,    DATA,    TOTAL,    DESCRICAO as FormaPgto,   coalesce( TIPOPARCELAS ,0) as Parcelas,    ITENSVALORFORMA as ValorForma, ' +
                        ' DESCRICAOCONTA as DescConta,    CLIENTE,   VENDEDOR FROM visao_formascobranca WHERE DATA >= :DATAI AND DATA <= :DATAF';
                                            
                    Sql.Text := Sql.Text + ' Order by data';
                end;

            ParamByName('DataI').AsDateTime := DataI.Date;
            ParamByName('DataF').AsDateTime := DataF.Date;
        end;
    C_Consulta.FetchParams;
    C_Consulta.Open;
    FormsComponent.Caption := 'Vendas por Forma de Pgto., ' + DateTostr(DataI.Date) + ' e ' + DateTostr(DataF.Date);

end;

procedure TRptVendasCartoes.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptVendasCartoes.FormsComponentBeforeClearParams(
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

procedure TRptVendasCartoes.C_ConsultaCalcFields(DataSet: TDataSet);
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

procedure TRptVendasCartoes.ppeTipoOperacaoCloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
  Text := clbTipoOperacao.Selecionados( true );
  Accept := true;
  Atualizar;
end;

end.

