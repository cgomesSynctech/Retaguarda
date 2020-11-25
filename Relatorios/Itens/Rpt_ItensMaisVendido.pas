unit Rpt_ItensMaisVendido;
                                                                                        
interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, RPT_PADRAO, dxExEdtr, dxPSGlbl, dxPSUtl, dxPSEngn, dxPrnPg,
  dxBkgnd, dxWrap, dxPrnDev, dxPSCore, dxPSdxTLLnk, dxPSdxDBCtrlLnk,
  dxPSdxDBGrLnk, FormsComponent, DBClient, Provider, DB, IBCustomDataSet,
  IBQuery, Placemnt, BTOdeum, Menus, TS_PopupMenu, TS_LastDataObject,
  DlgMsg, dxCntner, dxTL, dxDBCtrl, dxDBGrid, TS_QDBGrid, teCtrls,
  TS_EffectsPanel, StdCtrls, ComCtrls, ExtCtrls, TS_Label, Buttons,
  TS_SpeedButton, dxfLabel, TS_MaxPanel, dxEditor, dxEdLib, TS_Edit,
  TS_SpinEdit, dxDBTLCl, dxGrClms, TS_DateTimePicker, TS_CheckBox;

type
  TRptItensMaisVendido = class(TRptPadrao)
    TS_Label1: TTS_Label;
    edQuantos: TTS_SpinEdit;
    DataI: TTS_DateTimePicker;
    DataF: TTS_DateTimePicker;
    TS_Label2: TTS_Label;
    C_ConsultaITEM: TIntegerField;
    C_ConsultaDESCRICAO: TStringField;
    C_ConsultaDESCRICAOGRUPO: TStringField;
    dbgConsultaITEM: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAO: TdxDBGridMaskColumn;
    dbgConsultaDESCRICAOGRUPO: TdxDBGridMaskColumn;
    dbgConsultaQTDE: TdxDBGridMaskColumn;
    dbgConsultaTOTAL: TdxDBGridCurrencyColumn;
    C_ConsultaRanking: TIntegerField;
    dbgConsultaRanking: TdxDBGridColumn;
    C_ConsultaPorCento: TFloatField;
    dbgConsultaPorCento: TdxDBGridColumn;
    btVendedor: TTS_SpeedButton;
    cbValor: TTS_CheckBox;
    cbVolume: TTS_CheckBox;
    C_ConsultaTOTAL: TFloatField;
    C_ConsultaQTDE: TBCDField;
    procedure btAtualizarClick(Sender: TObject);
    procedure DataIDateChange(Sender: TObject);
    procedure edQuantosChange(Sender: TObject);
    procedure FormsComponentBeforeClearParams(Sender: TObject);
    procedure btVendedorClick(Sender: TObject);
    procedure cbVolumeChange(Sender: TObject);
    procedure cbValorChange(Sender: TObject);
  private
    sVendedores, sNomesVendedores : String;
    procedure Atualizar;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  RptItensMaisVendido: TRptItensMaisVendido;

implementation

uses DM_Projeto, funcoes;

{$R *.dfm}

procedure TRptItensMaisVendido.Atualizar;
var i : integer;
    nTotal: Currency;
begin
  i := 1;
  with C_Consulta do begin
  	close;
    commandtext := 'select '+getCampos+' '+
    		   'from '+getTabelas+' '+
                   'where s.data >= :datai and s.data <= :dataf '+
                   ' and (s.baixaestoque = ''S'') and s.situacao = ''N'' and si.situacao = ''N'' ';
        if sVendedores <> '' then begin
           CommandText := CommandText + ' and s.vendedor in (' + sVendedores +')';
        end;
     CommandText := CommandText + ' group by si.item, i.descricao, g.descricaogrupo '+
	   ' order by 4 desc';
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
         nTotal := nTotal + C_Consulta.FieldByName('QTDE').Value;

      Next;
    end;
    First;
    while not eof do begin
      Edit;
      C_ConsultaRanking.Value := i;
      If cbValor.Checked Then
         C_ConsultaPorCento.Value := (C_ConsultaTOTAL.Value / nTotal ) * 100
      Else
         C_ConsultaPorCento.Value := (C_ConsultaQTDE.Value / nTotal ) * 100;
      Post;
      inc(i);
      Next;
    end;
    enablecontrols;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Os '+IntToStr(edQuantos.IntValue)+' itens mais vendido no período de '+DataI.Text+' a '+DataF.Text);
  end;
end;
          
procedure TRptItensMaisVendido.btAtualizarClick(Sender: TObject);
begin
  inherited;
  Atualizar;
end;

procedure TRptItensMaisVendido.DataIDateChange(Sender: TObject);
begin
  inherited;
  //Atualizar;
end;

procedure TRptItensMaisVendido.edQuantosChange(Sender: TObject);
begin
  inherited;
  //Atualizar;
end;

procedure TRptItensMaisVendido.FormsComponentBeforeClearParams(
  Sender: TObject);
begin
  inherited;
  DataI.OnDateChange := nil;
  DataF.OnDateChange := nil;
  if DataI.GetEditingText = '' then DataI.Date := DMProjeto.dDataSistema ;
  if DataF.GetEditingText = '' then DataF.Date := DMProjeto.dDataSistema;
  DataI.OnDateChange := DataIDateChange;
  DataF.OnDateChange := DataIDateChange;
  //Atualizar;
end;

procedure TRptItensMaisVendido.btVendedorClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sVendedores, 3]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
       sVendedores := GetParametrosForm(0);
       sNomesVendedores := GetParametrosForm(1);
       LimparParametrosForm;
       //Atualizar;
    end;
  end;
end;

procedure TRptItensMaisVendido.cbVolumeChange(Sender: TObject);
begin
  inherited;
  cbValor.Checked := Not cbVolume.Checked;
  //Atualizar;
end;

procedure TRptItensMaisVendido.cbValorChange(Sender: TObject);
begin
  inherited;
  cbVolume.Checked := Not cbValor.Checked;
  //Atualizar;
end;

end.
