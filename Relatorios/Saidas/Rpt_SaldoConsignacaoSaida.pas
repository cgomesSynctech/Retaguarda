unit Rpt_SaldoConsignacaoSaida;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl,
  dxGrClms, TS_PopupEdit, TS_PopupFiltrarItens, dxEditor, TS_DateTimePicker;

type
  TRptSaldoConsignacaoSaida = class(TRptPadrao)
    C_ConsultaTIPOMOVIMENTO: TIntegerField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaNOME: TStringField;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaUNIDADE: TStringField;
    C_ConsultaREFERENCIA: TStringField;
    C_ConsultaNUMERO: TStringField;
    C_ConsultaDATA: TDateField;
    dbgConsultaTIPOMOVIMENTO: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaUNIDADE: TdxDBGridMaskColumn;
    dbgConsultaREFERENCIA: TdxDBGridMaskColumn;
    dbgConsultaESTOQUECONSIGSAIDA: TdxDBGridCurrencyColumn;
    dbgConsultaESTOQUE: TdxDBGridCurrencyColumn;
    dbgConsultaQTD: TdxDBGridCurrencyColumn;
    dbgConsultaQTDDEV: TdxDBGridCurrencyColumn;
    dbgConsultaQTDACERT: TdxDBGridCurrencyColumn;
    dbgConsultaNUMERO: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    DataI: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    DataF: TTS_DateTimePicker;
    btClientes: TTS_SpeedButton;
    PopupFiltrarItens: TTS_PopupFiltrarItens;
    dbgConsultaSaldo: TdxDBGridColumn;
    cbPeriodo: TTS_CheckBox;
    dbgConsultaVALOR: TdxDBGridCurrencyColumn;
    dbgConsultaValorDevolvido: TdxDBGridCurrencyColumn;
    dbgConsultaVALORACERTADO: TdxDBGridCurrencyColumn;
    dbgConsultaVALORSALDO: TdxDBGridCurrencyColumn;
    cbCanceladas: TTS_CheckBox;
    C_ConsultaESTOQUECONSIGSAIDA: TBCDField;
    C_ConsultaESTOQUE: TBCDField;
    C_ConsultaQTD: TFloatField;
    C_ConsultaQTDDEV: TFloatField;
    C_ConsultaQTDACERT: TFloatField;
    C_ConsultaSALDO: TFloatField;
    C_ConsultaVALOR: TFloatField;
    C_ConsultaVALORDEVOLVIDO: TFloatField;
    C_ConsultaVALORACERTADO: TFloatField;
    C_ConsultaVALORSALDO: TFloatField;
    procedure btAtualizarClick(Sender: TObject);
    procedure btClientesClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure cbPeriodoChange(Sender: TObject);
  private
    { Private declarations }
    sClientes, sNomesClientes : String;
  public
    { Public declarations }
    Procedure Atualizar;
  end;

var
  RptSaldoConsignacaoSaida: TRptSaldoConsignacaoSaida;

implementation

uses DM_Projeto, Funcoes;

{$R *.dfm}

Procedure TRptSaldoConsignacaoSaida.Atualizar;
var sSituacao: string;
begin
    sSituacao := ' and e.situacao = '+iif(cbCanceladas.CHecked,'''C'' ','''N'' ');
   with C_Consulta do begin
      Close;
      CommandText := 'Select ' + getCampos + ' ' +
          'From '   + getTabelas + ' ' +
          'Where '+PopupFiltrarItens.getSQL(False)+iif(PopupFiltrarItens.getSQL(False)<>'',' and ', '')+
          ' ei.status in (''L'',''F'',''P'') and e.tipomovimento = 11 '+
          iif(cbPeriodo.Checked,' and e.data >= :datai and e.data <= :dataf ','')
          + sSituacao;

      if sClientes <> '' then begin
         CommandText := CommandText + ' and e.favorecido in (' + sClientes +')';
      end;
      CommandText := CommandText + ' group by e.tipomovimento, e.numero, e.data, e.favorecido,f.nome,ei.item,i.codigo, i.descricao, i.unidade,i.referencia,i.estoqueconsigsaida,i.estoque '+
                                   ' Order by e.data';
      If cbPeriodo.Checked Then Begin
        Params.ParamByName('DataI').AsDateTime := DataI.Date;
        Params.ParamByName('DataF').AsDateTime := DataF.Date;
      End;
      FetchParams;
      Open;
  end;
  with dbgConsulta do begin
  	FullExpand;
  end;
  FormsComponent.Caption := 'Saldo Consignado no Período: '+DateTostr(DataI.Date) +' a '+
                                                DateTostr(DataF.Date);

End;

procedure TRptSaldoConsignacaoSaida.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptSaldoConsignacaoSaida.btClientesClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomesClientes := GetParametrosForm(1);
      LimparParametrosForm;
      Atualizar;
    end;
  end;

end;

procedure TRptSaldoConsignacaoSaida.FormShow(Sender: TObject);
begin
  inherited;
  DataF.Date := Date;
  DataI.Date := Date - 30;
end;

procedure TRptSaldoConsignacaoSaida.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.Enabled := cbPeriodo.Checked;
  DataF.Enabled := cbPeriodo.Checked;
end;

procedure TRptSaldoConsignacaoSaida.cbPeriodoChange(Sender: TObject);
begin
  inherited;
  DataI.Enabled :=  cbPeriodo.Checked;
  DataF.Enabled :=  cbPeriodo.Checked;
end;

end.
