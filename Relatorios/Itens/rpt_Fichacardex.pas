unit rpt_Fichacardex;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, FRM_MODELOCADASTROS, FormsComponent, Placemnt, BTOdeum, Menus,
  TS_PopupMenu, TS_LastDataObject, DlgMsg, dxfLabel, StdCtrls, TS_Label,
  ExtCtrls, TS_Image, TS_MaxPanel, TS_Bevel, Buttons, TS_SpeedButton,
  teCtrls, TS_EffectsPanel, ppCtrls, ppPrnabl, ppClass, ppBands, ppDB, DB,
  ppCache, IBCustomDataSet, ppProd, ppReport, ppComm, ppRelatv, ppDBPipe,
  IBQuery, TS_RadioGroup, dxCntner, dxEditor, dxExEdtr, dxEdLib,
  TS_DateTimePicker, ppStrtch, ppSubRpt, TS_CheckBox, TS_Panel, ppRegion,
  TS_PopupEdit, TS_PopupFiltrarItens, ppVar, ppModule, raCodMod, DBClient,
  Provider;

type
  TrptFichacardex = class(TFrmModeloCadastros)
    Q_Itens: TIBQuery;
    Q_Transacoes: TIBQuery;
    Q_ItensDs: TDataSource;
    Q_TransacoesDs: TDataSource;
    ppDBItens: TppDBPipeline;
    ppDBTransacoes: TppDBPipeline;
    ppFichaCardex: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppDetailBand1: TppDetailBand;
    rgOrdem: TTS_RadioGroup;
    TS_PanelCorner1: TTS_PanelCorner;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    dtInicio: TTS_DateTimePicker;
    dtFim: TTS_DateTimePicker;
    cbPeriodo: TTS_CheckBox;
    regCab: TppRegion;
    lbPeriodo: TppLabel;
    TS_PanelCorner2: TTS_PanelCorner;
    FiltroItens: TTS_PopupFiltrarItens;
    P_Itens: TDataSetProvider;
    C_Itens: TClientDataSet;
    C_Transacoes: TClientDataSet;
    C_ItensITEM: TIntegerField;
    C_ItensCODIGO: TStringField;
    C_ItensREFERENCIA: TStringField;
    C_ItensDESCRICAO: TStringField;
    C_ItensDESCRICAOGRUPO: TStringField;
    C_ItensUNIDADE: TStringField;
    C_ItensSALDOANTERIOR: TBCDField;
    Q_Master: TDataSource;
    C_ItensQ_Transacoes: TDataSetField;
    C_TransacoesDATA: TDateField;
    C_TransacoesUNIDADE: TStringField;
    C_TransacoesNUMERO: TStringField;
    C_TransacoesLANCAMENTO: TBCDField;
    C_TransacoesENTRADA: TBCDField;
    C_TransacoesSAIDA: TBCDField;
    C_TransacoesSALDO: TBCDField;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppLabel1: TppLabel;
    ppLabel2: TppLabel;
    ppDBText8: TppDBText;
    ppLabel9: TppLabel;
    ppSubReport1: TppSubReport;
    ppChildReport1: TppChildReport;
    ppTitleBand1: TppTitleBand;
    ppLine1: TppLine;
    ppSALDOANTERIOR: TppLabel;
    ppLabel6: TppLabel;
    ppLabel5: TppLabel;
    ppLabel4: TppLabel;
    ppLabel3: TppLabel;
    ppLine4: TppLine;
    ppLabel16: TppLabel;
    ppDetailBand2: TppDetailBand;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    ppDBText5: TppDBText;
    ppDBText6: TppDBText;
    ppDBText10: TppDBText;
    ppDBText7: TppDBText;
    ppSummaryBand1: TppSummaryBand;
    ppLabel8: TppLabel;
    ppDBCalc1: TppDBCalc;
    ppDBCalc2: TppDBCalc;
    ppLine2: TppLine;
    ppLine3: TppLine;
    ppDBText9: TppDBText;
    raCodeModule1: TraCodeModule;
    C_TransacoesicSALDO: TFloatField;
    procedure btGravarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cbPeriodoClick(Sender: TObject);
    procedure FiltroItensSelecionou(Sender: TObject);
    procedure Q_TransacoesBeforeOpen(DataSet: TDataSet);
  private
    { Private declarations }
    sFiltroItens :string;
    sSALDO:  Real;
    sTipoEstoque :integer;
  public
    { Public declarations }
  end;

var
  rptFichacardex: TrptFichacardex;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

procedure TrptFichacardex.btGravarClick(Sender: TObject);
begin
  inherited;
  C_Itens.Close;
  Q_Itens.SQL.Text := 'select i.item,  i.codigo, i.referencia, i.descricao, g.descricaogrupo, i.unidade , '+
                      ' (select cast(coalesce( Sum((y.fator* y.quantidade)/Cast(i.fatorundvenda as Numeric)) ,0) as Numeric(8,3)) from '+ iif(sTipoEstoque = 1,' transacoesestoquefiscal ',' transacoesestoque ') + ' y '+
                      ' where y.item = i.item and y.data < :Data) as SaldoAnterior '+
                      ' From Itens I Left join grupos g on g.grupo = i.grupo '+
                      sFiltroItens +
                      ' order by '+IIF(rgOrdem.ItemIndex = 0 , ' i.codigo', ' i.descricao ');
  Q_Itens.ParamByName('Data').AsDateTime := dtInicio.Date;
  C_Itens.Open;
  DMProjeto.ImprimirCabecalho(regCab);
  if cbPeriodo.Checked Then
     lbPeriodo.Caption := 'Todos os Lançamentos'
  Else
    lbPeriodo.Caption := 'No período de '+DateToStr(dTInicio.Date)+' a '+DateToStr(dTFim.Date);

  ppFichaCardex.Print;
end;

procedure TrptFichacardex.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  dtInicio.Date := Date;
  dtFim.Date := Date;
end;


procedure TrptFichacardex.cbPeriodoClick(Sender: TObject);
begin
  inherited;
  if cbPeriodo.Checked then Begin
     dtInicio.Date := StrtoDate('01/01/1990');
     dtFim.Date    := Date;
     dtInicio.Enabled := False;
     dtFim.Enabled    := False;
  end else Begin
     dtInicio.Date := Date;
     dtFim.Date := Date;
     dtInicio.Enabled := True;
     dtFim.Enabled    := True;
  end;

end;

procedure TrptFichacardex.FiltroItensSelecionou(Sender: TObject);
begin
  inherited;
  sFiltroItens:= '';
   if (Length(FiltroItens.getSQL) > 0) then
    	sFiltroItens:= ' where '+FiltroItens.getSQL;
      sTipoEstoque := FiltroItens.getTiposEstoque;
end;

procedure TrptFichacardex.Q_TransacoesBeforeOpen(DataSet: TDataSet);
begin
  inherited;
 with Q_Transacoes do begin
    SQL.Text := 'Select t.data, t.unidade, '+
                ' case when t.numero is not null then t.numero '+
                '   when (t.numero is null) and (s.numero is null) then e.numero '+
                '   when (t.numero is null) and (e.numero is null) then s.numero '+
                ' end as Numero , '+
                ' cast(coalesce((t.fator*t.quantidade)/Cast(i.fatorundvenda as Numeric),0) as Numeric(8,3))  As LANCAMENTO, '+
                ' case when t.quantidade > 0 then cast(coalesce((t.fator*t.quantidade)/Cast(i.fatorundvenda as Numeric),0) as Numeric(8,3)) else 0.00 end  Entrada , '+
                ' case when t.quantidade < 0 then cast(coalesce((t.fator*t.quantidade)/Cast(i.fatorundvenda as Numeric),0) as Numeric(8,3)) else 0.00 end  Saida, '+
                ' (select cast(sum(coalesce((x.fator*x.quantidade)/Cast(i.fatorundvenda as Numeric),0)) as Numeric(8,3))  From ' + iif(sTipoEstoque = 1, ' transacoesestoquefiscal', ' transacoesestoque ') + ' x where x.item = t.item and x.data <= t.data) as Saldo '+
                '   from ' + iif(sTipoEstoque = 1, ' transacoesestoquefiscal', ' transacoesestoque') + ' t ' +
                '   inner join itens i on i.item = t.item '+
                '   left join entradas e on (e.entrada = t.idgerador) and (e.pdv = t.pdv) and (t.entradaitem is not null) '+
                '   left join saidas s on (s.saida = t.idgerador) and (s.pdv = t.pdv) and (t.saidaitem is not null)  '+
                ' where t.item = :ITEM AND (T.DATA >= :DTINICIO AND T.DATA <= :DTFIM)   order by  1 ';
    ParamByName('dtinicio').AsDateTime := dtInicio.Date;
    ParamByName('dtfim').AsDateTime    := dtfim.Date;
  end;
end;

end.
