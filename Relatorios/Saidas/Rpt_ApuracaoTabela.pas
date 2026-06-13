unit Rpt_ApuracaoTabela;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, TS_PopupEdit,
  dxEditor, TS_DateTimePicker, CheckLst, TS_CheckListBox;

type
  TRptApuracaoTabela = class(TRptPadrao)
    TS_Label1: TTS_Label;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    TS_Label3: TTS_Label;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaTOTALVENDIDO: TFloatField;
    C_ConsultaSUBTOTALVENDAITEN: TFloatField;
    C_ConsultaTOT_ATACADO: TFloatField;
    C_ConsultaTOT_BORD_P: TFloatField;
    C_ConsultaTOT_BORD_M: TFloatField;
    C_ConsultaTOT_BORD_G: TFloatField;
    C_ConsultaTOT_BORDP2: TFloatField;
    C_ConsultaTOT_BORDM2: TFloatField;
    C_ConsultaTOT_BORDG2: TFloatField;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaTOTALVENDIDO: TdxDBGridMaskColumn;
    dbgConsultaSUBTOTALVENDAITEN: TdxDBGridMaskColumn;
    dbgConsultaTOT_ATACADO: TdxDBGridMaskColumn;
    dbgConsultaTOT_BORD_P: TdxDBGridMaskColumn;
    dbgConsultaTOT_BORD_M: TdxDBGridMaskColumn;
    dbgConsultaTOT_BORD_G: TdxDBGridMaskColumn;
    dbgConsultaTOT_BORDP2: TdxDBGridMaskColumn;
    dbgConsultaTOT_BORDM2: TdxDBGridMaskColumn;
    dbgConsultaTOT_BORDG2: TdxDBGridMaskColumn;
    Q_TiposMovimentos: TIBQuery;
    Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    Q_TiposMovimentosDESCRICAO: TIBStringField;
    P_TiposMovimentos: TDataSetProvider;
    C_TiposMovimentos: TClientDataSet;
    C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
    C_TiposMovimentosDESCRICAO: TStringField;
    C_TipoMovimentoDS: TDataSource;
    TS_PopupEdit1: TTS_PopupEdit;
    clbTipoOperacao: TTS_CheckListBox;
    dbgConsultaColumn20: TdxDBGridColumn;
    dbgConsultaColumn21: TdxDBGridColumn;
    dbgConsultaColumn22: TdxDBGridColumn;
    dbgConsultaColumn23: TdxDBGridColumn;
    dbgConsultaColumn24: TdxDBGridColumn;
    dbgConsultaColumn25: TdxDBGridColumn;
    dbgConsultaColumn26: TdxDBGridColumn;
    C_ConsultaQTD_BORD_P: TIntegerField;
    C_ConsultaQTD_BORD_M: TIntegerField;
    C_ConsultaQTD_BORD_G: TIntegerField;
    C_ConsultaQTD_BORDP2: TIntegerField;
    C_ConsultaQTDBORDM2: TIntegerField;
    C_ConsultaQTDBORDG2: TIntegerField;
    C_ConsultaQTD_ATACADO: TIntegerField;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure TS_PopupEdit1CloseUp(Sender: TObject; var Text: String;
      var Accept: Boolean);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptApuracaoTabela: TRptApuracaoTabela;

implementation
uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptApuracaoTabela.btAtualizarClick(Sender: TObject);
var
sTipoOperacao: string;
begin
  inherited;
      with C_Consulta do
      begin
      Close;
        CommandText := 'SELECT i.codigo, i.descricao,si.item, '+
                       'sum(CASE WHEN SI.tabelapreco <> 0 THEN( cast(cast(si.quantidade as Numeric(15,3)) * si.fator  as Float)) else 0 end ) as TotalVendido, '+
                       'sum(CASE WHEN SI.tabelapreco <> 0 THEN (Case when si.promocao =''S'' then (si.preco - si.precopromotabpadrao) Else (si.preco - si.precotabpadrao ) end ) else 0 end) as SubtotalVendaIten,'+
                       'cast(SUM(CASE WHEN SI.tabelapreco = 8705 THEN SI.quantidade ELSE 0 END) as integer) AS qtd_Atacado, '+
                       'SUM((CASE WHEN SI.tabelapreco = 8705 THEN (SI.quantidade * (Case when si.promocao =''S'' then (si.preco - si.precopromotabpadrao) Else (si.preco - si.precotabpadrao ) end )) ELSE 0 END)) as Tot_Atacado, '+
                       'cast(SUM(CASE WHEN SI.tabelapreco = 1126354 THEN SI.quantidade ELSE 0 END) as integer) AS qtd_Bord_P, '+
                       'SUM((CASE WHEN SI.tabelapreco = 1126354 THEN (SI.quantidade * (Case when si.promocao =''S'' then (si.preco - si.precopromotabpadrao) Else (si.preco - si.precotabpadrao ) end )) ELSE 0 END)) as Tot_Bord_P, '+
                       'cast(SUM(CASE WHEN SI.tabelapreco = 1127345 THEN SI.quantidade ELSE 0 END) as integer) AS qtd_Bord_M, '+
                       'SUM((CASE WHEN SI.tabelapreco = 1127345 THEN (SI.quantidade * (Case when si.promocao =''S'' then (si.preco - si.precopromotabpadrao) Else (si.preco - si.precotabpadrao ) end )) ELSE 0 END)) as Tot_Bord_M, '+
                       'cast(SUM(CASE WHEN SI.tabelapreco = 1127472 THEN SI.quantidade ELSE 0 END) as integer) AS qtd_Bord_G, '+
                       'SUM((CASE WHEN SI.tabelapreco = 1127472 THEN (SI.quantidade * (Case when si.promocao =''S'' then (si.preco - si.precopromotabpadrao) Else (si.preco - si.precotabpadrao ) end )) ELSE 0 END)) as Tot_Bord_G, '+
                       'cast(SUM(CASE WHEN SI.tabelapreco = 1158366 THEN SI.quantidade ELSE 0 END) as integer) AS qtd_BordP2, '+
                       'SUM((CASE WHEN SI.tabelapreco = 1158366 THEN (SI.quantidade * (Case when si.promocao =''S'' then (si.preco - si.precopromotabpadrao) Else (si.preco - si.precotabpadrao ) end )) ELSE 0 END)) as Tot_BordP2, '+
                       'cast(SUM(CASE WHEN SI.tabelapreco = 1160084 THEN SI.quantidade ELSE 0 END) as integer) AS qtdBordM2, '+
                       'SUM((CASE WHEN SI.tabelapreco = 1160084 THEN (SI.quantidade * (Case when si.promocao =''S'' then (si.preco - si.precopromotabpadrao) Else (si.preco - si.precotabpadrao ) end )) ELSE 0 END)) as Tot_BordM2, '+
                       'cast(SUM(CASE WHEN SI.tabelapreco = 1160135  THEN SI.quantidade ELSE 0 END) as integer) AS qtdBordG2, '+
                       'SUM((CASE WHEN SI.tabelapreco = 1160135 THEN (SI.quantidade * (Case when si.promocao =''S'' then (si.preco - si.precopromotabpadrao) Else (si.preco - si.precotabpadrao ) end )) ELSE 0 END)) as Tot_BordG2 '+
                       'from  Saidas s inner join SaidasItens si on s.empresa = si.empresa and s.saida = si.saida '+
                       'inner join Itens i on si.empresa = i.empresa and si.item = i.item '+
                       'left join Favorecidos f on s.empresa = f.empresa and s.favorecido = f.favorecido '+
                       'left join Favorecidos v on s.vendedor = v.favorecido '+
                       'left join Grupos gi on i.grupo = gi.grupo '+
                       'Where (s.data >= :datai and s.data <= :dataf) and s.tipopadrao in (1,2) and s.situacao = ''N'' ' ;

        sTipoOperacao := clbTipoOperacao.Selecionados;
        if (sTipoOperacao <> '') then
                begin
                    CommandText := CommandText + 'and s.tipomovimento in (' + sTipoOperacao + ')';
                end;
        CommandText := CommandText + '     group by si.item, i.codigo, i.descricao ' ;
        Params.ParamByName('DataI').AsDateTime := DataI.Date;
        Params.ParamByName('DataF').AsDateTime := DataF.Date;
        Open;
        FormsComponent.Caption := 'Apuração por Tabelas de Preço no Período de: ' + DateTostr(DataI.Date) + ' a ' +
        DateTostr(DataF.Date);
      end;

end;

procedure TRptApuracaoTabela.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
    C_TiposMovimentos.close;
    C_TiposMovimentos.open;
    clbTipoOperacao.SetDataSet(C_TiposMovimentos);

    DataI.OnDateChange := nil;
    DataF.OnDateChange := nil;
    if DataI.GetEditingText = '' then DataI.Date := (DMProjeto.dDataSistema);
    if DataF.GetEditingText = '' then DataF.Date := (DMProjeto.dDataSistema);

end;

procedure TRptApuracaoTabela.TS_PopupEdit1CloseUp(Sender: TObject;
  var Text: String; var Accept: Boolean);
begin
  inherited;
    Text := clbTipoOperacao.Selecionados(true);
    Accept := true;
end;

end.
