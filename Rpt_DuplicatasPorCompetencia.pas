unit Rpt_DuplicatasPorCompetencia;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, FormsComponent, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxEdLib, TS_CheckBox, dxTL, dxDBCtrl, dxDBGrid,
  TS_QDBGrid, teCtrls, TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls,
  TS_Label, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor,
  TS_DateTimePicker, dxDBTLCl, dxGrClms, TS_RadioGroup;

type
  TRptDuplicatasPorCompetencia = class(TRptPadrao)
    lbPeriodo: TTS_Label;
    DataI: TTS_DateTimePicker;
    lbA: TTS_Label;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    TS_Label3: TTS_Label;
    C_ConsultaID: TIntegerField;
    C_ConsultaPARCELA: TIntegerField;
    C_ConsultaNOTAFISCAL: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaVENCIMENTO: TDateField;
    C_ConsultaVALOR: TBCDField;
    C_ConsultaVALORPAGO: TBCDField;
    C_ConsultaDATAPAGO: TDateField;
    C_ConsultaDESCONTOS: TBCDField;
    C_ConsultaJUROSPAGOS: TBCDField;
    C_ConsultaCREDITOGERADO: TBCDField;
    C_ConsultaCREDITOUTILIZADO: TBCDField;
    C_ConsultaDESCSTATUS: TStringField;
    C_ConsultaSALDO: TBCDField;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaFONE1: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaFAVORECIDO: TIntegerField;
    C_ConsultaCOMPRA: TIntegerField;
    C_ConsultaTIPOFAVORECIDO: TIntegerField;
    C_ConsultaCODIGO: TStringField;
    C_ConsultaOBS: TStringField;
    C_ConsultaDESCTIPOCOBRANCA: TStringField;
    C_ConsultaINDEXADOR: TIntegerField;
    C_ConsultaDESCINDEX: TStringField;
    C_ConsultaFORMAPGTO: TStringField;
    C_ConsultaCONTA: TStringField;
    C_ConsultaCPF_CNPJ: TStringField;
    dbgConsultaID: TdxDBGridMaskColumn;
    dbgConsultaPARCELA: TdxDBGridMaskColumn;
    dbgConsultaNOTAFISCAL: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaVENCIMENTO: TdxDBGridDateColumn;
    dbgConsultaVALOR: TdxDBGridCurrencyColumn;
    dbgConsultaVALORPAGO: TdxDBGridCurrencyColumn;
    dbgConsultaDATAPAGO: TdxDBGridDateColumn;
    dbgConsultaDESCONTOS: TdxDBGridCurrencyColumn;
    dbgConsultaJUROSPAGOS: TdxDBGridCurrencyColumn;
    dbgConsultaCREDITOGERADO: TdxDBGridCurrencyColumn;
    dbgConsultaCREDITOUTILIZADO: TdxDBGridCurrencyColumn;
    dbgConsultaDESCSTATUS: TdxDBGridMaskColumn;
    dbgConsultaSALDO: TdxDBGridCurrencyColumn;
    dbgConsultaENDERECO: TdxDBGridMaskColumn;
    dbgConsultaCIDADE: TdxDBGridMaskColumn;
    dbgConsultaUF: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaCEP: TdxDBGridMaskColumn;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCOMPRA: TdxDBGridMaskColumn;
    dbgConsultaTIPOFAVORECIDO: TdxDBGridMaskColumn;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaOBS: TdxDBGridMaskColumn;
    dbgConsultaDESCTIPOCOBRANCA: TdxDBGridMaskColumn;
    dbgConsultaINDEXADOR: TdxDBGridMaskColumn;
    dbgConsultaDESCINDEX: TdxDBGridMaskColumn;
    dbgConsultaFORMAPGTO: TdxDBGridMaskColumn;
    dbgConsultaCONTA: TdxDBGridMaskColumn;
    dbgConsultaCPF_CNPJ: TdxDBGridMaskColumn;
    RgForma: TTS_RadioGroup;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptDuplicatasPorCompetencia: TRptDuplicatasPorCompetencia;


implementation


uses DM_Projeto, funcoes, DM_Financeiro;


{$R *.dfm}

procedure TRptDuplicatasPorCompetencia.FormsComponentBeforeClearParams(Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema ;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema;
//  DataI.OnDateChange := DataFDateChange;
//  DataF.OnDateChange := DataFDateChange;
end;

procedure TRptDuplicatasPorCompetencia.btAtualizarClick(Sender: TObject);
begin
  inherited;

        with C_Consulta do begin
  	  close;
          if  RgForma.ItemIndex = 0 Then
                CommandText :=  'select distinct(D.ID),D.parcela, D.NOTAFISCAL, F.NOME, D.VENCIMENTO, D.VALOR, D.VALORPAGO, D.DATAPAGO, '+
                ' D.DESCONTOS, D.JUROSPAGOS, D.CREDITOGERADO, D.CREDITOUTILIZADO, S.DESCRICAO AS DESCSTATUS, (D.FALTAPAGAR) AS SALDO, F.ENDERECO, '+
                ' F.CIDADE, F.UF, F.FONE1, F.CEP, F.FAVORECIDO, D.COMPRA, F.TIPOFAVORECIDO, f.codigo, d.obs, TC.descricao AS DESCTIPOCOBRANCA, '+
                ' d.indexador, idx.descricao as descindex, fp.descricao as FormaPgto , ct.descricao as Conta , f.cpf_cnpj '+
                ' from '+
                ' duplicatasapagar d INNER JOIN FAVORECIDOS F ON D.FORNECEDOR = F.FAVORECIDO INNER JOIN STATUSTITULOS S ON D.STATUS = S.STATUS '+
                ' left join TIPOSCOBRANCA TC on d.tipocobranca = TC.tipocobranca left join indexadores idx on d.indexador = idx.indexador '+
                ' left join retiradasduplicatas rdp on rdp.duplicata = d.id left join retiradasdoc rd on rd.retirada = rdp.retirada '+
                ' left join retiradas r on rd.retirada = r.retirada left join contasoperacao co on r.retirada = co.idgerador '+
                ' left join contas ct on rd.conta = ct.conta left join formaspagamento fp on rd.formapagamento = fp.formapagamento '+
                ' where d.competencia >= :DataI and d.competencia <= :DataF '
          else
                CommandText :=  'select distinct(D.ID),D.parcela, D.NOTAFISCAL, F.NOME, D.VENCIMENTO, D.VALOR, D.VALORPAGO, D.DATAPAGO, '+
                ' D.DESCONTOS, D.JUROSPAGOS, D.CREDITOGERADO, D.CREDITOUTILIZADO, S.DESCRICAO AS DESCSTATUS, (D.FALTAPAGAR) AS SALDO, F.ENDERECO, '+
                ' F.CIDADE, F.UF, F.FONE1, F.CEP, F.FAVORECIDO, D.COMPRA, F.TIPOFAVORECIDO, f.codigo, d.obs, TC.descricao AS DESCTIPOCOBRANCA, '+
                ' d.indexador, idx.descricao as descindex, fp.descricao as FormaPgto , ct.descricao as Conta , f.cpf_cnpj '+
                ' from '+
                ' duplicatasapagar d INNER JOIN FAVORECIDOS F ON D.FORNECEDOR = F.FAVORECIDO INNER JOIN STATUSTITULOS S ON D.STATUS = S.STATUS '+
                ' left join TIPOSCOBRANCA TC on d.tipocobranca = TC.tipocobranca left join indexadores idx on d.indexador = idx.indexador '+
                ' left join retiradasduplicatas rdp on rdp.duplicata = d.id left join retiradasdoc rd on rd.retirada = rdp.retirada '+
                ' left join retiradas r on rd.retirada = r.retirada left join contasoperacao co on r.retirada = co.idgerador '+
                ' left join contas ct on rd.conta = ct.conta left join formaspagamento fp on rd.formapagamento = fp.formapagamento '+
                ' where d.vencimento >= :DataI and d.vencimento <= :DataF ' ;

          fetchparams;
          Params.ParamByName('DataI').asDateTime := DataI.Date;
          Params.ParamByName('DataF').asDateTime := DataF.Date;
          Open;
        END;

end;

end.
