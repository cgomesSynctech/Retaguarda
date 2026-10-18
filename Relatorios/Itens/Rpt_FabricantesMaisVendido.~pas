unit Rpt_FabricantesMaisVendido;
                                  
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxDBTLCl, dxGrClms, dxEdLib,
  TS_DateTimePicker, dxEditor, TS_SpinEdit, TS_CheckBox;

type
  TRptFabricantesMaisVendido = class(TRptPadrao)
    C_ConsultaFABRICANTE: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaTOTAL: TBCDField;
    dbgConsultaFABRICANTE: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaQUANTIDADE: TdxDBGridMaskColumn;
    dbgConsultaTOTAL: TdxDBGridCurrencyColumn;
    dbgConsultaColumn6: TdxDBGridColumn;
    C_ConsultaRanking: TIntegerField;
    TS_Label1: TTS_Label;
    TS_Label2: TTS_Label;
    edQuantos: TTS_SpinEdit;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    C_ConsultaQUANTIDADE: TFloatField;
    C_ConsultaPorCento: TFloatField;
    dbgConsultaPorCento: TdxDBGridColumn;
    btVendedor: TTS_SpeedButton;
    cbValor: TTS_CheckBox;
    cbVolume: TTS_CheckBox;
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure edQuantosChange(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure cbValorChange(Sender: TObject);
    procedure cbVolumeChange(Sender: TObject);
  private
    sVendedores, sNomesVendedores : String;
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptFabricantesMaisVendido: TRptFabricantesMaisVendido;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptFabricantesMaisVendido.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
	DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
	DataI.Date := FirstMonthDay( DMProjeto.dDataSistema );
 	DataF.Date := LastMonthDay( DMProjeto.dDataSistema );
	DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  Atualizar;
end;

procedure TRptFabricantesMaisVendido.Atualizar;
var i : integer;
    nTotal: Currency;
begin
    i := 1;
    with C_Consulta do begin
     close;
    commandtext := 'select '+getCampos+' '+
         'from '+getTabelas+' '+
         'where s.data >= :datai and s.data <= :dataf '+
         ' and (s.baixaestoque = ''S'') and s.situacao = ''N'' ';

   if sVendedores <> '' then begin
     CommandText := CommandText + ' and s.vendedor in (' + sVendedores +') ';
   end;
   CommandText := CommandText +
	 ' group by i.fabricante, f.descricao '+
	 ' order by 4 desc ';
    fetchparams;
    params.parambyname('DataI').AsDateTime := DataI.Date;
    params.parambyname('DataF').AsDateTime := DataF.Date;
    params.parambyname('Quantos').AsInteger:= edQuantos.IntValue;
    open;
    disablecontrols;
    nTotal:=0; //Achando o Total para Percentual
    while not eof do begin
      If cbValor.Checked Then
         nTotal := nTotal + C_Consulta.FieldByName('TOTAL').Value
      Else
         nTotal := nTotal + C_Consulta.FieldByName('QUANTIDADE').Value;
      Next;
    end;
    First;
    while not eof do begin
      Edit;
      C_ConsultaRanking.Value := i;
      If cbValor.Checked Then
         C_ConsultaPorCento.Value := (C_ConsultaTOTAL.Value / nTotal ) * 100
      Else
         C_ConsultaPorCento.Value := (C_ConsultaQUANTIDADE.Value / nTotal ) * 100;
      Post;
      inc(i);
      Next;
    end;
    enablecontrols;
  end;
  with dbgConsulta do begin
  	TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Os '+IntToStr(edQuantos.IntValue)+' fabricantes mais vendido no período de '+DataI.Text+' a '+DataF.Text);
  end;
end;

procedure TRptFabricantesMaisVendido.btAtualizarClick(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFabricantesMaisVendido.DataIDateChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFabricantesMaisVendido.edQuantosChange(Sender: TObject);
begin
  inherited;
	Atualizar;
end;

procedure TRptFabricantesMaisVendido.btVendedorClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sVendedores, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
       sVendedores := GetParametrosForm(0);
       sNomesVendedores := GetParametrosForm(1);
       LimparParametrosForm;
       Atualizar;
    end;
  end;
end;

procedure TRptFabricantesMaisVendido.cbValorChange(Sender: TObject);
begin
  inherited;
  cbVolume.Checked := Not cbValor.Checked;
  Atualizar;

end;

procedure TRptFabricantesMaisVendido.cbVolumeChange(Sender: TObject);
begin
  inherited;
  cbValor.Checked := Not cbVolume.Checked;
  Atualizar;
end;

end.
