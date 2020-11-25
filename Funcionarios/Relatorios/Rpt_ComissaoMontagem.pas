unit Rpt_ComissaoMontagem;

interface

uses
    Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
    Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
    dxBkgnd, dxWrap, dxPrnDev, DB, FormsComponent, dxPSCore, dxPSdxTLLnk,
    dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, IBCustomDataSet,
    IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
    DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
    TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
    TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, TS_PopupEdit,
    CheckLst, TS_CheckListBox, dxEditor, TS_DateTimePicker, dxDBTLCl,
    dxGrClms, TS_PopupFiltrarItens;

type
    TRptComissaoMontagem = class(TRptPadrao)
        TS_Label1: TTS_Label;
        edDataI: TTS_DateTimePicker;
        TS_Label2: TTS_Label;
        edDataF: TTS_DateTimePicker;
        Q_TiposMovimentos: TIBQuery;
        Q_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        P_TiposMovimentos: TDataSetProvider;
        C_TiposMovimentos: TClientDataSet;
        C_TiposMovimentosTIPOMOVIMENTO: TIntegerField;
        C_TipoMovimentoDS: TDataSource;
        clbTipoOperacao: TTS_CheckListBox;
        ppeTipoOperacao: TTS_PopupEdit;
        TS_Label4: TTS_Label;
        FiltroItens: TTS_PopupFiltrarItens;
        dbgConsultaCODIGO: TdxDBGridMaskColumn;
        dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
        dbgConsultaNUMERO: TdxDBGridMaskColumn;
        dbgConsultaDATA: TdxDBGridDateColumn;
        dbgConsultaCLIENTE: TdxDBGridMaskColumn;
        dbgConsultaPRECO: TdxDBGridMaskColumn;
        dbgConsultaSUBTOTALITEM: TdxDBGridCurrencyColumn;
        dbgConsultaQUANTIDADE: TdxDBGridCurrencyColumn;
        dbgConsultaQTDFATURADA: TdxDBGridCurrencyColumn;
        dbgConsultaFUNCVENDA: TdxDBGridMaskColumn;
        dbgConsultaCOMISSAOPECATABELA: TdxDBGridMaskColumn;
        dbgConsultaCOMISSAOPECAVENDA: TdxDBGridMaskColumn;
        dbgConsultaTipoItem: TdxDBGridColumn;
        C_ConsultaCODIGO: TStringField;
        C_ConsultaTIPOITEM: TStringField;
        C_ConsultaNUMERO: TStringField;
        C_ConsultaDATA: TDateField;
        C_ConsultaCLIENTE: TStringField;
        C_ConsultaPRECO: TFloatField;
        C_ConsultaFUNCVENDA: TStringField;
        C_ConsultaSAIDAITEM: TIntegerField;
        dbgConsultaSAIDAITEM: TdxDBGridColumn;
        dbgConsultaCOMISSAO: TdxDBGridColumn;
        C_ConsultaDESCRICAO: TStringField;
        C_TiposMovimentosDESCRICAO: TStringField;
        Q_TiposMovimentosDESCRICAO: TIBStringField;
        C_ConsultaSUBTOTALITEM: TFloatField;
        C_ConsultaQUANTIDADE: TFloatField;
        C_ConsultaCOMISSAO: TBCDField;
        C_ConsultaQTDFATURADA: TFloatField;
        C_ConsultaCOMISSAOPRCTABELA: TBCDField;
        C_ConsultaCOMISSAOPRCVENDA: TBCDField;
        procedure FormsComponentBeforeClearParams(Sender: TObject);
        procedure btAtualizarClick(Sender: TObject);
        procedure ppeTipoOperacaoCloseUp(Sender: TObject; var Text: string;
            var Accept: Boolean);
    private
        { Private declarations }
        procedure Atualizar;
    public
        { Public declarations }
    end;

var
    RptComissaoMontagem: TRptComissaoMontagem;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TRptComissaoMontagem.Atualizar;
begin
    with C_Consulta do
        begin
            Close;

            CommandText := 'select ' + getCampos + ' from ' + getTabelas +
                ' where (s.situacao = ''N'' ) and ((s.data >=  :iData) and (s.data <=  :fData)) ';

            if (clbTipoOperacao.Selecionados <> '') then
                CommandText := CommandText + 'and s.tipomovimento in (' + clbTipoOperacao.Selecionados + ')';

            if (Length(FiltroItens.getSQL(false)) > 0) then
                CommandText := CommandText + ' and ' + FiltroItens.getSQL(false) + ' ';

            Params.ParamByName('iData').AsDateTime := Trunc(edDataI.Date);
            Params.ParamByName('fData').AsDateTime := Trunc(edDataF.Date);
            Open;

            {
            CommandText :=
                  'Select si.saidaitem, i.codigo, i.comissao, '+
                  '       ti.descricao as TipoItem, '+
                  '       s.numero, '+
                  '       s.data, '+
                  '       f.nome as Cliente, '+
                  '       si.preco, '+
                  '       si.descricao, '+
                  '       si.subtotalitem, '+
                  '       si.quantidade, '+
                  '       si.qtdfaturada, '+
                  '       v.nome as FuncVenda, '+
                  //'       ((si.precotabela * si.quantidade)* i.comissao/100) as ComissaoPrcTabela, '+
                  '       cast(((si.precotabela * si.quantidade)* case when i.comissao < 0 then 0 else i.comissao /100 end) as numeric (15, 3)) as ComissaoPrcTabela, '+
                  //'       ((si.preco * si.quantidade)* i.comissao/100) as ComissaoPrcVenda '+
                  '       cast(((si.preco * si.quantidade)* case when i.comissao < 0 then 0 else i.comissao /100 end) as numeric (15, 3)) as ComissaoPrcVenda '+
                  ' from saidas s  '+
                  ' inner join SaidasItens si on ((s.saida = si.saida) and (s.pdv = si.pdv)) '+
                  ' inner join Itens i on i.item = si.item '+
                  ' inner Join tipositens ti on ti.tipoitem = i.tipoitem '+
                  ' inner join favorecidos f on ((s.favorecido = f.favorecido) and (f.tipofavorecido = 1)) '+
                  ' inner join favorecidos v on ((v.favorecido = si.funcproducao) and (v.tipofavorecido = 3)) '+
                  ' where (s.situacao = ''N'' ) and ((s.data >=  :iData) and (s.data <=  :fData)) ';
                  }
        end;

end;

procedure TRptComissaoMontagem.FormsComponentBeforeClearParams(
    Sender: TObject);
begin
    inherited;
    C_TiposMovimentos.close;
    C_TiposMovimentos.open;
    clbTipoOperacao.SetDataSet(C_TiposMovimentos);
    edDataI.OnDateChange := nil;
    edDataF.OnDateChange := nil;
    if edDataI.GetEditingText = '' then edDataI.Date := Funcoes.FirstMonthDay(DMProjeto.dDataSistema);
    if edDataF.GetEditingText = '' then edDataF.Date := (DMProjeto.dDataSistema);
    clbTipoOperacao.SetSelecionados('2,7');
end;

procedure TRptComissaoMontagem.btAtualizarClick(Sender: TObject);
begin
    inherited;
    Atualizar;
end;

procedure TRptComissaoMontagem.ppeTipoOperacaoCloseUp(Sender: TObject;
    var Text: string; var Accept: Boolean);
begin
    inherited;
    Text := clbTipoOperacao.Selecionados(true);
    Accept := true;
end;

end.

