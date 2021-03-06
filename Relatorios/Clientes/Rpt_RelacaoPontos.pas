unit Rpt_RelacaoPontos;

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
  dxGrClms, dxEditor, TS_DateTimePicker, dxDBEdtr, dxDBELib,
  TS_LookupComboBox;

type
  TRptRelacaoPontos = class(TRptPadrao)
    C_ConsultaNOME: TStringField;
    C_ConsultaDATA: TDateField;
    C_ConsultaicSaldo: TCurrencyField;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaDATA: TdxDBGridDateColumn;
    dbgConsultaTOTAL: TdxDBGridCurrencyColumn;
    dbgConsultaVALORRESGATE: TdxDBGridCurrencyColumn;
    dbgConsultaicSaldo: TdxDBGridColumn;
    Q_Pontuacoes: TIBQuery;
    P_Pontuacoes: TDataSetProvider;
    C_Pontuacoes: TClientDataSet;
    C_PontuacoesDs: TDataSource;
    C_PontuacoesPONTUACAO: TIntegerField;
    C_PontuacoesDESCRICAO: TStringField;
    C_PontuacoesINICIO: TDateField;
    C_PontuacoesFIM: TDateField;
    C_PontuacoesFATORPONTO: TBCDField;
    C_PontuacoesMINIMORESGATE: TBCDField;
    C_PontuacoesFECHADA: TStringField;
    lckPontuacoes: TTS_LookupComboBox;
    TS_Label1: TTS_Label;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaVALORRESGATE: TBCDField;
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure btAtualizarClick(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
  private
    { Private declarations }
    nVendas, nResgates: Real;
    dtInicio, dtFim: TdateTime;
    nPontuacao: Integer;
    Procedure Atualizar;
  public
    { Public declarations }
  end;

var
  RptRelacaoPontos: TRptRelacaoPontos;

implementation

uses DM_Projeto;

{$R *.dfm}

Procedure TRptRelacaoPontos.Atualizar;
Begin
    C_Consulta.Close;
    Q_Consulta.ParamByName('DataI').AsDateTime := C_PontuacoesINICIO.AsDateTime;
    Q_Consulta.ParamByName('DataF').AsDateTime := C_PontuacoesFIM.AsDateTime;
    C_Consulta.Open;
    FormsComponent.Caption := 'Pontua��o dos Clientes entre: '+DateTostr(C_PontuacoesINICIO.AsDateTime) +' a '+
         DateTostr(C_PontuacoesFIM.AsDateTime);
end;

procedure TRptRelacaoPontos.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaicSaldo.AsCurrency :=  C_ConsultaTotal.Value - C_ConsultaVALORRESGATE.Value;  
end;

procedure TRptRelacaoPontos.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptRelacaoPontos.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  C_Pontuacoes.Close;
  C_Pontuacoes.Open;
  C_Pontuacoes.First;
  lckPontuacoes.LookupKeyValue := C_PontuacoesPONTUACAO.Value;
end;

end.
