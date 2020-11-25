unit Rpt_MelhoresClientes;
                                        
interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms, Dialogs,
  RPT_PADRAO, Db, dxTL, dxDBCtrl, dxDBGrid, dxCntner, dxEditor, dxExEdtr,
  dxEdLib, TS_CurrencyEdit, StdCtrls, TS_Label, FormsComponent, DBClient,
  Provider, IBCustomDataSet, IBQuery, Menus, TS_PopupMenu,
  TS_LastDataObject, DlgMsg, TS_QDBGrid, teCtrls, TS_EffectsPanel,
  ExtCtrls, Buttons, TS_SpeedButton, dxfLabel, TS_MaxPanel, dxPSCore, dxPSdxTLLnk,
  dxPSdxDBCtrlLnk, dxPSdxDBGrLnk, ComCtrls, dxPSGlbl, dxPSUtl, dxPSEngn,
  dxPrnPg, dxBkgnd, dxWrap, dxPrnDev, BTOdeum, TS_SpinEdit, Placemnt,
  TS_CheckBox;

type
  TRptMelhoresClientes = class(TRptPadrao)
    C_ConsultaCODIGO: TStringField;
    C_ConsultaNOME: TStringField;
    C_ConsultaFONE1: TStringField;
    dbgConsultaCODIGO: TdxDBGridMaskColumn;
    dbgConsultaNOME: TdxDBGridMaskColumn;
    dbgConsultaFONE1: TdxDBGridMaskColumn;
    dbgConsultaTOTALATEHOJE: TdxDBGridMaskColumn;
    dbgConsultaTOTALESTEANO: TdxDBGridMaskColumn;
    dbgConsultaVOLUME0_30: TdxDBGridMaskColumn;
    dbgConsultaVOLUME31_60: TdxDBGridMaskColumn;
    dbgConsultaVOLUME61_90: TdxDBGridMaskColumn;
    C_ConsultaPreviewEnd: TStringField;
    TS_Label1: TTS_Label;
    EdMedia: TTS_SpinEdit;
    C_ConsultaENDERECO: TStringField;
    C_ConsultaCIDADE: TStringField;
    C_ConsultaUF: TStringField;
    C_ConsultaCEP: TStringField;
    C_ConsultaFAX: TStringField;
    C_ConsultaFONE2: TStringField;
    TS_Label2: TTS_Label;
    C_ConsultaMEDIACOMPRAAOMES: TFloatField;
    C_ConsultaMEDIACOMPRA: TFloatField;
    dbgConsultaMEDIACOMPRAAOMES: TdxDBGridMaskColumn;
    dbgConsultaMEDIACOMPRA: TdxDBGridMaskColumn;
    Endereo1: TMenuItem;
    C_ConsultaFAVORECIDO: TIntegerField;
    dbgConsultaFAVORECIDO: TdxDBGridMaskColumn;
    N9: TMenuItem;
    spCliente: TTS_SpeedButton;
    C_ConsultaTOTALATEHOJE: TFloatField;
    C_ConsultaTOTALESTEANO: TFloatField;
    C_ConsultaVOLUME0_30: TFloatField;
    C_ConsultaVOLUME31_60: TFloatField;
    C_ConsultaVOLUME61_90: TFloatField;
    procedure btAtualizarClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Endereo1Click(Sender: TObject);
    procedure dbgConsultaDblClick(Sender: TObject);
    procedure FormsComponentRefresh(Sender: TObject);
    procedure spClienteClick(Sender: TObject);
    procedure spClienteClick2(Sender: TObject);
    procedure C_ConsultaCalcFields(DataSet: TDataSet);
    procedure EdMediaChange(Sender: TObject);
  private
    { Private declarations }
    sSQL, sClientes, sNomes : String;
  public
    { Public declarations }
    procedure AtualizaConsulta;
  end;

var
  RptMelhoresClientes: TRptMelhoresClientes;

implementation

uses DM_Projeto, funcoes;

{$R *.DFM}

procedure TRptMelhoresClientes.AtualizaConsulta;
var
    Ano, Mes, Dia : word;
    sPrimeiroNome : String;
    i : integer;
begin
  ActiveControl := nil;
  with C_Consulta do begin
    Close;
    CommandText := 'Select ' + getCampos + ' ' +
                   'From ' + getTabelas + ' ' +
                   'where f.tipofavorecido=1 and f.desativado = ''N'' ';
    CommandText := replace(sSQL,'/3','/'+EdMedia.Text +' ');
    if sClientes <> '' then begin
      CommandText := CommandText + ' and f.favorecido in (' + sClientes + ')';
    end;
    DecodeDate(DMProjeto.dDataSistema, Ano, Mes, Dia);
    Params.ParamByName('datai').AsDateTime := StrToDateTime('01/01/'+IntToStr(Ano));
    Params.ParamByName('dataf').AsDateTime := DMProjeto.dDataSistema;
    Params.ParamByName('dataprazoi30').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 1);
    Params.ParamByName('dataprazof30').AsDateTime := DMProjeto.dDataSistema;
    Params.ParamByName('dataprazoi60').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 2);
    Params.ParamByName('dataprazof60').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 1) - 1;
    Params.ParamByName('dataprazoi90').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 3);
    Params.ParamByName('dataprazof90').AsDateTime := IncMonth(DMProjeto.dDataSistema, - 2) - 1;
    Params.ParamByName('dataiMedia').AsDateTime := IncMonth(DMProjeto.dDataSistema, - StrToInt(EdMedia.Text));
    Params.ParamByName('datafMedia').AsDateTime := DMProjeto.dDataSistema;
    Open;
  end;
  with dbgConsulta do begin
    TS_ReportFilter.Clear;
    TS_ReportFilter.Add('Calculo da média dos últimos '+edMedia.Text+' meses');
    if sClientes <> '' then begin
      sPrimeiroNome := PrimeiraPalavra(SeparaStrings(sNomes,';',1));
      for i := 2 to ContaStrings(sNomes,';') do begin
        sPrimeiroNome := sPrimeiroNome + ', ' + PrimeiraPalavra(SeparaStrings(sNomes,';',i));
      end;
      TS_ReportFilter.Add('Clientes: ' + sPrimeiroNome);
    end;
  end;
end;

procedure TRptMelhoresClientes.btAtualizarClick(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptMelhoresClientes.FormShow(Sender: TObject);
begin
  inherited;
  sSQL := UpperCase(Q_Consulta.SQL.Text);
  AtualizaConsulta;
end;

procedure TRptMelhoresClientes.Endereo1Click(Sender: TObject);
begin
  inherited;
  Endereo1.Checked := not Endereo1.Checked;
  if Endereo1.Checked then
     dbgConsulta.OptionsView := dbgConsulta.OptionsView + [edgoPreview]
  else
     dbgConsulta.OptionsView := dbgConsulta.OptionsView - [edgoPreview];
end;

procedure TRptMelhoresClientes.dbgConsultaDblClick(Sender: TObject);
var
   nIdFav : Integer;
begin
  inherited;
  nIdFav := dbgConsulta.GetFieldValue(dbgConsulta.focusednode,'favorecido',0);
  DMProjeto.SetParametrosForm([nIdFav]);
  DMProjeto.CriarForm('FrmClientes',Self,true);
end;

procedure TRptMelhoresClientes.FormsComponentRefresh(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

procedure TRptMelhoresClientes.spClienteClick(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomes := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaConsulta;
    end;
  end;
end;

procedure TRptMelhoresClientes.spClienteClick2(Sender: TObject);
begin
  inherited;
  with DMProjeto do begin
    SetParametrosForm(['',sClientes, 1]);
    CriarForm('DlgEscolheFavorecidos', Self, true);
    if ExisteParametrosForm then begin
      sClientes := GetParametrosForm(0);
      sNomes := GetParametrosForm(1);
      LimparParametrosForm;
      AtualizaConsulta;
    end;
  end;
end;

procedure TRptMelhoresClientes.C_ConsultaCalcFields(DataSet: TDataSet);
begin
  inherited;
  C_ConsultaPreviewEnd.AsString := DmProjeto.FormataEndereco(C_Consulta);
end;

procedure TRptMelhoresClientes.EdMediaChange(Sender: TObject);
begin
  inherited;
  AtualizaConsulta;
end;

end.
